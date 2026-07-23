#!/bin/zsh
# Ola 2 de cinematografía — más canales + multi-idioma (es/zh/pt) + prompting video IA
BASE=~/Projects/biblioteca-diseno-web/ingesta-videos
KB=~/Projects/estudio-sintetico/biblioteca/fundamentos/cinematografia
LOG=$BASE/destilado/cinematografia_ola2.log
mkdir -p $KB/destilado

# nombre_local | fuente (URL de canal o ytsearchN:query) | N
FUENTES=(
  "aputure|https://www.youtube.com/@Aputure/videos|10"
  "filmriot|https://www.youtube.com/@filmriot/videos|10"
  "mattihaapoja|https://www.youtube.com/@MattiHaapoja/videos|8"
  "corridorcrew|https://www.youtube.com/@CorridorCrew/videos|8"
  "es_planos|ytsearch10:tipos de plano y movimientos de camara en cine explicado|10"
  "es_ilum|ytsearch8:como iluminar como el cine tutorial direccion de fotografia|8"
  "zh_yunjing|ytsearch10:运镜教学 电影感 镜头|10"
  "zh_jingtou|ytsearch8:镜头语言 电影 摄影 教程|8"
  "pt_direcao|ytsearch8:direção de fotografia planos e movimentos de camera|8"
  "ai_veo|ytsearch8:Veo 3 cinematic camera movement prompt tutorial|8"
  "ai_kling|ytsearch8:Kling AI camera control prompt cinematography|8"
)

echo "=== OLA 2 CINEMATOGRAFIA — inicio $(date) ===" >> $LOG
for entry in $FUENTES; do
  nombre=${entry%%|*}; rest=${entry#*|}; fuente=${rest%|*}; N=${rest##*|}
  dir=$BASE/canales/$nombre; mkdir -p $dir
  echo ">>> [$nombre] bajando ($fuente) N=$N $(date +%H:%M:%S)" >> $LOG
  yt-dlp --skip-download --write-auto-subs --write-subs --sub-langs "en,es,pt,zh-Hans,zh,ko" --sub-format vtt \
    --write-info-json --playlist-end $N --sleep-requests 4 --ignore-errors \
    -o "$dir/%(id)s.%(ext)s" "$fuente" >> $LOG 2>&1
  echo ">>> [$nombre] destilando $(date +%H:%M:%S)" >> $LOG
  zsh $BASE/scripts/destilar_canal_multi.sh $nombre >> $LOG 2>&1
  cp -n $BASE/destilado/$nombre/*.md(N) $KB/destilado/ 2>/dev/null
  echo ">>> [$nombre] KB total: $(ls $KB/destilado/*.md(N) | wc -l | tr -d ' ')" >> $LOG
done
echo "=== OLA 2 FIN $(date). KB total: $(ls $KB/destilado/*.md(N) | wc -l | tr -d ' ') ===" >> $LOG
