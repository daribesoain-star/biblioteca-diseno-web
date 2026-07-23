#!/bin/zsh
# runner_pv.sh — ola "páginas que venden solas con estilos únicos" (2026-07-22). Idempotente.
BASE=~/Projects/biblioteca-diseno-web/ingesta-videos
PV=$BASE/paginas-vendedoras
cd $BASE

# ── 1) FUENTES VIDEO (EN/ES/ZH/JP) ──
buscar() {
  local canal=$1; shift
  local out=$PV/canales/canal_$canal.txt
  for q in "$@"; do
    local marca=$PV/canales/.done_${canal}_$(echo -n "$q" | shasum | cut -c1-10)
    [[ -f $marca ]] && continue
    yt-dlp --flat-playlist "ytsearch14:$q" \
      --print "%(id)s|%(duration)s|%(view_count)s|%(upload_date)s|%(title)s" >> $out 2>/dev/null
    touch $marca; sleep 2
  done
}
buscar pv_estilo \
  "award winning website design breakdown" \
  "awwwards site of the day analysis" \
  "unique ecommerce website design inspiration breakdown" \
  "japanese web design analysis" \
  "web design trends 2026 ecommerce"
buscar pv_conversion \
  "landing page teardown high converting" \
  "best landing pages breakdown conversion" \
  "ecommerce homepage design that sells analysis" \
  "product page design converts breakdown" \
  "sales page design psychology"
buscar pv_es_zh \
  "mejores paginas web de venta analisis diseño" \
  "landing page que convierte diseño analisis" \
  "高转化 着陆页 设计" \
  "电商 网页设计 案例 拆解" \
  "売れる LP デザイン"

# ── 2) TRIAGE determinista (dur 180-3600s, dedup, top por vistas) ──
for f in $PV/canales/canal_*.txt; do
  canal=$(basename $f .txt | sed 's/^canal_//')
  keep=$PV/canales/keep_$canal.txt
  [[ -s $keep ]] && continue
  sort -u $f | awk -F'|' '$2>=180 && $2<=3600 && $3>=3000' | sort -t'|' -k3 -rn | head -16 > $keep
done
cat $PV/canales/keep_*.txt | cut -d'|' -f1 | sort -u > $PV/canales/keep_todos.txt
echo "videos keep: $(wc -l < $PV/canales/keep_todos.txt)"

# ── 3) SUBTÍTULOS (reanudable, anti-429) ──
mkdir -p $PV/canales/subs
while read id; do
  ls $PV/canales/subs/${id}*.vtt >/dev/null 2>&1 && continue
  yt-dlp --skip-download --write-auto-subs --write-subs --sub-langs "en.*,es.*,zh.*,ja.*" \
    --sleep-requests 4 -o "$PV/canales/subs/%(id)s" "https://youtu.be/$id" >/dev/null 2>&1
done < $PV/canales/keep_todos.txt
echo "subs: $(ls $PV/canales/subs/*.vtt 2>/dev/null | wc -l)"

# ── 4) DESTILAR VIDEOS (DeepSeek/Groq, 3 workers) ──
destilar_video() {
  local id=$1
  local out=$PV/destilado/video_$id.md
  [[ -s $out ]] && return
  local vtt=$(ls $PV/canales/subs/${id}*.vtt 2>/dev/null | head -1)
  [[ -z $vtt ]] && return
  local titulo=$(grep -h "^$id|" $PV/canales/canal_*.txt | head -1 | cut -d'|' -f5)
  python3 $BASE/scripts/limpiar_vtt.py "$vtt" > /tmp/pv_$id.txt 2>/dev/null || return
  [[ $(wc -w < /tmp/pv_$id.txt) -lt 120 ]] && return
  cat > /tmp/pvp_$id.txt << P
Adjunto la transcripción de un video sobre diseño web que VENDE (páginas top mundiales, estilos únicos, conversión). Título: "$titulo". URL real: https://youtu.be/$id — úsala tal cual.
Destílalo EN ESPAÑOL NEUTRO, markdown exacto:
# $titulo
**Fuente:** https://youtu.be/$id | destilado 2026-07-22
## Qué enseña (2-3 líneas)
## Lecciones accionables
(bullets con máximo detalle: sitios/marcas citados como ejemplo, mecanismos de diseño CONCRETOS, números/benchmarks, patrones verbatim)
## Reglas para agentes
(imperativas verificables sobre diseño que vende: "usa X cuando Y", "nunca Z")
## Errores comunes
Responde SOLO el markdown, sin preámbulo.
P
  python3 $BASE/scripts/llamar_ia.py /tmp/pvp_$id.txt $out /tmp/pv_$id.txt >/dev/null 2>&1
  rm -f /tmp/pv_$id.txt /tmp/pvp_$id.txt
}
export -f destilar_video 2>/dev/null || true
i=0
while read id; do
  destilar_video $id &
  (( i++ % 3 == 2 )) && wait
