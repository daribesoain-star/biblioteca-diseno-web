#!/usr/bin/env python3
"""chunk_texto.py <in.txt> <out_prefix> [palabras_por_chunk=14000] [max_chunks=4]
Parte un texto en chunks por palabras. Escribe <out_prefix>_pN.txt. Imprime N total."""
import sys
palabras = open(sys.argv[1], encoding='utf-8', errors='replace').read().split()
por = int(sys.argv[3]) if len(sys.argv) > 3 else 14000
maxc = int(sys.argv[4]) if len(sys.argv) > 4 else 4
chunks = [palabras[i:i+por] for i in range(0, len(palabras), por)][:maxc]
for n, ch in enumerate(chunks, 1):
    open(f"{sys.argv[2]}_p{n}.txt", 'w', encoding='utf-8').write(' '.join(ch))
print(len(chunks))
