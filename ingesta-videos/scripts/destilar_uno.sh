#!/bin/zsh
# destilar_uno.sh <canal> <id> — destila UN video con Codex (con lock anti-duplicado)
BASE=~/Projects/biblioteca-diseno-web/ingesta-videos
CANAL=$1; id=$2
CANAL_DIR=$BASE/canales/$CANAL
OUT=$BASE/destilado/$CANAL
mkdir -p $OUT
[[ -s $OUT/$id.md ]] && exit 0
LOCK=/tmp/dlock_$id
mkdir $LOCK 2>/dev/null || exit 0
trap "rmdir $LOCK 2>/dev/null" EXIT
cd $CANAL_DIR || exit 1
vtt=""
[[ -f $id.en.vtt ]] && vtt=$id.en.vtt
[[ -z $vtt && -f $id.es.vtt ]] && vtt=$id.es.vtt
[[ -z $vtt ]] && { echo "SIN-SUBS $CANAL $id"; exit 0; }
titulo=$(python3 -c "import json;print(json.load(open('$id.info.json')).get('title',''))" 2>/dev/null)
[[ -z $titulo ]] && titulo=$(grep -- "^$id|" $BASE/canales/canal_$CANAL.txt 2>/dev/null | head -1 | cut -d'|' -f3)
titulo=${titulo//[\`\\$]/}
python3 $BASE/scripts/limpiar_vtt.py $vtt > /tmp/t_$id.txt
[[ $(wc -w < /tmp/t_$id.txt) -lt 100 ]] && { echo "CORTO $CANAL $id"; exit 0; }
cat > /tmp/p_$id.txt << PROMPT
A continuación va la transcripción del video de YouTube "$titulo" (canal $CANAL, id $id). Destílala EN ESPAÑOL NEUTRO con esta estructura EXACTA en markdown:

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
python3 $BASE/scripts/llamar_ia.py /tmp/p_$id.txt $OUT/$id.md /tmp/t_$id.txt > /dev/null 2>&1
rm -f /tmp/p_$id.txt
rm -f /tmp/t_$id.txt
if [[ -s $OUT/$id.md ]]; then echo "$(date +%H:%M:%S) OK $CANAL $id — $titulo"; else echo "$(date +%H:%M:%S) FALLO $CANAL $id"; fi
