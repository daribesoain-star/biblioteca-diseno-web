#!/bin/zsh
# Ingesta de cinematografía → KB del agente director-fotografia
# Baja subs de canales de dirección de foto + destila con Codex + copia a la KB del estudio.
BASE=~/Projects/biblioteca-diseno-web/ingesta-videos
KB=~/Projects/estudio-sintetico/biblioteca/fundamentos/cinematografia
LOG=$BASE/destilado/cinematografia_master.log
N=${N:-12}   # videos por canal en la ola 1
mkdir -p $KB/destilado $BASE/destilado

# canal_local:handle_youtube
CANALES=(studiobinder:@StudioBinder indepthcine:@InDepthCine wolfcrow:@wolfcrow)

echo "=== INGESTA CINEMATOGRAFIA — inicio $(date) (N=$N/canal) ===" >> $LOG
for entry in $CANALES; do
  canal=${entry%%:*}; handle=${entry##*:}
  dir=$BASE/canales/$canal; mkdir -p $dir
  echo ">>> [$canal] bajando subs de $handle $(date +%H:%M:%S)" >> $LOG
  yt-dlp --skip-download --write-auto-subs --write-subs --sub-langs "en,es" --sub-format vtt \
    --write-info-json --playlist-end $N --sleep-requests 4 --ignore-errors \
    -o "$dir/%(id)s.%(ext)s" "https://www.youtube.com/$handle/videos" >> $LOG 2>&1
  nsubs=$(ls $dir/*.vtt 2>/dev/null | wc -l | tr -d ' ')
  echo ">>> [$canal] subs bajados: $nsubs — destilando $(date +%H:%M:%S)" >> $LOG
  zsh $BASE/scripts/destilar_canal.sh $canal >> $LOG 2>&1
  cp -n $BASE/destilado/$canal/*.md $KB/destilado/ 2>/dev/null
  echo ">>> [$canal] destilados en KB: $(ls $KB/destilado/*.md 2>/dev/null | wc -l | tr -d ' ')" >> $LOG
done
echo "=== INGESTA CINEMATOGRAFIA — fin $(date). Total en KB: $(ls $KB/destilado/*.md 2>/dev/null | wc -l | tr -d ' ') ===" >> $LOG
