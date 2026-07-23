#!/bin/bash
# destilar_ae.sh <id> — destila UN video de AE (en>es>zh) con DeepSeek/Groq
BASE=~/Projects/biblioteca-diseno-web/ingesta-videos/after-effects
SCR=~/Projects/biblioteca-diseno-web/ingesta-videos/scripts
id="$1"
OUT="$BASE/destilado"
mkdir -p "$OUT"
[ -s "$OUT/$id.md" ] && exit 0
LOCK="/tmp/aelock_$id"
mkdir "$LOCK" 2>/dev/null || exit 0
trap "rmdir $LOCK 2>/dev/null" EXIT
cd "$BASE/subs" || exit 1

# elegir vtt: en > es > zh-Hans > zh > cualquiera
vtt=""
for pat in "$id.en.vtt" "$id".en*.vtt "$id.es.vtt" "$id".es*.vtt "$id.zh-Hans.vtt" "$id".zh*.vtt "$id".*.vtt; do
  for f in $pat; do [ -f "$f" ] && { vtt="$f"; break; }; done
  [ -n "$vtt" ] && break
done
[ -z "$vtt" ] && { echo "SIN-SUBS $id"; exit 0; }

python3 "$SCR/limpiar_vtt.py" "$vtt" > "/tmp/aet_$id.txt" 2>/dev/null
[ "$(wc -w < /tmp/aet_$id.txt)" -lt 100 ] && { echo "CORTO $id"; exit 0; }

titulo=$(grep -m1 -- "^$id|" "$BASE/canales/keep.txt" | cut -d'|' -f6)
autor=$(grep -m1 -- "^$id|" "$BASE/canales/keep.txt" | cut -d'|' -f5)
titulo=${titulo//[\`\\\$]/}

cat > "/tmp/aep_$id.txt" << PROMPT
Va la transcripción de un tutorial de Adobe After Effects: "$titulo" (canal $autor, id $id). Puede estar en inglés, español o chino; destílala EN ESPAÑOL NEUTRO (nada de voseo) con esta estructura EXACTA en markdown:

# $titulo
**Fuente:** $autor | https://youtu.be/$id
## Qué enseña (2-3 líneas)
## Técnicas accionables
(bullets con el MÁXIMO detalle técnico real del video: nombres exactos de efectos/paneles/herramientas de AE, atajos de teclado verbatim, parámetros numéricos, código de expressions VERBATIM si aparece, pasos concretos, plugins nombrados. Nada vago.)
## Reglas para el erudito (imperativas y verificables)
("usa X cuando Y", "nunca Z", valores por defecto recomendados)
## Errores comunes que evita o menciona

Reglas: NO inventes técnicas que no estén en la transcripción. Si la transcripción es pobre, destila solo lo que hay. Responde SOLO con el markdown final.
PROMPT

python3 "$SCR/llamar_ia.py" "/tmp/aep_$id.txt" "$OUT/$id.md" "/tmp/aet_$id.txt" > /dev/null 2>&1
rm -f "/tmp/aep_$id.txt" "/tmp/aet_$id.txt"
if [ -s "$OUT/$id.md" ]; then echo "$(date +%H:%M:%S) OK $id — $titulo"; else echo "$(date +%H:%M:%S) FALLO $id"; fi