done < $PV/canales/keep_todos.txt
wait
echo "destilados video: $(ls $PV/destilado/video_*.md 2>/dev/null | wc -l)"

# ── 5) ARTÍCULOS / GALERÍAS curadas (multi-idioma) ──
UA="Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/126.0 Safari/537.36"
bajar_art() {
  local slug=$1 url=$2
  local out=$PV/articulos/${slug}.txt
  [[ -s $out ]] && return
  local html=$(curl -sL -A "$UA" --max-time 40 "$url")
  [[ -z $html ]] && { echo "FALLO $slug"; return; }
  { echo "URL_FUENTE: $url"; echo "$html" | python3 $BASE/scripts/html2texto.py 2>/dev/null; } > $out
  [[ $(wc -w < $out) -lt 150 ]] && { echo "SPA/CORTO $slug ($(wc -w < $out)w)"; mv $out $out.corto; }
}
bajar_art baymard_product_page "https://baymard.com/blog/current-state-ecommerce-product-page-ux"
bajar_art baymard_checkout "https://baymard.com/blog/checkout-flow-average-form-fields"
bajar_art cxl_landing "https://cxl.com/blog/how-to-build-a-high-converting-landing-page/"
bajar_art unbounce_ejemplos "https://unbounce.com/landing-page-examples/best-landing-page-examples/"
bajar_art shopify_best "https://www.shopify.com/blog/best-ecommerce-sites"
bajar_art nngroup_ecommerce "https://www.nngroup.com/articles/ecommerce-homepages-listing-pages/"
bajar_art awwwards_ecom "https://www.awwwards.com/websites/e-commerce/"
bajar_art godly_ecom "https://godly.website/websites/ecommerce"
bajar_art landbook_ecom "https://land-book.com/gallery/ecommerce"
bajar_art lapa_ecom "https://www.lapa.ninja/category/ecommerce/"
bajar_art muuuuu_jp "https://muuuuu.org/category/lp"
bajar_art io3000_jp "https://io3000.com/"
bajar_art goodui_patterns "https://goodui.org/patterns/"
bajar_art hotjar_landing "https://www.hotjar.com/landing-page-optimization/examples/"

# ── 6) DESTILAR ARTÍCULOS ──
for txt in $PV/articulos/*.txt(N); do
  nombre=$(basename $txt .txt)
  out=$PV/destilado/art_$nombre.md
  [[ -s $out ]] && continue
  url=$(head -1 $txt | sed 's/^URL_FUENTE: //')
  cat > /tmp/pva_$nombre.txt << P
Adjunto el texto de un artículo/galería sobre las mejores páginas web del mundo (diseño que vende, estilos únicos). URL real: $url — úsala tal cual como fuente.
Destílalo EN ESPAÑOL NEUTRO, markdown exacto:
# $nombre
**Fuente:** $url | destilado 2026-07-22
## Qué enseña (2-3 líneas)
## Lecciones accionables
(bullets detallados: sitios/marcas de ejemplo con su mecanismo de diseño, benchmarks, patrones concretos; si es galería, extrae los ESTILOS/patrones que se repiten en los destacados)
## Reglas para agentes
## Errores comunes
Ignora navegación/menús/footers. Responde SOLO el markdown.
P
  python3 $BASE/scripts/llamar_ia.py /tmp/pva_$nombre.txt $out $txt >/dev/null 2>&1
  rm -f /tmp/pva_$nombre.txt
done
echo "destilados artículo: $(ls $PV/destilado/art_*.md 2>/dev/null | wc -l)"
touch $PV/RUNNER_DONE
echo "OLA PV COMPLETA"
