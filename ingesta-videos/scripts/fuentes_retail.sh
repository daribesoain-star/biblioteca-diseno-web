#!/bin/zsh
# fuentes_retail.sh — paso 1 ingesta retail-neo: inventarios yt-dlp por eje (EN/ES/ZH). Idempotente.
BASE=~/Projects/biblioteca-diseno-web/ingesta-videos
RN=$BASE/retail-neo
mkdir -p $RN/canales

buscar() {
  local canal=$1; shift
  local out=$RN/canales/canal_$canal.txt
  for q in "$@"; do
    local marca=$RN/canales/.done_${canal}_$(echo -n "$q" | shasum | cut -c1-10)
    [[ -f $marca ]] && continue
    echo "[$canal] buscando: $q"
    yt-dlp --flat-playlist "ytsearch15:$q" \
      --print "%(id)s|%(duration)s|%(view_count)s|%(upload_date)s|%(title)s" \
      >> $out 2>/dev/null
    touch $marca
    sleep 2
  done
}

# ── Eje 1: CRO retail/e-commerce ──
buscar retail_cro \
  "ecommerce conversion rate optimization strategy" \
  "product detail page optimization ecommerce tutorial" \
  "checkout optimization reduce cart abandonment" \
  "mobile ecommerce UX best practices Baymard" \
  "optimizacion conversion ecommerce tienda online" \
  "CRO ecommerce como mejorar la conversion" \
  "电商转化率优化 技巧" \
  "详情页 转化率 优化"

# ── Eje 2: RRSS / TikTok Shop / social commerce ──
buscar retail_social \
  "TikTok Shop strategy how to sell" \
  "live shopping live commerce strategy" \
  "social commerce strategy shoppable posts" \
  "TikTok creator affiliates ecommerce strategy" \
  "TikTok Shop estrategia vender productos" \
  "social commerce vender por redes sociales tienda" \
  "TikTok Shop 运营 教程" \
  "直播带货 技巧 新手"

# ── Eje 3: New retail 新零售 / modelo neo-tecnológico ──
buscar retail_newretail \
  "new retail Alibaba Hema Freshippo model explained" \
  "omnichannel retail strategy O2O" \
  "retail media network how it works" \
  "dark stores quick commerce business model" \
  "nuevo retail omnicanal estrategia tiendas" \
  "新零售 模式 解析" \
  "私域流量 运营 方法" \
  "社区团购 商业模式"

# dedup por id conservando orden
for c in retail_cro retail_social retail_newretail; do
  f=$RN/canales/canal_$c.txt
  [[ -f $f ]] && awk -F'|' '!seen[$1]++' $f > $f.tmp && mv $f.tmp $f
done
echo "=== INVENTARIOS ==="
wc -l $RN/canales/canal_retail_*.txt
