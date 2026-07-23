# How @Andrew Lolk Talks PPC Uses AI to Analyze PPC Data, Find Patterns, and Make Better Decisions
**Fuente:** Optmyzr | https://youtu.be/XXAn0luaD7c

## Qué enseña
Andrew Lolk explica cómo usar Claude para analizar datos de Google Ads descargando CSVs en lugar de conectar APIs, pidiendo solo destilación de datos sin inferencias ni conclusiones. Muestra cómo integrar AI en el flujo de trabajo de una agencia usando Notion como sistema operativo interno con agentes autónomos para SOPs, planificación y análisis.

## Lecciones accionables
- **Descarga CSV de Google Ads con columnas exactas** (no pidas a AI que extraiga datos directamente de cuentas grandes porque se confunde)
- **Sube el CSV a Claude** (único modelo que maneja datasets grandes hoy) y pídele que escriba Python para agregar y visualizar datos
- **Prompt exacto para análisis**: "Do not conclude, do not infer, do not guess. Just help me distill the data."
- **Prompt exacto para probar hipótesis**: "Is there any data that supports my thesis about [X]?" o "We are performing more poorly year-over-year. Is it because [segmento específico]?"
- **Usa Notion como sistema operativo**: cada página de SOP puede tener instrucciones AI específicas en una nota al pie
- **Configura agentes en Notion** para: revisar comentarios en SOPs, extraer aprendizajes de proyectos pasados, generar recomendaciones condicionales ("If your account is in this scenario, then this project would work well for you")
- **Para actualizar SOPs**: los miembros del equipo comentan directamente en el documento (como Google Docs), y un agente AI mensual revisa, corrige lo que puede, y lo que no puede lo agrupa en un proyecto para revisión humana
- **Para planificación trimestral**: pide a AI "Go through all the YouTube videos I've done, go through all the client projects, find the conclusions, tally up what projects were successful and under what circumstances"
- **Usa Superhuman + Claude MCP** para que Claude acceda directamente al email (el MCP de Gmail nativo funciona peor)
- **Almacena todos los datos de clientes en BigQuery** (data warehouse propio) para consolidar en un solo lugar
- **Integra datos de múltiples fuentes**: Google Ads, Meta Ads, Klaviyo (revenue), para análisis de media mix

## Reglas para agentes
- **Nunca permitas que AI concluya, infiera o adivine** sobre los datos — solo debe destilar y presentar
- **Nunca pidas a AI que "audite" datos** — en su lugar, sube tu propia teoría y pregunta si los datos la respaldan
- **Nunca conectes APIs directamente** para cuentas grandes — descarga CSV con columnas exactas primero
- **Usa Claude para trabajo analítico** (no ChatGPT ni Gemini) — está "tan adelante que desbloquea cosas que los otros no tienen"
- **Usa ChatGPT solo para búsquedas** cuando no quieras Googlear, no para análisis o escritura
- **Siempre revisa MCPs de terceros** por seguridad — "esto va a explotar en la cara de todos muy pronto" (riesgo de acceso de escritura no autorizado)
- **Cuando configures agentes en Notion**, limita la modalidad (no generará gráficos complejos como Claude standalone)
- **Para smart bidding**: pide a AI que explore en un rango de ROAS (ej. 10-30% más bajo o más alto) en lugar de usar match types

## Errores comunes que evita o menciona
- **Pedir a AI que concluya sobre los datos**: asume que la estrategia actual es correcta (ej. "tu ROAS sube y el volumen baja, tu estrategia de ajuste funciona" cuando en realidad querías expandir)
- **Conectar APIs directamente** para cuentas grandes: Claude/Gemini se confunden al extraer datos de cuentas grandes
- **Usar spreadsheets manualmente** (VLOOKUPs, pivot tables) cuando Claude puede hacer el mismo análisis en minutos con Python
- **Ignorar la seguridad de MCPs**: permitir acceso de escritura a cualquier MCP de terceros sin verificar
- **No documentar el "por qué"** de las decisiones pasadas: sin contexto histórico, AI recomendará tácticas obsoletas (ej. añadir todas las variaciones de keywords porque match types funcionaban diferente hace 2 años)
- **No consolidar datos en un solo lugar**: tener datos dispersos en Google Sheets, Excel, diferentes APIs dificulta el análisis cross-canal
- **No actualizar SOPs con feedback del equipo**: antes requería procesos complicados con formularios y automatizaciones; ahora basta con comentarios directos en el documento