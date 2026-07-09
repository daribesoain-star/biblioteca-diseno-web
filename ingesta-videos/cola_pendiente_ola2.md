# Cola pendiente OLA 2 — eruditos de marketing (P1 no encolado en ola 1)

> Ola 1 (2026-07-09) encoló 8 canales + 4 videos sueltos + 20 artículos. Esto es TODO lo prioridad 1 que quedó fuera, con el motivo. Las colas fuente viven en `~/Projects/estudio-sintetico/biblioteca/fundamentos/eruditos-canales/cola_ingesta_*.md` (ahí está también todo lo P2/P3).

## ✅ OLA 2 EJECUTADA (2026-07-09) — lo automatizable, HECHO

- **4 canales YouTube → 194 videos destilados e integrados** a las KBs (sección `## Ampliación de campo — ola 2`): Solutions 8 @solutionseight (49→google-ads), Jon Loomer (50) + Foxwell (50) →meta-ads, YouTube Creators (45)→youtube. Síntesis map-reduce DeepSeek + QA URLs (1 falsa removida).
- **4 docs oficiales de Meta WhatsApp** (renderizados con Playwright headless) integrados a `whatsapp.md` como "Docs oficiales de plataforma": pricing (CLP como divisa, código Chile 56/Perú 51, ventana FEP 72h, Precio Máximo 2026), messaging-limits, flows, policy. **Fuente primaria — manda sobre videos de tercero.**
- **Justin Welsh** LinkedIn guide 2026 → linkedin.md.
- KBs finales: google-ads 573 líneas · meta-ads 485 · youtube 434 · whatsapp 432.

## 🔴 QUEDA PARA DARI (login/registro o anti-bot fuerte) — NO automatizable

- **Optmyzr data studies individuales** (canibalización PMax 503 cuentas, RSA 20k) — Cloudflare bloquea el render. Los NÚMEROS clave ya están en la KB (vía índice de ola 1); bajar el PDF/estudio completo requiere tu sesión.
- **TikTok Newsroom / Creative Center** — timeout/anti-bot; Creative Center se consulta EN VIVO antes de cada campaña, no se ingiere.
- **Richard van der Blom Algorithm Report 2025** (PDF 240 págs, registro) · **DMA UK Email Benchmark** (registro) · **Motion Creative Trends** (gated) · **Mike Rhodes Circle** (login) · **Lara Acosta** Creator Science #241 (podcast, transcribir con Scribe si consigues el audio) · **Adam Mosseri IG** (cookies).
- wsp-catalogs: URL quedó rota (24 palabras); reintentar con la URL correcta de catalogs.

## Fuentes originales de la cola (referencia)

## Canales YouTube P1 fuera por el límite de 8

| Canal | Cola | Nota |
|---|---|---|
| Solutions 8 / The Google Ads Podcast (@GoogleAdsPodcast) | google-ads | Canal DIARIO, enorme — triage Codex fuerte (serie PMax e-commerce primero) |
| YouTube Creators oficial (@YouTubeCreators) + entrevistas René Ritchie↔Todd Beaupré | youtube | Palabra oficial del algoritmo; filtrar solo entrevistas/explicaciones |
| Jon Loomer (vía YouTube/Pubcast) | meta-ads | El blog devuelve 403 a fetchers — ingerir por video/podcast |
| Andrew Foxwell (apariciones en podcasts) | meta-ads | Buscar episodios en YouTube (ej. Ecom Growth Insider 2026) |

## Fuentes P1 que requieren BROWSER (Playwright) — curl devuelve Error/JS

| Fuente | Cola | URL |
|---|---|---|
| Meta — Pricing WhatsApp Business Platform | whatsapp | https://developers.facebook.com/documentation/business-messaging/whatsapp/pricing |
| Meta — Messaging Limits | whatsapp | https://developers.facebook.com/docs/whatsapp/messaging-limits/ |
| Meta — WhatsApp Business Messaging Policy | whatsapp | https://business.whatsapp.com/policy |
| Meta — WhatsApp Flows docs | whatsapp | https://developers.facebook.com/docs/whatsapp/flows |
| Meta — Catalogs & Commerce docs | whatsapp | https://developers.facebook.com/documentation/business-messaging/whatsapp/catalogs/catalogs-overview/ |
| Justin Welsh — LinkedIn guide 2026 (carga por JS) | linkedin | https://www.justinwelsh.me/article/linkedin-guide-2026 |

## Fuentes P1 que requieren REGISTRO/LOGIN

| Fuente | Cola | Nota |
|---|---|---|
| Richard van der Blom — Algorithm Insights Report 2025 (PDF 240+ págs) | linkedin | Descarga vía registro en richardvanderblom.com; espejo parcial Scribd |
| DMA UK — Email Benchmarking Report 2025 | email | Interactivo tras registro |
| Motion — Creative Trends reports completos | meta-ads | Gated; la página de benchmarks 2026 SÍ se destiló en ola 1 |
| Mike Rhodes — comunidad Circle (agentes IA Google Ads) | google-ads | Login gratuito |

## Otros P1 pendientes

| Fuente | Cola | Nota |
|---|---|---|
| Lara Acosta — Creator Science #241 + Built in Public 2026 | linkedin | Versión YouTube NO hallada por búsqueda; transcribir el podcast (Spotify/RSS) con ElevenLabs Scribe |
| Optmyzr data studies individuales (canibalización PMax 503 cuentas, RSA 20k, Smart Bidding BFCM) | google-ads | En ola 1 solo se destiló el ÍNDICE; bajar cada estudio |
| PPC Mastery — newsletter TPE + podcast (Miles McNair/Bob Meijer) | google-ads | Episodios con transcripción o versión YouTube |
| Analytics Mania — BLOG (canal YT ya encolado) | google-ads | Guías GTM/GA4/consent mode una a una |
| Meta oficial — engineering.fb.com + business news (Andromeda/GEM/Advantage+) | meta-ads | Monitoreo + destilar los posts clave de Andromeda |
| Adam Mosseri (@mosseri IG) + @creators | meta-ads | Requiere cookies IG (`--cookies-from-browser chrome`) |
| TikTok Newsroom / Business Case Studies / Creative Center / Ocean Engine informes | tiktok | Herramientas vivas y case studies: barrido dedicado (Creative Center se consulta antes de cada campaña, no se ingiere) |

## Regla al ejecutar ola 2
Mismo pipeline: inventario → triage Codex → `bajar_subs_lista.sh` → `fabrica_eruditos.sh` (o master). Artículos: curl → `html2texto.py` → `destilar_articulos_eruditos.sh` (agregar URLs al mapa del script). Lo destilado se integra por kaizen a los archivos de los eruditos, nunca en archivos nuevos.
