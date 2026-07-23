# Learn With Optmyzr: How to Improve Location Targeting in PPC Through Geo Heatmapping
**Fuente:** Optmyzr | https://youtu.be/muV7jEwGeAo

## Qué enseña
Enseña a usar el Geo Heatmapping de Optmyzr para identificar qué ubicaciones geográficas están rindiendo por encima o debajo de las expectativas en campañas PPC, y cómo automatizar exclusiones o ajustes de puja mediante el Rule Engine. También explica la diferencia entre segmentación por "presencia e interés" vs. solo "presencia", y cómo evitar fugas de presupuesto hacia ubicaciones no deseadas.

## Lecciones accionables
- Usa el **Geo Heatmapping** de Optmyzr (o el reporte "Where and when ads showed" en Google Ads) para visualizar rendimiento por ubicación. El mapa no muestra exclusiones/targeting, sino ubicaciones donde los anuncios realmente se sirvieron.
- Selecciona la métrica en el dropdown: **Average CPC**, **Impressions**, **Clicks**, **Cost**, **Conversions**. No interpretes colores (verde/rojo) de forma aislada; relaciónalos con otras métricas.
- Aplica filtros con criterios basados en **al menos 30 días de datos históricos** para evitar falsos positivos/negativos. Ejemplo: filtrar Average CPC ≤ $5.30 o Clicks ≥ X.
- Para clientes **Optmyzr Pro+**: usa el **PPC Benchmark Tool** para comparar rendimiento contra el libro de negocio completo o vertical específico.
- Usa el **Rule Engine** de Optmyzr para automatizar cambios: crea reglas "if this then that" con scopes de ubicación. Ejemplo de regla:
  - **IF**: `Impressions (last 7 days) > 10` AND `Clicks >= 1` AND `Conversions = 0` AND `Location is not in targeted region` AND `Region CPC >= Campaign average CPC`
  - **THEN**: Exclude geolocation, o Modify geo bid adjustment (para tROAS/tCPA), o Include in report.
- Para modificar la expresión de CPC: usa la sintaxis `{{Campaign.AverageCPC}}` vs `{{Region.AverageCPC}}`. Puedes cambiarla a nivel de cuenta: `{{Account.AverageCPC}}`.
- Dentro del Rule Engine, usa la **búsqueda por palabra clave** (ej: "percent") para encontrar scopes disponibles.
- Marca la casilla **"Exclude recent similar changes"** (7 días como reciente) si no quieres que la regla se repita sobre ubicaciones ya modificadas.
- Segmenta por **dispositivo** y **red** dentro del heatmap para mayor granularidad.
- Programa al menos **20 minutos inamovibles por semana** para revisar reportes de ubicaciones (puedes usar Workflows de Optmyzr).

## Reglas para agentes
- Usa **"Presence in"** (no "Presence in and interest") cuando solo quieras mostrar anuncios a personas físicamente en la ubicación objetivo. Usa "Presence in and interest" solo si eres de real estate o travel y necesitas captar interés externo.
- Nunca combines más de **un país** por campaña en Google Ads; idealmente limita a **una zona horaria** por campaña. En Microsoft Ads es más aceptable por la segmentación a nivel de ad group.
- Siempre filtra con **mínimo 30 días de datos** antes de decidir exclusiones o ajustes basados en benchmarks.
- Cuando configures reglas de exclusión, verifica que la ubicación no esté ya en targeting nativo para evitar conflictos.
- Si usas tROAS/tCPA, recuerda: metas más agresivas (CPA más bajo, ROAS más alto) = menos volumen; metas más flexibles = más volumen.
- Nunca uses tROAS sin proporcionar **conversion values** (valores de conversión) — de lo contrario no aprovechas la herramienta.

## Errores comunes que evita o menciona
- **Interpretar colores del heatmap sin contexto**: verde no siempre significa "buena ubicación", rojo no siempre "mala". Hay que cruzar métricas (CPC, conversiones, clics).
- **Filtrar con pocos datos**: usar menos de 30 días puede generar falsos positivos/negativos.
- **No excluir ubicaciones accidentales**: campañas pueden gastar presupuesto en regiones no targeteadas ("happy little accidents" de Bob Ross). La regla con `Conversions = 0` + `Region CPC >= Campaign CPC` detecta estas fugas.
- **Usar "Presence in and interest" sin plan de exclusión**: deja la puerta abierta a todo el mundo; hay que excluir nativamente o con Rule Engine.
- **Sobresegmentar campañas por ubicación**: demasiadas campañas con presupuestos pequeños que no pueden rendir.
- **No considerar zona horaria**: en Google Ads los anuncios se sirven en la zona horaria de la cuenta; en Microsoft en la del usuario. Ignorar esto afecta scheduling y presupuesto.