#!/bin/zsh
BASE=~/Projects/biblioteca-diseno-web/ingesta-videos
cd $BASE || exit 1
for canal in SolutionsUno JonLoomer FoxwellDigital YouTubeCreators; do
  mkdir -p canales/$canal destilado/$canal
  # subtítulos (reanudable, anti-429)
  while IFS='|' read -r id dur titulo; do
    [[ -z "$id" ]] && continue
    [[ -f canales/$canal/$id.en.vtt || -f canales/$canal/$id.es.vtt ]] && continue
    (cd canales/$canal && yt-dlp --skip-download --write-auto-subs --write-subs --sub-langs "en.*,es.*" --sleep-requests 4 -o "%(id)s" "https://youtu.be/$id" >> ../subs_ola2.log 2>&1)
  done < canales/keep_$canal.txt
  echo "$(date +%H:%M) subs $canal listos: $(ls canales/$canal/*.vtt 2>/dev/null | wc -l)" >> destilado/master_ola2.log
done
# destilar con 3 workers (usa destilar_uno.sh — DeepSeek/Groq a disco)
for canal in SolutionsUno JonLoomer FoxwellDigital YouTubeCreators; do
  cut -d'|' -f1 canales/keep_$canal.txt | xargs -P3 -I{} $BASE/scripts/destilar_uno.sh $canal {} >> destilado/master_ola2.log 2>&1
done
echo "$(date +%H:%M) === TODO_LISTO OLA2_VIDEOS $(ls destilado/{SolutionsUno,JonLoomer,FoxwellDigital,YouTubeCreators}/*.md 2>/dev/null | wc -l) destilados ===" >> destilado/master_ola2.log
