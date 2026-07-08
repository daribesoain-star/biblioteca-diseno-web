#!/bin/zsh
# bajar_subs_lista.sh <canal> — baja subs solo de los IDs en keep_<canal>.txt
CANAL=$1
cd ~/Projects/biblioteca-diseno-web/ingesta-videos/canales
mkdir -p $CANAL
sed 's|^|https://youtube.com/watch?v=|' keep_$CANAL.txt > /tmp/urls_$CANAL.txt
cd $CANAL
yt-dlp --skip-download --write-auto-subs --write-subs --sub-langs "en,es" \
  --sleep-requests 4 --min-sleep-interval 2 --max-sleep-interval 5 \
  --write-info-json --download-archive archivo.txt \
  -o "%(id)s.%(ext)s" -a /tmp/urls_$CANAL.txt >> descarga.log 2>&1
echo "LISTO $CANAL: $(ls *.vtt 2>/dev/null | wc -l) vtt"
