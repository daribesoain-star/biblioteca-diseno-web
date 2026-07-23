#!/bin/zsh
# rescatar_articulos_ck.sh — re-baja los artículos de la ola canales-kids con el FIX:
# html2texto.py recibe ARCHIVO (no stdin). Fallback Playwright para SPA. Idempotente.
BASE=~/Projects/biblioteca-diseno-web/ingesta-videos
CK=$BASE/canales-kids
UA="Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/126.0 Safari/537.36"

typeset -A ARTS
ARTS=(
  buffer_tiktok "https://buffer.com/resources/tiktok-algorithm/"
  hootsuite_tiktok "https://blog.hootsuite.com/tiktok-algorithm/"
  backlinko_tiktok "https://backlinko.com/tiktok-users"
  imh_creator_rewards "https://influencermarketinghub.com/tiktok-creator-rewards-program/"
  sprout_reels "https://sproutsocial.com/insights/instagram-reels-strategy/"
  later_reels "https://later.com/blog/instagram-reels/"
  buffer_threads "https://buffer.com/resources/threads-strategy/"
  tubefilter_kids "https://www.tubefilter.com/category/kids-family/"
  kidscreen_licensing "https://kidscreen.com/category/licensing/"
  metricool_tiktok_es "https://metricool.com/es/algoritmo-tiktok/"
  metricool_reels_es "https://metricool.com/es/instagram-reels/"
  rd_tiktok_pt "https://resultadosdigitais.com.br/marketing/tiktok/"
  hubspot_shorts "https://blog.hubspot.com/marketing/youtube-shorts"
  licenseglobal_kids "https://www.licenseglobal.com/kids-entertainment"
)

for slug url in ${(kv)ARTS}; do
  out=$CK/articulos/${slug}.txt
  [[ -s $out ]] && continue
  html=/tmp/ck_art_$slug.html
  curl -sL -A "$UA" --max-time 40 "$url" -o $html
  { echo "URL_FUENTE: $url"; python3 $BASE/scripts/html2texto.py $html 2>/dev/null; } > $out
  w=$(wc -w < $out)
  if (( w < 150 )); then
    echo "SPA $slug (${w}w) → pendiente Playwright"
    mv $out $out.corto
  else
    echo "OK $slug (${w}w)"
    rm -f $out.corto
  fi
  rm -f $html
done
echo "curl-fix listo: $(ls $CK/articulos/*.txt 2>/dev/null | wc -l) artículos buenos"
