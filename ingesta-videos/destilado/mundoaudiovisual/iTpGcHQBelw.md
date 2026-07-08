# ☀️ DJI MINI 3 PRO - SUNSET HYPERLAPSE 😎 How to RECORD and EDIT them?
**Fuente:** mundoaudiovisual | https://youtu.be/iTpGcHQBelw

## Qué enseña (2-3 líneas)
Este tutorial enseña el flujo completo para capturar y editar hyperlapses de atardecer con el DJI Mini 3 Pro: desde la configuración de exposición en automático con compensación negativa, uso de filtro graduado ND, intervalos de 3 segundos, hasta la edición en Lightroom Classic y montaje en Adobe Premiere Pro con estabilización Warp Stabilizer.

## Lecciones accionables

- **Usa filtro graduado ND (FreeWorld 1.2):** Coloca el filtro con el gradiente en la parte superior para oscurecer el cielo y mantener exposición correcta en sombras sin quemar altas luces.
- **Configura la cámara en modo automático** con compensación de exposición negativa: baja el EV a **-1.7** (ajusta según histograma) para evitar altas luces quemadas y poder recuperar sombras en postproducción.
- **Activa el histograma** en la pantalla del drone (siempre visible) y **activa las zebras** para identificar áreas sobreexpuestas.
- **Ajusta el balance de blancos a manual:** fija **5000 Kelvin** para tonos más fríos y consistentes durante todo el hyperlapse.
- **Configura el hyperlapse:**
  - Modo: **Trayectoria** (Waypoints) – selecciona Punto 1 y Punto 2 para definir el recorrido.
  - Intervalo: **3 segundos** (no 2 segundos) para que se aprecie el movimiento del sol al atardecer.
  - Duración: **12 segundos** de video final (aprox. 300 fotos, ~15 minutos de grabación).
- **En Lightroom Classic:**
  - Importa todas las fotos desde la tarjeta SD.
  - Edita una foto de referencia: baja **Altas luces (Highlights)**, sube **Sombras (Shadows)**, ajusta **Temperatura (Temp)** a tonos naranjas/cálidos, aplica **Eliminar neblina (Dehaze)**, saturación e intensidad.
  - Crea un **filtro graduado lineal** en el cielo: baja exposición, satura naranjas/rojos, ajusta luminancia de azules y aguamarinas.
  - Elimina manchas verdes (lente) con **Parche (Spot Removal)**.
  - Aplica **Reducción de ruido de luminancia (Luminance Noise Reduction)**.
  - Copia ajustes (Ctrl+C / Cmd+C), selecciona todas las fotos (Ctrl+A / Cmd+A), clic derecho → **Develop Settings → Paste Settings** → reemplazar máscaras.
  - Exporta: **File → Export** → subcarpeta "1", nombre "hyperlapse1", numeración secuencial.
- **En Adobe Premiere Pro:**
  - Crea proyecto nuevo, secuencia personalizada: **3840x2160, 25 fps**.
  - Importa las fotos exportadas marcando **"Image Sequence"**.
  - Escala el clip para llenar el encuadre (sin bordes negros).
  - Aplica **Warp Stabilizer**: en Effects Controls → Advanced → **Detailed Analysis** y **Improved Reduction**.
  - Para Instagram: crea secuencia **1080x1920, 25 fps**, duplica el clip estabilizado, reencuadra en vertical.
  - Aplica **blur de entrada y salida** (opcional).

## Reglas para agentes

- Usa **filtro graduado ND** (1.2) cuando el sol esté en el encuadre para evitar sobreexposición del cielo.
- Configura **EV en -1.7** (o según histograma) en modo automático para atardeceres; nunca dejes EV en 0.
- Usa **intervalo de 3 segundos** para hyperlapses de atardecer; nunca uses 2 segundos porque el movimiento del sol será imperceptible.
- Activa **histograma y zebras** siempre antes de grabar cualquier hyperlapse.
- Fija **balance de blancos manual (5000K)** para mantener consistencia cromática; nunca uses automático en tomas largas con luz cambiante.
- En Lightroom, **copia y pega ajustes** a todas las fotos del hyperlapse; nunca edites foto por foto individualmente.
- En Premiere, marca **"Image Sequence"** al importar las fotos exportadas; nunca importes los archivos RAW directamente.
- Aplica **Warp Stabilizer** con "Detailed Analysis" y "Improved Reduction" para suavizar el movimiento del drone.

## Errores comunes que evita o menciona

- **No usar el modo "Fixed Heading" (rumbo fijo)** para hyperlapses porque la estabilización resulta deficiente; en su lugar, usa **modo Trayectoria (Waypoints)** para un movimiento más suave.
- **No dejar la exposición en cero** en atardeceres: la luz cambia drásticamente y se pierde información en altas luces; usar EV negativo (-1.7) permite recuperar detalles en postproducción.
- **No usar intervalo de 2 segundos** en atardeceres: el sol se mueve muy lentamente y no se aprecia el cambio; usar 3 segundos garantiza un efecto visible.
- **No editar foto por foto**: el tutorial muestra cómo copiar ajustes a todas las imágenes del hyperlapse para ahorrar tiempo.
- **No olvidar eliminar manchas verdes** (artefactos del lente del Mini 3 Pro con sol fuerte) usando la herramienta Parche en Lightroom; la mancha se mueve con el drone, por lo que puede requerir reajustes en fotos intermedias.
- **No exportar sin numeración secuencial**: Premiere necesita nombres de archivo en secuencia para interpretarlos como un clip de video.