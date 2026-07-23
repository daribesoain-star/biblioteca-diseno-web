#!/bin/zsh
# bajar_subs_retail.sh <canal> — baja subs (EN/ES/ZH) de keep_<canal>.txt → retail-neo/canales/<canal>/. Idempotente.
BASE=~/Projects/biblioteca-diseno-web/ingesta-videos
RN=$BASE/retail-neo
CANAL=$1
SLEEP=${2:-4}
DIR=$RN/canales/$CANAL
mkdir -p $DIR
cd $DIR || exit 1
while IFS='|' read -r id rest; do
  [[ -z $id ]] && continue
  if ls $id.*.vtt >/dev/null 2>&1; then echo "SKIP $id"; continue; fi
  yt-dlp --skip-download --write-auto-subs --write-subs \
    --sub-langs "en.*,es.*,zh.*" --sleep-requests $SLEEP \
    -o "%(id)s" "https://youtu.be/$id" >/dev/null 2>&1
  if ls $id.*.vtt >/dev/null 2>&1; then
    echo "$(date +%H:%M:%S) OK $id"
  else
    echo "$(date +%H:%M:%S) SIN-SUBS/FALLO $id"
  fi
done < $RN/canales/keep_$CANAL.txt
echo "=== $CANAL: $(ls $DIR/*.vtt 2>/dev/null | wc -l) vtt de $(wc -l < $RN/canales/keep_$CANAL.txt) videos ==="
