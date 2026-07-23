#!/bin/zsh
# Paso 1 ingesta MKT software houses 2025-2026 — búsquedas yt-dlp multi-idioma
# Salida: un .txt por query (id|dur|views|fecha|titulo), luego triage con Codex.
set -u
DIR="$HOME/Projects/biblioteca-diseno-web/ingesta-videos/fuentes-eruditos/mkt-software-houses"
cd "$DIR" || exit 1

queries=(
  "software agency marketing 2025|en_agency_marketing"
  "how to get clients software development agency|en_get_clients"
  "dev shop lead generation b2b|en_devshop_leads"
  "agency founder personal brand LinkedIn|en_founder_brand"
  "productized services agency pricing|en_productized"
  "software house case study marketing|en_case_study"
  "b2b saas content marketing 2025|en_b2b_content"
  "agencia de software como conseguir clientes|es_conseguir_clientes"
  "marketing para agencias de desarrollo|es_mkt_agencias"
  "vender software a empresas b2b|es_vender_software"
  "软件开发公司 获客|zh_huoke"
  "软件外包 营销 客户|zh_waibao"
  "b2b 软件 营销 2025|zh_b2b"
)

for q in "${queries[@]}"; do
  query="${q%%|*}"; slug="${q##*|}"
  out="canal_${slug}.txt"
  [ -s "$out" ] && { echo "SKIP $out (ya existe)"; continue; }
  echo ">> $query"
  yt-dlp "ytsearch12:${query}" --flat-playlist \
    --print "%(id)s|%(duration)s|%(view_count)s|%(upload_date)s|%(title)s" \
    --sleep-requests 4 > "$out" 2>>errores.log || echo "FALLO: $query" >> errores.log
  echo "   $(wc -l < "$out" | tr -d ' ') resultados"
done
cat canal_*.txt | sort -t'|' -k1,1 -u > todos_candidatos.txt
echo "TOTAL únicos: $(wc -l < todos_candidatos.txt)"
echo "DONE $(date '+%H:%M')" > .paso1_done
