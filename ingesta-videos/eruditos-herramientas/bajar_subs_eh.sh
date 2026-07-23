#!/bin/zsh
# bajar_subs_eh.sh — subs de los 4 canales eh-* secuencial (anti-429). Idempotente vía download-archive.
BASE=~/Projects/biblioteca-diseno-web/ingesta-videos
LOG=$BASE/eruditos-herramientas/subs_eh.log
for CANAL in eh-elevenlabs-audio eh-imagen-ia eh-mercadolibre eh-pagos-chile; do
  echo "$(date +%H:%M:%S) INICIO subs $CANAL" >> $LOG
  $BASE/canales/bajar_subs_lista.sh $CANAL >> $LOG 2>&1
  echo "$(date +%H:%M:%S) FIN subs $CANAL ($(ls $BASE/canales/$CANAL/*.vtt 2>/dev/null | wc -l | tr -d ' ') vtt)" >> $LOG
  sleep 20
done
echo "$(date +%H:%M:%S) === SUBS EH TERMINADO ===" >> $LOG
