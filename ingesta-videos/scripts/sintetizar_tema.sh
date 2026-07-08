#!/bin/zsh
# sintetizar_tema.sh <tema_id> — sintetiza una entrada KB desde los destilados listados en sintesis/<tema_id>.lista
BASE=~/Projects/biblioteca-diseno-web/ingesta-videos
SIN=$BASE/destilado/sintesis
LISTA=$SIN/$1.lista
[[ -f $LISTA ]] || { echo "falta $LISTA"; exit 1; }
[[ -s $SIN/$1.json ]] && { echo "ya existe $1.json"; exit 0; }
cat > /tmp/sint_$1.txt << PROMPT
A continuación van los destilados markdown de varios tutoriales de especialistas sobre el MISMO tema. Sintetízalos en UNA entrada JSON de base de conocimiento EN ESPAÑOL NEUTRO, fusionando y deduplicando las reglas de todos los videos.

Estructura EXACTA (responde SOLO el JSON, sin markdown ni preámbulo):
{
 "id": "$1",
 "disciplina": "<una de: ia-generativa-visual | motion-video | edicion-postproduccion | foto-cinematografia | marketing-contenido>",
 "area": "<subárea corta>",
 "titulo": "<título humano de la entrada>",
 "que_ensena": "<2-3 líneas>",
 "reglas_para_agentes": ["<regla imperativa verificable>", "... (15-30 reglas, las mejores de todos los videos, SIN duplicados)"],
 "prompts_y_recetas": ["<prompt VERBATIM o receta paso a paso con su contexto de uso>", "... (todo prompt textual valioso)"],
 "errores_comunes": ["..."],
 "fuentes_videos": [{"titulo": "...", "url": "https://youtu.be/<id>", "canal": "..."}]
}

Calidad: conserva el detalle técnico (keywords exactas, parámetros, nombres de herramientas). Nada vago. Si dos videos se contradicen, gana el más específico y anota la alternativa.
PROMPT
python3 $BASE/scripts/llamar_ia.py /tmp/sint_$1.txt $SIN/$1.json $(grep -v '^$' $LISTA | while read f; do [[ -s $f ]] && echo $f; done | tr '\n' ' ') > /dev/null 2>&1
rm -f /tmp/sint_$1.txt
PROMPT
if [[ -s $SIN/$1.json ]]; then echo "$(date +%H:%M:%S) SINTETIZADO $1"; else echo "$(date +%H:%M:%S) FALLO-SINTESIS $1"; fi
