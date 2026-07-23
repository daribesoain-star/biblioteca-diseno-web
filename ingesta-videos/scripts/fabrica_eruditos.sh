#!/bin/zsh
# fabrica_eruditos.sh — mientras la descarga de subs de la ola eruditos siga viva,
# corre destilar_master_eruditos.sh en ciclos. Al morir la descarga: última pasada y fin.
BASE=~/Projects/biblioteca-diseno-web/ingesta-videos
LOG=$BASE/destilado/master_eruditos.log
while true; do
  if ! pgrep -f destilar_master_eruditos.sh > /dev/null; then
    $BASE/scripts/destilar_master_eruditos.sh >> $LOG 2>&1
  fi
  descargando=$(pgrep -f "ola_eruditos_subs.sh" | wc -l | tr -d ' ')
  if [[ $descargando -eq 0 ]] && ! pgrep -f "yt-dlp" > /dev/null; then
    $BASE/scripts/destilar_master_eruditos.sh >> $LOG 2>&1
    echo "$(date +%H:%M:%S) FABRICA ERUDITOS: fin (sin descargas activas)" >> $LOG
    break
  fi
  sleep 180
done
