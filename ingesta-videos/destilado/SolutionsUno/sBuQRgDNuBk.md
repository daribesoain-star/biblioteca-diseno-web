# 🧐 Google Ads Optimization Tricks: How to Consolidate ALL Your Shopping Ads Data
**Fuente:** SolutionsUno | https://youtu.be/sBuQRgDNuBk

## Qué enseña (2-3 líneas)
Este video enseña cómo extraer y consolidar todos los datos de tus Shopping Ads (productos) de Google Ads en una sola hoja de cálculo para obtener totales y promedios que Google no muestra en la interfaz. Explica el proceso paso a paso desde la vista de campañas, pasando por la pestaña "Productos", hasta la descarga en Google Sheets para crear fórmulas de suma y promedio.

## Lecciones accionables
- **Paso 1: Configurar la vista previa a la descarga**
  - Selecciona el período de tiempo deseado en la interfaz de Google Ads.
  - Asegúrate de que el estado de las campañas esté en "Todos" para ver todas las campañas que gastaron dinero en ese período.
  - No apliques filtros adicionales (excepto opcionalmente "Costo > $1" para excluir campañas sin gasto).
  - Ve a la vista "Todas las campañas" (All campaigns) sin haber hecho clic en ninguna campaña individual.

- **Paso 2: Navegar a la pestaña "Productos"**
  - Haz clic en la pestaña **"Productos"** (Products) desde la vista de todas las campañas.
  - **Advertencia clave:** Si tienes filtros activos en la vista de campañas, esos filtros se arrastrarán a la vista de productos. Si hiciste clic en una campaña específica antes de ir a Productos, solo verás datos de esa campaña.
  - Google muestra la nota: "Estas métricas se calculan a partir de tus campañas de Shopping y Performance Max", ya que solo esas campañas aparecen en la red de Shopping.

- **Paso 3: Descargar los datos**
  - En la vista de Productos, haz clic en el botón **"Descargar"** (Download).
  - En el menú desplegable, selecciona **"Google Sheets"** (recomendado por la autora).
  - **Espera** a que aparezca el popup "Preparing report" y luego el enlace "Open sheet". Si cierras el popup, el archivo puede perderse en tu Google Drive.

- **Paso 4: Procesar en Google Sheets**
  - Abre la hoja de cálculo generada.
  - **Congela las filas superiores** (top 2 rows) para mantener los encabezados visibles.
  - **Limpia los datos** eliminando filas o columnas innecesarias.
  - **Crea una fila en blanco** debajo de los encabezados para colocar fórmulas de totales.
  - **Fórmulas recomendadas:**
    - `=SUM(rango_columna_impresiones)` para total de impresiones en Shopping.
    - `=SUM(rango_columna_costo)` para total de gasto en Shopping Ads.
    - `=AVERAGE(rango_columna_CPC)` para CPC promedio.
    - `=AVERAGE(rango_columna_CTR)` para CTR promedio.
  - **Ordena los datos** por columna de costo (descendente) para identificar productos con mayor gasto o CPC alto.

- **Paso 5: Interpretar y actuar**
  - Compara el total gastado en Shopping (suma de la columna Costo) contra el gasto total de la cuenta para calcular el porcentaje invertido en Shopping Ads.
  - Identifica productos con alto CPC o bajo rendimiento para ajustar presupuestos o pausar productos.
  - Usa esta información para "reajustar presupuestos e inclinarte hacia ciertas categorías de productos" y "hacer que los productos en los que Google está desperdiciando dinero se muestren menos".

## Reglas para agentes
- **Usa la pestaña "Productos" solo desde la vista "Todas las campañas" sin filtros activos** para asegurar que los datos incluyan todos los Shopping Ads de todas las campañas.
- **Nunca hagas clic en una campaña individual antes de ir a Productos**, porque la vista se filtrará solo a esa campaña.
- **Siempre descarga en Google Sheets** (no en CSV o Excel) para mantener la integridad de los datos y facilitar las fórmulas.
- **Espera el popup de "Open sheet"** después de la descarga; no cierres la ventana hasta que aparezca, o perderás el archivo.
- **Crea una fila de totales separada** (no uses el pie de página automático) para sumar y promediar sin alterar los datos originales.
- **Usa la fórmula `=SUM()` para costos e impresiones**, y `=AVERAGE()` para CPC y CTR, aplicadas al rango completo de datos.

## Errores comunes que evita o menciona
- **Error: Aplicar filtros en la vista de campañas antes de ir a Productos.** Esto filtra los datos de productos, mostrando solo un subconjunto.
- **Error: Hacer clic en una campaña específica antes de navegar a Productos.** La vista se limita a los productos de esa campaña, no al total del account.
- **Error: Ignorar el popup de descarga y no abrir la hoja de Google Sheets inmediatamente.** El archivo puede quedar perdido en Google Drive sin saber su ubicación exacta.
- **Error: Asumir que Google Ads muestra totales o promedios en la interfaz de Productos.** La autora enfatiza que "no totaliza nada para ti" y que "no puedes totalizar aquí", por lo que la descarga es obligatoria.
- **Error: No limpiar ni congelar filas en Sheets antes de crear fórmulas.** Los encabezados pueden desplazarse y las fórmulas pueden incluir filas no deseadas.