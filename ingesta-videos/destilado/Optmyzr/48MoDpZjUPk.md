# Custom Labels Based on Product Performance for Shopping Campaigns
**Fuente:** Optmyzr | https://youtu.be/48MoDpZjUPk

## Qué enseña
Cómo usar el Smart Product Labeler de Optmyzr para crear una supplemental feed que clasifica productos por rendimiento (ROAS, conversiones) y luego aprovechar esa segmentación para construir campañas de Shopping o Performance Max con el Shopping Campaign Management tool, todo automatizado.

## Lecciones accionables
- Para iniciar, ve a **Manage and Optimize > Shopping and Bmax Retail > Smart Product Labeler** y haz clic en **Create > Add a new strategy**.
- Selecciona el **merchant feed** disponible; si no sabes qué custom label está vacío, usa **View Feed Analysis** para inspeccionar la tabla completa de atributos.
- En el segundo paso, elige el **custom label** o **custom attribute** vacío (ej. "custom label four") y haz clic en **Save**.
- Para definir los buckets de rendimiento, haz clic en **Add Performance Bucket Rules**. La herramienta evalúa productos secuencialmente como un embudo: si un producto no cumple las condiciones del primer bucket, pasa al siguiente.
- Los buckets por defecto son: **Hero, Sidekicks, Villains, Zombies, Flux**. Puedes eliminarlos y crear una estructura personalizada como **Low ROAS, Mid ROAS, High ROAS**.
- Para crear un bucket personalizado: edita el nombre, define condiciones como `ROAS > 0%` y `ROAS ≤ 1200%`, y añade condiciones adicionales como `Conversions ≥ 1`. Haz clic en **Update Bucket**.
- Agrega un **catch-all bucket** (bucket de aprendizaje) para productos nuevos sin datos de tráfico; Optmyzr recomienda incluirlo para no excluir productos.
- Tras configurar los buckets, haz clic en **Save** y luego **Save and Preview** para ver la distribución de productos y obtener la URL de la supplemental feed.
- Para activar la automatización: usa **Apply to Supplemental Data Source** y habilita la opción de actualización automática (frecuencia y horario). Así Optmyzr reetiquetará productos cuando cambie su rendimiento.
- En el **Shopping Campaign Management tool**, haz clic en **Create New Campaign**. Elige tipo de campaña: **Optimized/Smart**, **Standard Shopping** o **Bmax Retail**.
- En **Campaign Structure**, indica que quieres **una campaña por cada variación del custom attribute** que estás poblando (ej. custom label four). Puedes añadir niveles adicionales para asset groups o listing groups.
- Configura opciones básicas como **Target ROAS** y **Daily Budget** combinado para todas las campañas.
- En la vista previa, verifica las campañas creadas (una por bucket) con los productos asignados.
- Activa **Apply and Refresh Automatically** para mantener actualizados los asset groups o listing groups. Haz clic en **Submit**.

## Reglas para agentes
- Usa **View Feed Analysis** para identificar qué custom label está vacío antes de seleccionarlo en el Smart Product Labeler.
- Siempre agrega un **catch-all bucket** (learning bucket) para productos nuevos sin datos de tráfico, para no excluirlos de las campañas.
- Habilita la **automatización de actualización** en el supplemental feed (frecuencia y horario) para que los labels se actualicen automáticamente cuando cambie el rendimiento de los productos.
- En el Shopping Campaign Management tool, usa **una campaña por variación del custom attribute** para segmentar por rendimiento.
- Activa **Apply and Refresh Automatically** en el Campaign Management tool si agregaste niveles adicionales de asset groups o listing groups.

## Errores comunes que evita o menciona
- No dejar productos sin clasificar: el catch-all bucket evita que productos nuevos sin datos queden fuera de las campañas.
- No usar un custom label que ya esté ocupado: verifica con View Feed Analysis cuál está vacío antes de asignarlo.
- No actualizar manualmente los labels: la automatización evita que productos que mejoran o empeoran su rendimiento queden con etiquetas desactualizadas.
- No crear campañas separadas por rendimiento: segmentar por custom label permite asignar presupuesto y pujas diferenciadas (más presupuesto a high ROAS, menos a low ROAS).