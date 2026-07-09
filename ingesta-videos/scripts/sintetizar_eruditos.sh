#!/bin/zsh
# sintetizar_eruditos.sh — map-reduce por cola temática → borrador de "Ampliación de campo" para cada KB de erudito.
# Delega TODO a DeepSeek/Groq (llamar_ia.py). Claude solo cura e integra después. Idempotente.
BASE=~/Projects/biblioteca-diseno-web/ingesta-videos
cd $BASE || exit 1
OUT=$BASE/sintesis/eruditos
PARC=$OUT/parciales
mkdir -p $PARC
CHUNK=12

# cola → dirs de destilado (separados por espacio)
typeset -A COLAS
COLAS[google-ads]="GrowMyAds Optmyzr AnalyticsMania eruditos-google-ads"
COLAS[meta-ads]="daradenney eruditos-sueltos eruditos-meta-ads"
COLAS[youtube]="PaddyGalloway FilmBooth CreatorInsider ColinandSamir"
COLAS[whatsapp]="eruditos-whatsapp"
COLAS[email-mailing]="eruditos-email"
COLAS[tiktok]="eruditos-tiktok"
COLAS[linkedin]="eruditos-linkedin"

typeset -A DESC
DESC[google-ads]="Google Ads (Search, PMax, Shopping, tracking/GA4, scripts)"
DESC[meta-ads]="Meta Ads (Facebook/Instagram: creativos, escalado, audiencias, CTWA)"
DESC[youtube]="YouTube (crecimiento de canal, packaging/miniaturas, retención, Shorts)"
DESC[whatsapp]="WhatsApp Business (venta conversacional, CTWA, broadcast)"
DESC[email-mailing]="Email marketing (campañas, flows, deliverability, reactivación)"
DESC[tiktok]="TikTok (orgánico, ads, doctrina Douyin)"
DESC[linkedin]="LinkedIn (orgánico B2B, founder-led, ads)"

for cola in ${(k)COLAS}; do
  files=()
  for d in ${=COLAS[$cola]}; do
    for f in destilado/$d/*.md(N); do files+=$f; done
  done
  n=${#files}
  echo "[$cola] $n destilados"
  [[ $n -eq 0 ]] && continue
  # --- MAP: chunks de $CHUNK ---
  i=0; chunk=0
  while (( i < n )); do
    chunk=$((chunk+1))
    parc=$PARC/${cola}_$(printf "%02d" $chunk).md
    if [[ ! -s $parc ]]; then
      sub=(${files[$((i+1)),$((i+CHUNK))]})
      cat > /tmp/pmap_${cola}.txt << PROMPT
Vas a recibir $#sub destilados de tutoriales reales sobre ${DESC[$cola]}. Cada uno trae su línea "**Fuente:**" con la URL verdadera.

REGLA CERO — ANCLAJE ESTRICTO: usa SOLO lo que está en los destilados adjuntos. PROHIBIDO inventar datos, benchmarks o URLs. Copia las URLs EXACTAS de las líneas "**Fuente:**".

Extrae SOLO las lecciones que aportan VALOR ACCIONABLE (tácticas concretas, parámetros, benchmarks con número, errores específicos). Descarta generalidades y relleno. Formato: bullets markdown, cada uno con su fuente entre paréntesis al final: "- <regla accionable con el dato concreto> (Fuente: <título corto> — <URL>)". Nada de introducción. Responde SOLO los bullets.
PROMPT
      python3 scripts/llamar_ia.py /tmp/pmap_${cola}.txt $parc ${sub[@]} >/dev/null 2>&1
      echo "  chunk $chunk ($#sub) → $(wc -l < $parc 2>/dev/null) bullets"
    fi
    i=$((i+CHUNK))
  done
  # --- REDUCE: fusionar parciales ---
  final=$OUT/${cola}.md
  if [[ ! -s $final ]]; then
    cat $PARC/${cola}_*.md > /tmp/allparc_${cola}.md
    cat > /tmp/pred_${cola}.txt << PROMPT
Aquí van bullets de síntesis extraídos de $n videos/artículos de ${DESC[$cola]}, cada uno con su fuente (URL). Fusiónalos y DEDUPLICA en una sección markdown lista para ANEXAR a una base de conocimiento existente.

REGLA CERO: no inventes; conserva las URLs tal cual aparecen. Si dos bullets dicen lo mismo, únelos y deja la fuente más específica.

Estructura EXACTA de salida:
## Ampliación de campo — ingesta de canales (2026-07-09)
> N videos/artículos destilados de los canales top del rubro. Doctrina complementaria a la de arriba (deep research), con fuente por regla.

### [sub-tema 1]
- regla accionable (Fuente: título — URL)
...
### [sub-tema 2]
...

Agrupa por 3-6 sub-temas coherentes con el rubro. Prioriza reglas con números/benchmarks. Máximo ~40 bullets totales (queda lo mejor). Al final:

### Fuentes nuevas de esta ola
- título — URL (una por línea, deduplicadas)

Responde SOLO el markdown.
PROMPT
    python3 scripts/llamar_ia.py /tmp/pred_${cola}.txt $final /tmp/allparc_${cola}.md >/dev/null 2>&1
    echo "  [$cola] REDUCE → $(wc -l < $final) líneas"
  fi
done
echo "=== SÍNTESIS ERUDITOS LISTA ==="
ls -la $OUT/*.md
