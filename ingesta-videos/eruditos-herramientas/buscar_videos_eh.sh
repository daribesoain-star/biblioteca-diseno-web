#!/bin/zsh
# buscar_videos_eh.sh — inventarios de candidatos YouTube para los 4 eruditos de herramientas (lote 1)
# Idempotente: si el inventario ya tiene >10 líneas, no re-busca.
BASE=~/Projects/biblioteca-diseno-web/ingesta-videos
FMT="%(id)s|%(duration)s|%(view_count)s|%(upload_date)s|%(title)s"

buscar() { # $1=canal $2...=queries
  local canal=$1; shift
  local inv=$BASE/canales/canal_$canal.txt
  [[ -f $inv && $(wc -l < $inv) -gt 10 ]] && { echo "SKIP $canal (ya tiene inventario)"; return; }
  : > $inv
  for q in "$@"; do
    yt-dlp "$q" --flat-playlist --print "$FMT" 2>/dev/null >> $inv
    sleep 2
  done
  # dedup por id
  awk -F'|' '!seen[$1]++' $inv > $inv.tmp && mv $inv.tmp $inv
  echo "$canal: $(wc -l < $inv | tr -d ' ') candidatos"
}

buscar eh-elevenlabs-audio \
  "ytsearch12:ElevenLabs tutorial 2025 complete guide" \
  "ytsearch10:ElevenLabs voice cloning tutorial professional" \
  "ytsearch8:ElevenLabs music generation tutorial" \
  "ytsearch8:ElevenLabs sound effects dubbing tutorial" \
  "ytsearch8:ElevenLabs tutorial español voz ia" \
  "ytsearch6:ElevenLabs 教程 语音克隆"

buscar eh-imagen-ia \
  "ytsearch12:flux prompt guide tutorial 2025" \
  "ytsearch10:nano banana gemini image editing tutorial" \
  "ytsearch8:ideogram ai tutorial text in image" \
  "ytsearch8:recraft ai tutorial design" \
  "ytsearch8:ai image generation model comparison 2025 flux ideogram" \
  "ytsearch6:AI绘画 提示词 教程 2025" \
  "ytsearch8:generar imagenes ia tutorial español 2025"

buscar eh-mercadolibre \
  "ytsearch12:vender en mercado libre chile 2025" \
  "ytsearch12:mercado libre estrategia posicionar publicaciones 2025" \
  "ytsearch8:mercado ads tutorial product ads" \
  "ytsearch8:mercado libre full logistica estrategia vendedor" \
  "ytsearch6:美客多 卖家 运营 教程" \
  "ytsearch8:mercado libre errores vendedores nuevos"

buscar eh-pagos-chile \
  "ytsearch10:pasarela de pago chile 2025 comparacion comisiones" \
  "ytsearch8:webpay transbank integracion tutorial" \
  "ytsearch10:mercado pago checkout tutorial 2025 chile" \
  "ytsearch6:flow chile pagos tutorial integracion" \
  "ytsearch6:fintoc tutorial pagos" \
  "ytsearch6:payment gateway latin america 2025 guide"

echo "LISTO $(date +%H:%M:%S)"
