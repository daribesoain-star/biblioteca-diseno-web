#!/usr/bin/env python3
"""llamar_ia.py <prompt.txt> <salida> [adjunto1 adjunto2 ...]
Manda prompt+adjuntos a DeepSeek (barato); si falla, Groq (gratis). Escribe la respuesta a <salida>.
Claves desde ~/Downloads/CLAUDECODE/mcp-council/.env — NUNCA se imprimen."""
import sys, json, urllib.request, os, time

def env(nombre):
    for linea in open(os.path.expanduser('~/Downloads/CLAUDECODE/mcp-council/.env')):
        if linea.startswith(nombre + '='):
            return linea.strip().split('=', 1)[1].strip().strip('"')
    return None

def llamar(url, key, modelo, prompt):
    cuerpo = json.dumps({
        "model": modelo,
        "messages": [{"role": "user", "content": prompt}],
        "temperature": 0.3,
        "max_tokens": 8000,
    }).encode()
    req = urllib.request.Request(url, data=cuerpo, headers={
        "Content-Type": "application/json", "Authorization": f"Bearer {key}"})
    with urllib.request.urlopen(req, timeout=300) as r:
        d = json.load(r)
    return d["choices"][0]["message"]["content"]

prompt_path, salida = sys.argv[1], sys.argv[2]
prompt = open(prompt_path, encoding='utf-8').read()
for adj in sys.argv[3:]:
    prompt += f"\n\n=== CONTENIDO DE {os.path.basename(adj)} ===\n" + open(adj, encoding='utf-8', errors='replace').read()

PROVEEDORES = [] if os.environ.get('IA_PROVEEDOR') != 'groq' else [("https://api.groq.com/openai/v1/chat/completions", env("GROQ_API_KEY"), "llama-3.3-70b-versatile")]
PROVEEDORES += [
    ("https://api.deepseek.com/chat/completions", env("DEEPSEEK_API_KEY"), "deepseek-chat"),
    ("https://api.groq.com/openai/v1/chat/completions", env("GROQ_API_KEY"), "llama-3.3-70b-versatile"),
]
for url, key, modelo in PROVEEDORES:
    if not key:
        continue
    for intento in range(2):
        try:
            texto = llamar(url, key, modelo, prompt)
            if texto and len(texto.strip()) > 10:
                open(salida, 'w', encoding='utf-8').write(texto)
                print(f"ok:{modelo}")
                sys.exit(0)
        except Exception as e:
            print(f"reintento {modelo}: {type(e).__name__}", file=sys.stderr)
            time.sleep(5 * (intento + 1))
sys.exit(1)
