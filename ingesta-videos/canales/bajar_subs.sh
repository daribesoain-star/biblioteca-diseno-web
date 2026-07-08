#!/bin/zsh
# Baja solo subtítulos automáticos (en) + info.json de un canal, con pausa anti-429
CANAL=$1
cd ~/Projects/biblioteca-diseno-web/ingesta-videos/canales/$CANAL
yt-dlp --skip-download --write-auto-subs --write-subs --sub-langs "en,es" \
  --sleep-requests 4 --min-sleep-interval 2 --max-sleep-interval 5 \
  --write-info-json --no-write-playlist-metafiles \
  --download-archive archivo.txt \
  -o "%(id)s.%(ext)s" \
  "https://youtube.com/@$CANAL/videos" >> descarga.log 2>&1
echo "LISTO $CANAL: $(ls *.vtt 2>/dev/null | wc -l) vtt"
