#!/bin/zsh
# fabrica_continua.sh — mientras haya descargas activas o pendientes, corre el master en ciclos
BASE=~/Projects/biblioteca-diseno-web/ingesta-videos
while true; do
  if ! pgrep -f destilar_master.sh > /dev/null; then
    $BASE/scripts/destilar_master.sh >> $BASE/destilado/master.log 2>&1
  fi
  # ¿queda descarga viva o pendientes nuevos?
  descargando=$(pgrep -f "yt-dlp" | wc -l)
  pend=$(tail -20 $BASE/destilado/master.log | grep "PENDIENTES" | tail -1 | grep -o '[0-9]*' | tail -1)
  if [[ $descargando -eq 0 ]]; then
    # última pasada de barrido y salir
    $BASE/scripts/destilar_master.sh >> $BASE/destilado/master.log 2>&1
    echo "$(date +%H:%M:%S) FABRICA CONTINUA: fin (sin descargas activas)" >> $BASE/destilado/master.log
    break
  fi
  sleep 180
done
