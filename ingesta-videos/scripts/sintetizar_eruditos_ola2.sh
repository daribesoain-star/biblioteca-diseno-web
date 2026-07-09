#!/bin/zsh
BASE=~/Projects/biblioteca-diseno-web/ingesta-videos; cd $BASE || exit 1
OUT=$BASE/sintesis/eruditos-ola2; PARC=$OUT/parciales; mkdir -p $PARC; CHUNK=12
typeset -A COLAS=( google-ads "SolutionsUno" meta-ads "JonLoomer FoxwellDigital" youtube "YouTubeCreators" )
typeset -A DESC
DESC[google-ads]="Google Ads (Performance Max e-commerce, feeder strategy, anti-robo de marca, estructura de campañas, lead gen) — canal Solutions 8"
DESC[meta-ads]="Meta Ads (Advantage+, creative testing, escalado, auditoría de cuenta, CAPI/tracking, estructura) — Jon Loomer + Foxwell"
DESC[youtube]="YouTube oficial (algoritmo, packaging, retención, Shorts, monetización) — canal YouTube Creators"
for cola in google-ads meta-ads youtube; do
  files=(); for d in ${=COLAS[$cola]}; do for f in destilado/$d/*.md(N); do files+=$f; done; done
  n=${#files}; echo "[$cola] $n destilados"; [[ $n -eq 0 ]] && continue
  i=0; chunk=0
  while (( i < n )); do
    chunk=$((chunk+1)); parc=$PARC/${cola}_$(printf "%02d" $chunk).md
    if [[ ! -s $parc ]]; then
      sub=(${files[$((i+1)),$((i+CHUNK))]})
      cat > /tmp/m2_${cola}.txt << P
Vas a recibir $#sub destilados de tutoriales reales sobre ${DESC[$cola]}. Cada uno trae su línea "**Fuente:**" con la URL verdadera.
REGLA CERO: usa SOLO lo de los adjuntos; NO inventes datos ni URLs; copia las URLs EXACTAS de "**Fuente:**".
Extrae SOLO lecciones con VALOR ACCIONABLE (tácticas, parámetros, benchmarks con número, errores específicos). Formato bullets: "- <regla con el dato concreto> (Fuente: <título corto> — <URL>)". Responde SOLO los bullets.
P
      python3 scripts/llamar_ia.py /tmp/m2_${cola}.txt $parc ${sub[@]} >/dev/null 2>&1
    fi
    i=$((i+CHUNK))
  done
  final=$OUT/${cola}.md
  if [[ ! -s $final ]]; then
    cat $PARC/${cola}_*.md > /tmp/ap2_${cola}.md
    cat > /tmp/r2_${cola}.txt << P
Bullets de síntesis de $n videos de ${DESC[$cola]}, cada uno con su fuente (URL). Fusiona y DEDUPLICA en markdown para ANEXAR a una KB existente.
REGLA CERO: no inventes; conserva URLs tal cual.
Estructura EXACTA:
## Ampliación de campo — ola 2 (2026-07-09)
> N videos destilados de canales top adicionales del rubro. Complementa la ola 1.
### [sub-tema]
- regla accionable (Fuente: título — URL)
Agrupa en 3-6 sub-temas. Prioriza reglas con números. Máx ~35 bullets. Al final:
### Fuentes nuevas de esta ola
- título — URL (deduplicadas)
Responde SOLO el markdown.
P
    python3 scripts/llamar_ia.py /tmp/r2_${cola}.txt $final /tmp/ap2_${cola}.md >/dev/null 2>&1
    echo "  [$cola] REDUCE → $(wc -l < $final) líneas"
  fi
done
echo "=== SINT OLA2 LISTA ==="; ls -la $OUT/*.md
