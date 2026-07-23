#!/bin/zsh
# Reintento de fuentes pendientes: Aputure + Matti (via búsqueda, sus handles dan 404) + chino zh_jingtou (429)
BASE=~/Projects/biblioteca-diseno-web/ingesta-videos
KB=~/Projects/estudio-sintetico/biblioteca/fundamentos/cinematografia
LOG=$BASE/destilado/reintento.log
mkdir -p $KB/destilado

FUENTES=(
  "aputure|ytsearch10:Aputure cinematic lighting tutorial three point|10"
  "mattihaapoja|ytsearch8:Matti Haapoja cinematic b-roll camera movement tutorial|8"
  "zh_jingtou|ytsearch10:镜头语言 电影 摄影 教程 运镜|10"
)

echo "=== REINTENTO — inicio $(date) ===" >> $LOG
# 1) descargar subs (sleep alto para no gatillar 429)
for entry in $FUENTES; do
  nombre=${entry%%|*}; rest=${entry#*|}; fuente=${rest%|*}; N=${rest##*|}
  dir=$BASE/canales/$nombre; mkdir -p $dir
  echo ">>> [$nombre] bajando ($fuente) $(date +%H:%M:%S)" >> $LOG
  yt-dlp --skip-download --write-auto-subs --write-subs --sub-langs "en,es,zh-Hans,zh" --sub-format vtt \
    --write-info-json --playlist-end $N --sleep-requests 8 --ignore-errors \
    -o "$dir/%(id)s.%(ext)s" "$fuente" >> $LOG 2>&1
  echo ">>> [$nombre] subs: $(ls $dir/*.vtt(N)|wc -l|tr -d ' ')" >> $LOG
done

# 2) esperar a que termine la destilación DeepSeek en curso (no saturar la key)
while pgrep -f "destilar_canal_deepseek" >/dev/null 2>&1; do sleep 20; done

# 3) destilar las nuevas con DeepSeek
for entry in $FUENTES; do
  nombre=${entry%%|*}
  echo ">>> [$nombre] destilando $(date +%H:%M:%S)" >> $LOG
  zsh $BASE/scripts/destilar_canal_deepseek.sh $nombre >> $LOG 2>&1
done
echo "=== REINTENTO FIN $(date). KB total: $(ls $KB/destilado/*.md(N)|wc -l|tr -d ' ') ===" >> $LOG
