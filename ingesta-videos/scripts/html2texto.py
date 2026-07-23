#!/usr/bin/env python3
"""html2texto.py <archivo.html> — imprime el texto visible (sin scripts/estilos/tags) a stdout.
Complemento de limpiar_vtt.py para la ola de artículos de los eruditos."""
import sys, re, html

raw = open(sys.argv[1], encoding='utf-8', errors='replace').read()
# fuera scripts, estilos, svg, comentarios
raw = re.sub(r'<(script|style|svg|noscript)[^>]*>.*?</\1>', ' ', raw, flags=re.S | re.I)
raw = re.sub(r'<!--.*?-->', ' ', raw, flags=re.S)
# saltos de línea en bloques
raw = re.sub(r'</(p|div|li|h[1-6]|tr|br|section|article)>', '\n', raw, flags=re.I)
raw = re.sub(r'<[^>]+>', ' ', raw)
raw = html.unescape(raw)
# colapsar espacios
lineas = [re.sub(r'[ \t]+', ' ', l).strip() for l in raw.splitlines()]
texto = '\n'.join(l for l in lineas if l)
texto = re.sub(r'\n{3,}', '\n\n', texto)
print(texto)
