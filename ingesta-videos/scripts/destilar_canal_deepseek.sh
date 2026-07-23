#!/bin/zsh
# destilar_canal_deepseek.sh <canal> — destila con DeepSeek/Groq (llamar_ia.py) cuando Codex no tiene créditos.
BASE=~/Projects/biblioteca-diseno-web/ingesta-videos
KB=~/Projects/estudio-sintetico/biblioteca/fundamentos/cinematografia
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
  python3 $BASE/scripts/limpiar_vtt.py $vtt > /tmp/ds_$id.txt 2>/dev/null
  [[ $(wc -w < /tmp/ds_$id.txt) -lt 80 ]] && { echo "CORTO $id"; continue; }
  cat > /tmp/prompt_$id.txt <<EOF
Eres director de fotografia de cine publicitario y experto en prompting de video IA. Destila esta transcripcion del video "$titulo" EN ESPANOL NEUTRO, enfocado en CINEMATOGRAFIA y PROMPTING DE CAMARA PARA VIDEO IA (Veo 3 / Kling / Runway). Estructura markdown EXACTA:
# $titulo
**Fuente:** $CANAL | https://youtu.be/$id
## Que ensena (2-3 lineas)
## Lecciones accionables
(maximo detalle tecnico: terminos de camara en ingles que sirven para prompts, prompts VERBATIM si aparecen, parametros, focales, movimientos)
## Reglas para el director de fotografia IA
(imperativas: "usa X cuando Y"; "para no alucinar en video IA, Z")
## Errores comunes que evita o menciona
Responde SOLO con el markdown final, sin preambulo.
EOF
  python3 $BASE/scripts/llamar_ia.py /tmp/prompt_$id.txt $OUT/$id.md /tmp/ds_$id.txt >> $BASE/destilado/deepseek_$CANAL.log 2>&1
  if [[ -s $OUT/$id.md ]]; then echo "$(date +%H:%M:%S) OK $id — $titulo"; else echo "$(date +%H:%M:%S) FALLO $id"; fi
done
cp -n $OUT/*.md(N) $KB/destilado/ 2>/dev/null
echo "=== $CANAL: $(ls $OUT/*.md(N) | wc -l | tr -d ' ') destilados (KB total: $(ls $KB/destilado/*.md(N) | wc -l | tr -d ' ')) ==="
