#!/bin/zsh
# completar_ola3.sh — baja los subs faltantes de mundoaudiovisual con enfriamiento anti-429,
# luego destila todo lo pendiente y marca TODO_LISTO.
BASE=~/Projects/biblioteca-diseno-web/ingesta-videos
CDIR=$BASE/canales/mundoaudiovisual
LOG=$BASE/destilado/master.log
for ronda in 1 2 3 4 5; do
  # ids del keep sin ningún vtt
  ls $CDIR | grep -E '\.(en|es)\.vtt$' | sed -E 's/\.(en|es)\.vtt$//' | sort -u > /tmp/tienen_vtt.txt
  comm -23 <(sort $BASE/canales/keep_mundoaudiovisual.txt) /tmp/tienen_vtt.txt > /tmp/faltan_mav.txt
  n=$(wc -l < /tmp/faltan_mav.txt)
  echo "$(date +%H:%M:%S) OLA3 ronda $ronda: faltan $n" >> $LOG
  [[ $n -eq 0 ]] && break
  sleep 900   # enfriamiento para que YouTube suelte el 429
  sed 's|^|https://youtube.com/watch?v=|' /tmp/faltan_mav.txt > /tmp/urls_mav.txt
  cd $CDIR && yt-dlp --skip-download --write-auto-subs --write-subs --sub-langs "es,en" \
    --sleep-requests 8 --min-sleep-interval 3 --max-sleep-interval 8 \
    -o "%(id)s.%(ext)s" -a /tmp/urls_mav.txt >> descarga.log 2>&1
done
# destilar todo lo pendiente hasta vaciar
while true; do
  pgrep -f destilar_master.sh > /dev/null || $BASE/scripts/destilar_master.sh >> $LOG 2>&1
  pend=$(grep "PENDIENTES" $LOG | tail -1 | grep -o '[0-9]*' | tail -1)
  [[ ${pend:-0} -eq 0 ]] && break
  sleep 60
done
echo "$(date +%H:%M:%S) === TODO_LISTO OLA3 ===" >> $LOG
