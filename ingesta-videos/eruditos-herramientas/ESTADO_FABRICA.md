# ESTADO FÁBRICA DE ERUDITOS — herramientas (vivo)

> Retomado 2026-07-16 (sesión 2, la 1 murió por límite). Mapa maestro: `MAPA_ERUDITOS.md`.
> Pipeline: skill `ingesta-conocimiento` (7 pasos). Todo idempotente/reanudable.

## LOTE 1 (en curso)

| Erudito | Fuentes docs | Videos keep/subs | Destilado | Síntesis | QA | KB | Skill |
|---|---|---|---|---|---|---|---|
| erudito-elevenlabs-audio | 8 útiles ✅ (el_llms=índice) | 11/12 subs ✅ (cOZ9pgafaOU sin subs) | 19 ✅ | ✅ | ✅ 0 URLs falsas | ✅ | ✅ **CERRADO 2026-07-16** |
| erudito-imagen-ia | 9 útiles ✅ (flux1 SPA descartado; +openai gpt-image +higgsfield MCP catálogo) | 14/14 subs+destilados ✅ | 23 ✅ (14 videos + 9 art) | ✅ | ✅ 0 URLs falsas | ✅ | ✅ **CERRADO 2026-07-16** |
| ~~erudito-mercadolibre~~ | — | — | — | — | — | — | ❌ **DESCARTADO POR DARI 2026-07-16** (no se construye) |
| erudito-pagos-chile | 8 útiles ✅ (flow_api re-render ok; mp_comisiones+tiendanube ROTAS descartadas; +fintoc_payments 6 docs .md) | 11/13 subs ✅ | 17 ✅ | ✅ | ✅ 0 URLs falsas | ✅ | ✅ **CERRADO 2026-07-16** |
| NUTRIR erudito-email (Mailchimp) | — | — | — | — | — | cola | — |
| NUTRIR erudito-whatsapp (Woztell) | — | — | — | — | — | cola | — |

## Hecho (sesión 1)
- MAPA_ERUDITOS.md ✅ · inventarios de video (49/59/52/46 candidatos) ✅ · buscar_videos_eh.sh + render_spa.mjs ✅
- Artículos parciales bajados (ver tabla).

## Cola LOTE 2+ (próximas sesiones)
1. **erudito-deploy-ops** (Vercel + Fly) — P2.
2. **NUTRIR supabase** (novedades 2026) — P3.
3. **NUTRIR calidad-apps** (Playwright/QA) — P3.
4. **erudito-vision-transcripcion** (openai MCP) o nutrir reference_multi_ia — P3 (LOTE 3).
5. **erudito-spotify-growth** — P3 (LOTE 3).
6. Si quedaron en cola: nutrir erudito-email (Mailchimp) y erudito-whatsapp (Woztell).

## Rutas canon
- Workspace: `~/Projects/biblioteca-diseno-web/ingesta-videos/eruditos-herramientas/<slug>/articulos/`
- Keeps/subs: `~/Projects/biblioteca-diseno-web/ingesta-videos/canales/{keep_eh-*.txt, eh-*/}`
- Destilados: `~/Projects/biblioteca-diseno-web/ingesta-videos/destilado/eh-<slug>{,-art}/`
- Síntesis: `~/Projects/biblioteca-diseno-web/ingesta-videos/sintesis/eruditos-herramientas/<slug>.md`
- KB final: `~/Projects/estudio-sintetico/biblioteca/fundamentos/eruditos-herramientas/<slug>.md`
- Skill: `~/.claude/skills/erudito-<slug>/SKILL.md` (gatillo corto estilo erudito-tiktok)
- Regla dura erudito-imagen-ia: **MCP fal PROHIBIDO por costo** (reemplazos: replicate/recraft/ideogram/higgsfield/openai/gemini).
