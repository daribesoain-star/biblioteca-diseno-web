#!/bin/zsh
# destilar_scribe_retail.sh <canal> <id> — fallback sin subtítulos: audio → ElevenLabs Scribe → DeepSeek/Groq → destilado. Idempotente.
BASE=~/Projects/biblioteca-diseno-web/ingesta-videos
RN=$BASE/retail-neo
CANAL=$1; id=$2
OUT=$RN/destilado/$CANAL
mkdir -p $OUT
[[ -s $OUT/$id.md ]] && { echo "SKIP $id"; exit 0; }
source ~/.secrets/elevenlabs.env
[[ -z $ELEVENLABS_API_KEY ]] && { echo "SIN-KEY"; exit 1; }
mp3=/tmp/scribe_$id.mp3
if [[ ! -s $mp3 ]]; then
  yt-dlp -f bestaudio -x --audio-format mp3 --sleep-requests 4 -o "/tmp/scribe_$id.%(ext)s" "https://youtu.be/$id" >/dev/null 2>&1
fi
[[ ! -s $mp3 ]] && { echo "FALLO-AUDIO $CANAL $id"; exit 1; }
tr=/tmp/scribe_$id.txt
for intento in 1 2 3; do
  [[ -s $tr ]] && break
  curl -s --max-time 300 -X POST https://api.elevenlabs.io/v1/speech-to-text \
    -H "xi-api-key: $ELEVENLABS_API_KEY" \
    -F file=@$mp3 -F model_id=scribe_v1 \
    | python3 -c "import json,sys; d=json.load(sys.stdin); print(d.get('text',''))" > $tr 2>/dev/null
  [[ -s $tr ]] || sleep 20
done
[[ $(wc -w < $tr) -lt 40 && $(wc -m < $tr) -lt 300 ]] && { echo "FALLO-SCRIBE $CANAL $id"; exit 1; }
titulo=$(grep -- "^$id|" $RN/canales/canal_$CANAL.txt 2>/dev/null | head -1 | cut -d'|' -f5)
titulo=${titulo//[\`\\$]/}
cat > /tmp/prs_$id.txt << PROMPT
A continuación va la transcripción (por voz) del video de YouTube "$titulo" (cola $CANAL, id $id). Puede estar en inglés, español o chino: destílala SIEMPRE EN ESPAÑOL NEUTRO con esta estructura EXACTA en markdown:

# $titulo
**Fuente:** $CANAL | https://youtu.be/$id
## Qué enseña (2-3 líneas)
## Lecciones accionables
(bullets con el máximo detalle técnico: tácticas y números VERBATIM, benchmarks, pasos, nombres de herramientas/plataformas — nada vago)
## Reglas para agentes
(imperativas y verificables: "usa X cuando Y", "nunca Z")
## Errores comunes que evita o menciona

Responde SOLO con el markdown final, sin preámbulo.
PROMPT
python3 $BASE/scripts/llamar_ia.py /tmp/prs_$id.txt $OUT/$id.md $tr > /dev/null 2>&1
rm -f /tmp/prs_$id.txt
if [[ -s $OUT/$id.md ]]; then echo "$(date +%H:%M:%S) OK-SCRIBE $CANAL $id — $titulo"; rm -f $mp3; else echo "$(date +%H:%M:%S) FALLO-IA $CANAL $id"; fi
