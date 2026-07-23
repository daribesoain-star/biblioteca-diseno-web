#!/bin/zsh
# destilar_uno_retail.sh <canal> <id> — adaptación de destilar_uno.sh para retail-neo (soporta zh)
BASE=~/Projects/biblioteca-diseno-web/ingesta-videos
RN=$BASE/retail-neo
CANAL=$1; id=$2
CANAL_DIR=$RN/canales/$CANAL
OUT=$RN/destilado/$CANAL
mkdir -p $OUT
[[ -s $OUT/$id.md ]] && exit 0
LOCK=/tmp/dlock_retail_$id
mkdir $LOCK 2>/dev/null || exit 0
trap "rmdir $LOCK 2>/dev/null" EXIT
cd $CANAL_DIR || exit 1
vtt=""
for cand in $id.en.vtt $id.en-orig.vtt $id.es.vtt $id.es-orig.vtt $id.zh.vtt $id.zh-Hans.vtt $id.zh-Hant.vtt $id.zh-CN.vtt $id.zh-Hans-en.vtt; do
  [[ -f $cand ]] && { vtt=$cand; break; }
done
[[ -z $vtt ]] && { vtt=$(ls $id.*.vtt 2>/dev/null | head -1); }
[[ -z $vtt ]] && { echo "SIN-SUBS $CANAL $id"; exit 0; }
titulo=$(grep -- "^$id|" $RN/canales/canal_$CANAL.txt 2>/dev/null | head -1 | cut -d'|' -f5)
titulo=${titulo//[\`\\$]/}
python3 $BASE/scripts/limpiar_vtt.py $vtt > /tmp/tr_$id.txt
[[ $(wc -w < /tmp/tr_$id.txt) -lt 80 ]] && { echo "CORTO $CANAL $id"; exit 0; }
cat > /tmp/pr_$id.txt << PROMPT
A continuación va la transcripción del video de YouTube "$titulo" (cola $CANAL, id $id). Puede estar en inglés, español o chino: destílala SIEMPRE EN ESPAÑOL NEUTRO con esta estructura EXACTA en markdown:

# $titulo
**Fuente:** $CANAL | https://youtu.be/$id
## Qué enseña (2-3 líneas)
## Lecciones accionables
(bullets con el máximo detalle técnico: tácticas y números VERBATIM, benchmarks, pasos, nombres de herramientas/plataformas — nada vago)
## Reglas para agentes
(imperativas y verificables: "usa X cuando Y", "nunca Z")
## Errores comunes que evita o menciona

Responde SOLO con el markdown final, sin preámbulo.
PROMPT
python3 $BASE/scripts/llamar_ia.py /tmp/pr_$id.txt $OUT/$id.md /tmp/tr_$id.txt > /dev/null 2>&1
rm -f /tmp/pr_$id.txt /tmp/tr_$id.txt
if [[ -s $OUT/$id.md ]]; then echo "$(date +%H:%M:%S) OK $CANAL $id — $titulo"; else echo "$(date +%H:%M:%S) FALLO $CANAL $id"; fi
