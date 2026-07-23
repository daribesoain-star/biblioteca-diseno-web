# ÍNDICE MAESTRO — Fuentes de conocimiento de diseño y marketing

**Qué es:** el mapa único de TODAS las bases de conocimiento de diseño/mkt del ecosistema. Un agente que lea este archivo sabe dónde está todo. **Actualizado:** 2026-07-07 (escaneo Codex + integración Claude).

## Protocolo Paso 0 (obligatorio para toda creación digital)

1. **Antes de producir:** activar skill `kb-diseno-reglas` → consultar `kb_reglas(tema)` del MCP `kb-diseno`, o el JSON local (§1), según el mapa "tipo de pieza → entradas" de la skill.
2. **Si es proyecto del STUDIO FlorBeS:** consultar además la biblioteca del estudio (§2): zona prohibida + ADN del estilo + radar del rubro.
3. **Antes de entregar:** pasar la pieza por `errores_comunes` de la KB + agente `critico-artes` (si es gráfica).
4. **Regla de evidencia (council 2026-07-07):** todo entregable creativo **nombra qué reglas/entradas de la KB aplicó** (igual que las leyes narrativas: propuesta sin regla citada = se rechaza en QA). La consulta que no deja rastro no cuenta.
5. **Conocimiento nuevo → a la KB o a la biblioteca del estudio**, nunca a skills/memorias sueltas.

---

## 1. KB académica (biblioteca-diseno-web) — fundamentos de escuelas top

**Acceso:** MCP `kb-diseno` (`kb_bases` · `kb_list` · `kb_get` · `kb_search` · `kb_reglas`) · JSON local abajo · web `https://daribesoain-star.github.io/biblioteca-diseno-web/` (para agentes remotos).

- `~/Projects/biblioteca-diseno-web/kb-contenido-materias.json` — v1.0.0, 19 entradas. El contenido REAL de las materias núcleo (Gobelins, CalArts, AFI, USC, Berklee, McGill, NYU, Goldsmiths, Parsons, Medill, VCU): temarios, `reglas_para_agentes`, bibliografía canon. 7 disciplinas: cine (3), diseño gráfico (1), UX/UI (1), desarrollo web (1), medios interactivos (3), marketing élite (4), motion (3), sonido (3).
- `~/Projects/biblioteca-diseno-web/kb-diseno-mkt.json` — v1.0.0, 10 entradas. Principios de diseño visual aplicados a marketing.
- `~/Projects/biblioteca-diseno-web/kb-carreras-diseno.json` — v2.0.0, 12 entradas. Mallas de las mejores escuelas + ruta autodidacta equivalente.
- `~/Projects/biblioteca-diseno-web/kb-herramientas.json` — v1.1.0, 15 entradas. Stack de herramientas con API/MCP y cómo operarlas con agentes.

**Mantenimiento:** editar el kb-*.json Y re-embeber en index.html (regla del proyecto).

## 2. Biblioteca operativa del STUDIO FlorBeS

Raíz: `~/Projects/estudio-sintetico/biblioteca/` — regla de oro: los agentes consultan AQUÍ primero; lo que falta se investiga y SE GUARDA.

**Fundamentos** (`fundamentos/`)
- `kb-diseno-mkt.json` — snapshot de la KB de diseño visual para marketing (espejo de §1).
- `leyes-narrativas-campanas-lote3.md` — las 10 leyes narrativas de campañas premiadas (copia canónica: skill `creatividad-publicitaria`).
- `receta-objeto-epifania-hornbach.md` — receta narrativa "objeto mundano → epifanía" (spot Hornbach).
- `referencias.md` — índice de fuentes verificadas de fundamentos de diseño y oficio.
- `manual-diseno-mkt.html` — manual navegable de diseño + marketing.

**Estilos con ADN** (`estilos/{estilo}/ADN.yaml` + `style-pack.json`)
- `editorial-luxury/` — tensión controlada entre escala, margen y silencio.
- `organico-craft/` — imperfección intencional, textura real, calidez humana.
- `suizo-internacional/` — orden, grilla, jerarquía, espacio negativo.

