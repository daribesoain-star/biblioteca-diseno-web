#!/bin/bash
BASE=~/Projects/biblioteca-diseno-web/ingesta-videos/video-ia
SCR=~/Projects/biblioteca-diseno-web/ingesta-videos/scripts
id="$1"; OUT="$BASE/destilado"; mkdir -p "$OUT"
[ -s "$OUT/$id.md" ] && exit 0
LOCK="/tmp/vilock_$id"; mkdir "$LOCK" 2>/dev/null || exit 0
trap "rmdir $LOCK 2>/dev/null" EXIT
cd "$BASE/subs" || exit 1
vtt=""
for pat in "$id.en.vtt" "$id".en*.vtt "$id.es.vtt" "$id".es*.vtt "$id".zh*.vtt "$id".*.vtt; do
  for f in $pat; do [ -f "$f" ] && { vtt="$f"; break; }; done; [ -n "$vtt" ] && break
done
[ -z "$vtt" ] && { echo "SIN-SUBS $id"; exit 0; }
python3 "$SCR/limpiar_vtt.py" "$vtt" > "/tmp/vit_$id.txt" 2>/dev/null
[ "$(wc -w < /tmp/vit_$id.txt)" -lt 100 ] && { echo "CORTO $id"; exit 0; }
titulo=$(grep -m1 -- "^$id|" "$BASE/canales/keep.txt" | cut -d'|' -f6)
autor=$(grep -m1 -- "^$id|" "$BASE/canales/keep.txt" | cut -d'|' -f5)
titulo=${titulo//[\`\\\$]/}
cat > "/tmp/vip_$id.txt" << PROMPT
Va la transcripción de un tutorial de GENERACIÓN DE VIDEO CON IA: "$titulo" (canal $autor, id $id). Puede estar en inglés/español/chino; destílala EN ESPAÑOL NEUTRO con esta estructura EXACTA:

# $titulo
**Fuente:** $autor | https://youtu.be/$id
## Qué enseña (2-3 líneas)
## Técnicas accionables
(bullets con MÁXIMO detalle: nombres exactos de modelos (Veo/Kling/Seedance/Runway/Sora/Wan/Hailuo), estructura de prompt VERBATIM, términos de cámara/lente/movimiento, parámetros, trucos de consistencia de personaje, image-to-video, first/last frame, negative prompts si aplica. Nada vago.)
## Reglas para el erudito (imperativas, "usa X cuando Y")
## Errores comunes / limitaciones que menciona

NO inventes modelos ni sintaxis ausentes. Responde SOLO el markdown.
PROMPT
python3 "$SCR/llamar_ia.py" "/tmp/vip_$id.txt" "$OUT/$id.md" "/tmp/vit_$id.txt" > /dev/null 2>&1
rm -f "/tmp/vip_$id.txt" "/tmp/vit_$id.txt"
[ -s "$OUT/$id.md" ] && echo "OK $id" || echo "FALLO $id"
