# Mastering Motion Tracking In Final Cut: 15 Pro Tips For Flawless Results!
**Fuente:** jennjagerpro | https://youtu.be/C5oxyvE3Djs

## Qué enseña (2-3 líneas)
Este tutorial enseña a usar el motion tracker nativo de Final Cut Pro (versión 10.7+) para rastrear objetos en movimiento, aplicar efectos, textos y máscaras con precisión. Cubre desde lo básico hasta 15 trucos avanzados, incluyendo cómo simular un planar tracker y aplicar múltiples efectos con color masks en un solo clip.

## Lecciones accionables
- **Para iniciar un tracker:** selecciona el clip en la línea de tiempo → ve al Inspector → baja a "Trackers" → presiona el signo "+". Aparece un wireframe en el visor.
- **Ajustar el área de tracking:** mueve, redimensiona y reposiciona el wireframe para que quede lo más ajustado posible al objeto a rastrear (ej. cara, zapatos). Un área muy ajustada evita confusiones con el fondo.
- **Cambiar método de análisis a Machine Learning:** en el Inspector, bajo el tracker, cambia "Analysis Method" a "Machine Learning" (disponible desde Final Cut 10.7). Es el método recomendado.
- **Analizar el tracking:** en la parte superior del visor, presiona el botón "Analyze" (el del medio) para rastrear hacia adelante y atrás. También puedes usar las flechas para rastrear solo hacia adelante o solo hacia atrás.
- **Probar múltiples elementos para tracking:** añade varios trackers en el Inspector (ej. cara y zapatos) y analiza cada uno. Luego asigna el texto o efecto al tracker que dé mejor resultado.
- **Asignar un objeto a un tracker:** selecciona el texto o efecto en la línea de tiempo → habilita las herramientas de transformación en el visor → en el Inspector, bajo "Tracker", elige el nombre del tracker (ej. "Object Track" o "Object Track 2").
- **Cambiar comportamiento del tracker:** en el Inspector, bajo "Tracker", cambia "Behavior" entre "Offset to Tracker" (el objeto mantiene su posición relativa) y "Pin to Tracker" (el objeto se adhiere imitando escala, posición y rotación del objeto rastreado).
- **Deshabilitar parámetros no necesarios:** en el Inspector, bajo "Tracker", desmarca "Rotation" o "Scale" si no los necesitas para obtener un resultado más suave.
- **Aplicar múltiples objetos a un solo tracker:** selecciona otro elemento (ej. números de contador) y en el menú "Tracker" asígnale el mismo object track que ya usaste. Todo se moverá en unisono.
- **Arrastrar efectos directamente al visor:** desde el navegador de efectos, arrastra un efecto (ej. desenfoque) y mantén presionado el ratón mientras lo pasas sobre diferentes elementos en el visor. Final Cut detectará automáticamente el objeto (ej. cara) y lo rastreará.
- **Usar adjustment layer para efectos que no se rastrean bien:** si un efecto (ej. viñeta) no funciona arrastrándolo al visor, coloca un adjustment layer sobre el clip, aplícale el efecto, selecciona el adjustment layer, habilita transformación y asígnale un tracker existente.
- **Invertir máscaras de efectos:** en el Inspector, bajo el efecto (ej. desenfoque radial), pasa el cursor sobre el menú desplegable y selecciona "Invert" para aplicar el efecto al fondo en lugar del sujeto.
- **Añadir múltiples formas a un motion track:** en el Inspector, bajo el mismo menú desplegable del efecto, selecciona "Add Shape". Aparecerá una segunda forma en el visor que puedes reposicionar y redimensionar. Asígnale el mismo tracker original.
- **Deshabilitar escala y redimensionar shape mask:** si el wireframe se deforma porque el objeto sale del encuadre, en el menú "Tracker" desmarca "Scale". Luego haz clic en la shape mask y rediménsionala para cubrir todo el objeto.
- **Usar color mask para aislar el efecto:** en el Inspector, bajo el efecto (ej. colorize), despliega el menú y selecciona "Add Color". Usa el gotero para seleccionar el color del objeto. El efecto solo se aplicará a los píxeles de ese color dentro de la shape mask.
- **Afinar color mask con Shift y Option:** mantén presionada la tecla **Shift** mientras haces clic con el gotero para **añadir** colores a la máscara. Mantén **Option** mientras haces clic para **eliminar** colores de la máscara.
- **Aplicar múltiples efectos con color masks a múltiples objetos en un solo clip:** repite el proceso de añadir tracker, efecto y color mask para cada objeto diferente en el mismo clip.
- **Renombrar object tracks:** en el Inspector, haz doble clic sobre el nombre del tracker (ej. "Object Track") y escríbele un nombre descriptivo para mantenerte organizado.
- **Corregir tracking saltándose fotogramas:** si el tracker salta a otro objeto al final del clip, selecciona el tracker en la línea de tiempo, ubica el fotograma donde no necesitas el tracking y presiona **Delete** para eliminar ese segmento.

