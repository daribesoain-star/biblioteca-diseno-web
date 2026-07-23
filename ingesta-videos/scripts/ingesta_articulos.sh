#!/bin/zsh
# Ingesta de MATERIAL ESCRITO (artículos, guías, libros dominio público) → KBs del estudio. Destila con DeepSeek.
# Solo fuentes gratis/legales: guías públicas + dominio público (Scientific Advertising 1923).
BASE=~/Projects/biblioteca-diseno-web/ingesta-videos
KBCINE=~/Projects/estudio-sintetico/biblioteca/fundamentos/cinematografia/destilado
KBCAMP=~/Projects/estudio-sintetico/biblioteca/fundamentos/campanas-referencia/destilado
OUT=$BASE/destilado/articulos
LOG=$BASE/destilado/articulos_master.log
mkdir -p $OUT $KBCINE $KBCAMP

# tema|slug|url  (tema: cine → KBCINE ; pub → KBCAMP)
ARTS=(
  "cine|sb-camera-shots|https://www.studiobinder.com/blog/ultimate-guide-to-camera-shots/"
  "cine|sb-shot-size|https://www.studiobinder.com/camera-shots/shot-size/"
  "cine|sb-composition|https://www.studiobinder.com/camera-shots/composition/"
  "cine|sb-film-lighting|https://www.studiobinder.com/blog/film-lighting/"
  "cine|sb-camera-movement|https://www.studiobinder.com/blog/different-types-of-camera-movements-in-film/"
  "cine|litepanels-lighting|https://www.litepanels.com/en/applications/your-guide-to-film-lighting/"
  "cine|pixflow-color|https://pixflow.net/blog/mastering-digital-color-grading-techniques-tools-and-tips-for-stunning-visuals-in-2025/"
  "cine|nofilmschool-color|https://nofilmschool.com/color-grading"
  "pub|copyblogger-copywriting|https://copyblogger.com/classic-copywriting-books/"
  "pub|contagious-creativity|https://www.contagious.com/en/article/news-and-views/best-advertising-creativity-books"
  "pub|hopkins-scientific-advertising|https://archive.org/stream/scientificadvert0000hopk/scientificadvert0000hopk_djvu.txt"
)

extraer() { # $1=archivo entrada  → stdout texto plano
  python3 -c "import re,sys
h=open(sys.argv[1],encoding='utf-8',errors='replace').read()
h=re.sub(r'<(script|style|nav|footer|header)[^>]*>.*?</\1>',' ',h,flags=re.S|re.I)
t=re.sub(r'<[^>]+>',' ',h); t=re.sub(r'&[a-z]+;',' ',t); t=re.sub(r'\s+',' ',t)
print(t)" "$1"
}

echo "=== INGESTA ARTÍCULOS — inicio $(date) ===" >> $LOG
for entry in $ARTS; do
  tema=${entry%%|*}; rest=${entry#*|}; slug=${rest%%|*}; url=${rest##*|}
  dest=$OUT/$slug.md
  [[ -s $dest ]] && continue
  echo ">>> [$slug] bajando $url $(date +%H:%M:%S)" >> $LOG
  curl -sL --max-time 60 -A "Mozilla/5.0 (Macintosh)" "$url" -o /tmp/art_$slug.src 2>>$LOG
  if [[ "$url" == *.pdf ]]; then
    pdftotext /tmp/art_$slug.src /tmp/art_$slug.txt 2>/dev/null
  else
    extraer /tmp/art_$slug.src > /tmp/art_$slug.txt 2>/dev/null
  fi
  wc=$(wc -w < /tmp/art_$slug.txt 2>/dev/null | tr -d ' ')
  [[ ${wc:-0} -lt 150 ]] && { echo ">>> [$slug] VACÍO/bloqueado ($wc palabras)" >> $LOG; continue; }
  # cortar a ~6000 palabras para no exceder contexto
  head -c 45000 /tmp/art_$slug.txt > /tmp/art_${slug}_cut.txt
  if [[ "$tema" == "cine" ]]; then
    cat > /tmp/pa_$slug.txt <<EOF
Eres director de fotografia. Destila este ARTICULO/GUIA sobre cinematografia EN ESPANOL NEUTRO. Estructura markdown:
# $slug
**Fuente:** $url
## Que ensena (2-3 lineas)
## Lecciones accionables (terminos en ingles para prompts, focales, esquemas de luz, reglas de composicion/color, pasos, valores)
## Reglas para el director de fotografia IA
## Errores comunes
Responde SOLO el markdown.
EOF
    kb=$KBCINE
  else
    cat > /tmp/pa_$slug.txt <<EOF
Eres estratega creativo publicitario. Destila este ARTICULO/LIBRO sobre publicidad/copywriting EN ESPANOL NEUTRO. Estructura markdown:
# $slug
**Fuente:** $url
## De que trata (2-3 lineas)
## Principios/leyes accionables (maximo detalle, citas si aplica)
## Como se aplica a un foodservice B2B (angulo "se vivo, no pagues caro / B2Vio")
## Errores comunes
Responde SOLO el markdown.
EOF
    kb=$KBCAMP
  fi
  python3 $BASE/scripts/llamar_ia.py /tmp/pa_$slug.txt $dest /tmp/art_${slug}_cut.txt >> $LOG 2>&1
  if [[ -s $dest ]]; then cp $dest $kb/; echo ">>> [$slug] OK" >> $LOG; else echo ">>> [$slug] FALLO destilado" >> $LOG; fi
done
echo "=== INGESTA ARTÍCULOS FIN $(date). Artículos: $(ls $OUT/*.md(N)|wc -l|tr -d ' ') ===" >> $LOG
