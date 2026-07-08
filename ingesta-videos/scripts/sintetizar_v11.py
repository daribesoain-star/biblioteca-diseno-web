#!/usr/bin/env python3
"""sintetizar_v11.py <tema> — síntesis jerárquica: bloques de 22 destilados → parciales → fusión."""
import sys, os, json, subprocess

BASE = os.path.expanduser('~/Projects/biblioteca-diseno-web/ingesta-videos')
SIN = f'{BASE}/destilado/sintesis_v11'
tema = sys.argv[1]
DISCIPLINA = 'foto-cinematografia' if tema in ('cinematografia-drones-fpv', 'camaras-tecnica-grabacion') else 'edicion-postproduccion'

def prompt_sintesis(id_entrada, max_r, max_p, extra=''):
    return f"""Adjunto destilados markdown de tutoriales del MISMO tema.{extra} Sintetízalos en UNA entrada JSON EN ESPAÑOL NEUTRO, fusionando y deduplicando.

Estructura EXACTA (responde SOLO el JSON, sin markdown ni preámbulo):
{{
 "id": "{id_entrada}",
 "disciplina": "{DISCIPLINA}",
 "area": "<subárea corta>",
 "titulo": "<título humano>",
 "que_ensena": "<2-3 líneas>",
 "reglas_para_agentes": ["<regla imperativa verificable con su herramienta/contexto>", "... (máx {max_r})"],
 "prompts_y_recetas": ["<receta paso a paso o atajo concreto con contexto de uso>", "... (máx {max_p})"],
 "errores_comunes": ["... (máx 12)"],
 "fuentes_videos": [{{"titulo": "...", "url": "https://youtu.be/<id>", "canal": "..."}}]
}}
Calidad: conserva keywords exactas, nombres de menús/herramientas, parámetros y atajos de teclado. Nada vago."""

def llamar(prompt, salida, adjuntos):
    open('/tmp/pv11_' + os.path.basename(salida) + '.txt', 'w').write(prompt)
    r = subprocess.run(['python3', f'{BASE}/scripts/llamar_ia.py',
                        '/tmp/pv11_' + os.path.basename(salida) + '.txt', salida] + adjuntos,
                       capture_output=True, text=True)
    return r.returncode == 0

def valido(path):
    try:
        t = open(path).read().strip()
        if t.startswith('```'): t = t.split('\n', 1)[1].rsplit('```', 1)[0]; open(path, 'w').write(t)
        d = json.loads(t)
        return bool(d.get('reglas_para_agentes'))
    except Exception:
        return False

paths = [p.strip() for p in open(f'{SIN}/{tema}.lista') if p.strip()]
bloques = [paths[i:i+22] for i in range(0, len(paths), 22)]
parciales = []
for n, bloque in enumerate(bloques, 1):
    pid = tema if len(bloques) == 1 else f'{tema}__p{n}'
    salida = f'{SIN}/{pid}.json'
    if not (os.path.isfile(salida) and valido(salida)):
        for intento in range(2):
            llamar(prompt_sintesis(pid, 25, 18), salida, bloque)
            if valido(salida): break
        else:
            print(f'FALLO bloque {pid}'); sys.exit(1)
    parciales.append(salida)
    print(f'{tema}: bloque {n}/{len(bloques)} ok')
if len(parciales) > 1:
    final = f'{SIN}/{tema}.json'
    if not (os.path.isfile(final) and valido(final)):
        extra = ' Los adjuntos son ENTRADAS PARCIALES ya sintetizadas del mismo tema: fusiónalas en una sola (une fuentes_videos completas, deduplica reglas).'
        for intento in range(2):
            llamar(prompt_sintesis(tema, 35, 28, extra), final, parciales)
            if valido(final): break
        else:
            print(f'FALLO fusión {tema}'); sys.exit(1)
    print(f'{tema}: FUSIONADO')
print(f'{tema}: LISTO')
