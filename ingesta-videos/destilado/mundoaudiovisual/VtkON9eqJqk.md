# DJI AIR 3 🔥 HOW DID I TRANSITION FROM DAY TO NIGHT? THE MAGIC OF EDITING (REVEALED)
**Fuente:** mundoaudiovisual | https://youtu.be/VtkON9eqJqk
## Qué enseña (2-3 líneas)
Enseña dos técnicas de edición en DaVinci Resolve para crear transiciones de día a noche con un mismo plano grabado con DJI Air 3 mediante waypoints. La primera técnica usa opacidad progresiva, speed ramp y directional blur; la segunda fusiona dos clips con opacidad parcial y alineación fotograma a fotograma para mantener visibles elementos diurnos y nocturnos simultáneamente.

## Lecciones accionables
- **Técnica 1 – Transición día a noche con opacidad y speed ramp:**
  1. Alinea dos clips (día y noche) superponiéndolos y bajando la opacidad del superior al 50% para cuadrar elementos clave (ej. molinos de viento) manualmente con transformación.
  2. Aplica keyframes de opacidad: primer keyframe en 0% (día visible), segundo keyframe en 100% (noche visible) en el clip superior.
  3. Convierte ambos clips en un **compound clip** (seleccionar ambos → clic derecho → "New Compound Clip").
  4. Dentro del compound clip, añade marcadores en la línea de tiempo en los puntos de inicio y fin de la transición.
  5. Presiona **Control+R** para ver puntos de velocidad. Añade **Speed Point** en cada marcador. Ajusta el porcentaje de velocidad (ej. 416%) para acelerar la transición.
  6. Para suavizar: selecciona el clip, presiona **Shift+C** para abrir remapeo de keyframes. Haz clic en la flecha para mostrar "processing speed". Cambia el keyframe de salto lineal a curva (clic derecho → "Curve") y arrastra los manejadores para hacer la transición progresiva.
  7. Añade **Directional Blur** al compound clip: ángulo **180°** (desenfoque lateral). Keyframes de intensidad: 0 al inicio, valor medio (ej. 50) en el centro de la transición, 0 al final.
- **Técnica 2 – Fusión día/noche con opacidad parcial y alineación fotograma a fotograma:**
  1. Superpone clip nocturno sobre diurno. Ajusta opacidad del clip superior a un valor intermedio (ej. 50-70%) para que ambos sean visibles.
  2. No llegues al 100% de opacidad: el clip nocturno nunca debe ocultar completamente al diurno.
  3. Alinea los clips fotograma a fotograma: añade keyframes de **transformación (posición)** en cada fotograma del clip superior para que los elementos (ej. molinos) coincidan exactamente con los del clip inferior. Esto requiere paciencia y ajuste manual.
  4. Opcional: aplica color correction a ambos clips para que la mezcla se vea coherente (ej. subir saturación, ajustar altos y sombras, cambiar tono de naranja a rosado, añadir reducción de ruido con nodo adicional).
- **Herramientas y parámetros exactos mencionados:**
  - DaVinci Resolve (aplicable a cualquier editor con opacidad, keyframes, speed ramp y blur).
  - Color correction: "LUT" para D-Log M del Air 3, ajuste de saturación, altos, sombras, tono (hue) de naranja a rosado, reducción de ruido de luminancia con "spatial boundary".
  - Marcadores: tecla **M** en la línea de tiempo (no en el clip).
  - Speed ramp: **Control+R** → "Add Speed Point".
  - Remapeo suave: **Shift+C** → "processing speed" → curva.
  - Directional Blur: ángulo **180°**, intensidad variable con keyframes.
  - Música: biblioteca **harley.io** (enlace en descripción, dos meses gratis con código del canal).

## Reglas para agentes
- Usa **compound clip** para agrupar clips superpuestos antes de aplicar efectos globales (speed ramp, blur).
- Cuando uses speed ramp, activa el remapeo con **Shift+C** y cambia el keyframe a curva para evitar saltos bruscos de velocidad.
- Para transiciones suaves, aplica **Directional Blur** con ángulo 180° y keyframes de intensidad que suban y bajen progresivamente.
- En la técnica de fusión, **nunca** lleves la opacidad del clip nocturno al 100% si quieres mantener visibles elementos del clip diurno.
- Alinea clips de día y noche **fotograma a fotograma** con keyframes de transformación cuando la cámara tenga movimiento; no confíes solo en un ajuste estático.
- Renderiza la línea de tiempo (seleccionar "cached render" → "automatic") antes de reproducir para evitar ralentizaciones por efectos.

## Errores comunes que evita o menciona
- **No deshabilitar background rendering:** si hay muchos efectos, el timeline se vuelve lento (10 fps). Solución: activar "cached render" en automático y esperar a que la línea azul se renderice.
- **No alinear los clips antes de aplicar opacidad:** si los molinos (u otros elementos) no cuadran, la transición se ve desalineada. Solución: bajar opacidad al 50% y ajustar posición manualmente.
- **Olvidar suavizar el speed ramp:** si solo se acelera sin remapear a curva, el cambio de velocidad es abrupto. Solución: usar Shift+C y curvar los keyframes.
- **No añadir motion blur en la transición:** sin directional blur, el cambio de velocidad se siente seco. Solución: añadir blur lateral con keyframes de intensidad.
- **En fusión, llegar al 100% de opacidad:** oculta completamente el clip diurno y pierde el efecto de mezcla. Solución: mantener opacidad parcial (ej. 50-70%).
- **No alinear fotograma a fotograma en tomas con movimiento:** si la cámara se mueve, un solo ajuste de posición no basta. Solución: keyframes de transformación en cada fotograma.