#!/bin/zsh
# runner_retail_cierre.sh — espera que Scribe cierre cada eje (retail-neo) y lanza su síntesis EJE POR EJE.
# v2: FALLO-SCRIBE/FALLO-IA se consideran transitorios → al cierre del batch se reintentan 1 vez antes de sintetizar.
# Idempotente: si la síntesis de un eje ya existe, sintetizar_retail.sh la salta.
BASE=~/Projects/biblioteca-diseno-web/ingesta-videos
RN=$BASE/retail-neo
LOG=$RN/logs/scribe.log
RLOG=$RN/logs/runner_cierre.log

typeset -A EJES_IDS EJES_CANAL
EJES_IDS[cro]="2rgHknKdUf0 We5SVniZgto"
EJES_IDS[social]="WNXO5K-26SQ"
EJES_IDS[newretail]="Pl7VRRIs5Uo GA2_t6KJCZw paqtAybOclI e-AyOHsU524 NTFKRxyZXqw"
EJES_CANAL[cro]=retail_cro
EJES_CANAL[social]=retail_social
EJES_CANAL[newretail]=retail_newretail

cerrado() {  # id con destilado en disco o fallo DEFINITIVO (audio imposible)
  [[ -s $RN/destilado/$1/$2.md ]] && return 0
  grep -qE "FALLO-AUDIO.*$2" $LOG 2>/dev/null && return 0
  return 1
}

DEADLINE=$(( $(date +%s) + 7200 ))  # tope 2 h; después sintetiza con lo que haya
for eje in cro social newretail; do
  canal=${EJES_CANAL[$eje]}
  while true; do
    listo=1
    for id in ${=EJES_IDS[$eje]}; do cerrado $canal $id || listo=0; done
    [[ $listo -eq 1 ]] && break
    if grep -q "SCRIBE-BATCH-DONE" $LOG 2>/dev/null; then
      # batch terminó: reintentar 1 vez los que quedaron sin destilado (fallos transitorios)
      for id in ${=EJES_IDS[$eje]}; do
        cerrado $canal $id && continue
        echo "$(date +%H:%M:%S) retry final $canal $id" >> $RLOG
        zsh $BASE/scripts/destilar_scribe_retail.sh $canal $id >> $RLOG 2>&1
      done
      break
    fi
    [[ $(date +%s) -gt $DEADLINE ]] && { echo "$(date +%H:%M:%S) TIMEOUT eje $eje — sintetizo con lo que hay" >> $RLOG; break; }
    sleep 60
  done
  echo "$(date +%H:%M:%S) eje $eje cerrado → síntesis" >> $RLOG
  zsh $BASE/scripts/sintetizar_retail.sh $eje >> $RLOG 2>&1
done
echo "$(date +%H:%M:%S) RUNNER-CIERRE-DONE" >> $RLOG
