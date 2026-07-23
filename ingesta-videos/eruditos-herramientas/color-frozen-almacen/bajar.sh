#!/bin/zsh
# Baja los articulos de fuentes.txt a articulos/<slug>.txt (idempotente).
BASE=~/Projects/biblioteca-diseno-web/ingesta-videos/eruditos-herramientas/color-frozen-almacen
H2T=~/Projects/biblioteca-diseno-web/ingesta-videos/scripts/html2texto.py
ART=$BASE/articulos
mkdir -p $ART
UA="Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/126.0 Safari/537.36"
grep -vE '^\s*#|^\s*$' $BASE/fuentes.txt | while IFS='|' read url slug sub motivo; do
  [[ -z $slug ]] && continue
  out=$ART/$slug.txt
  [[ -s $out && $(wc -w < $out) -ge 150 ]] && { echo "SKIP $slug"; continue; }
  curl -sL -A "$UA" --max-time 40 "$url" -o /tmp/h_$slug.html 2>/dev/null
  if [[ -s /tmp/h_$slug.html ]]; then
    python3 $H2T /tmp/h_$slug.html > $out 2>/dev/null
    w=$(wc -w < $out)
    if [[ $w -lt 150 ]]; then echo "SPA/CORTO($w) $slug $url"; else echo "OK($w) $slug"; fi
  else
    echo "FALLO-CURL $slug $url"
  fi
  rm -f /tmp/h_$slug.html
  sleep 1
done
