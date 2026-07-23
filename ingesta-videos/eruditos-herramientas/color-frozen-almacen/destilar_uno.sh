#!/bin/zsh
# destilar_uno.sh <slug> — destila articulos/<slug>.txt a destilado/<slug>.md via DeepSeek. Idempotente + lock.
BASE=~/Projects/biblioteca-diseno-web/ingesta-videos/eruditos-herramientas/color-frozen-almacen
LLAMAR=~/Projects/biblioteca-diseno-web/ingesta-videos/scripts/llamar_ia.py
slug=$1
IN=$BASE/articulos/$slug.txt
OUT=$BASE/destilado/$slug.md
[[ -s $OUT ]] && exit 0
[[ ! -s $IN ]] && { echo "SIN-FUENTE $slug"; exit 0; }
[[ $(wc -w < $IN) -lt 200 ]] && { echo "CORTO $slug"; exit 0; }
LOCK=/tmp/dlock_cfa_$slug
mkdir $LOCK 2>/dev/null || exit 0
trap "rmdir $LOCK 2>/dev/null" EXIT
url=$(grep -E "\|$slug\|" $BASE/fuentes.txt | head -1 | cut -d'|' -f1)
sub=$(grep -E "\|$slug\|" $BASE/fuentes.txt | head -1 | cut -d'|' -f3)
# recorto la fuente para no exceder tokens (primeras ~2500 palabras bastan para color)
head -c 18000 $IN > /tmp/src_$slug.txt
cat > /tmp/pr_$slug.txt << PROMPT
Eres un analista de branding especializado en COLOR para retail de alimentos. A continuación va el texto de la fuente "$slug" (subtema: $sub, URL: $url). Destílalo SOLO en lo relevante a USO Y PSICOLOGÍA DEL COLOR en marcas/tiendas de alimentos (congelados, minimarket/almacen, carne, food retail). Responde EN ESPAÑOL NEUTRO con esta estructura EXACTA en markdown:

# $slug
**Fuente:** $url | subtema: $sub
## Qué aporta sobre color (2-3 lineas)
## Datos de color accionables
(bullets con el maximo detalle: colores exactos y su significado, hex si aparece, que marca usa que color y por que, combinaciones recomendadas, numeros/estadisticas VERBATIM. Si menciona apetito, frio, frescura, natural, premium, economico, confianza — anotalo con el color asociado. Nada vago.)
## Reglas de color para el rubro
(imperativas: "usa X color para Y", "evita Z")

Si el texto NO habla de color o marcas de alimentos, responde solo: "SIN-CONTENIDO-COLOR". Responde SOLO el markdown, sin preambulo.
PROMPT
python3 $LLAMAR /tmp/pr_$slug.txt $OUT /tmp/src_$slug.txt > /dev/null 2>&1
rm -f /tmp/pr_$slug.txt /tmp/src_$slug.txt
if [[ -s $OUT ]]; then echo "$(date +%H:%M:%S) OK $slug"; else echo "$(date +%H:%M:%S) FALLO $slug"; fi
