#!/bin/bash
BASE=~/Projects/biblioteca-diseno-web/ingesta-videos/blender-3d
SCR=~/Projects/biblioteca-diseno-web/ingesta-videos/scripts
id="$1"; OUT="$BASE/destilado"; mkdir -p "$OUT"
[ -s "$OUT/$id.md" ] && exit 0
LOCK="/tmp/bllock_$id"; mkdir "$LOCK" 2>/dev/null || exit 0
trap "rmdir $LOCK 2>/dev/null" EXIT
cd "$BASE/subs" || exit 1
vtt=""
for pat in "$id.en.vtt" "$id".en*.vtt "$id.es.vtt" "$id".es*.vtt "$id".zh*.vtt "$id".*.vtt; do
  for f in $pat; do [ -f "$f" ] && { vtt="$f"; break; }; done; [ -n "$vtt" ] && break
done
[ -z "$vtt" ] && { echo "SIN-SUBS $id"; exit 0; }
python3 "$SCR/limpiar_vtt.py" "$vtt" > "/tmp/blt_$id.txt" 2>/dev/null
[ "$(wc -w < /tmp/blt_$id.txt)" -lt 100 ] && { echo "CORTO $id"; exit 0; }
titulo=$(grep -m1 -- "^$id|" "$BASE/canales/keep.txt" | cut -d'|' -f6)
autor=$(grep -m1 -- "^$id|" "$BASE/canales/keep.txt" | cut -d'|' -f5)
titulo=${titulo//[\`\\\$]/}
cat > "/tmp/blp_$id.txt" << PROMPT
Va la transcripción de un tutorial de Blender/3D: "$titulo" (canal $autor, id $id). Destílala EN ESPAÑOL NEUTRO con esta estructura EXACTA:

# $titulo
**Fuente:** $autor | https://youtu.be/$id
## Qué enseña (2-3 líneas)
## Técnicas accionables
(bullets con MÁXIMO detalle: atajos de teclado VERBATIM (ej. Tab, E, S, Ctrl+R, Shift+A), nombres exactos de modificadores/nodos/paneles (Bevel, Subdivision Surface, Geometry Nodes, Principled BSDF, Cycles/Eevee), parámetros numéricos, ajustes de render (samples, denoise), pasos de modelado/UV/rig. Nada vago.)
## Reglas para el erudito (imperativas, "usa X cuando Y")
## Errores comunes / gotchas

NO inventes atajos ni funciones ausentes. Responde SOLO el markdown.
PROMPT
python3 "$SCR/llamar_ia.py" "/tmp/blp_$id.txt" "$OUT/$id.md" "/tmp/blt_$id.txt" > /dev/null 2>&1
rm -f "/tmp/blp_$id.txt" "/tmp/blt_$id.txt"
[ -s "$OUT/$id.md" ] && echo "OK $id" || echo "FALLO $id"
