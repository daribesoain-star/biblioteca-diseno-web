#!/bin/bash
# Map-reduce de los destilados AE -> doctrina por subtema (DeepSeek)
BASE=~/Projects/biblioteca-diseno-web/ingesta-videos/after-effects
SCR=~/Projects/biblioteca-diseno-web/ingesta-videos/scripts
cd "$BASE"
mkdir -p sintesis chunks
rm -f chunks/* sintesis/parcial_* 2>/dev/null

# Repartir los 36 destilados en 3 chunks
files=(destilado/*.md)
n=${#files[@]}
per=$(( (n + 2) / 3 ))
i=0; c=1
: > chunks/chunk_1.md; : > chunks/chunk_2.md; : > chunks/chunk_3.md
for f in "${files[@]}"; do
  echo -e "\n\n===== DESTILADO: $(basename "$f") =====" >> "chunks/chunk_$c.md"
  cat "$f" >> "chunks/chunk_$c.md"
  i=$((i+1))
  [ $((i % per)) -eq 0 ] && [ $c -lt 3 ] && c=$((c+1))
done
echo "chunks: $(wc -l chunks/chunk_*.md | tail -1)"

# MAP: cada chunk -> bullets accionables por subtema, con fuente
SUBTEMAS="1) Fundamentos de animacion (timing, easing, spacing, keyframes, graph editor) 2) Motion graphics (shape layers, transiciones, MoGraph, ritmo del edit) 3) Expressions (sintaxis, wiggle, loopOut, sourceRectAtTime, linear/ease, valueAtTime, time, links) 4) 3D en AE (camaras, luces, extrusion, integracion Cinema 4D) 5) VFX y compositing (tracking Mocha, Rotobrush, keying, color match, integracion) 6) Character animation y rigging (Duik Angela) 7) Tipografia cinetica 8) Color y look dev 9) Workflow, performance y rendering (atajos, preferencias, cache, plugins, exportacion)"

for c in 1 2 3; do
cat > /tmp/aemap_$c.txt << PROMPT
Abajo van destilados de tutoriales de After Effects. Extrae la DOCTRINA ACCIONABLE en ESPAÑOL NEUTRO, agrupada por estos subtemas: $SUBTEMAS.
Para cada subtema presente en el material, lista bullets tecnicos y verificables (nombres exactos de efectos/paneles, atajos verbatim, parametros numericos, codigo de expressions verbatim). Al final de cada bullet, cita la fuente entre parentesis con el formato (titulo — https://youtu.be/ID) tomando la URL EXACTA que aparece en el destilado de origen. NO inventes URLs ni tecnicas: usa solo lo que esta en el texto. Si un subtema no aparece, omitelo. Responde SOLO con el markdown.
PROMPT
python3 "$SCR/llamar_ia.py" /tmp/aemap_$c.txt "sintesis/parcial_$c.md" "chunks/chunk_$c.md" > /dev/null 2>&1 && echo "map $c OK ($(wc -w < sintesis/parcial_$c.md) palabras)" || echo "map $c FALLO"
done
echo "MAP_TERMINADO"
