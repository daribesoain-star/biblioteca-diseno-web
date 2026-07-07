# Biblioteca de Diseño Web · v3.0

Biblioteca interactiva de diseño web para humanos (diseñadores, devs, project
owners) y agentes de IA. **LIVE:** https://daribesoain-star.github.io/biblioteca-diseno-web/

## Contenido

| Archivo | Qué es |
|---|---|
| `index.html` | Manual interactivo: 12 capítulos + consola de agentes con 4 bases |
| `kb-diseno-mkt.json` | KB #1: principios de diseño visual para marketing (10 entradas) |
| `kb-carreras-diseno.json` | KB #2: carreras y mallas de las mejores escuelas del mundo (12 entradas, 54 fuentes) |
| `kb-herramientas.json` | KB #3: herramientas, APIs y automatización con agentes (15 entradas, 31 fuentes oficiales) |
| `kb-contenido-materias.json` | KB #4: contenido REAL de las materias — temarios, reglas para agentes, bibliografía canon, recursos abiertos verificados (18 entradas) |
| `mcp/server.mjs` | Servidor MCP `kb-diseno` que expone las 4 bases como herramientas nativas para agentes |

## Endpoints en producción (GET)

- `https://daribesoain-star.github.io/biblioteca-diseno-web/` → manual interactivo
- `.../kb-diseno-mkt.json` → principios
- `.../kb-carreras-diseno.json` → carreras y mallas
- `.../kb-herramientas.json` → herramientas y APIs
- `.../kb-contenido-materias.json` → contenido de materias (reglas accionables)

## Servidor MCP (agentes locales)

Registrado en Claude Code a nivel usuario:

```bash
claude mcp add --scope user kb-diseno -- node ~/Projects/biblioteca-diseno-web/mcp/server.mjs
```

Herramientas: `kb_bases` · `kb_list(base)` · `kb_get(base, id)` · `kb_search(q, base?)` ·
**`kb_reglas(tema)`** — devuelve los criterios de calidad aplicables antes de crear o
evaluar una pieza (ej: `kb_reglas("easing")`, `kb_reglas("LUFS")`, `kb_reglas("landing")`).
Lee los JSON locales de este repo: al editar una KB, los agentes ven el cambio al instante.

## Uso por agentes (vía HTTP)

System prompt sugerido:

> "Antes de generar o evaluar una pieza, haz GET a los kb-*.json de
> https://daribesoain-star.github.io/biblioteca-diseno-web y aplica las
> 'reglas' (principios) y 'reglas_para_agentes' (contenido de materias)
> como criterios de calidad."

En el propio index.html: `window.KB` con `KB.list()`, `KB.get(id)`,
`KB.search(q)` sobre la base elegida en el selector de la consola.

## Mantenimiento

Los datos viven en DOS lugares que deben sincronizarse: los `kb-*.json` (endpoints)
y las constantes embebidas en `index.html` (`KB_DATA`, `CARRERAS_DATA`, `TOOLS_DATA`,
`MATERIAS_DATA`). Regla: editar el JSON y re-embeber (parser de llaves balanceadas,
NO cortar en `;`). Validar con `python3 -m json.tool` antes de commitear.
