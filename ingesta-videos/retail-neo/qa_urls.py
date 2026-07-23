#!/usr/bin/env python3
"""QA anti-alucinación: verifica que cada URL citada en las síntesis exista en los destilados fuente.
Uso: python3 qa_urls.py [--fix]  (--fix reescribe las síntesis quitando la cita falsa, deja la regla)"""
import re, sys, glob, os

RN = os.path.dirname(os.path.abspath(__file__))
fix = "--fix" in sys.argv

# 1. URLs reales presentes en los destilados (líneas **Fuente:**)
reales = set()
for md in glob.glob(f"{RN}/destilado/*/*.md"):
    for line in open(md, encoding="utf-8", errors="replace"):
        for u in re.findall(r"https?://[^\s|)\]>]+", line):
            reales.add(u.rstrip(".,;:"))

def normal(u):
    u = u.rstrip(".,;:").rstrip("/")
    u = re.sub(r"^https?://(www\.)?", "", u)
    return u

reales_n = {normal(u) for u in reales}

total_falsas = 0
for sint in sorted(glob.glob(f"{RN}/sintesis/*.md")):
    contenido = open(sint, encoding="utf-8").read()
    urls = set(re.findall(r"https?://[^\s|)\]>]+", contenido))
    falsas = {u for u in urls if normal(u) not in reales_n}
    print(f"\n== {os.path.basename(sint)}: {len(urls)} URLs citadas, {len(falsas)} falsas ==")
    for u in sorted(falsas):
        print(f"  FALSA: {u}")
    total_falsas += len(falsas)
    if fix and falsas:
        nuevo = contenido
        for u in falsas:
            # quita "(Fuente: ... URL)" completo si contiene la URL falsa; si no, solo la URL
            nuevo = re.sub(r"\s*\(Fuente:[^()]*" + re.escape(u) + r"[^()]*\)", "", nuevo)
            nuevo = nuevo.replace(u, "[FUENTE NO VERIFICADA]")
        open(sint, "w", encoding="utf-8").write(nuevo)
        print(f"  -> corregida ({len(falsas)} citas falsas eliminadas)")

print(f"\nTOTAL citas falsas: {total_falsas}")
sys.exit(0)
