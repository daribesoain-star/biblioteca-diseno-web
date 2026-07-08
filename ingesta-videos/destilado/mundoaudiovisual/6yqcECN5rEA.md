# Color Correction Course - - Davinci Resolve - 🎬 Chapter 2 - Getting familiar with the interface.
**Fuente:** mundoaudiovisual | https://youtu.be/6yqcECN5rEA

## Qué enseña (2-3 líneas)
Este capítulo presenta un recorrido completo por la interfaz del módulo de color en DaVinci Resolve, explicando cada panel, herramienta y su función básica. Se cubren desde la Galería de capturas y los LUTs hasta los nodos, ruedas de color, curvas, Power Windows y máscaras mágicas, preparando al estudiante para los capítulos detallados posteriores.

## Lecciones accionables
- **Navegar al módulo de color:** Haz clic en el botón "Color" en la parte inferior de la interfaz para acceder al módulo de corrección de color.
- **Crear una captura (still) en la Galería:** Haz clic derecho sobre el lienzo (visor) y selecciona "Capture" (Capturar). Esto guarda toda la corrección aplicada al clip actual.
- **Aplicar una captura a otro clip:** Arrastra la captura desde la Galería directamente sobre el clip deseado en la línea de tiempo.
- **Aplicar un LUT (Look-Up Table):** Arrastra un LUT desde la sección "LUTs" (Loops) sobre el clip en el visor o nodo. Para perfiles logarítmicos Sony S-Log, busca LUTs específicos como "S-Log2 a 709".
- **Resetear un LUT aplicado:** Haz clic derecho sobre el visor, selecciona "LUTs" y luego "No LUT selected" (Ningún LUT seleccionado).
- **Ocultar/mostrar paneles:** Usa los botones en la barra de herramientas superior para ocultar o mostrar: la línea de tiempo, los nodos, los efectos y las miniaturas de clips.
- **Navegar en el área de nodos:** Usa la rueda del ratón para hacer zoom. Mantén presionado el botón central del ratón y arrastra para desplazarte. Con el clic izquierdo puedes seleccionar y mover nodos.
- **Diferenciar nodo de clip vs. nodo de línea de tiempo:** En el área de nodos, activa solo "Clip" para que los cambios afecten únicamente al clip seleccionado. Activa solo "Timeline" para que los cambios afecten a toda la línea de tiempo.
- **Ajustar balance de blancos rápido:** En las ruedas de color, usa el selector de balance de blancos (cuentagotas) haciendo clic sobre un área que debería ser blanca neutra en el visor.
- **Ajustar temperatura y tinte:** Usa los controles deslizantes "Temperature" (Temperatura) y "Tint" (Tinte) en la sección de ruedas de color.
- **Ajustar contraste y punto pivote:** Usa el control deslizante "Contrast" (Contraste) para el contraste general y "Pivot" (Punto pivote) para ajustar el punto medio de ese contraste.
- **Ajustar realce de color (Color Boost):** Usa el control deslizante "Color Boost" (Realce de color) para aumentar la saturación de forma más natural que el control de saturación general.
- **Usar el mezclador de luminancia (Luminance Mixer):** Encuéntralo en la sección de correcciones primarias para reordenar la luminancia de cada canal de color (rojo, verde, azul).
- **Usar curvas:** Ve a la pestaña "Curves" (Curvas) en el menú central. Puedes añadir puntos en la curva para ajustar el contraste tonal o seleccionar un canal de color específico para correcciones cromáticas.
- **Usar la herramienta de color específico (Hue vs. Sat/Hue vs. Hue):** En la pestaña "Hue Curves" (Curvas de tono), selecciona "Hue vs. Hue" o "Hue vs. Sat" para cambiar el tono o saturación de un color específico (ej. cambiar el rojo de una chaqueta a otro color).
- **Crear un Power Window (Máscara):** Selecciona la herramienta "Power Window" (Ventana de potencia) en el menú central. Elige una forma (círculo, rectángulo, etc.) y ajústala sobre el área deseada en el visor.
- **Trackear una Power Window:** Después de crear la máscara, haz clic en el botón "Tracker" (Seguimiento) y presiona "Play" para que DaVinci Resolve siga automáticamente el movimiento del objeto enmascarado.
- **Usar Magic Mask (Máscara mágica):** Selecciona la herramienta "Magic Mask" (Máscara mágica), dibuja un trazo sobre el sujeto (ej. una persona) en el visor, aumenta la calidad y presiona "Play" para que la máscara siga al personaje automáticamente.
- **Ver máscaras y alpha:** En la pestaña "Key" (Clave) puedes ver el nivel alpha de la máscara: blanco es lo visible, negro es lo transparente.
- **Transformar clip:** En la pestaña "Sizing" (Tamaño) puedes ajustar la posición (izquierda/derecha/arriba/abajo), zoom, rotación, distorsión (Yaw/Pitch) e invertir el clip.
- **Ver representaciones gráficas:** En el panel derecho, selecciona entre "Waveform" (Forma de onda), "Vectorscope" (Vectoscopio), "Histogram" (Histograma) y "Chromaticity" (Cromaticidad) para analizar la imagen.

## Reglas para agentes
- Usa la Galería (capturas) cuando quieras aplicar exactamente la misma corrección de color a múltiples clips en la línea de tiempo.
- Usa LUTs cuando necesites convertir un perfil logarítmico (S-Log, V-Log, etc.) a Rec. 709 o aplicar un look creativo predefinido.
- Activa solo "Clip" en el área de nodos cuando quieras que los cambios afecten únicamente al clip seleccionado; activa solo "Timeline" para efectos globales.
- Usa el cuentagotas de balance de blancos en las ruedas de color cuando necesites una corrección rápida de temperatura de color basada en un punto blanco de referencia.
- Usa "Color Boost" en lugar de saturación general cuando quieras aumentar la intensidad del color sin saturar artificialmente las zonas ya muy coloreadas.
- Usa las curvas "Hue vs. Hue" cuando necesites cambiar el tono de un color específico sin afectar los demás colores de la imagen.
- Usa Power Windows combinadas con el Tracker cuando necesites aplicar correcciones localizadas a objetos en movimiento.
- Usa Magic Mask cuando necesites aislar automáticamente una persona o sujeto del fondo para correcciones selectivas.
- Nunca apliques un LUT sin verificar primero que coincida con el perfil logarítmico exacto de tu cámara (ej. S-Log2 vs S-Log3).
- Nunca uses el control de saturación general de forma agresiva; prefiere "Color Boost" o ajustes selectivos por tono para resultados más naturales.

## Errores comunes que evita o menciona
- **Confundir el módulo de edición con el de color:** El video aclara que se está en el módulo de edición para mostrar la línea de tiempo, pero la corrección de color se realiza en el módulo de color.
- **Aplicar LUTs incorrectos para perfiles logarítmicos:** Se menciona que los LUTs deben coincidir con el perfil exacto de la cámara (ej. Sony S-Log2), y que si no se encuentra el adecuado, la corrección puede quedar sobreexpuesta o incorrecta.
- **Olvidar resetear un LUT antes de aplicar otro:** Se muestra cómo hacer clic derecho y seleccionar "No LUT selected" para eliminar un LUT aplicado previamente.
- **No diferenciar entre nodo de clip y nodo de línea de tiempo:** Se explica que activar "Timeline" en lugar de "Clip" aplica los cambios a todos los clips, lo cual puede ser un error si solo se quería corregir un clip específico.
- **Sobresaturar con el control de saturación general:** Se sugiere usar "Color Boost" como alternativa más natural para aumentar la intensidad del color.