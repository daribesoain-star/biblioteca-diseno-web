#!/bin/zsh
# Ingesta de RITMO / BEATS / DURACIÓN por producto → KB ritmo-duracion. Destila con DeepSeek.
BASE=~/Projects/biblioteca-diseno-web/ingesta-videos
KB=~/Projects/estudio-sintetico/biblioteca/fundamentos/ritmo-duracion
LOG=$BASE/destilado/ritmo_master.log
mkdir -p $KB/destilado

FUENTES=(
  "rt_edit|ytsearch10:video editing pacing rhythm tutorial when to cut|10"
  "rt_beat|ytsearch10:editing to the beat music sync video tutorial cuts on beat|10"
  "rt_duracion|ytsearch12:best video length by platform reels tiktok shorts youtube ad seconds 2026|12"
  "rt_hook|ytsearch8:hook first 3 seconds retention curve video ad structure|8"
  "rt_film|ytsearch8:film editing rhythm pacing montage theory shot duration|8"
  "rt_ads|ytsearch8:ad length 6 second bumper 15 30 second commercial best practice|8"
  "rt_es|ytsearch6:ritmo edición montaje video duración reels cortes al beat tutorial español|6"
  "rt_zh|ytsearch8:视频 剪辑 节奏 卡点 时长 短视频 教程|8"
)

echo "=== INGESTA RITMO — inicio $(date) ===" >> $LOG
for entry in $FUENTES; do
  nombre=${entry%%|*}; rest=${entry#*|}; fuente=${rest%|*}; N=${rest##*|}
  dir=$BASE/canales/$nombre; mkdir -p $dir
  echo ">>> [$nombre] bajando $(date +%H:%M:%S)" >> $LOG
  yt-dlp --skip-download --write-auto-subs --write-subs --sub-langs "en,es,zh-Hans,zh" --sub-format vtt \
    --write-info-json --playlist-end $N --sleep-requests 8 --ignore-errors \
    -o "$dir/%(id)s.%(ext)s" "$fuente" >> $LOG 2>&1
  echo ">>> [$nombre] subs: $(ls $dir/*.vtt(N)|wc -l|tr -d ' ')" >> $LOG
done
# destilar tras las demás (no saturar DeepSeek)
while pgrep -f "destilar_canal_deepseek|destilar_canal_higgsfield|destilar_canal_campanas|destilar_canal_multi|destilar_canal_ritmo" >/dev/null 2>&1; do sleep 20; done
for entry in $FUENTES; do
  nombre=${entry%%|*}
  echo ">>> [$nombre] destilando $(date +%H:%M:%S)" >> $LOG
  zsh $BASE/scripts/destilar_canal_ritmo.sh $nombre >> $LOG 2>&1
done
echo "=== INGESTA RITMO FIN $(date). KB ritmo: $(ls $KB/destilado/*.md(N)|wc -l|tr -d ' ') ===" >> $LOG
