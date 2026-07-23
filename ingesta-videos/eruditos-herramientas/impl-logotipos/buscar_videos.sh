#!/bin/zsh
# buscar_videos.sh — inventario de candidatos YouTube para IMPLEMENTACIÓN de logotipos (EN/ES)
BASE=~/Projects/biblioteca-diseno-web/ingesta-videos
FMT="%(id)s|%(duration)s|%(view_count)s|%(upload_date)s|%(title)s"
inv=$BASE/canales/canal_eh-impl-logotipos.txt
: > $inv
for q in \
  "ytsearch10:logo variations system primary secondary lockup tutorial" \
  "ytsearch8:brand guidelines logo usage clear space minimum size tutorial" \
  "ytsearch8:logo construction grid optical alignment tutorial" \
  "ytsearch10:favicon app icon 2025 tutorial maskable pwa" \
  "ytsearch8:apple touch icon android adaptive icon safe zone tutorial" \
  "ytsearch8:logo mockup signage storefront apply tutorial" \
  "ytsearch8:vectorize logo png to svg illustrator tutorial" \
  "ytsearch8:brand identity application deliverables logo package tutorial" \
  "ytsearch6:logo files svg png pdf delivery client tutorial" \
  "ytsearch6:sistema de marca variantes de logo tutorial espanol" \
  "ytsearch6:manual de marca uso de logo area de proteccion tutorial" \
  "ytsearch6:vectorizar logo png a svg illustrator tutorial espanol" \
  "ytsearch6:favicon como hacer app icon tutorial espanol" \
  "ytsearch6:mockup de logo letrero fachada aplicar marca tutorial espanol"
do
  yt-dlp "$q" --flat-playlist --print "$FMT" 2>/dev/null >> $inv
  sleep 2
done
awk -F'|' '!seen[$1]++' $inv > $inv.tmp && mv $inv.tmp $inv
echo "impl-logotipos: $(wc -l < $inv | tr -d ' ') candidatos"
