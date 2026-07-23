#!/usr/bin/env python3
"""qa_urls_eh.py <sintesis.md> <dir_destilados1> [dir2...] — QA anti-alucinación:
toda URL citada en la síntesis debe existir en los destilados fuente. Lista las falsas."""
import sys, re, glob, os
sint = open(sys.argv[1], encoding='utf-8').read()
urls_sint = set(re.findall(r'https?://[^\s\)\]"\'<>]+', sint))
urls_fuente = set()
for d in sys.argv[2:]:
    for f in glob.glob(os.path.join(d, '*.md')):
        urls_fuente |= set(re.findall(r'https?://[^\s\)\]"\'<>]+', open(f, encoding='utf-8', errors='replace').read()))
norm = lambda u: u.rstrip('.,;:/').lower()
fuente_norm = {norm(u) for u in urls_fuente}
falsas = [u for u in sorted(urls_sint) if norm(u) not in fuente_norm]
print(f"URLs en síntesis: {len(urls_sint)} | falsas (no están en destilados): {len(falsas)}")
for u in falsas: print("FALSA:", u)
