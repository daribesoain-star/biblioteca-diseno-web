# After Effects course in Spanish - 🎬 Chapter 5 - 2D Tracking - Animation Tracking.
**Fuente:** mundoaudiovisual | https://youtu.be/B1gKRKF5m6c

## Qué enseña (2-3 líneas)
Este capítulo enseña dos métodos de tracking 2D en After Effects: el tracker nativo de After Effects y el plugin Mocha (incluido con Creative Cloud). Cubre tracking de posición con un solo punto, tracking de bordes en perspectiva para reemplazar pantallas, y la vinculación de datos de tracking a objetos nulos para animar etiquetas, textos o videos sobre superficies en movimiento.

## Lecciones accionables

- **Abrir el Tracker nativo de After Effects:** Ir a `Window > Tracker`. Seleccionar el clip en la línea de tiempo, hacer clic en `Track Motion`.
- **Configurar opciones de tracking:** Hacer clic en `Options`. En `Track Adapt Feature`, seleccionar `Stop Tracking` (no `Adapt Feature`). Esto detiene el análisis cuando hay error y permite corrección manual inmediata. Hacer clic en `OK`.
- **Seleccionar punto de contraste:** Arrastrar el punto de tracking (cuadrado interno) sobre un área de alto contraste (ej: punto negro sobre fondo verde del teléfono). Ajustar el tamaño del cuadrado externo para definir el área de búsqueda.
- **Analizar movimiento:** Usar botón `Analyze Forward` (flecha hacia adelante) para analizar fotograma a fotograma. Si el tracker se detiene por error, reposicionar manualmente el punto de tracking y presionar `Analyze Forward` nuevamente.
- **Asignar tracking a un objeto nulo:** Crear un `New > Null Object`. Nombrarlo (ej: "movimiento teléfono"). Posicionar el nulo donde está el objeto trackeado. En el panel Tracker, hacer doble clic en `Tracker 1`, seleccionar `Edit Destination`, elegir el null object, `OK`. Luego `Apply > Apply to X and Y dimensions > OK`.
- **Crear etiqueta con forma y texto:** Usar `Pen Tool` para trazar línea (Stroke: azul, 5px). Con `Rectangle Tool` sobre la misma capa de forma, crear rectángulo (Fill: blanco, opacidad reducida). Agregar texto con `Text Tool`. Animar opacidad del texto: keyframe inicial 0%, keyframe 6 frames después 100%. Activar `Motion Blur` en la capa.
- **Precomponer la etiqueta:** Seleccionar capa de forma y texto, `Layer > Pre-compose`. Nombrar "etiqueta texto". Marcar `Move all attributes to the new composition`.
- **Enlazar etiqueta al nulo:** En la composición principal, seleccionar la precomposición "etiqueta texto". Arrastrar el `Pick Whip` (espiral) hacia el null object. La etiqueta seguirá el movimiento.
- **Animar aparición con máscara:** Sobre la precomposición, agregar `Rectangle Mask`. En `Mask Path`, crear keyframe inicial donde la máscara está fuera del cuadro (no visible). Avanzar unos frames, mover la máscara para que el texto aparezca completamente.
- **Usar plugin Mocha (Mocha AE):** En el clip, ir a `Effect > Mocha AE` o buscarlo en Effects & Presets. Hacer clic en el logo de Mocha para abrir la interfaz.
- **Tracking en Mocha (vista Classic):** Presionar `Z` para zoom. Usar herramienta `X-Spline` (o `Create Spline`) para dibujar un polígono alrededor del área a trackear (ej: esquina del teléfono). Ajustar puntos. En `Track` panel, seleccionar `Transform` (sin Scale ni Rotation). Hacer clic en `Track Forward`. Si hay errores, ir al frame fallido, reposicionar el spline, hacer clic derecho > `Add Keyframe`, continuar.
- **Exportar tracking de Mocha a After Effects:** Cerrar Mocha, hacer clic en `Save`. En el panel de efectos de Mocha en AE, ir a `Tracking Data > Create Track Data`. Seleccionar `Layer 1`. Elegir `Export Track Data > Transform > Apply to Null Object`. Se crea un null object con los datos.
- **Tracking de bordes en perspectiva (para reemplazar pantallas):** En Tracker nativo, seleccionar `Track Motion`. En `Track Type`, elegir `Perspective Corner Pin` (Position, Scale, Rotation, Skew). Aparecen 4 puntos. Arrastrar cada punto a una esquina del objeto (ej: iPad). El cuadrado interno marca la esquina exacta, el externo el área de búsqueda. Presionar `Analyze Forward`.
- **Aplicar tracking de perspectiva:** Crear un `New > Solid` (color negro). Precomponer el sólido: `Layer > Pre-compose`, marcar `Move all attributes to the new composition`. En el Tracker, `Edit Destination` elegir la precomposición. `Apply`. La precomposición ahora sigue las 4 esquinas.
- **Insertar video en la precomposición:** Dentro de la precomposición (doble clic), importar el video deseado y colocarlo sobre el sólido negro. Ajustar tamaño y posición. Al volver a la composición principal, el video aparece correctamente insertado en la pantalla del iPad.

## Reglas para agentes

- Usa `Stop Tracking` en opciones del tracker nativo, nunca `Adapt Feature`, para detectar errores inmediatamente y corregirlos manualmente.
- Cuando el tracker nativo se detenga por error, reposiciona manualmente el punto de tracking y presiona `Analyze Forward` de nuevo; no reinicies desde el principio.
- Para reemplazar pantallas, usa siempre `Perspective Corner Pin` como Track Type, no solo Position, para que el contenido se deforme correctamente con la perspectiva.
- En Mocha, usa `Transform` como tipo de tracking cuando solo necesites posición; no actives Scale ni Rotation a menos que sean necesarios.
- Al precomponer un sólido para tracking de perspectiva, marca siempre `Move all attributes to the new composition` para que los datos de tracking se transfieran correctamente.
- Vincula etiquetas o textos al null object usando el Pick Whip, no copiando keyframes manualmente.

## Errores comunes que evita o menciona

- **No usar un punto de alto contraste para tracking:** El tracker nativo falla si el área seleccionada no tiene suficiente contraste. Se recomienda elegir bordes nítidos o puntos oscuros sobre fondos claros.
- **Usar "Adapt Feature" en lugar de "Stop Tracking":** Adapt Feature intenta adivinar la posición cuando falla el tracking, pero suele dar resultados imprecisos. Stop Tracking permite corrección manual inmediata.
- **No precomponer el sólido antes de aplicar tracking de perspectiva:** Si se aplica el tracking directamente a un sólido sin precomponer, al insertar el video dentro no se heredarán los datos de deformación. La precomposición con "Move all attributes" es esencial.
- **Olvidar activar Motion Blur en capas animadas:** Sin motion blur, las animaciones de texto o etiquetas se ven rígidas y poco naturales al seguir el movimiento.
- **No ajustar manualmente los puntos de tracking en Mocha cuando falla:** Mocha puede desviarse en frames complejos; se debe agregar un keyframe manual en el frame erróneo y reposicionar el spline.