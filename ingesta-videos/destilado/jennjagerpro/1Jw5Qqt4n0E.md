# Next Level Prism Effects for Final Cut!
**Fuente:** jennjagerpro | https://youtu.be/1Jw5Qqt4n0E

## Qué enseña
Tres formas avanzadas de aplicar el efecto prisma del pack Stylize Unit de Boris FX en Final Cut Pro: en impact shakes, sobre entrevistas con máscara Mocha tracking, y en textos animados. Muestra cómo personalizar colores, keyframes y el planar tracker para resultados profesionales.

## Lecciones accionables
- **Aplicar prisma a un impact shake:** Arrastra el efecto prisma al clip. Coloca el playhead justo antes del impacto. En Mix, añade keyframe en 0. Avanza 1 frame, sube Mix a 100. Cambia Smoothness a 6 (sin keyframe). En Scale Start, keyframe en 92; Scale End en 98. En Offset Start, keyframe con X=0.13, Y=0. Avanza 1 frame, cambia Offset Start a X=0.16, Y=0.08. Avanza 2 frames, regresa Offset Start a X=0, Y=0 y Mix a 0.
- **Personalizar colores del prisma:** En el inspector, cambia los colores predeterminados (azul, verde, rojo) por combinaciones como azul, amarillo y rosa neón, o teal, azul y magenta.
- **Aplicar prisma a entrevista con Mocha tracking:** Coloca el playhead 2 frames antes de que aparezca el texto del nombre. Sube Smoothness a 100. En Center Start, keyframe en 0. En Mix, keyframe en 0. Avanza 1 frame, sube Mix a 100 y ajusta Center Start visualmente. Al final del texto, keyframe en Center Start y Mix. Avanza 6 frames, Center Start X=0, Mix=0. Recorta el clip solo en la sección con keyframes. En inspector, haz clic en "Mocha Mask". En la ventana Mocha, coloca playhead al centro del clip. Usa la herramienta Magnetic Pen para rodear al sujeto. Haz clic en Track (derecha e izquierda desde el centro). Guarda y cierra. En Pixel Chooser > Mocha > Mask, activa Invert. Aumenta Feather ligeramente.
- **Aplicar prisma a texto animado:** Arrastra prisma al texto. Smoothness=48, Weight=100. Colores: teal, azul, magenta. Playhead al inicio. En Offset Start, keyframe con X=0, Y ajustado. En Offset End, keyframe con valor opuesto. Falloff=-100 (sin keyframe). Mix=100 (keyframe). Avanza 10 frames (Shift+flecha derecha), Offset Start y Offset End a 0 (keyframes), Mix=100 (keyframe). Avanza 1 frame, Mix=0 (keyframe). Avanza 20 frames, Mix=0 (keyframe). Avanza 1 frame, Offset Start y Offset End keyframes en 0. Mix=100 (keyframe). Avanza 3 frames, Offset Start X=-0.05, Offset End X=0.05. Avanza 5 frames, Offset Start y Offset End a 0, Mix keyframe. Avanza 1 frame, Mix=0. Añade cross dissolve al inicio del texto.
- **Usar el FX Editor:** Al aplicar el efecto, se abre un editor con prebuilt prism effects. Puedes usarlos como inspiración o cerrarlo para crear efectos personalizados.
- **Seccionar clips para tracking:** Recorta el clip solo en la parte donde aplicaste keyframes para reducir drift en Mocha tracking.

## Reglas para agentes
- Usa el Mocha planar tracker en lugar del object tracker de Final Cut cuando necesites que una máscara siga formas que se mueven en el plano.
- Siempre inicia el tracking desde el centro del clip para reducir drift.
- No tracks más de lo necesario: secciona el clip antes de aplicar tracking.
- Cambia los colores del prisma siempre que el efecto lo requiera; el prisma nativo de Final Cut no permite personalización.
- Usa keyframes en Mix para controlar la aparición/desaparición del prisma.
- Invierte la máscara en Pixel Chooser > Mocha > Mask cuando quieras aplicar el prisma al fondo y no al sujeto.
- Aplica un cross dissolve al inicio del texto animado con prisma para una transición suave.

## Errores comunes que evita o menciona
- No usar el prisma nativo de Final Cut porque es limitado y no permite cambiar colores.
- No aplicar el prisma directamente sobre el sujeto en entrevistas sin usar Mocha tracking y máscara invertida, ya que el efecto se aplicaría al sujeto en lugar del fondo.
- No trackear desde el inicio o final del clip; hacerlo desde el centro reduce el drift.
- No olvidar seccionar el clip antes de trackear para evitar rastrear partes innecesarias que aumentan el drift.
- No dejar Smoothness muy bajo en texto si se quiere mantener nitidez; valores como 48 permiten texto sharp con ecos de color.