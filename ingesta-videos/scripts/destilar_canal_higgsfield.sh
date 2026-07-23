#!/bin/zsh
# destilar_canal_higgsfield.sh <canal> — destila tutoriales de Higgsfield con DeepSeek → KB higgsfield del erudito.
BASE=~/Projects/biblioteca-diseno-web/ingesta-videos
KB=~/Projects/estudio-sintetico/biblioteca/fundamentos/higgsfield
CANAL=$1
CANAL_DIR=$BASE/canales/$CANAL
OUT=$BASE/destilado/$CANAL
mkdir -p $OUT $KB/destilado
cd $CANAL_DIR || exit 1
for info in *.info.json(N); do
  id=${info%.info.json}
  [[ $id == UC* ]] && continue
  [[ -s $OUT/$id.md ]] && continue
  vtt=$(ls $id.*.vtt(N) | head -1)
  [[ -z $vtt ]] && { echo "SIN-SUBS $id"; continue; }
  titulo=$(python3 -c "import json;print(json.load(open('$info')).get('title',''))" 2>/dev/null)
  python3 $BASE/scripts/limpiar_vtt.py $vtt > /tmp/hf_$id.txt 2>/dev/null
  [[ $(wc -w < /tmp/hf_$id.txt) -lt 80 ]] && { echo "CORTO $id"; continue; }
  cat > /tmp/prompt_hf_$id.txt <<EOF
Eres experto en la herramienta de video IA HIGGSFIELD. Destila esta transcripcion del video "$titulo" EN ESPANOL NEUTRO, enfocado en USO PRACTICO de Higgsfield (presets, modelos como Cinema Studio/Seedance/Kling, motion control, camara, parametros, tips, flujos, comparaciones). IGNORA relleno. Estructura markdown EXACTA:
# $titulo
**Fuente:** $CANAL | https://youtu.be/$id
## Que ensena sobre Higgsfield (2-3 lineas)
## Tips y flujos accionables
(maximo detalle: nombres EXACTOS de presets/modelos/parametros, valores recomendados, orden de pasos, atajos, prompts VERBATIM si aparecen, trucos para que no alucine o para look cinematografico)
## Reglas para el erudito de Higgsfield
(imperativas: "para X usa el preset/modelo Y con parametro Z")
## Errores comunes / que evitar
Responde SOLO con el markdown final, sin preambulo.
EOF
  python3 $BASE/scripts/llamar_ia.py /tmp/prompt_hf_$id.txt $OUT/$id.md /tmp/hf_$id.txt >> $BASE/destilado/hf_$CANAL.log 2>&1
  if [[ -s $OUT/$id.md ]]; then echo "$(date +%H:%M:%S) OK $id — $titulo"; else echo "$(date +%H:%M:%S) FALLO $id"; fi
done
cp -n $OUT/*.md(N) $KB/destilado/ 2>/dev/null
echo "=== $CANAL: $(ls $OUT/*.md(N)|wc -l|tr -d ' ') destilados (KB higgsfield: $(ls $KB/destilado/*.md(N)|wc -l|tr -d ' ')) ==="
