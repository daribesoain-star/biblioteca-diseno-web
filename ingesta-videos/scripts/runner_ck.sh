#!/bin/zsh
# runner_ck.sh — ola "canales kids/fauna: crecer + monetizar rápido" (2026-07-22). Idempotente.
# Foco: TikTok (prioridad), YouTube Shorts kids, IG Reels, FB/Threads, monetización de IP infantil.
BASE=~/Projects/biblioteca-diseno-web/ingesta-videos
CK=$BASE/canales-kids
mkdir -p $CK/canales/subs $CK/destilado $CK/articulos
cd $BASE

# ── 1) FUENTES VIDEO (EN/ES/ZH/PT/JA) ──
buscar() {
  local canal=$1; shift
  local out=$CK/canales/canal_$canal.txt
  for q in "$@"; do
    local marca=$CK/canales/.done_${canal}_$(echo -n "$q" | shasum | cut -c1-10)
    [[ -f $marca ]] && continue
    yt-dlp --flat-playlist "ytsearch14:$q" \
      --print "%(id)s|%(duration)s|%(view_count)s|%(upload_date)s|%(title)s" >> $out 2>/dev/null
    touch $marca; sleep 2
  done
}
buscar ck_tiktok \
  "tiktok growth strategy 2026 small account" \
  "tiktok algorithm explained 2026 go viral" \
  "tiktok creator rewards program monetization requirements" \
  "grow animal content account tiktok strategy" \
  "tiktok for kids family content strategy" \
  "抖音 涨粉 运营 策略" \
  "抖音 变现 玩法 2025"
buscar ck_youtube \
  "youtube shorts strategy 0 subscribers grow fast" \
  "made for kids youtube monetization rpm explained" \
  "kids animation channel success case study youtube" \
  "youtube shorts algorithm 2026 explained" \
  "cocomelon business model how kids channels make money"
buscar ck_instagram \
  "instagram reels growth strategy 2026 new account" \
  "instagram algorithm explained 2026 reels" \
  "grow instagram from zero followers 2026" \
  "facebook reels bonus monetization strategy" \
  "threads app growth strategy 2026"
buscar ck_monetiza \
  "kids IP licensing merchandise strategy" \
  "children's brand licensing how it works" \
  "monetize cartoon character intellectual property" \
  "children's book marketing social media funnel" \
  "creator economy monetization beyond adsense 2026"
buscar ck_multi \
  "como crecer en tiktok 2026 estrategia cuenta nueva" \
  "monetizar contenido infantil youtube tiktok" \
  "como crescer no tiktok 2026 do zero" \
  "canal infantil youtube estrategia crescimento" \
  "TikTok 伸ばす方法 2026" \
  "ショート動画 収益化 戦略"

# ── 2) TRIAGE determinista (dur 180-3600s, dedup, top por vistas) ──
for f in $CK/canales/canal_*.txt; do
  canal=$(basename $f .txt | sed 's/^canal_//')
  keep=$CK/canales/keep_$canal.txt
  [[ -s $keep ]] && continue
  sort -u $f | awk -F'|' '$2>=180 && $2<=3600 && $3>=2000' | sort -t'|' -k3 -rn | head -14 > $keep
done
cat $CK/canales/keep_*.txt | cut -d'|' -f1 | sort -u > $CK/canales/keep_todos.txt
echo "videos keep: $(wc -l < $CK/canales/keep_todos.txt)"

# ── 3) SUBTÍTULOS (reanudable, anti-429) ──
while read id; do
  ls $CK/canales/subs/${id}*.vtt >/dev/null 2>&1 && continue
  yt-dlp --skip-download --write-auto-subs --write-subs --sub-langs "en.*,es.*,pt.*,zh.*,ja.*" \
    --sleep-requests 4 -o "$CK/canales/subs/%(id)s" "https://youtu.be/$id" >/dev/null 2>&1
done < $CK/canales/keep_todos.txt
echo "subs: $(ls $CK/canales/subs/*.vtt 2>/dev/null | wc -l)"

