#!/bin/zsh
# Ingesta de CAMPAÑAS publicitarias de referencia (ampliar el prisma para B2Vió) → KB campanas-referencia.
BASE=~/Projects/biblioteca-diseno-web/ingesta-videos
KB=~/Projects/estudio-sintetico/biblioteca/fundamentos/campanas-referencia
LOG=$BASE/destilado/campanas_master.log
mkdir -p $KB/destilado

FUENTES=(
  "camp_b2b|ytsearch10:best B2B advertising campaigns 2025 analysis creative|10"
  "camp_value|ytsearch10:best value price positioning advertising smart shopper funny commercial|10"
  "camp_food|ytsearch8:best food meat commercial cinematic appetite advertising|8"
  "camp_iconic|ytsearch8:Snickers hungry Wendys wheres the beef iconic ad breakdown|8"
  "camp_breakdown|ytsearch10:how great ads work advertising strategy breakdown creative insight|10"
  "camp_es|ytsearch8:mejores comerciales creativos análisis publicidad Latinoamérica España|8"
  "camp_cannes|ytsearch8:Cannes Lions winning campaign case study analysis|8"
)

echo "=== INGESTA CAMPAÑAS — inicio $(date) ===" >> $LOG
for entry in $FUENTES; do
  nombre=${entry%%|*}; rest=${entry#*|}; fuente=${rest%|*}; N=${rest##*|}
  dir=$BASE/canales/$nombre; mkdir -p $dir
  echo ">>> [$nombre] bajando $(date +%H:%M:%S)" >> $LOG
  yt-dlp --skip-download --write-auto-subs --write-subs --sub-langs "en,es" --sub-format vtt \
    --write-info-json --playlist-end $N --sleep-requests 8 --ignore-errors \
    -o "$dir/%(id)s.%(ext)s" "$fuente" >> $LOG 2>&1
  echo ">>> [$nombre] subs: $(ls $dir/*.vtt(N)|wc -l|tr -d ' ')" >> $LOG
done
while pgrep -f "destilar_canal_deepseek|destilar_canal_higgsfield|destilar_canal_campanas" >/dev/null 2>&1; do sleep 20; done
for entry in $FUENTES; do
  nombre=${entry%%|*}
  echo ">>> [$nombre] destilando $(date +%H:%M:%S)" >> $LOG
  zsh $BASE/scripts/destilar_canal_campanas.sh $nombre >> $LOG 2>&1
done
echo "=== INGESTA CAMPAÑAS FIN $(date). KB campanas: $(ls $KB/destilado/*.md(N)|wc -l|tr -d ' ') ===" >> $LOG
