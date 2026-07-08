#!/usr/bin/env node
// Servidor MCP "kb-diseno" — expone las bases de conocimiento de la Biblioteca
// de Diseño Web como herramientas nativas para agentes (Claude Code, etc.).
// Fuente de verdad: los kb-*.json del repo (padre de esta carpeta).
// Espejo público: https://daribesoain-star.github.io/biblioteca-diseno-web/

import { McpServer } from "@modelcontextprotocol/sdk/server/mcp.js";
import { StdioServerTransport } from "@modelcontextprotocol/sdk/server/stdio.js";
import { z } from "zod";
import { readFileSync } from "node:fs";
import { dirname, join } from "node:path";
import { fileURLToPath } from "node:url";

const ROOT = dirname(dirname(fileURLToPath(import.meta.url)));

const ARCHIVOS = {
  principios: "kb-diseno-mkt.json",
  carreras: "kb-carreras-diseno.json",
  herramientas: "kb-herramientas.json",
  materias: "kb-contenido-materias.json",
  videos: "kb-videos-especialistas.json",
};

function cargar(base) {
  try {
    return JSON.parse(readFileSync(join(ROOT, ARCHIVOS[base]), "utf8"));
  } catch {
    return null; // base aún no creada
  }
}

function titulo(e) {
  return e.titulo || e.nombre || e.id;
}

function texto(obj) {
  return { content: [{ type: "text", text: JSON.stringify(obj, null, 1) }] };
}

const BASES_ENUM = z.enum(["principios", "carreras", "herramientas", "materias", "videos"]);

const server = new McpServer({ name: "kb-diseno", version: "1.0.0" });

server.registerTool(
  "kb_bases",
  {
    title: "Listar bases de conocimiento",
    description:
      "Lista las bases de conocimiento de diseño web disponibles con su versión y cantidad de entradas. Bases: principios (reglas de diseño/mkt), carreras (mallas de las mejores escuelas del mundo), herramientas (APIs y automatización), materias (contenido real de las materias: temarios, reglas para agentes, bibliografía canon), videos (lecciones destiladas de tutoriales de especialistas de YouTube/IG: prompts verbatim, workflows IA, motion, edición).",
    inputSchema: {},
  },
  async () => {
    const out = {};
    for (const base of Object.keys(ARCHIVOS)) {
      const d = cargar(base);
      out[base] = d
        ? { version: d.meta?.version, entradas: d.entradas.length, descripcion: d.meta?.descripcion?.slice(0, 160) }
        : "no disponible aún";
    }
    return texto(out);
  }
);

server.registerTool(
  "kb_list",
  {
    title: "Listar entradas de una base",
    description: "Lista las entradas (id, título, categoría) de una base de conocimiento.",
    inputSchema: { base: BASES_ENUM },
  },
  async ({ base }) => {
    const d = cargar(base);
    if (!d) return texto({ error: `base '${base}' no disponible` });
    return texto(d.entradas.map((e) => ({ id: e.id, titulo: titulo(e), categoria: e.categoria, disciplina: e.disciplina })));
  }
);

server.registerTool(
  "kb_get",
  {
    title: "Obtener una entrada completa",
    description: "Devuelve la entrada completa de una base por su id (usa kb_list para ver los ids).",
    inputSchema: { base: BASES_ENUM, id: z.string() },
  },
  async ({ base, id }) => {
    const d = cargar(base);
    if (!d) return texto({ error: `base '${base}' no disponible` });
    const e = d.entradas.find((x) => x.id === id);
    return texto(e || { error: "id no encontrado", ids_validos: d.entradas.map((x) => x.id) });
  }
);

server.registerTool(
  "kb_search",
  {
    title: "Buscar en las bases",
    description: "Búsqueda de texto libre en una base o en todas. Devuelve coincidencias resumidas (id, base, título, fragmento).",
    inputSchema: { q: z.string(), base: BASES_ENUM.optional() },
  },
  async ({ q, base }) => {
    const needle = q.toLowerCase().trim();
    const bases = base ? [base] : Object.keys(ARCHIVOS);
    const hits = [];
    for (const b of bases) {
      const d = cargar(b);
      if (!d) continue;
      for (const e of d.entradas) {
        const s = JSON.stringify(e).toLowerCase();
        if (s.includes(needle)) {
          hits.push({ base: b, id: e.id, titulo: titulo(e), resumen: e.resumen || e.que_es || e.que_ensena });
        }
      }
    }
    return texto(hits.length ? hits : { resultado: `sin coincidencias para: ${q}` });
  }
);

server.registerTool(
  "kb_reglas",
  {
    title: "Reglas aplicables para crear/evaluar una pieza",
    description:
      "Devuelve las reglas accionables (criterios de calidad) relevantes a un tema, juntando los principios de diseño/mkt y las reglas_para_agentes del contenido de materias. Úsala ANTES de generar o evaluar una pieza visual, web, video, audio o campaña. Ejemplos de tema: 'tipografía', 'animación', 'mezcla de audio', 'landing', 'montaje', 'gamificación'.",
    inputSchema: { tema: z.string() },
  },
  async ({ tema }) => {
    const needle = tema.toLowerCase().trim();
    const out = [];
    const p = cargar("principios");
    if (p)
      for (const e of p.entradas) {
        if (JSON.stringify(e).toLowerCase().includes(needle) && e.reglas)
          out.push({ origen: `principios/${e.id}`, reglas: e.reglas, errores_comunes: e.errores_comunes });
      }
    const m = cargar("materias");
    if (m)
      for (const e of m.entradas) {
        if (JSON.stringify(e).toLowerCase().includes(needle) && e.reglas_para_agentes)
          out.push({ origen: `materias/${e.id}`, materia: e.titulo, reglas: e.reglas_para_agentes, errores_comunes: e.errores_comunes });
      }
    return texto(out.length ? out : { resultado: `sin reglas para: ${tema}. Prueba kb_search o un tema más general.` });
  }
);

const transport = new StdioServerTransport();
await server.connect(transport);
