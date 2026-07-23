#!/bin/zsh
# generar_deltas.sh — F4 paso A: por cada materia, compara los destilados nuevos contra las
# reglas YA existentes en la KB y produce un DELTA (solo lo nuevo y verificable) vía la fábrica.
BASE=~/Projects/biblioteca-diseno-web
UNI=$BASE/universidad/ingesta-fuentes
LLAMAR=$BASE/ingesta-videos/scripts/llamar_ia.py
mkdir -p $UNI/deltas
for materia in $(ls $UNI/destilados/ | cut -d'_' -f1 | sort -u); do
  out=$UNI/deltas/${materia}.md
  [[ -s $out ]] && continue
  # reglas y errores existentes de esa materia en la KB
  python3 - "$materia" << 'PYEOF' > /tmp/kb_actual.txt
import json, sys, os
d = json.load(open(os.path.expanduser('~/Projects/biblioteca-diseno-web/kb-contenido-materias.json')))
e = next((x for x in d['entradas'] if x['id'] == sys.argv[1]), None)
if e:
    print("REGLAS YA EXISTENTES:")
    for r in e['reglas_para_agentes']: print("-", r)
    print("\nERRORES YA EXISTENTES:")
    for r in e['errores_comunes']: print("-", r)
PYEOF
  cat > /tmp/pd_$materia.txt << PROMPT
Eres el curador de la KB de la materia "$materia". Abajo van (1) las reglas y errores YA existentes en la KB y (2) los destilados nuevos de fuentes abiertas oficiales. Produce EN ESPAÑOL NEUTRO un DELTA con SOLO lo que agrega valor nuevo:

# Delta — $materia
## Reglas nuevas propuestas
(bullets imperativos y VERIFICABLES con números duros; SOLO si NO duplican una regla existente ni la parafrasean; cada una termina con "(fuente: dominio.com)". Máximo 8, las mejores.)
## Errores nuevos propuestos
(máximo 4, mismos criterios)
## Contradicciones detectadas
(si un destilado contradice una regla existente, repórtalo — NO la cambies)

Si no hay nada genuinamente nuevo, responde exactamente esta línea: "SIN-DELTA: los destilados no aportan reglas nuevas verificables frente a las existentes." Responde SOLO el markdown, sin preámbulo.
PROMPT
  adjuntos=($UNI/destilados/${materia}__*.md)
  python3 $LLAMAR /tmp/pd_$materia.txt $out /tmp/kb_actual.txt $adjuntos >> $UNI/logs/deltas.log 2>&1
  rm -f /tmp/pd_$materia.txt /tmp/kb_actual.txt
  echo "$(date +%H:%M:%S) delta $materia: $([[ -s $out ]] && echo OK || echo FALLO)" >> $UNI/logs/deltas.log
  sleep 3
done
echo "FIN-DELTAS $(ls $UNI/deltas/*.md 2>/dev/null | wc -l)" >> $UNI/logs/deltas.log