**Anti-slop y restricciones**
- `zona-prohibida/base-universal.md` — lista negra UNIVERSAL (aplica a todo proyecto/herramienta/formato).
- `cartas/mazo.md` — 20 cartas de restricción creativa (tipo Oblique Strategies; 1 aleatoria por batalla).
- `prompt-packs/anti-slop-packs.md` — plantillas anti-slop por herramienta (Recraft / Flux / Ideogram).

**Radar por rubro** (`radar/{rubro}/`)
- `infantil-youtube/` — zona prohibida infantil + polinización MUSE (El Mundo de Amalia).
- `web-builders/2026-07-analisis.md` — clichés de website builders y tiendas online.

**Operación**
- `herramientas/ARSENAL.md` — inventario real v1.1: 31 MCP + conectores + skills + agentes, mapeados por rol con fallbacks.
- `herramientas/RECURSOS_PAGADOS.md` — saldos y suscripciones YA pagados (revisar ANTES de proponer gasto).
- `herramientas/fotografia-stock.md` — jerarquía de fuentes de fotografía stock.
- `estado/{proyecto}.json` — estados aislados por cliente/marca (agro, pagai, techprime, maraa, chiwilandia, amalia, caso0-weblia, agro-b2vio-video). NUNCA se cruzan.
- `post-mortems/` — aprendizajes por proyecto (las piezas aprobadas entran como refs de su estilo).
- `licencias/` — registro asset → licencia → cliente → alcance.

## 3. Informes destilados de reels (materia prima de investigación)

Raíz: `~/Downloads/CLAUDECODE/reels-diseno-web-informe/`
- `informe_reels_diseno_web.{html,pdf}` — lote 1: informe de reels de diseño web.
- `lote2/NEGATIVE_PROMPTS_REGLAS.md` — lista negra del "sello IA" con negative prompts para webs/landings (destilada en design-system §9.1).
- `lote2/reglas_prohibido_web_ia.{html,pdf}` — versión presentable del anterior.
- `lote3/DESTILADO_CREATIVIDAD_PUBLICITARIA.md` — 34 campañas premiadas analizadas (evidencia de las 10 leyes).
- `lote3/CONSOLIDADO_transcripciones.md` — transcripciones crudas del lote 3.
- `lote3/informe_creatividad_publicitaria.{html,pdf}` — versión presentable.

## 3.4 Tesis destiladas (ingesta multi-IA → doctrina accionable con fuente)

