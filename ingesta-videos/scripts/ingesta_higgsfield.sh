#!/bin/zsh
# Ingesta de tutoriales/tips/usos de HIGGSFIELD → KB del erudito. Destila con DeepSeek (cero tokens Claude).
BASE=~/Projects/biblioteca-diseno-web/ingesta-videos
KB=~/Projects/estudio-sintetico/biblioteca/fundamentos/higgsfield
LOG=$BASE/destilado/higgsfield_master.log
mkdir -p $KB/destilado

FUENTES=(
  "hf_tutorial|ytsearch12:Higgsfield AI tutorial how to use guide|12"
  "hf_presets|ytsearch10:Higgsfield presets camera movement tutorial|10"
  "hf_product|ytsearch8:Higgsfield product ad marketing studio tutorial|8"
  "hf_tips|ytsearch8:Higgsfield tips tricks best settings workflow|8"
  "hf_es|ytsearch8:Higgsfield tutorial español como usar|8"
  "hf_compare|ytsearch6:Higgsfield vs Kling Runway Veo comparison|6"
)

echo "=== INGESTA HIGGSFIELD — inicio $(date) ===" >> $LOG
for entry in $FUENTES; do
  nombre=${entry%%|*}; rest=${entry#*|}; fuente=${rest%|*}; N=${rest##*|}
  dir=$BASE/canales/$nombre; mkdir -p $dir
  echo ">>> [$nombre] bajando $(date +%H:%M:%S)" >> $LOG
  yt-dlp --skip-download --write-auto-subs --write-subs --sub-langs "en,es" --sub-format vtt \
    --write-info-json --playlist-end $N --sleep-requests 8 --ignore-errors \
    -o "$dir/%(id)s.%(ext)s" "$fuente" >> $LOG 2>&1
  echo ">>> [$nombre] subs: $(ls $dir/*.vtt(N)|wc -l|tr -d ' ')" >> $LOG
done
# destilar (esperar si hay otra destilación DeepSeek en curso, para no saturar la key)
while pgrep -f "destilar_canal_deepseek|destilar_canal_higgsfield" >/dev/null 2>&1; do sleep 20; done
for entry in $FUENTES; do
  nombre=${entry%%|*}
  echo ">>> [$nombre] destilando $(date +%H:%M:%S)" >> $LOG
  zsh $BASE/scripts/destilar_canal_higgsfield.sh $nombre >> $LOG 2>&1
done
echo "=== INGESTA HIGGSFIELD FIN $(date). KB higgsfield: $(ls $KB/destilado/*.md(N)|wc -l|tr -d ' ') ===" >> $LOG
