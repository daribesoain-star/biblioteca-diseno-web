#!/bin/zsh
# sintetizar_eh.sh <slug> "<descripcion>" — map-reduce de destilado/eh-<slug>{,-art} → sintesis/eruditos-herramientas/<slug>.md
BASE=~/Projects/biblioteca-diseno-web/ingesta-videos
S=$1; DESC=$2
OUT=$BASE/sintesis/eruditos-herramientas
PARC=$OUT/parciales
mkdir -p $PARC
CHUNK=10
files=()
for d in eh-$S eh-$S-art; do
  for f in $BASE/destilado/$d/*.md(N); do files+=$f; done
done
n=${#files}
echo "[$S] $n destilados"
[[ $n -eq 0 ]] && exit 1
i=0; chunk=0
while (( i < n )); do
  chunk=$((chunk+1))
  parc=$PARC/${S}_$(printf "%02d" $chunk).md
  if [[ ! -s $parc ]]; then
    sub=(${files[$((i+1)),$((i+CHUNK))]})
    cat > /tmp/pmap_$S.txt << PROMPT
Vas a recibir $#sub destilados de documentación oficial y tutoriales reales sobre ${DESC}. Cada uno trae su línea "**Fuente:**" con la URL verdadera.

REGLA CERO — ANCLAJE ESTRICTO: usa SOLO lo que está en los destilados adjuntos. PROHIBIDO inventar datos, precios, límites o URLs. Copia las URLs EXACTAS de las líneas "**Fuente:**".

Extrae SOLO las lecciones con VALOR ACCIONABLE (parámetros exactos, endpoints, comisiones/precios con número, prompts VERBATIM, pasos concretos, errores específicos). Descarta generalidades. Formato: bullets markdown, cada uno con su fuente al final: "- <regla accionable con el dato concreto> (Fuente: <título corto> — <URL>)". Responde SOLO los bullets.
PROMPT
    python3 $BASE/scripts/llamar_ia.py /tmp/pmap_$S.txt $parc ${sub[@]} >/dev/null 2>&1
    echo "  chunk $chunk ($#sub) → $(wc -l < $parc 2>/dev/null | tr -d ' ') líneas"
  fi
  i=$((i+CHUNK))
done
final=$OUT/$S.md
if [[ ! -s $final ]]; then
  cat $PARC/${S}_*.md > /tmp/allparc_$S.md
  cat > /tmp/pred_$S.txt << PROMPT
Aquí van bullets de síntesis extraídos de $n destilados (documentación oficial + videos) sobre ${DESC}, cada uno con su fuente (URL). Fusiónalos y DEDUPLICA en una doctrina markdown para la base de conocimiento de un agente experto.

REGLA CERO: no inventes; conserva las URLs tal cual aparecen. Si dos bullets dicen lo mismo, únelos y deja la fuente más específica.

Estructura EXACTA de salida:
## Doctrina destilada (ingesta 2026-07-16)
> N fuentes destiladas (docs oficiales + tutoriales). Cada regla con su fuente.

### [sub-tema 1]
- regla accionable (Fuente: título — URL)
...
(4-8 sub-temas coherentes; prioriza reglas con números/parámetros; máximo ~60 bullets, queda lo mejor)

### Errores comunes / anti-patrones
- ...

### Fuentes de esta ingesta
- título — URL (una por línea, deduplicadas)

Responde SOLO el markdown.
PROMPT
  python3 $BASE/scripts/llamar_ia.py /tmp/pred_$S.txt $final /tmp/allparc_$S.md >/dev/null 2>&1
  echo "  REDUCE → $(wc -l < $final | tr -d ' ') líneas"
fi
