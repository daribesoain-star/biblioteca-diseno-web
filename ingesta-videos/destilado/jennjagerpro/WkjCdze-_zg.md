# Animating 3D Models I Made with my Phone!
**Fuente:** jennjagerpro | https://youtu.be/WkjCdze-_zg

## Qué enseña (2-3 líneas)
Tutorial completo para crear una animación 3D en Apple Motion usando modelos USDZ capturados con la app Polycam en iPhone. Muestra cómo combinar modelos 3D, aplicar comportamientos de animación (overshoot), crear máscaras de texto animadas y agregar sombras y efectos de sonido para un resultado profesional.

## Lecciones accionables
- **Capturar modelos 3D con Polycam:** Usar la app Polycam en iPhone para escanear objetos reales y exportarlos como archivos USDZ.
- **Configurar proyecto en Apple Motion:** Presets: 4K, 24 fps, duración 10 segundos.
- **Añadir fondo:** Ir a Library > Generators > Color Solid, luego en Inspector usar color picker para igualar el color del empaque de referencia.
- **Importar modelos USDZ:** Arrastrar archivos USDZ al panel de proyecto. Colocar el modelo con la mordida encima del modelo completo en la pila de capas.
- **Activar modo 3D:** Add Object > Camera, confirmar "switch to 3D".
- **Escalar y rotar modelos:** Seleccionar grupo, Properties > Scale a 300%. Rotar en Y a 127 y en X a -6.
- **Ajustar duración de capas:** En timeline, seleccionar primer modelo, cambiar duración a 110 frames, mover playhead a ese punto y presionar O para recortar. Arrastrar borde del segundo modelo para que corte exactamente donde termina el primero.
- **Añadir comportamiento Overshoot a rotación Y del primer modelo:** En Inspector > Properties > Rotation Y, dropdown > Add Parameter Behavior > Overshoot. Start value: 260. Extender duración del overshoot más allá del media (ej. 117 frames).
- **Añadir comportamiento Overshoot a rotación X del segundo modelo:** Add Parameter Behavior > Overshoot. Start value: 5.96, Ramp: 2.86, Cycles: 3, Start offset: 34. En timeline, arrastrar overshoot al inicio y reducir end para duración 210.
- **Crear sombra 3D:** Duplicar grupo de modelos (right-click > Duplicate), renombrar "shadow". Colocar grupo original encima del shadow. En shadow: Properties > Position reducir Y para que esté debajo, Blend Mode > Silhouette Alpha, Filters > Blur con Amount 545.
- **Texto animado con máscara:** Usar Text Tool, escribir "delicious", fuente Sober Script, tamaño 800, centrar. Reset Position en Properties.
- **Trazar máscara con Paint Stroke:** Seleccionar Paint Stroke Tool, trazar cada letra sin soltar el mouse. Aumentar Width para cubrir texto. Right-click > Edit Points para ajustar nodos. Reducir duración del paint stroke a 1 segundo en timeline.
- **Aplicar Image Mask al texto:** Seleccionar texto > Object > Add Image Mask. Arrastrar paint stroke desde project pane al campo mask source.
- **Añadir borde animado al texto:** Filters > Border > Stroke. Color picker: seleccionar rojo del empaque Kellogg's. En timeline, alinear inicio del stroke con el inicio del modelo mordido. Width: 1, luego Add Parameter Behavior > Overshoot. End value: 29, Ramp: 3.21. Ajustar overshoot en timeline: end offset 201.
- **Ajustar posición final:** Seleccionar texto y paint stroke (Command+click), subir en Y. Bajar grupo de modelos en Y.
- **Añadir empaque:** Arrastrar imagen de empaque, reducir tamaño, colocarlo en lower left corner, arrastrar encima de todo en project pane. Añadir Drop Shadow filter.
- **Añadir sonidos:** Habilitar audio timeline, arrastrar archivos de sonido (whoosh para giro, bite para mordida). Seleccionar whoosh > Properties > Show Timing > Speed 200%.

## Reglas para agentes
- Usa Polycam para capturar modelos 3D reales con iPhone antes de importarlos a Motion.
- Siempre activa el modo 3D añadiendo una cámara (Add Object > Camera) antes de trabajar con modelos USDZ.
- Coloca el modelo con la mordida (bite version) encima del modelo completo en la pila de capas.
- Aplica Overshoot behavior en lugar de keyframes manuales para animaciones de rotación con rebote natural.
- Usa Silhouette Alpha como blend mode para sombras 3D, combinado con Blur filter.
- Nunca sueltes el mouse mientras trazas con Paint Stroke para evitar cortes en la máscara.
- Siempre selecciona texto Y paint stroke juntos (Command+click) al reposicionar el texto animado.
- Alinea el inicio del stroke filter con el inicio del modelo mordido en la línea de tiempo.

## Errores comunes que evita o menciona
- No usar modelos 3D escaneados con app de terceros (Polycam) sin verificar que estén en formato USDZ compatible con Motion.
- No olvidar activar el modo 3D del proyecto antes de manipular modelos tridimensionales.
- No deshabilitar el modelo completo mientras se rota el modelo mordido, lo que dificulta encontrar el ángulo correcto.
- No ajustar los nodos del paint stroke con Edit Points después de trazar, dejando partes del texto descubiertas.
- No sincronizar la duración del overshoot behavior con la duración del media, causando animaciones que terminan antes o después de lo deseado.
- No alinear el inicio del stroke filter con el inicio del modelo mordido en la línea de tiempo.