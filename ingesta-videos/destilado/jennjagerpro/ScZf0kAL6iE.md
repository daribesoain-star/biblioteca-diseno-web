# Grids and Guides for FCP! Why doesn't FCP have these already? 🤔
**Fuente:** jennjagerpro | https://youtu.be/ScZf0kAL6iE

## Qué enseña
Cómo crear un generador personalizado en Apple Motion que añade cuadrículas dinámicas y guías ajustables a Final Cut Pro, solucionando la falta de herramientas de alineación nativas. Incluye la publicación de parámetros (tamaño, color, activación/desactivación) y la creación de rigs para controles tipo checkbox.

## Lecciones accionables
- **Crear cuadrícula base en Motion:** En la biblioteca, arrastra el generador "Grid" al panel de proyecto. En el inspector > generador, ajusta: `Background Opacity` a `0`, `Background Width` a `200`, `Background Height` a `200`, `Line Width` a `2`.
- **Vincular ancho y alto de cuadrícula:** En el inspector, despliega "Add Parameter Behavior" > selecciona "Link". Arrastra el objeto Grid al campo "Source Object". En "Compatible Parameters", elige `Object > Grid > Background Width`. Así, al mover un slider, ambos valores se sincronizan.
- **Publicar color de cuadrícula:** Selecciona el parámetro `Line Color` en el inspector. Usa el "Color Cube" (herramienta recomendada) para elegir un color (ej. azul cielo con código hex). Luego, haz clic derecho en el parámetro y selecciona "Publish".
- **Crear guías de regla (líneas):** Ve a la herramienta "Shapes" > selecciona "Line". Mantén Shift y dibuja una línea horizontal ligeramente fuera del encuadre. En propiedades, resetea el parámetro para centrarla. En la pestaña "Shape", asigna `Width: 2`. En "Properties", ajusta `Position Y: 870` (para línea superior) o `-870` (inferior). Duplica y rota a `90°` para líneas verticales, con `Position X: -1740` y `1740`.
- **Publicar posición de guías:** En "Properties" de cada línea, despliega "Position" y haz clic derecho solo en el eje correspondiente (Y para horizontales, X para verticales) > selecciona "Publish".
- **Crear rig de activación/desactivación:** En el inspector, sobre el parámetro `Opacity` de la cuadrícula o línea, haz clic derecho > "Add to Rig" > "Create New Rig". Activa "Rig Edit Mode", baja la opacidad a 0, desactiva el modo. Publica el checkbox resultante. En el panel de proyecto > pestaña "Project", renómbralo (ej. "Grid On/Off").
- **Publicar tamaño de cuadrícula:** En el inspector del Grid, haz clic derecho en `Background Width` > "Publish". En el panel de proyecto, renombra el parámetro publicado (ej. "Grid Size").
- **Guardar y exportar:** Ve a "File" > "Save As". Nombra "Grid and Guides". Selecciona destino "Generators". Haz clic en "Publish". En Final Cut Pro, el generador aparecerá en el navegador de generadores.
- **Uso en Final Cut Pro:** Arrastra el generador a la línea de tiempo. Ajusta tamaño, color, y posición de guías desde el inspector. Para alinear texto o logos, mueve las guías hasta que los elementos encajen. Al finalizar, desactiva o elimina el generador.

## Reglas para agentes
- Usa "Link" en "Add Parameter Behavior" para sincronizar ancho y alto de la cuadrícula cuando se requiera mantener proporciones cuadradas.
- Publica siempre los parámetros `Opacity`, `Position` (solo el eje relevante), `Color` y `Background Width` para permitir control completo desde Final Cut Pro.
- Crea un rig de tipo checkbox para cada elemento (cuadrícula y líneas) que permita activar/desactivar su visibilidad.
- Nunca publiques el parámetro completo de `Position`; publica solo el eje Y para líneas horizontales y solo el eje X para líneas verticales.
- Asegúrate de que el "Pixel Aspect Ratio" del proyecto en Motion esté en "Square" para evitar líneas no cuadradas.
- Al dibujar líneas guía, mantenlas fuera del encuadre visible (valores de posición mayores a 800 en Y o 1600 en X para 4K) para que aparezcan como reglas desplazables.

## Errores comunes que evita o menciona
- **No publicar parámetros individuales:** Publicar todo el parámetro "Position" en lugar de solo el eje Y o X impide mover las guías de forma independiente en Final Cut Pro.
- **Olvidar el rig de opacidad:** Sin el rig checkbox, la cuadrícula o líneas permanecen visibles todo el tiempo, saturando la vista previa.
- **No vincular ancho y alto:** Si no se usa "Link", al ajustar el tamaño de la cuadrícula se deforman las celdas, perdiendo la proporción cuadrada.
- **Usar líneas dentro del encuadre:** Si las líneas guía se dibujan dentro del área visible, aparecen como elementos fijos en lugar de reglas desplazables desde los bordes.
- **No renombrar parámetros publicados:** Los nombres genéricos ("Checkbox", "Published Parameter") dificultan identificar cada control en Final Cut Pro.