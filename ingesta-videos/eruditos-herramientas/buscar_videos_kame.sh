#!/bin/zsh
# buscar_videos_kame.sh — inventario de candidatos YouTube para el erudito Kame (todo el ERP + API)
BASE=~/Projects/biblioteca-diseno-web/ingesta-videos
FMT="%(id)s|%(duration)s|%(view_count)s|%(upload_date)s|%(title)s"
inv=$BASE/canales/canal_eh-kame.txt
[[ -f $inv && $(wc -l < $inv) -gt 10 ]] && { echo "SKIP kame (ya tiene inventario)"; exit 0; }
: > $inv
for q in \
  "ytsearch12:Kame ERP tutorial facturacion electronica" \
  "ytsearch10:Kame tutorial como emitir factura boleta" \
  "ytsearch8:Kame ERP inventario productos tutorial" \
  "ytsearch8:Kame contabilidad tutorial" \
  "ytsearch8:Kame POS punto de venta tutorial" \
  "ytsearch8:Kame ERP API integracion" \
  "ytsearch8:Siigo Kame tutorial chile" \
  "ytsearch6:Kame remuneraciones tutorial" \
  "ytsearch6:Kame certificado digital folios CAF" \
  "ytsearch6:Kame ERP configuracion inicial empresa"
do
  yt-dlp "$q" --flat-playlist --print "$FMT" 2>/dev/null >> $inv
  sleep 2
done
awk -F'|' '!seen[$1]++' $inv > $inv.tmp && mv $inv.tmp $inv
echo "kame: $(wc -l < $inv | tr -d ' ') candidatos"
