#!/bin/zsh
# destilar_articulo_retail.sh <ruta txt> — destila UN artículo bajado (retail-neo) vía DeepSeek/Groq. Idempotente.
BASE=~/Projects/biblioteca-diseno-web/ingesta-videos
RN=$BASE/retail-neo
txt=$1
nombre=$(basename $txt .txt)          # eje__slug
eje=${nombre%%__*}
OUT=$RN/destilado/retail_${eje}_articulos
mkdir -p $OUT
[[ -s $OUT/$nombre.md ]] && exit 0
LOCK=/tmp/alock_retail_$nombre
mkdir $LOCK 2>/dev/null || exit 0
trap "rmdir $LOCK 2>/dev/null" EXIT
url=$(head -1 $txt | sed 's/^URL_FUENTE: //')
cat > /tmp/pa_$nombre.txt << PROMPT
Adjunto el texto extraído de un artículo/documento web sobre retail/e-commerce (eje: $eje). Su URL real es $url — úsala tal cual como fuente. Destílalo EN ESPAÑOL NEUTRO con esta estructura EXACTA en markdown:

# $nombre
**Fuente:** $url | eje: $eje | destilado 2026-07-16
## Qué enseña (2-3 líneas)
## Lecciones accionables
(bullets con el máximo detalle: números, benchmarks, umbrales, pasos, tácticas VERBATIM — nada vago; si hay tablas de benchmarks, inclúyelas)
## Reglas para agentes
(imperativas y verificables: "usa X cuando Y", "nunca Z")
## Errores comunes que evita o menciona

Ignora restos de navegación/menús/footers. Responde SOLO con el markdown final, sin preámbulo.
PROMPT
python3 $BASE/scripts/llamar_ia.py /tmp/pa_$nombre.txt $OUT/$nombre.md $txt > /dev/null 2>&1
rm -f /tmp/pa_$nombre.txt
if [[ -s $OUT/$nombre.md ]]; then echo "$(date +%H:%M:%S) OK art $nombre"; else echo "$(date +%H:%M:%S) FALLO art $nombre"; fi
