#!/bin/zsh
# Ola 3 de cinematografía — coreano + Runway/Sora + más DP. Destila con DeepSeek (Codex sin créditos).
BASE=~/Projects/biblioteca-diseno-web/ingesta-videos
KB=~/Projects/estudio-sintetico/biblioteca/fundamentos/cinematografia
LOG=$BASE/destilado/cinematografia_ola3.log
mkdir -p $KB/destilado

FUENTES=(
  "ko_cine|ytsearch10:영화 촬영 기법 카메라 무빙 촬영 강좌|10"
  "ko_light|ytsearch6:영화 조명 촬영 라이팅 강좌|6"
  "runway|ytsearch8:Runway Gen-3 camera movement prompt cinematography tutorial|8"
  "sora|ytsearch8:Sora AI video cinematic camera prompt tutorial|8"
  "en_dp2|ytsearch8:cinematography lighting tutorial director of photography camera movement|8"
)

echo "=== OLA 3 — inicio $(date) ===" >> $LOG
for entry in $FUENTES; do
  nombre=${entry%%|*}; rest=${entry#*|}; fuente=${rest%|*}; N=${rest##*|}
  dir=$BASE/canales/$nombre; mkdir -p $dir
  echo ">>> [$nombre] bajando $(date +%H:%M:%S)" >> $LOG
  yt-dlp --skip-download --write-auto-subs --write-subs --sub-langs "en,es,ko" --sub-format vtt \
    --write-info-json --playlist-end $N --sleep-requests 8 --ignore-errors \
    -o "$dir/%(id)s.%(ext)s" "$fuente" >> $LOG 2>&1
done
# destilar con DeepSeek (esperar si hay otra destilación en curso)
while pgrep -f "destilar_canal_deepseek" >/dev/null 2>&1; do sleep 20; done
for entry in $FUENTES; do
  nombre=${entry%%|*}
  echo ">>> [$nombre] destilando $(date +%H:%M:%S)" >> $LOG
  zsh $BASE/scripts/destilar_canal_deepseek.sh $nombre >> $LOG 2>&1
done
echo "=== OLA 3 FIN $(date). KB total: $(ls $KB/destilado/*.md(N)|wc -l|tr -d ' ') ===" >> $LOG
