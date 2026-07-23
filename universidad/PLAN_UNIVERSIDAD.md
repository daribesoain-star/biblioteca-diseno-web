# PLAN UNIVERSIDAD — Nutrición profunda de la KB con el conocimiento libre del mundo

**Directiva Dari (2026-07-07):** no limitarse a nada; aprovechar todas las bases de conocimiento del mundo (YouTube multi-idioma, cursos abiertos, PDF legalmente libres) para nutrir la base de los agentes y crear skills que operen de verdad. Consumo gradual para no romper tokens, usando todas las IAs.

**Regla de alcance (decisión Claude, aceptada por Dari):** sin cuota fija — VARA DE ÉLITE. Entra todo canal/fuente que pase la vara, sin tope. Estimado resultante: ~400-550 canales.

## Vara de élite (quality gate — un canal/fuente entra SOLO si cumple 3 de 4)
1. **Autoridad verificable:** profesor/académico, profesional premiado, autor publicado, o portafolio/trabajo real demostrable en la disciplina.
2. **Citado como referencia:** aparece repetidamente en listas "best of", recomendaciones académicas o de practicantes serios.
3. **Profundidad:** tutoriales/lecciones sustanciales (>10 min o series estructuradas), no clickbait ni listicles.
4. **Catálogo atemporal o actividad vigente.**

## Idiomas a barrer (no perderse exponentes fuera del español/inglés)
EN · ES · 中文 (→ **Bilibili**, los exponentes chinos no están en YouTube) · FR · DE · PT · IT · JP · KR · RU · HI. Buscar también con los términos nativos (ej. 调色/剪辑/混音, montage, Tonmischung, ミキシング).

## Fases
- **F1 — Directorio de canales** (en curso): por disciplina, agentes cazadores multi-idioma → `universidad/canales/<disciplina>.md`. 7 disciplinas / 19 materias.
- **F2 — Otras bases libres:** cursos abiertos y PDFs LEGALMENTE gratuitos → `universidad/fuentes-libres/`. Semilla: MIT OCW, Open Yale, NPTEL, 中国大学MOOC (icourse163), Kadenze, OpenLearn, FUN (Francia), freeCodeCamp/Odin (frontend), web.dev/MDN, iZotope Learn + FabFilter (audio), StudioBinder/No Film School (cine), Google Fonts Knowledge, Internet Archive (préstamo legal de libros canon), papers open access. **NO piratería:** de los libros canon con copyright se consume el ecosistema gratuito que los enseña, no el PDF robado.
- **F3 — Ingesta gradual (fábrica-a-disco):** lotes chicos → yt-dlp transcripciones → Codex/Groq/Ollama destilan (0 tokens Claude) → candidatos a `reglas_para_agentes` / `errores_comunes` nuevos. Pipeline base ya probado: `../ingesta-videos/` (518 videos). Videos sin subtítulos → ElevenLabs Scribe (key en ~/.secrets/elevenlabs.env).
- **F4 — Integración a la KB:** lo destilado entra versionado a `kb-contenido-materias.json` (y re-embeber en index.html). Cada regla nueva con fuente + fecha.
- **F5 — Skills reales:** cuando una materia acumula masa crítica → kaizen a la skill operativa correspondiente (mezcla→ffmpeg real, montaje→pipelines video, tipografía→design-system). Herramientas faltantes → ficha de compra/instalación, Dari decide.

## Presupuesto de tokens (regla dura)
- Búsqueda web = agentes Claude baratos (Haiku/Sonnet), por lotes de 1 disciplina.
- Destilado masivo = NUNCA Claude: Codex exec a disco / Groq / Ollama.
- Nunca ingerir >1 lote por sesión sin OK de Dari.

## Estado
- 2026-07-07: plan creado. **F1 lote 1 COMPLETO — 98 canales élite** en `canales/`: diseno-ux-frontend.md (39, 7 idiomas), sonido-diseno-sonoro.md (25, 8 idiomas), cine-produccion-video.md (34, 5 idiomas). Joyas: This Guy Edits (editor ACE/Emmy), Ian Shepherd (autoridad mundial LUFS), 影视飓风 y Alex聊混音 en Bilibili, Una Kravets (CSS WG). Gaps honestos documentados por idioma en cada archivo.
- 2026-07-07: **F1 COMPLETA — ~193 canales élite + 4 portales, las 19 materias cubiertas, hasta 10 idiomas por disciplina.** Lote 2: medios-interactivos (26; GAMES-Webinar/Yan Lingqi en Bilibili, Sakurai), motion-animacion (44+4, 10 idiomas; EJ Hassenfratz multi-Emmy, JohnKOBA Corea, árbitro chino UISDC), marketing-elite (25; curso A-Z del APG London, Brasil 2º en Cannes 2025 vía Meio&Mensagem/Newronio, hallazgo: el mkt de élite chino vive en Zhihu/WeChat no en video).
- 2026-07-07: **F3 lote FUENTES WEB COMPLETO** — 41 destilados útiles de 50 fuentes abiertas de la KB en `ingesta-fuentes/destilados/` (18/19 materias con ≥1; formato: reglas candidatas verificables + errores + citas verbatim con fuente/fecha; motor: `ingesta_fuentes.sh` → llamar_ia.py DeepSeek/Groq, 0 tokens Claude). Bajas: 5 CORTO (páginas JS-heavy: Nature of Code, Three.js manual, EBU R128, Google Fonts Knowledge, EFAP — requieren pasada dirigida con WebFetch/subpáginas) + 2 índices SIN-SUSTANCIA (GDC Vault, Skillshop — son portales, ingestar charlas específicas) + creatividad-publicitaria sin URLs en la KB (se nutre del destilado propio de 34 campañas).
- 2026-07-07: **Colas YouTube LISTAS** — `ingesta/cola_*.md` (6/6): top-15 por disciplina con playlist exacta y materia; Bilibili en sección aparte. **EN ESPERA: la Ola 3 de ingesta-videos/ sigue bajando (yt-dlp @mundoaudiovisual) — NO lanzar segunda descarga masiva (429). Al terminar Ola 3: correr las colas por el pipeline de ingesta-videos/.**
- Pendiente: F3-YouTube (colas, tras Ola 3) · pasada dirigida a los 5 CORTO · F4 integración de destilados a la KB (curar reglas candidatas → kb-contenido-materias versionado + re-embeber) · F5 skills.
