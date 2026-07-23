#!/bin/zsh
# Deep research mundial — ESCUELA DE CINE (lentes, luz, composición, color, cámara) multi-idioma.
# Profesionaliza la biblioteca del estudio. Destila con DeepSeek → KB cinematografia.
BASE=~/Projects/biblioteca-diseno-web/ingesta-videos
KB=~/Projects/estudio-sintetico/biblioteca/fundamentos/cinematografia
LOG=$BASE/destilado/escuela_cine_master.log
mkdir -p $KB/destilado

FUENTES=(
  "esc_lentes|ytsearch12:camera lens types cinematography anamorphic probe macro tilt-shift focal length tutorial|12"
  "esc_luz|ytsearch12:cinematic lighting tutorial three point motivated negative fill ratio softbox|12"
  "esc_comp|ytsearch10:cinematography composition framing rule of thirds depth leading lines blocking|10"
  "esc_color|ytsearch10:color grading cinema color theory LUT film look DaVinci tutorial|10"
  "esc_movcam|ytsearch10:camera movement gimbal dolly crane drone cinematography technique tutorial|10"
  "esc_expo|ytsearch8:cinematography exposure dynamic range camera settings shutter ISO tutorial|8"
  "esc_lentes_es|ytsearch6:tipos de lentes objetivos cine fotografía focal tutorial español|6"
  "esc_luz_es|ytsearch6:iluminación cine fotografía esquemas tutorial español|6"
  "esc_zh|ytsearch10:电影摄影 镜头 布光 调色 构图 运镜 教程|10"
  "esc_ko|ytsearch6:영화 촬영 렌즈 조명 색보정 구도 강좌|6"
)

echo "=== ESCUELA DE CINE — inicio $(date) ===" >> $LOG
for entry in $FUENTES; do
  nombre=${entry%%|*}; rest=${entry#*|}; fuente=${rest%|*}; N=${rest##*|}
  dir=$BASE/canales/$nombre; mkdir -p $dir
  echo ">>> [$nombre] bajando $(date +%H:%M:%S)" >> $LOG
  yt-dlp --skip-download --write-auto-subs --write-subs --sub-langs "en,es,zh-Hans,zh,ko" --sub-format vtt \
    --write-info-json --playlist-end $N --sleep-requests 8 --ignore-errors \
    -o "$dir/%(id)s.%(ext)s" "$fuente" >> $LOG 2>&1
  echo ">>> [$nombre] subs: $(ls $dir/*.vtt(N)|wc -l|tr -d ' ')" >> $LOG
done
# destilar con DeepSeek (esperar turno para no saturar la key)
while pgrep -f "destilar_canal_deepseek|destilar_canal_higgsfield|destilar_canal_campanas|destilar_canal_multi" >/dev/null 2>&1; do sleep 20; done
for entry in $FUENTES; do
  nombre=${entry%%|*}
  echo ">>> [$nombre] destilando $(date +%H:%M:%S)" >> $LOG
  zsh $BASE/scripts/destilar_canal_deepseek.sh $nombre >> $LOG 2>&1
done
echo "=== ESCUELA DE CINE FIN $(date). KB cinematografia: $(ls $KB/destilado/*.md(N)|wc -l|tr -d ' ') ===" >> $LOG
