#!/bin/bash
BASE=~/Projects/biblioteca-diseno-web/ingesta-videos/stack-dev
SCR=~/Projects/biblioteca-diseno-web/ingesta-videos/scripts
id="$1"; OUT="$BASE/destilado"; mkdir -p "$OUT"
[ -s "$OUT/$id.md" ] && exit 0
LOCK="/tmp/stlock_$id"; mkdir "$LOCK" 2>/dev/null || exit 0
trap "rmdir $LOCK 2>/dev/null" EXIT
cd "$BASE/subs" || exit 1
vtt=""
for pat in "$id.en.vtt" "$id".en*.vtt "$id.es.vtt" "$id".es*.vtt "$id".*.vtt; do
  for f in $pat; do [ -f "$f" ] && { vtt="$f"; break; }; done; [ -n "$vtt" ] && break
done
[ -z "$vtt" ] && { echo "SIN-SUBS $id"; exit 0; }
python3 "$SCR/limpiar_vtt.py" "$vtt" > "/tmp/stt_$id.txt" 2>/dev/null
[ "$(wc -w < /tmp/stt_$id.txt)" -lt 100 ] && { echo "CORTO $id"; exit 0; }
titulo=$(grep -m1 -- "^$id|" "$BASE/canales/keep.txt" | cut -d'|' -f6)
autor=$(grep -m1 -- "^$id|" "$BASE/canales/keep.txt" | cut -d'|' -f5)
titulo=${titulo//[\`\\\$]/}
cat > "/tmp/stp_$id.txt" << PROMPT
Va la transcripción de un tutorial de desarrollo web: "$titulo" (canal $autor, id $id). Stack: SvelteKit 5 (runes) / FastAPI / Supabase / RLS / testing / deploy. Destílala EN ESPAÑOL NEUTRO (sin voseo) con esta estructura EXACTA en markdown:

# $titulo
**Fuente:** $autor | https://youtu.be/$id
## Qué enseña (2-3 líneas)
## Técnicas y patrones accionables
(bullets con el MÁXIMO detalle: snippets de CÓDIGO VERBATIM cuando aparezcan (runes \$state/\$derived/\$effect/\$props, load, form actions, APIRouter, Pydantic, SQL de policies RLS, config), nombres exactos de archivos (+page.server.ts, hooks.server.ts), comandos, patrones de producción. Nada vago.)
## Reglas para el erudito (imperativas y verificables)
("usa X cuando Y", "nunca Z", defaults recomendados)
## Errores comunes / gotchas que menciona

Reglas: NO inventes APIs ni sintaxis que no estén en la transcripción. Si es pobre, destila solo lo que hay. Responde SOLO con el markdown.
PROMPT
python3 "$SCR/llamar_ia.py" "/tmp/stp_$id.txt" "$OUT/$id.md" "/tmp/stt_$id.txt" > /dev/null 2>&1
rm -f "/tmp/stp_$id.txt" "/tmp/stt_$id.txt"
[ -s "$OUT/$id.md" ] && echo "$(date +%H:%M:%S) OK $id — $titulo" || echo "$(date +%H:%M:%S) FALLO $id"
