# 🔵 NUEVO CURSO 2 0 DE DAVINCI RESOLVE 18 🎬 Capítulo 9: Los Títulos
**Fuente:** mundoaudiovisual | https://youtu.be/KqgwnboXLes

## Qué enseña (2-3 líneas)
Este capítulo enseña a crear y personalizar títulos en DaVinci Resolve 18, desde textos prediseñados hasta animaciones propias con keyframes. Cubre ajustes avanzados de tipografía, sombras, efectos dinámicos y técnicas para hacer que los textos se integren visualmente con el fondo.

## Lecciones accionables
- **Acceder a títulos prediseñados:** Ve al panel de efectos (Effects) → sección "Titles". Arrastra cualquiera al timeline para usarlo.
- **Usar el título base "Text" (Text+):** Es la herramienta principal para personalización total. Arrástralo al timeline.
- **Añadir sombra a un título:** Ve a Effects → OpenFX → busca "shadow" → arrastra "Shadow" sobre el clip de título. Ajusta: reduce "Blur Distance", aumenta "Intensity".
- **Cambiar color del texto:** Selecciona el título → Inspector → sección "Text" → Color picker.
- **Ajustar tracking (espaciado entre letras):** Inspector → "Text" → ajusta "Tracking". Para animarlo: activa keyframe (diamante) en valor inicial, avanza en timeline, cambia valor, se crea keyframe automático.
- **Crear efecto de máquina de escribir:** Inspector → "Text" → ajusta "Pan" (deslizador de inicio a fin). Pon keyframe al inicio en 0, keyframe más adelante en 100.
- **Ajustar line spacing (espaciado entre líneas):** Inspector → "Text" → "Line Spacing" (útil si tienes múltiples líneas).
- **Animar rotación de letras individuales:** Inspector → "Character Spacing" → "Letter Rotation". Pon keyframe en 0, avanza, cambia valor, otro keyframe para volver a 0.
- **Curvar texto:** Inspector → "Character Spacing" → "Curvature". Ajusta valor positivo o negativo. Puede aplicarse por caracteres o por palabras.
- **Añadir fondo al texto:** Inspector → "Transform" → "Background" → activar → elegir color (ej. verde). Ajustar opacidad.
- **Usar "Shading" para efectos visuales:** Inspector → "Shading" → activar elementos como "Red L", "Black Shadow", "Blue Border". Ajusta opacidad, grosor, color.
- **Crear efecto de brillo (glow):** Duplica el clip de texto (arrastra hacia arriba manteniendo presionado). En el duplicado: Inspector → "Shading" → "Dimming" → baja a ~6 → "Brightness" → sube. Cambia color si deseas (ej. azul claro).
- **Activar "Dynamic Blur":** Inspector → última sección → "Dynamic Blur" → activar → subir "Quality". Para verlo: anima posición del texto con keyframes (ej. de fuera a centro). El blur aparece en movimiento.
- **Duplicar clips en timeline:** Presiona y arrastra el clip hacia arriba (manteniendo presionado).
- **Renderizar previsualización:** En Dynamic Blur, selecciona "Auto Cache Rendering" para ver el efecto en tiempo real.

## Reglas para agentes
- Usa "Text+" (no títulos prediseñados) cuando necesites control total sobre animaciones y efectos.
- Activa "Dynamic Blur" siempre que animes movimiento de texto (posición, rotación, escala) para un efecto cinematográfico.
- Aplica el efecto "Shadow" de OpenFX cuando el texto no se distinga del fondo; ajusta blur distance e intensity.
- Duplica el clip de texto para crear efectos de glow o iluminación: un clip con color base, el duplicado con dimming bajo y brightness alto.
- Usa keyframes en "Tracking" y "Letter Rotation" para animaciones de entrada de texto (efecto tipo máquina de escribir o rotación secuencial).
- Nunca dejes texto sin sombra o contraste si el fondo es claro o similar al color del texto.

## Errores comunes que evita o menciona
- **No usar sombra en textos sobre fondos claros:** El texto se vuelve ilegible. Solución: añadir "Shadow" de OpenFX o usar "Black Shadow" en Shading.
- **Olvidar que los títulos prediseñados tienen opciones limitadas:** El instructor recomienda usar "Text+" para personalización real.
- **No animar con keyframes en tracking o rotación:** Se pierden efectos dinámicos simples como máquina de escribir o rotación de letras.
- **Ignorar Dynamic Blur en animaciones:** Sin él, los movimientos de texto se ven rígidos y poco profesionales.
- **No duplicar texto para efectos de brillo:** Intentar hacer glow solo con ajustes de shading en un solo clip da resultados limitados.