## Reglas para agentes
- Usa "Machine Learning" como método de análisis siempre que estés en Final Cut 10.7 o superior.
- Ajusta el wireframe del tracker lo más ajustado posible al objeto para evitar que el fondo interfiera.
- Deshabilita "Rotation" y "Scale" en el tracker si solo necesitas seguimiento de posición para obtener un resultado más suave.
- Asigna múltiples objetos (textos, números, efectos) a un mismo object track para que se muevan en unisono.
- Usa adjustment layers para efectos que no se rastrean bien al arrastrarlos directamente al visor.
- Activa "Invert" en la máscara del efecto cuando quieras aplicar el efecto al fondo y no al sujeto.
- Añade una shape mask adicional y asígnale el mismo tracker cuando necesites cubrir más área del sujeto.
- Desmarca "Scale" en el tracker si el objeto sale parcialmente del encuadre y el wireframe se deforma; luego redimensiona manualmente la shape mask.
- Usa color masks con Shift (añadir) y Option (quitar) para aislar el efecto solo al objeto deseado.
- Renombra los object tracks en el Inspector para mantener el proyecto organizado cuando uses múltiples trackers.
- Elimina segmentos del tracker en la línea de tiempo si el tracking salta a otro objeto no deseado.

## Errores comunes que evita o menciona
- **No usar Machine Learning:** el método de análisis por defecto puede dar peores resultados; siempre cámbialo a Machine Learning en versiones 10.7+.
- **Wireframe demasiado grande:** si el área de tracking es muy amplia, el tracker se confunde con elementos del fondo (ej. ladrillos). Ajusta el wireframe lo más ceñido posible al objeto.
- **No probar múltiples elementos para tracking:** a veces un objeto con alto contraste (ej. zapatos oscuros sobre fondo blanco) da mejor resultado que la cara. Siempre prueba varias opciones.
- **Dejar rotación y escala activadas cuando no se necesitan:** esto puede introducir movimientos no deseados. Deshabilita los parámetros que no uses.
- **Aplicar efectos directamente al clip cuando debería usarse adjustment layer:** efectos como viñetas no se rastrean bien arrastrándolos al visor. Usa un adjustment layer en su lugar.
- **No invertir la máscara cuando se necesita:** si quieres desenfocar el fondo y no al sujeto, activa "Invert" en el efecto.
- **Shape mask única que no cubre todo el cuerpo:** si el tracker solo sigue la cara pero el efecto debe cubrir todo el cuerpo, añade una segunda shape mask y asígnala al mismo tracker.
- **No deshabilitar escala cuando el objeto sale del encuadre:** el wireframe se comprime y deforma. Desmarca "Scale" y redimensiona manualmente la shape mask.
- **No usar color mask para aislar el efecto:** sin color mask, el efecto se aplica a todo lo que esté dentro de la shape mask, incluyendo objetos no deseados.
- **No usar Shift y Option para afinar la color mask:** sin estos atajos, la selección de color puede ser imprecisa y dejar partes sin colorear o colorear áreas no deseadas.
- **No renombrar los trackers:** con múltiples trackers en un proyecto, es fácil confundirse. Renómbralos para mantener el orden.
- **No eliminar segmentos de tracking no deseados:** si el tracker salta a otro objeto al final del clip, el efecto se aplicará incorrectamente. Elimina esos fotogramas del tracker.