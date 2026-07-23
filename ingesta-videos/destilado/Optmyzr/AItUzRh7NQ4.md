# How to Automate Inventory-Based Campaigns with Campaign Automator
**Fuente:** Optmyzr | https://youtu.be/AItUzRh7NQ4

## Qué enseña (2-3 líneas)
Este video explica cómo usar Campaign Automator de Optmyzr para sincronizar automáticamente campañas de Google Ads y Microsoft Ads con inventarios dinámicos (productos, vehículos, inmuebles, eventos). Muestra cómo crear plantillas desde cero que lean datos de hojas de cálculo, feeds de Merchant Center, CSV o XML, y automaticen la creación, pausa y actualización de campañas, grupos de anuncios, palabras clave y anuncios según cambios en el inventario.

## Lecciones accionables
- **Acceso a Campaign Automator:** En Optmyzr, navegar a *Manage & Optimize* > *Advanced Campaigns* > *Campaign Automator*. También se puede usar la opción de búsqueda (*Search*).
- **Conexión de fuente de datos:** Soportadas: Google Sheets, Merchant Center feed, CSV, XML. Al conectar una hoja de cálculo, el sistema lee las columnas automáticamente. No es necesario volver a "fetch" manualmente si el inventario cambia; al ejecutar la plantilla (manual o automática) se obtienen los datos frescos.
- **Creación de plantilla desde cero:**
    1. Nombrar la plantilla (ej. "learn with optimizer sample").
    2. En *Initial Campaign Settings*, usar llaves `{ }` para insertar dinámicamente columnas de la fuente. Ejemplo: `{brand} {product name}` crea una campaña por cada combinación única de marca y producto.
    3. Configurar atributos de campaña: estado (enabled/paused), tipo (Search, Display, DSA), presupuesto diario (ej. $50), ubicaciones, estrategia de puja. Estos son valores iniciales; después del lanzamiento se pueden modificar sin que Campaign Automator los sobrescriba.
- **Uso de Inventory Filters (dos capas):**
    - **Nivel campaña (template-level):** Controla qué ítems del feed procesa toda la plantilla. Ejemplo: `brand equals "Nike"` o `stock greater than 0`.
    - **Nivel grupo de anuncios (ad group-level):** Permite crear subgrupos dentro de una campaña. Ejemplo: crear un grupo de anuncios solo para productos con `rating greater than 4.5`.
- **Generación de anuncios:**
    - Crear *Responsive Search Ads* (RSA) usando llaves para insertar datos dinámicos: `{brand} {product name} rated {category}`.
    - Usar **funciones de agregación** dentro de las llaves para mostrar valores calculados:
        - `{rating maximum value}` → muestra la calificación máxima en el grupo de anuncios.
        - `{price minimum value}` → muestra el precio mínimo en el grupo de anuncios.
    - Incluir un *Default Ad* como respaldo por si el anuncio dinámico excede límites de caracteres.
- **Generación de palabras clave:** Insertar combinaciones como `{brand}`, `{product name}`, `{brand} {product name}`, `{brand} {category}`.
- **Previsualización y aplicación:** Guardar la plantilla, hacer clic en *Save & Preview*, revisar estructura y copias, luego *Apply to Google Ads*. Opciones: *Instant Apply* (cambios en minutos) o habilitar automatización con frecuencia diaria o semanal.
- **Monitoreo de automatizaciones:** Ir a *Utilities* > *Optimization History Logs* o *Automation History Logs* para ver el estado y cambios aplicados.

## Reglas para agentes
- **Usa llaves `{ }`** para insertar dinámicamente cualquier columna de la fuente de datos en nombres de campaña, grupos de anuncios, anuncios y palabras clave.
- **Define al menos un filtro de inventario a nivel campaña** (ej. `stock > 0`) para evitar que productos agotados generen campañas activas.
- **Crea un Default Ad** en cada grupo de anuncios como respaldo para cuando el anuncio dinámico no pueda generarse (ej. por exceso de caracteres).
- **No uses Campaign Automator para controlar pujas o presupuestos después del lanzamiento**; solo configura valores iniciales. El usuario puede modificarlos libremente después.
- **Ejecuta la automatización diariamente** si el inventario cambia con frecuencia; de lo contrario, elige días específicos de la semana.
- **Mantén los nombres de columnas y el formato de la fuente de datos consistentes**; cambios pequeños pueden disparar actualizaciones innecesarias en las campañas.
- **Revisa y alinea otras automatizaciones** (scripts, reglas automáticas, Rule Engine) para que no pausen o modifiquen lo que Campaign Automator crea.

## Errores comunes que evita o menciona
- **No sobrescribe cambios manuales:** Campaign Automator solo modifica lo que él mismo creó o lo que cae dentro del alcance de la plantilla. No altera campañas, grupos o anuncios creados manualmente fuera de ella.
- **No controla pujas ni presupuestos después del lanzamiento:** Aunque configura una estrategia de puja y un presupuesto diario al crear la campaña, el usuario puede ajustarlos después sin que la herramienta los revierta.
- **No requiere volver a "fetch" manualmente:** Al ejecutar la plantilla (manual o automática), los datos se obtienen frescos de la fuente; no hay que reconectar la hoja de cálculo cada vez que cambia el inventario.
- **Cuidado con conflictos de automatización:** Si se usan scripts, reglas automáticas o Rule Engine, pueden pausar o modificar lo que Campaign Automator crea, causando inconsistencias. Se recomienda revisar y alinear todas las automatizaciones.
- **No olvidar el Default Ad:** Si no se incluye, el grupo de anuncios podría quedar sin anuncios cuando el dinámico falle por límites de caracteres.