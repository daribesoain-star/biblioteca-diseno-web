#!/bin/zsh
BASE=~/Projects/biblioteca-diseno-web/ingesta-videos; cd $BASE || exit 1
for area in ventas email branding; do
  canal=ola5-$area
  mkdir -p canales/$canal destilado/$canal
  while IFS='|' read -r id dur vis fecha ar titulo; do
    [[ -z "$id" ]] && continue
    [[ -f canales/$canal/$id.en.vtt || -f canales/$canal/$id.es.vtt ]] && continue
    (cd canales/$canal && yt-dlp --skip-download --write-auto-subs --write-subs --sub-langs "en.*,es.*" --sleep-requests 4 -o "%(id)s" "https://youtu.be/$id" >> ../subs_ola5.log 2>&1)
  done < canales/$canal/keep.txt
  echo "$(date +%H:%M) subs $area: $(ls canales/$canal/*.vtt 2>/dev/null | wc -l)" >> destilado/master_ola5.log
done
for area in ventas email branding; do
  canal=ola5-$area
  cut -d'|' -f1 canales/$canal/keep.txt | xargs -P3 -I{} $BASE/scripts/destilar_uno.sh $canal {} >> destilado/master_ola5.log 2>&1
done
echo "$(date +%H:%M) === TODO_LISTO OLA5 $(ls destilado/ola5-{ventas,email,branding}/*.md 2>/dev/null | wc -l) destilados ===" >> destilado/master_ola5.log
