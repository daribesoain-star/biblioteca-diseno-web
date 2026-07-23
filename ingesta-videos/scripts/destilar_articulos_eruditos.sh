#!/bin/zsh
# destilar_articulos_eruditos.sh — destila con Codex los artículos P1 de fuentes-eruditos/<canal>/
# a destilado/eruditos-<canal>/<slug>.md (idempotente, lock anti-duplicado por slug).
BASE=~/Projects/biblioteca-diseno-web/ingesta-videos
FUENTES=$BASE/fuentes-eruditos

url_de() {
  case $1 in
    aisensy-frequency-capping) echo "https://m.aisensy.com/blog/meta-frequency-capping-for-whatsapp-marketing-messages/";;
    infobip-frequency-capping) echo "https://www.infobip.com/blog/what-is-whatsapp-frequency-capping";;
    klaviyo-benchmark-2025-amer) echo "https://klaviyocms.wpengine.com/wp-content/uploads/2025/02/2025-Benchmark-Report_AMER.pdf";;
    klaviyo-benchmarks-by-industry) echo "https://www.klaviyo.com/products/email-marketing/benchmarks";;
    chase-dimond-email-flows) echo "https://www.chasedimond.com/ecommerce-email-flows";;
    chase-dimond-reengagement) echo "https://www.chasedimond.com/re-engagement-email-examples-20-win-back-campaigns-that-revive-inactive-subscribers-and-lapsed-customers";;
    klaviyo-reengage-old-list) echo "https://help.klaviyo.com/hc/en-us/articles/10767213384859";;
    google-sender-guidelines) echo "https://support.google.com/a/answer/14229414";;
    klaviyo-replenishment-flow) echo "https://www.klaviyo.com/blog/the-email-automation-all-consumable-goods-brands-need-that-many-dont-yet-use";;
    tiktok-next-2026-trend-report) echo "https://ads.tiktok.com/business/library/TikTok_Next_2026_Trend_Report.pdf";;
    tiktok-smartplus-best-practices) echo "https://ads.tiktok.com/help/article/best-practices-for-smart-plus-web-campaigns";;
    m2e-tiktok-shop-latam) echo "https://blog.m2ecloud.com/tiktok-shop-across-latam-where-it-s-live-and-what-s-coming/";;
    soul-digital-tiktok-shop-chile) echo "https://souldigital.cl/blog/estrategia-de-contenido-social-media/tiktok-shop-chile/";;
    b2linked-ep89-bidding) echo "https://b2linked.com/blog/ep89";;
    b2linked-ep125-low-budget) echo "https://b2linked.com/blog/ep125";;
    b2linked-ep164-pitfalls) echo "https://b2linked.com/blog/ep164";;
    kanal-ctwa-benchmarks-2026) echo "https://getkanal.com/blog/click-to-whatsapp-ads-benchmarks-2026";;
    motion-creative-benchmarks-2026) echo "https://motionapp.com/thumbstop-pulse/creative-benchmarks-2026";;
    optmyzr-data-studies-index) echo "https://www.optmyzr.com/blog/data-studies/";;
    mike-rhodes-negative-script) echo "https://mikerhodes.com.au/scripts/neg";;
    *) echo "";;
  esac
}

for txt in $FUENTES/*/*.txt(N); do
  canal=$(basename $(dirname $txt))
  slug=$(basename $txt .txt)
  OUT=$BASE/destilado/eruditos-$canal
  mkdir -p $OUT
  [[ -s $OUT/$slug.md ]] && continue
  LOCK=/tmp/alock_$slug
  mkdir $LOCK 2>/dev/null || continue
  url=$(url_de $slug)
  codex exec -s read-only --skip-git-repo-check -o $OUT/$slug.md - >> $BASE/destilado/destilar_articulos_eruditos.log 2>&1 << PROMPT
Lee el archivo $txt: texto extraído de un artículo/documento sobre marketing ($canal). Destílalo EN ESPAÑOL NEUTRO con esta estructura EXACTA en markdown:

# $slug
**Fuente:** $url | canal temático: $canal | destilado 2026-07-09
## Qué enseña (2-3 líneas)
## Lecciones accionables
(bullets con el máximo detalle: números, benchmarks, umbrales, pasos, nombres de herramientas, timings — nada vago; si hay tablas de benchmarks, inclúyelas)
## Reglas para agentes
(imperativas y verificables: "usa X cuando Y", "nunca Z")
## Errores comunes que evita o menciona

Ignora restos de navegación/menús/footers del texto. Responde SOLO con el markdown final, sin preámbulo.
PROMPT
  rmdir $LOCK 2>/dev/null
  if [[ -s $OUT/$slug.md ]]; then echo "$(date +%H:%M:%S) OK articulo $canal/$slug"; else echo "$(date +%H:%M:%S) FALLO articulo $canal/$slug"; fi
done
echo "$(date +%H:%M:%S) === ARTICULOS ERUDITOS TERMINADO ==="
for d in $BASE/destilado/eruditos-*(N); do echo "$(basename $d): $(ls $d | wc -l | tr -d ' ') destilados"; done
