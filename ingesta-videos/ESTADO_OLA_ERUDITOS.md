# ESTADO — Ola de ingesta ERUDITOS DE MARKETING (lanzada 2026-07-09)

> Fábrica multi-IA a disco para las 7 colas de los eruditos (`~/Projects/estudio-sintetico/biblioteca/fundamentos/eruditos-canales/cola_ingesta_*.md`), SOLO fuentes prioridad 1. Pipeline = el de `ANCLA_INGESTA.md`; scripts nuevos con sufijo `_eruditos` (los de olas anteriores NO se tocaron).

## Qué se encoló (canales YouTube — 8 + pseudo-canal)

| Canal | Cola temática | Inventario | Keep (triage Codex, cerrado 10:41) |
|---|---|---|---|
| GrowMyAds | google-ads | 148 | 60 |
| Optmyzr | google-ads | 349 | 60 |
| AnalyticsMania | google-ads (tracking) | 333 | 60 |
| daradenney | meta-ads | 243 | 60 |
| PaddyGalloway | youtube | 33 | 33 (todos ≥120 s, sin triage) |
| FilmBooth | youtube | 194 | 60 |
| CreatorInsider | youtube | 732 | 50 |
| ColinandSamir | youtube | 340 | 50 |
| eruditos-sueltos (pseudo-canal) | meta-ads | 4 videos: Fo-p03fwvdA, OlgVQYdMAjw, pMAxIOL8dtE, bd9MGQ0-Vqc (Andromeda + Ugly Ads/Barry Hott) | 4 |

**Total aprobado para ingesta: 437 videos.** Al cierre de esta sesión ya estaban destilados: eruditos-sueltos 4/4, PaddyGalloway 32/33, GrowMyAds 40/60 (y avanzando); subtítulos bajando en daradenney; artículos 14/20 destilados.

Inventarios: `canales/canal_<canal>.txt` · aprobados: `canales/keep_<canal>.txt`.

## Artículos/PDFs P1 (20 destilándose con Codex)

- Bajados a `fuentes-eruditos/<canal-tematico>/` (html+txt / pdf+txt): whatsapp 2 · email 7 · tiktok 4 · linkedin 3 · meta-ads 2 · google-ads 2.
- Destilados van a `destilado/eruditos-<canal-tematico>/<slug>.md` (formato ANCLA: qué enseña / lecciones accionables / reglas para agentes / errores + fuente URL).
- Los 4 docs de Meta developers (pricing, limits, policy, flows) BLOQUEAN curl → ola 2 con Playwright (ver `cola_pendiente_ola2.md`).

## Qué quedó corriendo solo (4 procesos en background)

1. **Triage Codex** de canales grandes → escribe `keep_<canal>.txt` (`/tmp/triage_eruditos.sh`, log `/tmp/triage_eruditos_run.log`).
2. **Descarga de subtítulos** secuencial anti-429 (espera cada keep): `scripts/ola_eruditos_subs.sh` → log `canales/ola_eruditos_subs.log`.
3. **Fábrica continua eruditos**: `scripts/fabrica_eruditos.sh` corre `destilar_master_eruditos.sh` en ciclos de 3 min mientras haya descarga viva; destila cada `.vtt` nuevo con `destilar_uno.sh` (DeepSeek/Groq a disco) → `destilado/<canal>/<id>.md`. Log: `destilado/master_eruditos.log`.
4. **Destilación de artículos** (Codex): `scripts/destilar_articulos_eruditos.sh` → logs `destilado/articulos_eruditos_run.log` + `destilado/destilar_articulos_eruditos.log`.

### Monitorear

```bash
# ¿siguen vivos?
pgrep -fl "ola_eruditos_subs|fabrica_eruditos|destilar_master_eruditos|destilar_articulos|yt-dlp|codex"
# avance de subtítulos / destilación de videos / artículos
tail -5 ~/Projects/biblioteca-diseno-web/ingesta-videos/canales/ola_eruditos_subs.log
tail -5 ~/Projects/biblioteca-diseno-web/ingesta-videos/destilado/master_eruditos.log
tail -5 ~/Projects/biblioteca-diseno-web/ingesta-videos/destilado/articulos_eruditos_run.log
# conteo de destilados por canal
for c in eruditos-sueltos PaddyGalloway GrowMyAds daradenney AnalyticsMania Optmyzr FilmBooth CreatorInsider ColinandSamir; do echo "$c: $(ls ~/Projects/biblioteca-diseno-web/ingesta-videos/destilado/$c 2>/dev/null | wc -l)"; done
```

Si la fábrica murió con `.vtt` sin destilar: relanzar `nohup ~/Projects/biblioteca-diseno-web/ingesta-videos/scripts/destilar_master_eruditos.sh >> ~/Projects/biblioteca-diseno-web/ingesta-videos/destilado/master_eruditos.log 2>&1 &` (idempotente). Si faltan subs: `./canales/bajar_subs_lista.sh <canal>` (reanudable, usa `archivo.txt`).

## Qué quedó para ola 2

Ver `cola_pendiente_ola2.md` (mismo directorio): 4 canales YT P1 fuera por el límite de 8 (Solutions 8, YouTube Creators, Jon Loomer, Foxwell), 6 fuentes que requieren browser (docs Meta developers, Justin Welsh), 4 con registro (reporte van der Blom, DMA UK, Motion completo, Circle de Mike Rhodes) y otros P1 (Lara Acosta por Scribe, data studies Optmyzr uno a uno, etc.). Todo lo P2/P3 sigue en las colas fuente.

## Síntesis final — ✅ HECHA 2026-07-09

Ejecutada con `scripts/sintetizar_eruditos.sh` (map-reduce: DeepSeek destila chunks de 12 → fusiona/deduplica por cola). Resultado en `sintesis/eruditos/<cola>.md` e **integrado** a cada KB como sección `## Ampliación de campo — ingesta de canales (2026-07-09)`.

- **google-ads** ← GrowMyAds+Optmyzr+AnalyticsMania+artículos (182 destilados) → KB 225→477 líneas.
- **meta-ads** ← daradenney+eruditos-sueltos+artículos (64) → 228→367.
- **youtube** ← PaddyGalloway+FilmBooth+CreatorInsider+ColinandSamir (191) → 224→357.
- **tiktok** (4 artículos, incl. benchmarks TikTok Shop Chile/Perú+Smart+), **email-mailing** (7), **linkedin** (3), **whatsapp** (2) → todas ampliadas.
- **QA anti-alucinación:** URLs citadas validadas contra los destilados fuente por cola; 1 URL falsa (nmNzE7fDXsw en youtube) detectada y removida; google-ads 0 falsas.
- Las 7 `cola_ingesta_*.md` marcadas `✅ OLA 1 INGERIDA`. Commit en repo estudio-sintetico.

**Pendiente = ola 2** (ver `cola_pendiente_ola2.md`): 4 canales YT P1 fuera del límite de 8, fuentes con browser/registro. Avisar a sesiones abiertas: "relee la skill erudito-X".