Raíz: `~/Projects/biblioteca-diseno-web/tesis/` — cada tesis nace de la skill `ingesta-conocimiento` (fábrica multi-IA a disco) con QA anti-alucinación (cada regla lleva su URL fuente verificada). Materia prima en `ingesta-videos/<tema>/`.
- `TESIS_RETAIL_NEO_TECNOLOGICO.md` — **Páginas de retail neo-tecnológicas** (2026-07-16, 68 fuentes EN/ES/ZH). 3 ejes: (1) CRO de e-commerce (PDP/checkout/home/mobile, benchmarks Baymard), (2) social commerce (TikTok Shop, live shopping, afiliados, RRSS→tienda), (3) new retail 新零售 (O2O, dark stores, quick commerce, retail media, omnicanalidad). Skill puente: `erudito-retail`. Síntesis por eje en `ingesta-videos/retail-neo/sintesis/{cro,social,newretail}.md`. El eje 2 también amplió la KB `eruditos-canales/tiktok.md`.
- `TESIS_COLOR_FROZEN_ALMACEN.md` — **Color en tiendas de congelados + almacén de conveniencia** (2026-07-17, 30 artículos + hex de marca verificados, EN/ES, QA 0 URLs falsas). Psicología del color en food retail (por color), tensión congelado-frío vs almacén-cálido y cómo se resuelve (dominante + acento cálido ≤20-30%), colores reales de marcas (McCain amarillo #FCE502, Iceland rojo #D2212E, Whole Foods verde, etc.), tendencia 2025 (verde salvia/bosque + terracota + crema), y **recomendación concreta de paleta para Alimentos Agrocomercial** (verde bosque+crema VALIDADO como base + acento terracota #C06B4E / borgoña de carne #7A2E2E + azul-hielo mínimo como señal de congelado). Skills puente: `crear-assets-marca` (§5 nueva) + `erudito-retail`. Materia prima: `ingesta-videos/eruditos-herramientas/color-frozen-almacen/`.
- `TESIS_KAME_ERP.md` — **Kame ERP (Siigo Kame) y su API oficial** (2026-07-16, 60 fuentes: 54 artículos oficiales help.kameone.cl+kame.cl + Postman API + videos, QA anti-alucinación 0 URLs falsas). Cubre TODO Kame: API (Auth0, addVenta, 31 endpoints, DTE 33/39/41/52/61, folios CAF, certificado .PFX), y los 10 módulos del ERP (ventas, compras/OC, inventario, contabilidad, remuneraciones, honorarios, POS, e-commerce/marketplaces, cobranza/factoring, planes). Skill puente: `erudito-kame`. KB doctrina: `estudio-sintetico/biblioteca/fundamentos/eruditos-herramientas/kame.md`. Núcleo API verificado en vivo: `~/Downloads/CLAUDECODE/alimentos-agrocomercial/KAME_API_BOLETA_RESEARCH.md`. Materia prima: `ingesta-videos/eruditos-herramientas/kame/`. Uso: integración cajamigo/Caja Amigo, emisión de boleta/factura por API para COMERCIAL AGROALIMENTOS SPA.

## 3.5 UNIVERSIDAD — directorio mundial de canales y fuentes libres (F1 completa 2026-07-07)

Raíz: `~/Projects/biblioteca-diseno-web/universidad/` — plan en `PLAN_UNIVERSIDAD.md` (5 fases + vara de élite).
- `canales/` — **~193 canales élite + 4 portales** en hasta 10 idiomas (incl. Bilibili), mapeados a las 19 materias con evidencia y "qué consumir primero": `cine-produccion-video.md` (34) · `sonido-diseno-sonoro.md` (25) · `diseno-ux-frontend.md` (39) · `medios-interactivos-creative-tech.md` (26) · `motion-animacion.md` (44+4) · `marketing-elite.md` (25).
- `fuentes-libres/SEMILLA_bases_libres.md` — cursos abiertos y libros legalmente gratis del mundo (MIT OCW, Kadenze, NPTEL, 中国大学MOOC, GDC, iZotope Learn, Practical Typography, Nature of Code…).
- Ingesta: pipeline probado en `ingesta-videos/` (fábrica-a-disco multi-IA, leer ANCLA_INGESTA.md) — los destilados entran versionados a la KB.

## 4. Skills con conocimiento destilado (`~/.claude/skills/`)

**Propias (destiladas del ecosistema):** `design-system` (Interfaz Invisible + §9.1 lista negra IA + §15 mecánica design-cli) · `creatividad-publicitaria` (copia canónica 10 leyes) · `kb-diseno-reglas` (Paso 0 + cheat sheet) · `critico-artes` (QA visual adversarial) · `estilo-mara` · `estilo-victoria-lainez` · `agro-catalogo-visual` · `brand-naming` · `estudio-sintetico` (13 estaciones + motor de distintividad) · **`florbes-estilos-visuales-ia`** (35+ estilos IA con keywords de activación exactas — de la KB videos) · **`florbes-video-ia-director`** (modelo/prompt/shot types/consistencia de personajes en video IA — de la KB videos) · `analisis-locales` · `consulting-analysis` · **`erudito-retail`** (retail neo-tecnológico: CRO + social commerce + new retail 新零售 — apunta a `tesis/TESIS_RETAIL_NEO_TECNOLOGICO.md`) · **`erudito-kame`** (Kame ERP + API oficial: DTE/CAF/certificado, addVenta, y los 10 módulos del ERP — apunta a `tesis/TESIS_KAME_ERP.md` + KB `eruditos-herramientas/kame.md`).

**De terceros (gusto/craft):** `high-end-visual-design` · `impeccable` · `ui-ux-pro-max` (50+ estilos, 161 paletas, 57 pares tipográficos, 99 guías UX) · `design-taste-frontend` · `modern-web-design` · `web-design-guidelines` · `typography` · `bencium-*` (3) · `gpt-taste` · `stitch-design-taste` · `redesign-existing-projects` · `banner-design`.

**Marketing (spec 33):** `marketing-psychology` · `marketing-plan` · `marketing-ideas` · `copywriting` · `cro` · `ads` · `ad-creative` · `brand` · `content-strategy` · `social` · `seo-audit` · `ai-seo` · etc.

## 5. Contexto por marca

`~/.claude/skills/product-marketing-context/` — los 6 archivos "CEO" con datos y reglas duras reales: `agro.md` · `pagai.md` · `weblia.md` · `maraa.md` · `techprime.md` · `chiwilandia.md`. Toda skill de mkt los carga como Paso 0 de marca.

## 6. Agentes nutridos con la KB (referencian fuentes en su definición)

`director-creativo` · `critico-artes` · `web-auditor-renderer` · `agente-catalogo` · `chiwi-escenografo` · `chiwi-video-producer` · `chiwi-animador` · `mailing-campaign-designer` · `suno-operator` · `chiwicuento-publisher`.

## 7. Arsenal de IAs para DELEGAR la carga (regla §2.7: Claude orquesta, las demás procesan)

**Regla de oro (Dari 2026-07-02, reforzada 2026-07-07):** ante CUALQUIER trabajo de volumen (leer/resumir docs, escribir código, clasificar en masa, generar assets) se delega POR DEFECTO a la IA especialista — sus tokens, no los de Claude. Claude se reserva la conversación, el juicio final, la síntesis y las decisiones estructurales. Avisar en 1 línea qué se derivó y a quién.

**Estado vivo y comandos copy-paste (leer PRIMERO, no re-probar):** `~/Downloads/CLAUDECODE/multi-ia-delegacion/ANCLA_operador_multi_ia.md` · memoria `reference_multi_ia_delegacion` · mapa maestro de llaves `~/DEV-OS/docs/HERRAMIENTAS-Y-ACCESOS.md` · arsenal del estudio `~/Projects/estudio-sintetico/biblioteca/herramientas/ARSENAL.md`.

**Texto/razonamiento (MCP `council` + `trinity-bridge`):**
| Trabajo | IA | Cómo |
|---|---|---|
| Docs largos / contexto gigante | Gemini 2.5 | `council_ask members=["gemini"]` (⚠️ Gemini CLI de trinity MUERTO desde 2026-07-05 — solo vía council/API) |
| Código: escribir, refactor, tests, escaneos de filesystem | Codex (GPT) | `trinity_ask agent="codex"` |
| Razonamiento complejo barato | DeepSeek | `council_ask members=["deepseek"]` |
| Velocidad / clasificación masiva | Groq (Llama 3.3) | `council_ask members=["groq"]` |
| Triviales / extracción — GRATIS | Ollama local (qwen/llama/gemma) | `council_ask members=["ollama:…"]` |
| Redacción pulida / generalista | GPT-4o | `council_ask members=["openai"]` |
| Multi-perspectiva / romper la idea | council completo | `council_ask` / `council_debate` |
| Cadena propone→revisa | codex↔gemini | `trinity_relay` |

**Generación de media (MCP conectados — consultar saldo ANTES de gastar, vía RECURSOS_PAGADOS.md):**
| Asset | MCP |
|---|---|
| Imagen (Flux/nano-banana/Ideogram vía fal) | `fal` (`generate`, `estimate_cost`) · `replicate` |
| Imagen con TEXTO legible (afiches, logos, tipografía) | `ideogram` (MCP dedicado, key propia) |
| Imagen vectorial / estilos / upscale / fondo | `recraft` |
| Imagen/video/3D/audio premium + upscale 4K | `higgsfield` (⚠️ saldo real ~1.000 cr — verificar con `balance`) |
| Imagen/visión/TTS/transcripción OpenAI | `openai` (`generate_image`, `analyze_media`, `transcribe_audio`) |
| Voz, música, dubbing, SFX | `elevenlabs` |
| Música con letra (sin API: navegador) | agente `suno-operator` |
| Gemini API directa 1-a-1 (texto/visión sin council) | `gemini` (MCP dedicado `gemini-mcp`) |

**Modelos de Claude por dificultad (subagentes con `model` override, gratis en el plan):** Haiku 4.5 = trivial masivo · Sonnet 4.6 = estándar · Fable 5 = default conversación · Opus 4.8 = arquitectura/decisiones críticas.

---

**Mantenimiento de este índice:** cada vez que se agregue una fuente de conocimiento (KB nueva, informe destilado, estilo con ADN, skill nutrida) o cambie el arsenal de IAs (IA nueva, caída, saldo), agregar/corregir su línea aquí. Este archivo es la primera lectura de cualquier agente creativo.
