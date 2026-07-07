# HANDOFF · Biblioteca de Diseño Web — Operación desde CLI
Estado: v2.1 · julio 2026 · Proyecto completo y funcional, pendiente de deploy.

## 1. Estructura del proyecto

biblioteca-diseno-web/
├── index.html               # Manual interactivo (12 capítulos + consola de agentes)
├── kb-diseno-mkt.json       # KB #1: principios de diseño (10 entradas)
├── kb-carreras-diseno.json  # KB #2: carreras + escuelas top mundo (7 entradas, 28 fuentes)
├── kb-herramientas.json     # KB #3: herramientas, APIs, automatización (15 entradas)
├── README.md                # Guía técnica de deploy y consumo por agentes
├── RESUMEN-PROYECTO.md      # Contexto de todo lo construido y aprendido
└── HANDOFF.md               # Este archivo

Todo es estático: no hay build, no hay dependencias, no hay .env.
index.html funciona con doble clic (offline) salvo las Google Fonts.

## 2. Vista previa local

cd biblioteca-diseno-web
python3 -m http.server 8000        # → http://localhost:8000
# alternativa Node:
npx serve .

## 3. Deploy por CLI

### Opción A · Netlify
npm install -g netlify-cli
netlify login
cd biblioteca-diseno-web
netlify deploy --dir . --prod
# La CLI devuelve la URL de producción.

### Opción B · Vercel
npm install -g vercel
cd biblioteca-diseno-web
vercel --prod
# Sigue el asistente la primera vez; devuelve la URL.

### Opción C · GitHub Pages (respaldo + hosting + versionado)
cd biblioteca-diseno-web
git init && git add . && git commit -m "Biblioteca de diseño web v2.1"
gh repo create biblioteca-diseno-web --public --source . --push   # requiere GitHub CLI (gh auth login)
gh api repos/{owner}/biblioteca-diseno-web/pages -X POST \
  -f "source[branch]=main" -f "source[path]=/"
# URL resultante: https://TU-USUARIO.github.io/biblioteca-diseno-web/

## 4. Verificar endpoints tras el deploy

BASE="https://TU-SITIO"   # reemplazar
curl -s $BASE/kb-diseno-mkt.json | head -c 300
curl -s $BASE/kb-carreras-diseno.json | python3 -c "import json,sys; d=json.load(sys.stdin); print(len(d['entradas']),'entradas OK')"
curl -s $BASE/kb-herramientas.json | python3 -m json.tool > /dev/null && echo "JSON válido"

## 5. Consumo por agentes (referencia rápida)

# GET de una entrada específica con jq:
curl -s $BASE/kb-diseno-mkt.json | jq '.entradas[] | select(.id=="jerarquia-visual") | .reglas'

# System prompt para un agente:
# "Antes de generar o evaluar una pieza visual, haz GET a $BASE/kb-diseno-mkt.json
#  y aplica las 'reglas' de las entradas relevantes como criterios de calidad."

# En el navegador (index.html): window.KB con KB.list(), KB.get(id), KB.search(q)
# y selector de base en la consola (principios | carreras | herramientas).

## 6. Editar y mantener las bases

# Los datos viven en DOS lugares que deben mantenerse sincronizados:
#   (1) los kb-*.json (los endpoints)
#   (2) las constantes embebidas en index.html: KB_DATA, CARRERAS_DATA, TOOLS_DATA
# Regla: editar el JSON y re-embeber. Snippet de sincronización:

python3 - << 'EOF'
import json
html = open('index.html').read()
for const, path in [("CARRERAS_DATA","kb-carreras-diseno.json"), ("TOOLS_DATA","kb-herramientas.json")]:
    data = json.dumps(json.load(open(path)), ensure_ascii=False)
    start = html.find(f'const {const} = ')
    end = html.find(';', start)  # cuidado: usar el delimitador correcto si hay ';' internos
    # (para TOOLS_DATA el delimitador seguro es ';\n\n// ---- Render')
    print(f"Sincronizar {const} manualmente si la edición fue mayor")
EOF
# Para KB_DATA (principios), la constante está definida directamente en el <script>.

# Validar cualquier JSON tras editar:
python3 -m json.tool kb-carreras-diseno.json > /dev/null && echo OK

## 7. Esquemas de datos (contrato para agentes)

kb-diseno-mkt.json .entradas[]:
  id, titulo, categoria, resumen, reglas[], errores_comunes[], aplicacion_marketing

kb-carreras-diseno.json .entradas[]:
  id, titulo, categoria, duracion, resumen, materias{area:[ramos]},
  perfil_egreso, salidas_laborales[], aporte_al_diseno_web,
  fuentes[{institucion, url, aporta}]

kb-herramientas.json .entradas[]:
  id, nombre, categoria(diseno|desarrollo|marketing|automatizacion), que_es,
  api{tiene, tipo, autenticacion, que_permite}, automatizacion_ia, casos_uso[]

## 8. Pendientes conocidos / roadmap
- [ ] Deploy a producción y verificación de los 4 endpoints
- [ ] Repo en GitHub (respaldo + versionado)
- [ ] Opcional: fuentes de documentación oficial en kb-herramientas.json
- [ ] Opcional: exponer las KBs como servidor MCP propio (siguiente nivel)
- [ ] Opcional: backend (Supabase/worker) si se necesita escritura o búsqueda server-side

## 9. Notas de integridad de datos
- kb-carreras: materias provienen de mallas oficiales citadas en 'fuentes' de
  cada entrada (Chile, Perú, Argentina, Ecuador, México, España, UK, EE.UU.).
  Fecha de consulta: julio 2026. Las mallas cambian: verificar en la URL fuente
  antes de decisiones importantes.
- Los nombres de titulaciones varían por país (ver meta.cobertura_geografica).
