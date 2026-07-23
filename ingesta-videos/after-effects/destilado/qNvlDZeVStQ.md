# How to Use Text Animators in After Effects!
**Fuente:** School of Motion | https://youtu.be/qNvlDZeVStQ

## Qué enseña
Este tutorial enseña a crear animaciones cinéticas procedurales de texto usando Text Animators en After Effects, combinándolos con capas de forma, footage y audio para generar un collage animado en bucle. Cubre desde los fundamentos de los animadores de texto hasta técnicas avanzadas como animación en 3D, distorsión con efectos, y diseño de sonido.

## Técnicas accionables
- **Agregar un Text Animator:** Desplegar la capa de texto, hacer clic en el ícono de "Animate" (icono de reproducción junto al nombre de la capa) y seleccionar "Position". Esto crea un grupo de animador con un "Range Selector".
- **Configurar Range Selector:** Dentro del animador, ajustar "Position" (ej. Y = 400 para bajar letras). En "Advanced", cambiar "Shape" de "Square" a "Ramp Up" o "Ramp Down". Animar "Offset" con keyframes (ej. de -100 a 100 en 20 frames).
- **Ajustar suavizado:** En "Advanced", modificar "Ease High" y "Ease Low" a 100% para transiciones suaves de entrada/salida.
- **Duplicar animadores:** Para animar letras en dirección opuesta, duplicar el grupo del animador (Ctrl+D), renombrarlo (ej. "on" y "off"), cambiar valores de "Position" (ej. de -2000 a 2000) y ajustar "Shape" según corresponda.
- **Keyframes de Tracking:** Agregar un animador de "Tracking" (desde "Animate" > "Tracking") y keyframear de 0 a 30 en la misma duración que la animación principal para movimiento continuo sutil.
- **Time Reverse Keyframes:** Seleccionar keyframes, hacer clic derecho > "Keyframe Assistant" > "Time-Reverse Keyframes" para invertir la dirección de la animación.
- **Texto en trayectoria (Path):** Dibujar un path con la herramienta Pluma (Pen Tool). En la capa de texto, desplegar "Path Options" y seleccionar el path en "Path". Ajustar "First Margin" o "Last Margin" para posicionar el texto.
- **Convertir a 3D y cámara:** Activar el interruptor 3D en las capas de texto. Crear una cámara (Layer > New > Camera) con lente de 15mm (ultra gran angular) para distorsión.
- **Efectos de distorsión:** Aplicar efectos como "CC Split", "Twin", "Liquify" o "Corner Pin" a capas de texto precompuestas para amplificar la distorsión.
- **Añadir acentos gráficos:** Duplicar una capa de texto, cambiar la tipografía a una que soporte símbolos (ej. triángulo con Alt+31 en teclado numérico). Usar "Baseline Shift" (130) y "Kerning" para ajustar espaciado. Agregar animadores de "Rotation" (-90°) y "Scale" sin animar para modificar apariencia.
- **Typewriter preset:** Aplicar "Animate In" > "Typewriter" desde el menú de efectos y presets (usa Text Animators internamente). Ajustar duración a 15 frames para que las letras aparezcan una por una.
- **Wiggly Selector:** Agregar un animador, luego hacer clic en "Add" > "Selector" > "Wiggly". Eliminar el "Range Selector" por defecto. Afectar propiedades como "Scale" (200%) y "Rotation" (70°). Ajustar "Wiggles Per Second" y keyframear "Min/Max Amount" para variar intensidad.
- **Guardar preset de animación:** Seleccionar el grupo del animador, ir a "Animation" > "Save Animation Preset". Guardar en la carpeta de presets de AE. Reiniciar After Effects para que aparezca en el panel de efectos.
- **Time Remapping:** Seleccionar la capa, presionar Ctrl+Alt+T para activar "Time Remap". Ajustar la curva en el Graph Editor para ralentizar o acelerar secciones específicas.
- **Motion Sketch:** Ir a "Window" > "Motion Sketch". Dibujar un null aleatoriamente. Copiar el path de posición del null a un path de máscara de un sólido, luego agregar el efecto "Stroke". Alternativa: usar efecto "Scribble".
- **Expresión para wiggle en path:** En el path de máscara, aplicar expresión: `wiggle(freq, amp)` (ej. `wiggle(5, 20)`). La instructora menciona que no quedó satisfecha con esto y optó por "Scribble".
- **Transición de clips de footage:** Precomponer un clip a tamaño HD. Crear 10 instancias del precomp, enmascararlas y apilarlas en el tiempo. Animar "Position" para que entren desde la derecha y salgan por la izquierda. Llevar a una nueva composición con "Continuous Rasterization" activado.
- **Audio collage:** Usar clips de audio de películas y efectos de sonido (ej. de Motion Array). Sincronizar con la animación. Sitio recomendado: Play Phrase Me para encontrar clips específicos.

## Reglas para el erudito
- **Usa "Ramp Up" o "Ramp Down"** en "Shape" del Range Selector cuando quieras que las letras aparezcan secuencialmente de un extremo a otro.
- **Usa "Ease High" y "Ease Low" al 100%** para suavizar la entrada y salida de las letras en animaciones de offset.
- **Nunca uses keyframes de posición normales (P)** si planeas mover o escalar la capa de texto después; usa un Text Animator de posición para mantener la animación procedural.
- **Mantén los keyframes alineados** en los mismos frames cuando sea posible para facilitar el ajuste de timing.
- **Activa "Continuous Rasterization"** (estrella en la capa) cuando uses precomposiciones con máscaras animadas para evitar artefactos de renderizado.
- **Usa 24 fps** cuando trabajes con clips de película para mantener consistencia.
- **Aplica "Multiply" al 50% de opacidad** para overlays de papel o textura sobre la composición final.
- **Agrega grano** tanto al fondo sólido como a una capa superior al 50% de opacidad para unificar el look.

## Errores comunes que evita o menciona
- **No ver los paneles de capa:** Si no ves el ícono "Animate", asegúrate de que al menos un panel esté activo en la parte inferior izquierda de la línea de tiempo.
- **Confundir el Graph Editor:** Si ves una línea de forma diferente, cambiar el tipo de gráfico de "Speed Graph" a "Value Graph" para ver la curva correcta de posición.
- **Olvidar renombrar animadores:** Al duplicar grupos de animadores, renombrarlos (ej. "on", "off", "push out") para mantener el orden y evitar confusiones.
- **No verificar "Continuous Rasterization":** Si los clips de footage no se animan correctamente al entrar/salir, revisar que esta opción esté activada en el precomp.
- **Aplicar animadores al grupo incorrecto:** Al agregar un nuevo animador, asegurarse de que no esté seleccionado otro grupo existente, o se añadirá dentro de ese grupo en lugar de crear uno nuevo.
- **Usar footage comercial sin permiso:** Para proyectos comerciales, usar solo material de dominio público o con licencia adecuada. La instructora menciona la Biblioteca del Congreso como fuente de clips libres de derechos.