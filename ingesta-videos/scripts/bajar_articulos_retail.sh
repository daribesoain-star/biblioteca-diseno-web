#!/bin/zsh
# bajar_articulos_retail.sh — baja artículos de retail-neo/articulos/urls.txt (eje|url) → txt/<eje>__<slug>.txt
# Idempotente. <150 palabras => lo marca en pendientes_spa.txt (candidato a Playwright / mano de Dari).
BASE=~/Projects/biblioteca-diseno-web/ingesta-videos
RN=$BASE/retail-neo
TXT=$RN/articulos/txt
mkdir -p $TXT
UA="Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/126.0.0.0 Safari/537.36"
: > $RN/articulos/pendientes_spa.txt
while IFS='|' read -r eje url; do
  [[ -z $url ]] && continue
  slug=$(echo -n "$url" | sed -E 's#https?://##; s#[^a-zA-Z0-9一-鿿]+#-#g' | cut -c1-70)
  out=$TXT/${eje}__${slug}.txt
  if [[ -s $out ]]; then
    w=$(wc -w < $out)
    [[ $w -ge 150 ]] && continue
  fi
  html=/tmp/art_retail.html
  curl -sL -A "$UA" --max-time 40 "$url" -o $html 2>/dev/null
  python3 $BASE/scripts/html2texto.py $html > $out 2>/dev/null
  w=$(wc -w < $out 2>/dev/null || echo 0)
  if [[ $w -lt 150 ]]; then
    echo "$eje|$url|$w palabras" >> $RN/articulos/pendientes_spa.txt
    echo "SPA/ANTIBOT ($w w) $url"
  else
    echo "OK ($w w) $url"
    # guardar la URL como primera línea para trazabilidad
    { echo "URL_FUENTE: $url"; cat $out; } > $out.tmp && mv $out.tmp $out
  fi
  sleep 1
done < $RN/articulos/urls.txt
echo "=== ARTICULOS BAJADOS ==="
ls $TXT | wc -l
