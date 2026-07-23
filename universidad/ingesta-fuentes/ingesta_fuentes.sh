#!/bin/zsh
# ingesta_fuentes.sh — F3 UNIVERSIDAD, camino 1: descarga y destila los recursos abiertos
# de kb-contenido-materias.json vía la fábrica multi-IA a disco (llamar_ia.py: DeepSeek→Groq).
# Idempotente y reanudable: salta lo ya descargado/destilado. NO toca YouTube (no choca con Ola 3).
BASE=~/Projects/biblioteca-diseno-web
UNI=$BASE/universidad/ingesta-fuentes
LLAMAR=$BASE/ingesta-videos/scripts/llamar_ia.py
mkdir -p $UNI/descargas $UNI/destilados $UNI/logs

# 1) Exportar la lista de recursos abiertos de la KB → fuentes.tsv (materia, slug, nombre, url)
python3 << 'PYEOF'
import json, re, os
base = os.path.expanduser('~/Projects/biblioteca-diseno-web')
d = json.load(open(f'{base}/kb-contenido-materias.json'))
filas, sin_url = [], 0
for e in d['entradas']:
    for r in e.get('recursos_abiertos', []):
        if isinstance(r, dict):
            nombre, url = r.get('nombre', ''), r.get('url', '')
        else:  # recurso como string plano: extraer la URL del texto
            m = re.search(r'https?://\S+', str(r))
            url = m.group(0).rstrip('.,)') if m else ''
            nombre = re.sub(r'https?://\S+', '', str(r)).strip(' —-:')[:80] or url
        if not url:
            sin_url += 1
            continue
        slug = re.sub(r'[^a-z0-9]+', '-', nombre.lower())[:60].strip('-') or 'fuente'
        nombre = nombre.replace('\t', ' ')
        filas.append('\t'.join([e['id'], slug, nombre, url]))
open(f'{base}/universidad/ingesta-fuentes/fuentes.tsv', 'w').write('\n'.join(filas) + '\n')
print(f"{len(filas)} fuentes exportadas ({sin_url} sin URL, saltadas)")
PYEOF

# 2) Descargar cada fuente (curl suave) y convertir HTML → texto plano
while IFS=$'\t' read -r materia slug nombre url; do
  txt=$UNI/descargas/${materia}__${slug}.txt
  [[ -s $txt ]] && continue
  html=/tmp/f_${slug}.html
  curl -sL --max-time 60 -A "Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7)" "$url" -o $html 2>/dev/null
  if [[ ! -s $html ]]; then echo "DESCARGA-FALLO $materia $slug $url" >> $UNI/logs/fallos.log; continue; fi
  python3 - "$html" "$txt" << 'PYEOF'
import sys, re
from html.parser import HTMLParser
class T(HTMLParser):
    def __init__(self):
        super().__init__(); self.out=[]; self.skip=0
    def handle_starttag(self, tag, attrs):
        if tag in ('script','style','nav','footer'): self.skip+=1
    def handle_endtag(self, tag):
        if tag in ('script','style','nav','footer') and self.skip: self.skip-=1
    def handle_data(self, data):
        if not self.skip and data.strip(): self.out.append(data.strip())
raw = open(sys.argv[1], encoding='utf-8', errors='replace').read()
if raw[:5] == '%PDF-':
    sys.exit(3)  # PDF: se registra y se salta (fase manual)
p = T(); p.feed(raw)
texto = re.sub(r'\n{3,}', '\n\n', '\n'.join(p.out))
open(sys.argv[2], 'w', encoding='utf-8').write(texto)
PYEOF
  rc=$?
  [[ $rc -eq 3 ]] && echo "PDF-PENDIENTE $materia $slug $url" >> $UNI/logs/pdfs.log
  rm -f $html
  sleep 2
done < $UNI/fuentes.tsv
echo "$(date +%H:%M:%S) descargas listas: $(ls $UNI/descargas | wc -l)"

# 3) Destilar cada fuente con la fábrica (DeepSeek→Groq, escribe a disco)
while IFS=$'\t' read -r materia slug nombre url; do
  txt=$UNI/descargas/${materia}__${slug}.txt
  out=$UNI/destilados/${materia}__${slug}.md
  [[ -s $out ]] && continue
  [[ ! -s $txt ]] && continue
  [[ $(wc -w < $txt) -lt 150 ]] && { echo "CORTO $materia $slug" >> $UNI/logs/fallos.log; continue; }
  # recortar a ~15k palabras para no reventar el contexto de DeepSeek
  head -c 90000 $txt > /tmp/c_${slug}.txt
  cat > /tmp/pf_${slug}.txt << PROMPT
Eres el destilador de la Universidad de la Biblioteca de Diseño. A continuación va el contenido de la fuente abierta "${nombre}" (recurso oficial de la materia "${materia}" de nuestra KB). Destílalo EN ESPAÑOL NEUTRO con esta estructura EXACTA en markdown:

# ${nombre}
**Materia:** ${materia} | **Fuente:** ${url} (consultada 2026-07-07)
## Qué aporta (2-3 líneas)
## Reglas candidatas para agentes
(imperativas y VERIFICABLES, con los números duros exactos que dé la fuente: px, ratios, LUFS, ms, %, nombres de técnicas — nada vago; cada regla debe poder chequearse en una pieza real)
## Errores comunes que documenta
## Datos/citas clave textuales
(verbatim los valores y afirmaciones más importantes)

Si el contenido es solo un índice/portada sin sustancia, responde únicamente: SIN-SUSTANCIA. Responde SOLO con el markdown final, sin preámbulo.
PROMPT
  python3 $LLAMAR /tmp/pf_${slug}.txt $out /tmp/c_${slug}.txt >> $UNI/logs/fabrica.log 2>&1
  rm -f /tmp/pf_${slug}.txt /tmp/c_${slug}.txt
  if [[ -s $out ]]; then echo "$(date +%H:%M:%S) OK $materia $slug" >> $UNI/logs/fabrica.log; else echo "$(date +%H:%M:%S) FALLO $materia $slug" >> $UNI/logs/fabrica.log; fi
  sleep 3
done < $UNI/fuentes.tsv
echo "$(date +%H:%M:%S) FIN — destilados: $(ls $UNI/destilados 2>/dev/null | wc -l) / fallos: $(cat $UNI/logs/fallos.log 2>/dev/null | wc -l)"
