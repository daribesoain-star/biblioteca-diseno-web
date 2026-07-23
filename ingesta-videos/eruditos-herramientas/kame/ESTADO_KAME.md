# ESTADO — Ingesta ERUDITO KAME (todo Kame ERP + API)

## Estado global: ✅ TERMINADO (2026-07-16)

> Pipeline ingesta-conocimiento (7 pasos), delegación multi-IA a disco (§2.7), QA anti-alucinación con Python.
> Expande el research base: `~/Downloads/CLAUDECODE/alimentos-agrocomercial/KAME_API_BOLETA_RESEARCH.md`.

## Fuentes (paso 1-3) — 60 destiladas
- **Artículos oficiales:** 54 (help.kameone.cl + kame.cl), TODOS los módulos. Bajados por curl (0 thin). Lista: `urls.txt`.
- **Postman API oficial** (31 endpoints): destilado canónico `api_postman_oficial` desde el research base verificado en vivo.
- **Videos:** 48 candidatos → solo 5 genuinamente Kame-específicos con subtítulos (el resto ERP/SII genérico, descartado). `videos_keep.txt`.

## Destilado (paso 4) — delegado DeepSeek/Groq
- `destilado/eh-kame-art/` = 55 .md (54 artículos + API canónico). 0 fallos, 0 cortos.
- `destilado/eh-kame/` = 5 videos.

## Síntesis (paso 5) — map-reduce delegado
- `sintesis/eruditos-herramientas/kame.md` = 155 líneas, 9 módulos, ~50 URLs citadas.

## QA anti-alucinación (paso 6) — Claude, Python
- `qa_urls_eh.py` sobre la síntesis: **50 URLs, 0 falsas** (tras corregir 1 URL truncada por límite de tokens del reduce). ✅
- Corrección de contenido: aclarado campo `Documento` vs `TipoDocumento:"venta"` en addVenta (verificado contra el destilado fuente art. 14005952).

## Integración (paso 7) — ENTREGABLES
- ✅ TESIS: `~/Projects/biblioteca-diseno-web/tesis/TESIS_KAME_ERP.md`
- ✅ Entrada en `INDICE_FUENTES.md` §3.4 + skills §4
- ✅ KB: `~/Projects/estudio-sintetico/biblioteca/fundamentos/eruditos-herramientas/kame.md` (doctrina por módulo, tabla endpoints, campos addVenta, DTE codes, tabla planes, 9 gaps)
- ✅ SKILL: `~/.claude/skills/erudito-kame/SKILL.md` (registrada y activa, gatillo estilo erudito-pagos-chile)

## Nº fuentes por módulo (artículos, sin contar la síntesis cruzada)
| Módulo | Artículos |
|---|---|
| API | 4 + Postman |
| Facturación electrónica / DTE / CAF / certificado | 6 |
| Ventas / Cotizaciones / Pedidos | 10 |
| Compras / OC | 3 |
| Inventario | 4 |
| Contabilidad | 3 |
| Remuneraciones + Honorarios | 5 |
| POS | 7 |
| E-commerce / Cobranza / Factoring / Bancos | 6 |
| Usuarios/permisos + Planes | 5 |

## Gaps que quedan para Kame (soporte@kame.cl)
G1 string exacto `Documento` boleta · G2 cobro en caja · G3 tramos DTE · G4 plan mínimo API · G5 webhooks · G6 PDF ticket 80mm · G7 multi-empresa · G8 contingencia · G9 Middify soportado.

## Pendientes menores (no bloquean)
- Videos Kame más profundos son escasos en YouTube (Kame es doc-heavy); si aparece un webinar oficial nuevo, ingerir por kaizen.
- Los 9 gaps se cierran con una llamada a soporte@kame.cl (Dari).
- Módulos con artículo bajado pero no citados individualmente en la síntesis (cobros_manual, cobranza_manual, factoring_manual, elec_compras, contabilidad_estado_resultado, honorarios_primera_orden, pos_roles/sucursal, ventas_maestro/con_pack/con_servicio/listas_precios): su destilado existe en disco y alimentó el map-reduce; ampliar la KB con ellos si un caso lo pide.
