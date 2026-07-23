#!/bin/zsh
# destilar_art_eh.sh <slug-erudito> — destila los artículos de eruditos-herramientas/<slug>/articulos/
# a destilado/eh-<slug>-art/. Idempotente. HTML→texto, chunking ≤14k palabras (máx 4 chunks).
BASE=~/Projects/biblioteca-diseno-web/ingesta-videos
E=$1
DIR=$BASE/eruditos-herramientas/$E/articulos
OUT=$BASE/destilado/eh-$E-art
URLS=$BASE/eruditos-herramientas/$E/urls.txt
LOG=$BASE/eruditos-herramientas/destilado_eh-$E-art.log
mkdir -p $OUT
for f in $DIR/*(N); do
  base=$(basename $f)
  slug=${base%%.*}
  # saltar índices llms y html si existe .spa.txt del mismo slug
  [[ $base == *llms* ]] && continue
  [[ $base == *.html && -f $DIR/$slug.spa.txt ]] && continue
  # saltar los rotos conocidos
  [[ $slug == tiendanube_pasarelas || $slug == mp_comisiones ]] && continue
  ls $OUT/${slug}_p1.md >/dev/null 2>&1 && continue
  url=$(grep -- "^$slug|" $URLS | cut -d'|' -f2)
  [[ -z $url ]] && url="(fuente oficial $E)"
  # extraer texto
  case $base in
    *.html) python3 $BASE/scripts/html2texto.py $f > /tmp/art_$slug.txt ;;
    *) cp $f /tmp/art_$slug.txt ;;
  esac
  nw=$(wc -w < /tmp/art_$slug.txt | tr -d ' ')
  [[ $nw -lt 120 ]] && { echo "CORTO $slug ($nw palabras)" >> $LOG; rm -f /tmp/art_$slug.txt; continue; }
  nch=$(python3 $BASE/scripts/chunk_texto.py /tmp/art_$slug.txt /tmp/art_$slug 14000 4)
  for p in $(seq 1 $nch); do
    parte=""
    [[ $nch -gt 1 ]] && parte=" (parte $p de $nch)"
    cat > /tmp/pa_$slug.txt << PROMPT
A continuación va el texto extraído de la documentación/artículo oficial "$slug"$parte sobre la herramienta del dominio "$E". Destílalo EN ESPAÑOL NEUTRO con esta estructura EXACTA en markdown:

# $slug$parte
**Fuente:** $E | $url
## Qué enseña (2-3 líneas)
## Lecciones accionables
(bullets con el máximo detalle técnico: parámetros exactos, endpoints, límites, precios/comisiones con número, prompts VERBATIM, pasos, nombres de features — nada vago; incluye tablas si las hay)
## Reglas para agentes
(imperativas y verificables: "usa X cuando Y", "nunca Z")
## Errores comunes que evita o menciona

Ignora restos de navegación/menús/footers. Responde SOLO con el markdown final, sin preámbulo.
PROMPT
    python3 $BASE/scripts/llamar_ia.py /tmp/pa_$slug.txt $OUT/${slug}_p$p.md /tmp/art_${slug}_p$p.txt >> $LOG 2>&1
    if [[ -s $OUT/${slug}_p$p.md ]]; then echo "$(date +%H:%M:%S) OK $E/$slug p$p" >> $LOG; else echo "$(date +%H:%M:%S) FALLO $E/$slug p$p" >> $LOG; fi
  done
  rm -f /tmp/art_$slug*.txt /tmp/pa_$slug.txt
done
echo "=== eh-$E-art: $(ls $OUT/*.md 2>/dev/null | wc -l | tr -d ' ') destilados ===" >> $LOG