# ── 4) DESTILAR VIDEOS (DeepSeek/Groq, 3 workers) ──
destilar_video() {
  local id=$1
  local out=$CK/destilado/video_$id.md
  [[ -s $out ]] && return
  local vtt=$(ls $CK/canales/subs/${id}*.vtt 2>/dev/null | head -1)
  [[ -z $vtt ]] && return
  local titulo=$(grep -h "^$id|" $CK/canales/canal_*.txt | head -1 | cut -d'|' -f5)
  python3 $BASE/scripts/limpiar_vtt.py "$vtt" > /tmp/ck_$id.txt 2>/dev/null || return
  [[ $(wc -w < /tmp/ck_$id.txt) -lt 120 ]] && return
  cat > /tmp/ckp_$id.txt << P
Adjunto la transcripción de un video sobre CRECER y MONETIZAR canales de contenido en redes (TikTok, YouTube Shorts, Instagram Reels, Facebook, Threads), con interés especial en contenido infantil/familiar/de animales y en monetización rápida. Título: "$titulo". URL real: https://youtu.be/$id — úsala tal cual.
Destílalo EN ESPAÑOL NEUTRO, markdown exacto:
# $titulo
**Fuente:** https://youtu.be/$id | destilado 2026-07-22
## Qué enseña (2-3 líneas)
## Lecciones accionables
(bullets con máximo detalle: tácticas CONCRETAS, números/benchmarks/requisitos de programas de monetización, frecuencias de publicación, formatos que funcionan, casos citados con sus cifras)
## Reglas para agentes
(imperativas verificables: "publica X veces cuando Y", "nunca Z", umbrales numéricos)
## Errores comunes
Responde SOLO el markdown, sin preámbulo.
P
  python3 $BASE/scripts/llamar_ia.py /tmp/ckp_$id.txt $out /tmp/ck_$id.txt >/dev/null 2>&1
  rm -f /tmp/ck_$id.txt /tmp/ckp_$id.txt
}
i=0
while read id; do
  destilar_video $id &
  (( i++ % 3 == 2 )) && wait
done < $CK/canales/keep_todos.txt
wait
echo "destilados video: $(ls $CK/destilado/video_*.md 2>/dev/null | wc -l)"

# ── 5) ARTÍCULOS curados (multi-idioma) ──
UA="Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/126.0 Safari/537.36"
bajar_art() {
  local slug=$1 url=$2
  local out=$CK/articulos/${slug}.txt
  [[ -s $out ]] && return
  local html=$(curl -sL -A "$UA" --max-time 40 "$url")
  [[ -z $html ]] && { echo "FALLO $slug"; return; }
  { echo "URL_FUENTE: $url"; echo "$html" | python3 $BASE/scripts/html2texto.py 2>/dev/null; } > $out
  [[ $(wc -w < $out) -lt 150 ]] && { echo "SPA/CORTO $slug ($(wc -w < $out)w)"; mv $out $out.corto; }
}
bajar_art buffer_tiktok "https://buffer.com/resources/tiktok-algorithm/"
bajar_art hootsuite_tiktok "https://blog.hootsuite.com/tiktok-algorithm/"
bajar_art backlinko_tiktok "https://backlinko.com/tiktok-users"
bajar_art imh_creator_rewards "https://influencermarketinghub.com/tiktok-creator-rewards-program/"
bajar_art sprout_reels "https://sproutsocial.com/insights/instagram-reels-strategy/"
bajar_art later_reels "https://later.com/blog/instagram-reels/"
bajar_art buffer_threads "https://buffer.com/resources/threads-strategy/"
bajar_art tubefilter_kids "https://www.tubefilter.com/category/kids-family/"
bajar_art kidscreen_licensing "https://kidscreen.com/category/licensing/"
bajar_art metricool_tiktok_es "https://metricool.com/es/algoritmo-tiktok/"
bajar_art metricool_reels_es "https://metricool.com/es/instagram-reels/"
bajar_art rd_tiktok_pt "https://resultadosdigitais.com.br/marketing/tiktok/"
bajar_art hubspot_shorts "https://blog.hubspot.com/marketing/youtube-shorts"
bajar_art licenseglobal_kids "https://www.licenseglobal.com/kids-entertainment"

# ── 6) DESTILAR ARTÍCULOS ──
for txt in $CK/articulos/*.txt(N); do
  nombre=$(basename $txt .txt)
  out=$CK/destilado/art_$nombre.md
  [[ -s $out ]] && continue
  url=$(head -1 $txt | sed 's/^URL_FUENTE: //')
  cat > /tmp/cka_$nombre.txt << P
Adjunto el texto de un artículo sobre crecer/monetizar canales de contenido (TikTok, Reels, Shorts, Threads) o sobre el negocio de licensing/IP infantil. URL real: $url — úsala tal cual como fuente.
Destílalo EN ESPAÑOL NEUTRO, markdown exacto:
# $nombre
**Fuente:** $url | destilado 2026-07-22
## Qué enseña (2-3 líneas)
## Lecciones accionables
(bullets detallados: tácticas, benchmarks, requisitos de programas, montos, casos con cifras)
## Reglas para agentes
## Errores comunes
Ignora navegación/menús/footers. Responde SOLO el markdown.
P
  python3 $BASE/scripts/llamar_ia.py /tmp/cka_$nombre.txt $out $txt >/dev/null 2>&1
  rm -f /tmp/cka_$nombre.txt
done
echo "destilados artículo: $(ls $CK/destilado/art_*.md 2>/dev/null | wc -l)"
touch $CK/RUNNER_DONE
echo "OLA CK COMPLETA"
