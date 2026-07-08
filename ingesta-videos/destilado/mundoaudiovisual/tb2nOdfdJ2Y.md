# How and Where to Edit the 10-bit D CineLike 🖌️👨‍🎨 of Your DJI Mini 3 Pro for Free!
**Fuente:** mundoaudiovisual | https://youtu.be/tb2nOdfdJ2Y

## Qué enseña (2-3 líneas)
Explica cómo corregir y etiquetar el perfil de color plano CineLike (10-bit) del DJI Mini 3 Pro usando Adobe Premiere y el software gratuito FilmNow. Incluye el uso de un LUT gratuito (CineLike a Rec.709) y el proceso manual con curvas, contraste y balance de color para obtener un acabado cinematográfico.

## Lecciones accionables
- **Perfil CineLike:** Es un perfil logarítmico de bajo contraste y saturación que preserva detalles en altas luces y sombras; el clip crudo es "inservible" y requiere procesamiento.
- **Adobe Premiere (módulo Color):**
    1. Abrir el módulo Color y observar el **Waveform** (parte superior = altas luces, inferior = sombras, 0-100 IRE).
    2. **Corrección básica:** Aumentar **Contraste** para separar altas luces y sombras.
    3. Subir **Altas luces** (Highlights) y bajar **Blancos** (Whites) para recuperar detalle.
    4. En **Creativo (Creative):** Aumentar **Intensidad** e **Intensidad/Saturación**.
    5. **Curvas (Curves):** Crear una curva en forma de "S" (tres puntos: sombras abajo, medios rectos, altas arriba) para contraste adicional.
    6. Ajustar **Temperatura de color** (Temperature) según la escena.
    7. **Etalonaje (Color Grading):** En **Balance de tono (Hue Balance)** aplicar azules en sombras y naranjas en altas luces para contraste de temperatura.
    8. Ajustar **Sombras (Shadows)** y **Negros (Blacks)** para recuperar detalle sin perder información.
- **Uso de LUT en Premiere:**
    1. En el módulo Color, ir a **Lumetri Color > Curvas > LUT**.
    2. Hacer clic en **Examinar (Browse)** y seleccionar el archivo LUT descargado (CineLike a Rec.709).
    3. Aplicar con un solo clic; luego ajustar exposición, temperatura, sombras y saturación si es necesario.
- **FilmNow (gratuito):**
    1. Crear nuevo proyecto e importar clip a la línea de tiempo.
    2. Acceder a corrección de color: **Click derecho > Color > Color Correction** o atajo **Shift+Ctrl**.
    3. En la ventana, ir a **Ajustar (Adjust)**.
    4. Aumentar **Contraste**, luego en **Luz (Light)** ajustar **Altas luces (Highlights)**, **Sombras (Shadows)**, **Blancos (Whites)** y **Negros (Blacks)**.
    5. Aumentar **Saturación (Saturation)** e **Intensidad (Intensity)**.
    6. Para LUT: en **Ajustar > Prueba de luz (Light Test)** seleccionar **Cargar luz (Load Light)** y elegir el archivo LUT.
- **LUT gratuito:** El presentador ofrece un LUT de CineLike a Rec.709 en la descripción del video (descargable gratis).
- **DaVinci Resolve:** La versión gratuita **no permite** editar video de 10 bits; se necesita la versión **Studio (de pago)**.

## Reglas para agentes
- Usa el **Waveform** en Premiere para verificar que altas luces no superen 100 IRE y sombras no bajen a 0 IRE.
- Aplica la curva en "S" en **Curves** solo después de ajustar el contraste básico.
- Nunca uses DaVinci Resolve **gratuito** para editar clips CineLike de 10 bits del DJI Mini 3 Pro; no es compatible.
- Cuando uses un LUT, siempre verifica y ajusta exposición, temperatura y sombras después de aplicarlo, porque no funciona perfecto en todos los clips.
- En FilmNow, usa el botón **Ajustar (Adjust)** para corrección manual; evita los presets "Cool" y "Warm" que vienen por defecto.

## Errores comunes que evita o menciona
- **Error:** Usar el clip CineLike crudo sin procesar (parece "inservible", sin contraste ni saturación).
- **Error:** Aplicar un LUT y no hacer ajustes posteriores (el LUT no siempre funciona perfecto; requiere corrección de temperatura, sombras y exposición).
- **Error:** Usar DaVinci Resolve gratuito para video de 10 bits (no lo permite; solo la versión Studio de paga).
- **Error:** No recuperar detalle en sombras al aplicar contraste excesivo (se pierden negros).
- **Error:** Confundir el histograma de FilmNow (izquierda = sombras, derecha = altas) con el waveform de Premiere (abajo = sombras, arriba = altas).