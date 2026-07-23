# How Chris Ridley of Evoluted Built the Award-Winning PPC Campaign That Boosted ROI 27x | ALM 9
**Fuente:** Optmyzr | https://youtu.be/8SHbdTTuuXs

## Qué enseña
Chris Ridley explica cómo construir un sistema de automatización que conecta datos de ranking SEO (vía SEOmonitor API) con Google Ads mediante Google Sheets y scripts, para pausar/reanudar keywords según su posición orgánica. El objetivo: evitar la canibalización entre SEO y PPC, y garantizar que los anuncios solo se activen cuando el ranking orgánico cae por debajo del puesto 3, maximizando el ROI incremental.

## Lecciones accionables
- **Conectar SEOmonitor API con Google Sheets:** Instalar la extensión SEOmonitor para Google Sheets, autorizar con el token API, crear un reporte diario de "keyword performance last 30 days", filtrar para excluir términos de marca si se desea, y configurar actualización diaria.
- **Generar labels automáticamente en la hoja:** Usar una función CONCATENATE que combine el keyword + el ranking móvil con el prefijo "SER-" (ej: "SER-hockey skates-2"). Esto crea labels que el script de Google Ads leerá.
- **Aplicar labels manualmente en Google Ads Editor:** Descargar la cuenta en Google Ads Editor, copiar los keywords de un ad group a una hoja aparte, buscar el label "SER-" que mejor corresponda al tema del ad group (ej: "SER-web development-1"), y aplicar ese label a todos los keywords del grupo. Subir los cambios a Google Ads.
- **Configurar el script de Google Ads:** Copiar el script proporcionado (enlace en notas del episodio), modificar solo las partes en rojo: el nombre de la pestaña de la hoja (debe coincidir con el nombre de la pestaña en Google Sheets) y el prefijo del label (por defecto "SER-"). Programar el script para ejecutarse una vez al día entre las 7:00-8:00 AM (después de que la API de SEOmonitor se actualice ~6:00 AM).
- **Lógica del script:** Si el ranking orgánico es 1 o 2 → pausa el keyword en Google Ads. Si el ranking es 3 o inferior → reanuda el keyword. Solo afecta keywords que tengan un label que comience con "SER-".
- **Escalar progresivamente:** Probar primero en un ad group pequeño, verificar que no haya impacto negativo en rendimiento, y luego escalar a más grupos.
- **Para Performance Max (sin keywords):** Usar la misma lógica pero generando listas de palabras clave negativas automatizadas (a nivel de campaña o cuenta) que se activen/desactiven según el ranking orgánico.
- **Verificar actualización de datos:** En la esquina superior derecha de la pestaña de Google Sheets, revisar la fecha de "last updated". Si no se actualiza, ir a Extensiones > SEOmonitor > "Refresh current report" para diagnosticar errores (token expirado, etc.).

## Reglas para agentes
- **Usa el prefijo "SER-" en todos los labels** para que el script solo procese keywords relevantes y no recorra todos los labels de la cuenta.
- **Programa el script para ejecutarse una vez al día entre 7:00-8:00 AM** para asegurar que los datos de ranking orgánico ya se hayan actualizado (API de SEOmonitor se actualiza ~6:00 AM).
- **Nunca confíes en LLMs o IA generativa para hacer el matching entre keywords de Google Ads y keywords de SEO** — el contexto específico (ej: "hockey skates" puede referirse a patines de hielo vs. roller) requiere juicio humano.
- **Aplica los labels manualmente por ad group** para mantener coherencia temática y evitar errores de matching automático.
- **Prueba siempre en un ad group pequeño primero** antes de escalar a toda la cuenta.
- **Si usas múltiples ubicaciones geográficas**, crea un proyecto separado en SEOmonitor por cada ubicación, usa un prefijo de label diferente (ej: "SER-London-", "SER-Paris-") y un script independiente para cada uno.

## Errores comunes que evita o menciona
- **No asumir que SEO y PPC siempre deben competir:** Si el ranking orgánico es 1 o 2, pausar los anuncios evita canibalización y desperdicio de presupuesto.
- **No ignorar el desfase temporal entre cambios de ranking y ajustes manuales:** Sin automatización, cuando el ranking orgánico cae (por algoritmo, caída del sitio, etc.), hay un lag hasta que se reacciona manualmente. El script elimina ese lag (actúa en 24h).
- **No usar matching automático de keywords con IA:** El contexto específico del negocio (ej: "hockey skates" en una tienda de hockey sobre hielo vs. roller) lleva a errores. Hacerlo manualmente por ad group es más seguro.
- **No olvidar que los keywords de Google Ads rara vez coinciden exactamente con los keywords de SEO:** La solución usa labels temáticos (no matching exacto) para agrupar keywords de PPC bajo el mismo tema que un keyword SEO.
- **No aplicar la solución a toda la cuenta de golpe:** Empezar pequeño, validar, y escalar gradualmente para evitar pérdidas de tráfico no anticipadas.