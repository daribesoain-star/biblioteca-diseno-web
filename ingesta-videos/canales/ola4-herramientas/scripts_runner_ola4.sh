#!/bin/zsh
BASE=~/Projects/biblioteca-diseno-web/ingesta-videos
DIR=$BASE/canales/ola4-herramientas
cd $DIR || exit 1
# 1. bajar subs (reanudable)
while IFS='|' read -r id dur vistas fecha tool titulo; do
  [[ -f $id.en.vtt || -f $id.es.vtt ]] && continue
  yt-dlp --skip-download --write-auto-subs --write-subs --sub-langs "en.*,es.*" \
    --sleep-requests 4 -o "%(id)s" "https://youtu.be/$id" >> subs.log 2>&1
done < keep_ola4.txt
echo "SUBS_LISTOS $(ls *.vtt 2>/dev/null | wc -l)" >> subs.log
# 2. destilar con 3 workers (DeepSeek/Groq via llamar_ia.py)
cut -d'|' -f1 keep_ola4.txt | xargs -P3 -I{} $BASE/scripts/destilar_uno.sh ola4-herramientas {} >> $BASE/destilado/master.log 2>&1
echo "$(date +%H:%M:%S) === TODO_LISTO OLA4 ===" >> $BASE/destilado/master.log
