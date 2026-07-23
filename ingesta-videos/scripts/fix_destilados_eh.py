#!/usr/bin/env python3
"""fix_destilados_eh.py <slug> — corrige en los destilados de eh-<slug> y eh-<slug>-art:
1) URL de la línea **Fuente:** (verdad = nombre de archivo: youtu.be/<id> o manifiesto urls.txt)
2) H1 numérico en videos → título real desde canal_eh-<slug>.txt (campo 5) o .info.json"""
import sys, os, re, glob, json
BASE = os.path.expanduser('~/Projects/biblioteca-diseno-web/ingesta-videos')
S = sys.argv[1]
# titulos reales
titulos = {}
canal_txt = f"{BASE}/canales/canal_eh-{S}.txt"
if os.path.exists(canal_txt):
    for l in open(canal_txt, encoding='utf-8', errors='replace'):
        p = l.rstrip('\n').split('|')
        if len(p) >= 5: titulos[p[0]] = p[4]
# --- videos ---
for f in glob.glob(f"{BASE}/destilado/eh-{S}/*.md"):
    vid = os.path.basename(f)[:-3]
    t = open(f, encoding='utf-8').read()
    orig = t
    t = re.sub(r'(\*\*Fuente:\*\*[^\n]*?)https?://youtu\.be/\S+', rf'\1https://youtu.be/{vid}', t, count=1)
    m = re.match(r'# (.+)', t)
    if m and re.fullmatch(r'[\d\s.,]+', m.group(1).strip()):
        titulo = titulos.get(vid) or ''
        ij = f"{BASE}/canales/eh-{S}/{vid}.info.json"
        if not titulo and os.path.exists(ij):
            titulo = json.load(open(ij)).get('title', '')
        if titulo:
            t = t.replace(m.group(0), f"# {titulo}", 1)
    if t != orig:
        open(f, 'w', encoding='utf-8').write(t)
        print("fix video", vid)
# --- articulos ---
manif = {}
up = f"{BASE}/eruditos-herramientas/{S}/urls.txt"
if os.path.exists(up):
    for l in open(up):
        if '|' in l:
            k, u = l.strip().split('|', 1)
            manif[k] = u
for f in glob.glob(f"{BASE}/destilado/eh-{S}-art/*.md"):
    slug = re.sub(r'_p\d+$', '', os.path.basename(f)[:-3])
    if slug not in manif: continue
    t = open(f, encoding='utf-8').read()
    nuevo = re.sub(r'(\*\*Fuente:\*\*[^\n]*?)https?://\S+', rf'\1{manif[slug]}', t, count=1)
    if nuevo != t:
        open(f, 'w', encoding='utf-8').write(nuevo)
        print("fix art", os.path.basename(f))
