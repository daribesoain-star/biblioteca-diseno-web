#!/bin/bash
WORK=~/Projects/biblioteca-diseno-web/ingesta-videos/mkt-ola2
SCR=~/Projects/biblioteca-diseno-web/ingesta-videos/scripts
id="$1"; OUT="$WORK/destilado"; mkdir -p "$OUT"
[ -s "$OUT/$id.md" ] && exit 0
LOCK="/tmp/mklock_$id"; mkdir "$LOCK" 2>/dev/null || exit 0
trap "rmdir $LOCK 2>/dev/null" EXIT
cd "$WORK/subs" || exit 1
vtt=""; for pat in "$id.en.vtt" "$id".en*.vtt "$id.es.vtt" "$id".*.vtt; do for f in $pat; do [ -f "$f" ]&&{ vtt="$f"; break; }; done; [ -n "$vtt" ]&&break; done
[ -z "$vtt" ] && { echo "SIN-SUBS $id"; exit 0; }
python3 "$SCR/limpiar_vtt.py" "$vtt" > "/tmp/mkt_$id.txt" 2>/dev/null
[ "$(wc -w < /tmp/mkt_$id.txt)" -lt 100 ] && { echo "CORTO $id"; exit 0; }
row=$(grep -m1 "|$id|" "$WORK/canales/keep.txt"); dom=$(echo "$row"|cut -d'|' -f1); titulo=$(echo "$row"|cut -d'|' -f7); autor=$(echo "$row"|cut -d'|' -f6)
titulo=${titulo//[\`\\\$]/}
cat > "/tmp/mkp_$id.txt" << PROMPT
Va la transcripción de un tutorial de marketing ($dom): "$titulo" (canal $autor, id $id). Destílala EN ESPAÑOL NEUTRO:
# $titulo
**Fuente:** $autor | https://youtu.be/$id
**Dominio:** $dom
## Qué enseña (2 líneas)
## Tácticas accionables (con números, umbrales, pasos, nombres exactos de features/paneles — nada vago)
## Reglas para el erudito ("usa X cuando Y")
## Errores comunes
NO inventes datos. Responde SOLO markdown.
PROMPT
python3 "$SCR/llamar_ia.py" "/tmp/mkp_$id.txt" "$OUT/$id.md" "/tmp/mkt_$id.txt" > /dev/null 2>&1
rm -f "/tmp/mkp_$id.txt" "/tmp/mkt_$id.txt"
[ -s "$OUT/$id.md" ] && echo "OK $id" || echo "FALLO $id"
