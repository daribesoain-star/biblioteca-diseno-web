#!/bin/zsh
# ola_eruditos_subs.sh — baja subtítulos de los canales de la ola eruditos, secuencial (anti-429).
# Espera a que exista keep_<canal>.txt (triage Codex) antes de cada canal.
BASE=~/Projects/biblioteca-diseno-web/ingesta-videos
CANALES=(eruditos-sueltos PaddyGalloway GrowMyAds daradenney AnalyticsMania Optmyzr FilmBooth CreatorInsider ColinandSamir)
LOG=$BASE/canales/ola_eruditos_subs.log

for CANAL in $CANALES; do
  KEEP=$BASE/canales/keep_$CANAL.txt
  espera=0
  while [[ ! -s $KEEP && $espera -lt 90 ]]; do
    sleep 60; espera=$((espera+1))
  done
  if [[ ! -s $KEEP ]]; then
    echo "$(date +%H:%M:%S) SALTADO $CANAL: sin keep tras 90 min" >> $LOG
    continue
  fi
  echo "$(date +%H:%M:%S) INICIO subs $CANAL ($(wc -l < $KEEP | tr -d ' ') videos)" >> $LOG
  $BASE/canales/bajar_subs_lista.sh $CANAL >> $LOG 2>&1
  echo "$(date +%H:%M:%S) FIN subs $CANAL" >> $LOG
  sleep 30
done
echo "$(date +%H:%M:%S) === OLA ERUDITOS SUBS TERMINADO ===" >> $LOG
