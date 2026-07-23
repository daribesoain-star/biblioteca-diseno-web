# Google Ads Negative Keywords: The RIGHT Way to Find and Add Negatives in 2026
**Fuente:** GrowMyAds | https://youtu.be/9Hn1QuAwsas

## Qué enseña
El video enseña el proceso completo para encontrar y añadir palabras clave negativas en Google Ads, combinando el método manual tradicional con automatización mediante scripts y herramientas de IA como Claude. Explica cómo organizar los negativos en listas temáticas para una gestión eficiente y advierte sobre los riesgos de automatizar sin entender la lógica subyacente.

## Lecciones accionables
- **Método manual:** Ir a "Insights and Reports" > "Search terms" en Google Ads, revisar término por término, copiar los irrelevantes a una hoja de cálculo, clasificarlos por columnas (competidores, fuera de área, soporte, informacional, producto incorrecto, etc.) y luego añadirlos como negativos.
- **Script N-gram:** Usar un script de Google Ads (disponible en PPC CoPilot o buscando "N-gram script free" en Google) que analiza hasta 8,000 términos en 30 días, desglosando en 1-gram, 2-gram, 3-gram y 4-gram para identificar palabras raíz que desperdician presupuesto (ej: "washable" con 382 términos, $5,600 de costo y solo $1,700 en ventas).
- **Automatización con Claude (CSV):** Descargar los search terms como CSV desde Google Ads, subir el archivo a Claude y ejecutar un "negative keyword skill" predefinido. El output incluye: resumen de negativos por raíz, términos ambiguos marcados, y listas agrupadas por tipo (competidores, fuera de área, soporte, informacional, producto incorrecto).
- **Automatización con Claude Code (API directa):** Integrar Claude Code con la API de Google Ads, luego ejecutar un comando como: `"Run negatives for [nombre de cuenta] for Monday through Thursday this week"`. Claude Code genera automáticamente el análisis y la hoja de cálculo sin necesidad de subir CSV.
- **Match types para negativos:**
  - **Broad match:** `running shoes` → niega cualquier búsqueda que contenga ambas palabras "running" y "shoes" (incluye "blue running shoes" y "shoes running", pero NO "running shoe" en singular).
  - **Phrase match:** `"running shoes"` → niega solo búsquedas que contengan la frase exacta "running shoes" (niega "blue running shoes", pero NO "shoes running").
  - **Exact match:** `[running shoes]` → niega únicamente la búsqueda exacta "running shoes" (literal, no expansivo como en positivos).
- **Añadir negativos con listas:** Ir a "Campaigns" > "Keywords" > "Negative keywords", pegar los términos copiados, seleccionar "Save to a new or existing list", nombrar la lista (ej: "Competitor"), guardar. Luego aplicar esa lista a otras campañas desde "Use negative keyword list".
- **Organización recomendada:** Usar listas temáticas (competidores, fuera de área, soporte, informacional, producto incorrecto) en lugar de añadir miles de negativos a nivel de campaña. Esto facilita revisiones y eliminaciones futuras.

## Reglas para agentes
- **Usa phrase match como predeterminado** para la mayoría de negativos a menos que tengas una razón específica para broad o exact.
- **Nunca añadas negativos sin verificar** que no eliminarán búsquedas de alto rendimiento. Ejemplo: "RV" como negativo para una empresa que vende sofás modulares puede matar ventas a dueños de RV que compran muebles pequeños.
- **Siempre revisa abreviaturas de estados** antes de añadirlas como negativos. "OR" (Oregón) también es la palabra "or" en inglés, lo que puede bloquear búsquedas válidas.
- **Usa listas de negativos a nivel de cuenta** cuando el término aplique a múltiples campañas; reserva los negativos a nivel de campaña solo para términos ultra-específicos de esa campaña.
- **Nunca confíes ciegamente en la IA** sin entender la lógica manual primero. Verifica siempre los outputs de Claude o scripts antes de aplicarlos.

## Errores comunes que evita o menciona
- **Añadir negativos sin revisar contexto:** El ejemplo de "RV" como "producto incorrecto" cuando en realidad los dueños de RV son clientes reales que compran sofás modulares pequeños.
- **Usar abreviaturas de estados sin pensar:** "OR" como negativo por ser "Oregón" también bloquea la palabra "or" en inglés, matando búsquedas válidas.
- **Acumular miles de negativos a nivel de campaña** sin usar listas, creando un desorden imposible de gestionar o auditar.
- **Automatizar completamente sin entender la lógica:** Herramientas y scripts pueden añadir negativos que eliminan términos de alto rendimiento si no se supervisan.
- **No diferenciar match types:** Usar broad match para "living room" cuando solo se quiere negar la búsqueda exacta "living room", no frases como "sectional sofa for my living room".