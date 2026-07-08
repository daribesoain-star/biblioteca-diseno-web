#!/bin/zsh
# destilar_canal.sh <canal> — destila cada transcripción del canal con Codex CLI
BASE=~/Projects/biblioteca-diseno-web/ingesta-videos
CANAL=$1
CANAL_DIR=$BASE/canales/$CANAL
OUT=$BASE/destilado/$CANAL
SKIP="WdYYW9mBLAc ArVhVSvykzE"   # noticias sin valor evergreen
mkdir -p $OUT
cd $CANAL_DIR || exit 1
for info in *.info.json(N); do
  id=${info%.info.json}
  [[ " $SKIP " == *" $id "* ]] && continue
  [[ -s $OUT/$id.md ]] && continue
  vtt=""
  [[ -f $id.en.vtt ]] && vtt=$id.en.vtt
  [[ -z $vtt && -f $id.es.vtt ]] && vtt=$id.es.vtt
  [[ -z $vtt ]] && { echo "SIN-SUBS $id"; continue; }
  titulo=$(python3 -c "import json;print(json.load(open('$info')).get('title',''))" 2>/dev/null)
  python3 $BASE/scripts/limpiar_vtt.py $vtt > /tmp/t_$id.txt
  [[ $(wc -w < /tmp/t_$id.txt) -lt 100 ]] && { echo "CORTO $id"; continue; }
  codex exec -s read-only --skip-git-repo-check -o $OUT/$id.md - >> $BASE/destilado/destilar_$CANAL.log 2>&1 << PROMPT
Lee el archivo /tmp/t_$id.txt: transcripción del video de YouTube "$titulo" (canal $CANAL, id $id). Destílalo EN ESPAÑOL NEUTRO con esta estructura EXACTA en markdown:

# $titulo
**Fuente:** $CANAL | https://youtu.be/$id
## Qué enseña (2-3 líneas)
## Lecciones accionables
(bullets con el máximo detalle técnico: prompts VERBATIM si aparecen, keywords exactas, parámetros, pasos, nombres de herramientas — nada vago)
## Reglas para agentes
(imperativas y verificables: "usa X cuando Y", "nunca Z")
## Errores comunes que evita o menciona

Responde SOLO con el markdown final, sin preámbulo.
PROMPT
  if [[ -s $OUT/$id.md ]]; then echo "$(date +%H:%M:%S) OK $id — $titulo"; else echo "$(date +%H:%M:%S) FALLO $id"; fi
done
echo "=== CANAL $CANAL TERMINADO: $(ls $OUT | wc -l) destilados ==="
