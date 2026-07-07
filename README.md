# Biblioteca de Diseño Web · v2.0

Biblioteca interactiva de diseño web para humanos (diseñadores, devs, project
owners) y agentes de IA.

## Contenido

| Archivo | Qué es |
|---|---|
| `index.html` | Manual interactivo: 12 capítulos + consola de agentes con 3 bases |
| `kb-diseno-mkt.json` | KB #1: principios de diseño visual para marketing (10 entradas) |
| `kb-carreras-diseno.json` | KB #2: carreras y materias que llevan al diseño web (6 entradas) |
| `kb-herramientas.json` | KB #3: herramientas, APIs y automatización con agentes (15 entradas) |

## Deploy (2 minutos)

Arrastrar esta carpeta a app.netlify.com/drop (o Vercel). Endpoints resultantes:

- `https://TU-SITIO/` → manual interactivo
- `https://TU-SITIO/kb-diseno-mkt.json` → principios (GET)
- `https://TU-SITIO/kb-carreras-diseno.json` → carreras (GET)
- `https://TU-SITIO/kb-herramientas.json` → herramientas y APIs (GET)

## Uso por agentes

System prompt sugerido:

> "Antes de generar o evaluar una pieza, haz GET a los kb-*.json de
> https://TU-SITIO y usa 'reglas' (principios), 'materias' (formación) y
> 'automatizacion_ia' (herramientas) como criterios y capacidades."

En el propio index.html: `window.KB` con `KB.list()`, `KB.get(id)`,
`KB.search(q)` sobre la base elegida en el selector de la consola.
