#!/bin/zsh
# sintetizar_retail.sh [cola] — map-reduce por eje (retail-neo), adaptación de sintetizar_eruditos.sh. Idempotente.
# Sin argumento = las 3 colas; con argumento (cro|social|newretail) = solo esa (permite cerrar eje por eje).
BASE=~/Projects/biblioteca-diseno-web/ingesta-videos
RN=$BASE/retail-neo
FILTRO=$1
cd $RN || exit 1
OUT=$RN/sintesis
PARC=$OUT/parciales
mkdir -p $PARC
CHUNK=12

typeset -A COLAS
COLAS[cro]="retail_cro retail_cro_articulos"
COLAS[social]="retail_social retail_social_articulos"
COLAS[newretail]="retail_newretail retail_newretail_articulos"

typeset -A DESC
DESC[cro]="conversión de páginas retail/e-commerce (CRO de PDP/checkout/home, mobile commerce, urgencia honesta, quick-commerce UX)"
DESC[social]="conectividad de tiendas con RRSS (TikTok Shop, social commerce, live shopping, shoppable posts, creator affiliates, tráfico RRSS→tienda)"
DESC[newretail]="modelo de negocio new retail 新零售 (Alibaba/Hema, O2O, omnicanal, retail media, 直播电商, 社区团购, 私域流量, dark stores, checkout sin fricción)"

for cola in ${(k)COLAS}; do
  [[ -n $FILTRO && $cola != $FILTRO ]] && continue
  files=()
  for d in ${=COLAS[$cola]}; do
    for f in destilado/$d/*.md(N); do files+=$f; done
  done
  n=${#files}
  echo "[$cola] $n destilados"
  [[ $n -eq 0 ]] && continue
  i=0; chunk=0
  while (( i < n )); do
    chunk=$((chunk+1))
    parc=$PARC/${cola}_$(printf "%02d" $chunk).md
    if [[ ! -s $parc ]]; then
      sub=(${files[$((i+1)),$((i+CHUNK))]})
      cat > /tmp/pmap_r_${cola}.txt << PROMPT
Vas a recibir $#sub destilados de videos y artículos reales sobre ${DESC[$cola]}. Cada uno trae su línea "**Fuente:**" con la URL verdadera.

REGLA CERO — ANCLAJE ESTRICTO: usa SOLO lo que está en los destilados adjuntos. PROHIBIDO inventar datos, benchmarks o URLs. Copia las URLs EXACTAS de las líneas "**Fuente:**".

Extrae SOLO las lecciones que aportan VALOR ACCIONABLE (tácticas concretas, parámetros, benchmarks con número, errores específicos). Descarta generalidades y relleno. Formato: bullets markdown, cada uno con su fuente entre paréntesis al final: "- <regla accionable con el dato concreto> (Fuente: <título corto> — <URL>)". Nada de introducción. Responde SOLO los bullets.
PROMPT
      python3 $BASE/scripts/llamar_ia.py /tmp/pmap_r_${cola}.txt $parc ${sub[@]} >/dev/null 2>&1
      echo "  chunk $chunk ($#sub) → $(wc -l < $parc 2>/dev/null) líneas"
    fi
    i=$((i+CHUNK))
  done
  final=$OUT/${cola}.md
  if [[ ! -s $final ]]; then
    cat $PARC/${cola}_*.md > /tmp/allparc_r_${cola}.md
    cat > /tmp/pred_r_${cola}.txt << PROMPT
Aquí van bullets de síntesis extraídos de $n videos/artículos sobre ${DESC[$cola]}, cada uno con su fuente (URL). Fusiónalos y DEDUPLICA en una sección markdown lista para integrar a una doctrina.

REGLA CERO: no inventes; conserva las URLs tal cual aparecen. Si dos bullets dicen lo mismo, únelos y deja la fuente más específica.

Estructura EXACTA de salida:
## Eje: ${DESC[$cola]} — síntesis (2026-07-16)
> $n videos/artículos destilados (EN/ES/ZH), con fuente por regla.

### [sub-tema 1]
- regla accionable (Fuente: título — URL)
...

Agrupa por 4-7 sub-temas coherentes. Prioriza reglas con números/benchmarks. Máximo ~45 bullets totales (queda lo mejor). Al final:

### Fuentes de este eje
- título — URL (una por línea, deduplicadas)

Responde SOLO el markdown, en español neutro.
PROMPT
    python3 $BASE/scripts/llamar_ia.py /tmp/pred_r_${cola}.txt $final /tmp/allparc_r_${cola}.md >/dev/null 2>&1
    echo "  [$cola] REDUCE → $(wc -l < $final 2>/dev/null) líneas"
  fi
done
echo "=== SINTESIS RETAIL LISTA ==="
ls -la $OUT/*.md 2>/dev/null
