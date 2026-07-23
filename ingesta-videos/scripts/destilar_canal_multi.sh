#!/bin/zsh
# destilar_canal_multi.sh <canal> — como destilar_canal.sh pero toma CUALQUIER idioma de subtítulo
# (Codex destila al español neutro sin importar el idioma origen: en/es/zh/pt/ko...)
BASE=~/Projects/biblioteca-diseno-web/ingesta-videos
CANAL=$1
CANAL_DIR=$BASE/canales/$CANAL
OUT=$BASE/destilado/$CANAL
mkdir -p $OUT
cd $CANAL_DIR || exit 1
for info in *.info.json(N); do
  id=${info%.info.json}
  [[ $id == UC* ]] && continue           # saltar el info.json de la playlist del canal
  [[ -s $OUT/$id.md ]] && continue
  vtt=$(ls $id.*.vtt(N) | head -1)        # el primer subtítulo disponible, cualquier idioma
  [[ -z $vtt ]] && { echo "SIN-SUBS $id"; continue; }
  titulo=$(python3 -c "import json;print(json.load(open('$info')).get('title',''))" 2>/dev/null)
  python3 $BASE/scripts/limpiar_vtt.py $vtt > /tmp/tm_$id.txt 2>/dev/null
  [[ $(wc -w < /tmp/tm_$id.txt) -lt 80 ]] && { echo "CORTO $id"; continue; }
  codex exec -s read-only --skip-git-repo-check -o $OUT/$id.md - >> $BASE/destilado/destilar_$CANAL.log 2>&1 << PROMPT
Lee el archivo /tmp/tm_$id.txt: transcripción (puede estar en cualquier idioma) del video de YouTube "$titulo" (fuente $CANAL, id $id). Destílalo EN ESPAÑOL NEUTRO, enfocado en CINEMATOGRAFÍA (tipos de plano, ángulos, movimientos de cámara, lentes, iluminación, composición, y si aplica prompting de cámara para video IA). Estructura EXACTA en markdown:

# $titulo
**Fuente:** $CANAL | https://youtu.be/$id
## Qué enseña (2-3 líneas)
## Lecciones accionables
(bullets con máximo detalle técnico: términos de cámara en inglés que sirven para prompts, parámetros, focales, esquemas de luz, prompts VERBATIM si aparecen — nada vago)
## Reglas para el director de fotografía IA
(imperativas y verificables: "usa X plano/ángulo cuando Y", "para no alucinar en video IA, Z")
## Errores comunes que evita o menciona

Responde SOLO con el markdown final, sin preámbulo.
PROMPT
  if [[ -s $OUT/$id.md ]]; then echo "$(date +%H:%M:%S) OK $id — $titulo"; else echo "$(date +%H:%M:%S) FALLO $id"; fi
done
echo "=== CANAL $CANAL TERMINADO: $(ls $OUT/*.md(N) | wc -l | tr -d ' ') destilados ==="
