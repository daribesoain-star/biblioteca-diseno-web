#!/bin/bash
BASE=~/Projects/biblioteca-diseno-web/ingesta-videos/afx-scripting
SCR=~/Projects/biblioteca-diseno-web/ingesta-videos/scripts
id="$1"; OUT="$BASE/destilado"; mkdir -p "$OUT"
[ -s "$OUT/$id.md" ] && exit 0
LOCK="/tmp/scrlock_$id"; mkdir "$LOCK" 2>/dev/null || exit 0
trap "rmdir $LOCK 2>/dev/null" EXIT
cd "$BASE/subs" || exit 1
vtt=""; for pat in "$id.en.vtt" "$id".en*.vtt "$id.es.vtt" "$id".*.vtt; do for f in $pat; do [ -f "$f" ]&&{ vtt="$f"; break; }; done; [ -n "$vtt" ]&&break; done
[ -z "$vtt" ] && { echo "SIN-SUBS $id"; exit 0; }
python3 "$SCR/limpiar_vtt.py" "$vtt" > "/tmp/scr_$id.txt" 2>/dev/null
[ "$(wc -w < /tmp/scr_$id.txt)" -lt 100 ] && { echo "CORTO $id"; exit 0; }
titulo=$(grep -m1 -- "^$id|" "$BASE/canales/keep.txt" | cut -d'|' -f6); autor=$(grep -m1 -- "^$id|" "$BASE/canales/keep.txt" | cut -d'|' -f5)
titulo=${titulo//[\`\\\$]/}
cat > "/tmp/scp_$id.txt" << PROMPT
Va la transcripción de un tutorial de AFTER EFFECTS SCRIPTING (ExtendScript/.jsx): "$titulo" (canal $autor, id $id). Destílala EN ESPAÑOL NEUTRO:
# $titulo
**Fuente:** $autor | https://youtu.be/$id
## Qué enseña (2 líneas)
## Técnicas de scripting accionables
(bullets con CÓDIGO .jsx VERBATIM cuando aparezca: app.project, addComp, layers.add*, property()/effect(), setValueAtTime, expression, matchNames, ScriptUI (Window/panel/button/onClick), app.beginUndoGroup, render queue, File I/O. Nombres exactos de métodos/objetos. Nada vago.)
## Reglas para el operador ("usa X cuando Y", gotchas de ExtendScript)
## Errores comunes
NO inventes API ni métodos ausentes. Responde SOLO markdown.
PROMPT
python3 "$SCR/llamar_ia.py" "/tmp/scp_$id.txt" "$OUT/$id.md" "/tmp/scr_$id.txt" > /dev/null 2>&1
rm -f "/tmp/scp_$id.txt" "/tmp/scr_$id.txt"
[ -s "$OUT/$id.md" ] && echo "OK $id" || echo "FALLO $id"
