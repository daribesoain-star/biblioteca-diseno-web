#!/bin/zsh
# destilar_canal_ritmo.sh <canal> — destila técnica de RITMO/PACING/BEATS/DURACIÓN con DeepSeek → KB ritmo-duracion.
BASE=~/Projects/biblioteca-diseno-web/ingesta-videos
KB=~/Projects/estudio-sintetico/biblioteca/fundamentos/ritmo-duracion
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
  python3 $BASE/scripts/limpiar_vtt.py $vtt > /tmp/rt_$id.txt 2>/dev/null
  [[ $(wc -w < /tmp/rt_$id.txt) -lt 80 ]] && { echo "CORTO $id"; continue; }
  cat > /tmp/prompt_rt_$id.txt <<EOF
Eres montajista y estratega de contenido experto. Destila esta transcripcion del video "$titulo" enfocado EXCLUSIVAMENTE en RITMO, PACING, BEATS y DURACION de video. EN ESPANOL NEUTRO, estructura markdown EXACTA:
# $titulo
**Fuente:** $CANAL | https://youtu.be/$id
## Que ensena sobre ritmo/duracion (2-3 lineas)
## Tecnicas de ritmo/pacing accionables
(cuando cortar, curva de ritmo, J-cut/L-cut, editar al beat, sync a musica, cortes por segundo, aceleracion en climax)
## Duraciones recomendadas por FORMATO / PRODUCTO / PLATAFORMA
(segundos EXACTOS: reel/short/tiktok, spot/comercial 15-30-60, youtube ad/bumper 6s, explainer, UGC; largo del HOOK, ventana de retencion)
## Reglas para el estudio
(imperativas: "para FORMATO X, duracion Y s, hook en primeros Z s, corte cada N s")
## Errores comunes de ritmo/duracion
Responde SOLO con el markdown final, sin preambulo.
EOF
  python3 $BASE/scripts/llamar_ia.py /tmp/prompt_rt_$id.txt $OUT/$id.md /tmp/rt_$id.txt >> $BASE/destilado/rt_$CANAL.log 2>&1
  if [[ -s $OUT/$id.md ]]; then echo "$(date +%H:%M:%S) OK $id — $titulo"; else echo "$(date +%H:%M:%S) FALLO $id"; fi
done
cp -n $OUT/*.md(N) $KB/destilado/ 2>/dev/null
echo "=== $CANAL: $(ls $OUT/*.md(N)|wc -l|tr -d ' ') destilados (KB ritmo: $(ls $KB/destilado/*.md(N)|wc -l|tr -d ' ')) ==="
