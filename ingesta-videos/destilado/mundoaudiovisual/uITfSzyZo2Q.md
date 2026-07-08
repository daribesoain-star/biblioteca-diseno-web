# Curso de After Effects en español - 🎬 Capítulo 4 - Crear Gráficos Esenciales para Adobe Premiere
**Fuente:** mundoaudiovisual | https://youtu.be/uITfSzyZo2Q

## Qué enseña (2-3 líneas)
Este capítulo enseña a animar texto y títulos en After Effects para luego exportarlos como Gráficos Esenciales (Essential Graphics) utilizables en Adobe Premiere. Cubre la animación de texto carácter por carácter mediante selectores de rango, la creación de composiciones gráficas completas con máscaras y efectos, y la configuración de parámetros editables en Premiere.

## Lecciones accionables
- **Crear composición base:** Abre Adobe Premiere, crea una nueva composición con resolución 1920x1080 Full HD, 25 fps, duración 15 segundos. Nómbrala "Text Animation for Adobe Premiere".
- **Animación básica de texto completo:** Selecciona la capa de texto, en "Transform" añade keyframes de escala (ej. 0% → 120% → 100%). Selecciona los keyframes, clic derecho → "Keyframe Interpolation" → cambiar de "Linear" a "Bezier" (curva). Activa "Motion Blur" en la capa.
- **Animación carácter por carácter con Animate:** En el panel de texto, haz clic en el botón "Animate" → selecciona "Scale". En "Range Selector 1", ajusta "Start" a 0. Añade keyframe en Start=0, avanza 10 frames, pon Start=100. Aplica Keyframe Interpolation con curva. Puedes añadir más propiedades desde "Animate" → "Opacity" (inicial 0, final 100) y "Rotation" (inicial 90°).
- **Usar selectores avanzados:** Desde "Animate" → "Selector" → "Ripple". Ajusta parámetros como "Based On" (Characters), "Mode" (Add), "Amount" (ej. -74), "Wiggles/Second" para efectos de aparición aleatoria.
- **Crear gráfico esencial con máscaras:**
  1. Añade un rectángulo (Shape Layer) y aplica "Drop Shadow" desde Ventana → Efectos.
  2. Crea un Null Object, nómbralo "Null Group Text", posiciona los textos como hijos del null.
  3. Para animar la aparición del rectángulo: selecciona la capa Shape, añade una máscara (Máscara 1), keyframe en "Mask Path" en frame 0 (máscara cerrada) y frame 15 (máscara abierta). Aplica Keyframe Interpolation con curva y activa Motion Blur.
  4. Para el texto: añade máscara similar, keyframe en "Mask Path" posicionando la máscara abajo (oculto) y luego arriba (visible). Aplica curva y Motion Blur.
- **Animación con rotación y ancla:** Crea una capa, ajusta "Anchor Point" al punto de rotación deseado. Añade keyframes en "Rotation" (0° → 90°) y "Opacity" (0% → 100%). Aplica Keyframe Interpolation con curva.
- **Exportar como plantilla de Gráficos Esenciales:**
  1. Abre Ventana → "Essential Graphics".
  2. Selecciona el parámetro a exponer (ej. texto: "Source Text"; color de rectángulo: Shape Layer → Fill → Color; opacidad: Opacity).
  3. Arrástralo al panel Essential Graphics. Nómbralo (ej. "Chapter Text", "Chapter Box Color", "Chapter Box Opacity").
  4. Para texto editable: haz clic en "Edit Properties" y activa "Enable Font Selection", "Enable Font Size", "Enable Word Spacing".
  5. Define el "Poster Time" (fotograma donde se ve el gráfico completo) → clic en "Define Poster Time".
  6. Exporta: File → Export → "Motion Graphics Template". Elige "Local Template Folder" o "Desktop". Pon nombre (ej. "After Effects course") y keywords (ej. "After Effects", "título").
- **Usar en Premiere:** Abre Premiere, ve a "Essential Graphics" panel, clic en el botón de importar (flecha hacia abajo), selecciona el archivo .mogrt. Arrástralo a la línea de tiempo. Modifica parámetros (texto, color, opacidad) directamente desde el panel Essential Graphics.

## Reglas para agentes
- Usa "Keyframe Interpolation" con curva (Bezier) siempre que añadas keyframes de animación para suavizar entradas y salidas.
- Activa "Motion Blur" en todas las capas animadas para dar realismo al movimiento.
- Usa el botón "Animate" en el panel de texto para animar carácter por carácter, nunca animes texto completo con Transform si necesitas efectos por letra.
- Cuando exportes un Motion Graphics Template, define siempre el "Poster Time" en un fotograma donde todos los elementos sean visibles.
- Para que un parámetro sea editable en Premiere, arrastra SOLO la propiedad específica (ej. "Source Text", "Fill → Color", "Opacity") al panel Essential Graphics, no la capa completa.
- Nunca olvides añadir keywords al exportar el .mogrt para facilitar la búsqueda en Premiere.

## Errores comunes que evita o menciona
- **No escalar todo el texto igual:** Si animas con Transform, todas las letras se escalan desde un solo punto de ancla. Para escalar letra por letra, usa el botón "Animate" y añade "Scale" desde ahí.
- **No olvidar el Motion Blur:** Sin activar Motion Blur en las capas animadas, el movimiento se ve artificial y poco realista.
- **No exponer parámetros incorrectos:** Al crear Essential Graphics, debes arrastrar propiedades específicas (Source Text, Fill Color, Opacity) no la capa entera, o no serán editables en Premiere.
- **No definir Poster Time:** Si no defines un fotograma de póster, la vista previa del gráfico en Premiere puede mostrar un estado incompleto o vacío.
- **No usar Keyframe Interpolation:** Dejar keyframes en lineal produce animaciones bruscas; siempre cambiar a curva (Bezier) para suavizar.