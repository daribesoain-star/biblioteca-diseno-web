# FREE COURSE FINAL CURT PRO 12 - Chapter 8 - TRANSITIONS
**Fuente:** mundoaudiovisual | https://youtu.be/m4pgOPg2jWo

## Qué enseña (2-3 líneas)
Este capítulo explica cómo aplicar y personalizar transiciones en Final Cut Pro, desde la básica "cross dissolve" hasta transiciones de movimiento como "drag". También enseña a usar adjustment clips con desenfoque horizontal y keyframes para lograr transiciones más orgánicas, y a solucionar el error común de "no se puede crear transición" por falta de metraje adicional en los clips.

## Lecciones accionables
- **Agregar transición básica:** Ubicar el botón de transiciones (último icono en la barra de herramientas), arrastrar "Cross Dissolve" entre dos clips en la línea de tiempo.
- **Ajustar parámetros de transición:** Seleccionar la transición en la línea de tiempo, ir al Inspector, modificar:
  - **Tipo de fusión:** "Video", "Film", "Bright", "Dark", "Cold", "Additive", "Shadows", "Light Point".
  - **Número de puntos de luz** (si se selecciona "Light Point").
  - **Dirección:** "Center", "Exit Only", "Entry Only".
  - **Curva:** "S-Curve" (acelera-desacelera) o "Linear" (velocidad constante).
- **Solucionar error "no se puede crear transición":** Asegurarse de que el primer clip tenga metraje después del punto de corte (arrastrar el borde derecho hacia atrás) y que el segundo clip tenga metraje antes del punto de corte (arrastrar el borde izquierdo hacia adelante).
- **Ajustar duración de transición:** Arrastrar los bordes de la transición en la línea de tiempo para alargar o acortar; usar el control deslizante para mover la transición hacia adelante o atrás.
- **Crear transición orgánica con adjustment clip y blur:**
  1. Ir a `Edit > Add Adjustment Clip` (atajo: `Option + W`).
  2. Colocar el adjustment clip sobre la transición, ajustando su duración para que coincida.
  3. En el Inspector de efectos, buscar "Blur" (Final Cut no tiene motion blur nativo; usar el efecto de desenfoque disponible).
  4. Aplicar el efecto al adjustment clip (doble clic).
  5. Reducir la cantidad de desenfoque, activar solo el eje horizontal.
  6. Crear keyframes: en el primer fotograma, valor 0; en el punto medio, valor 60-160; en el último fotograma, valor 0.
- **Agregar sonido a la transición:** Ir al panel de música, buscar "Sound Effects", seleccionar un efecto de "whoosh" o similar, arrastrarlo a la línea de tiempo. Usar la función de audio de Final Cut para sincronizar.
- **Transiciones de objeto:** Explorar categorías como "Objects" (ej. cubo, hojas con opciones de estación: "Summer", "Spring" que cambian el color).
- **Transiciones de movimiento recomendadas:** "Drag" (sin blur nativo) y "Slide" (con blur incorporado). Para "Drag", aplicar el método de adjustment clip + blur horizontal + keyframes.

## Reglas para agentes
- **Usa** "Cross Dissolve" como transición base para cortes suaves entre clips similares.
- **Usa** adjustment clip + blur horizontal + keyframes cuando apliques la transición "Drag" para que se vea orgánica.
- **Usa** la transición "Slide" si necesitas blur incorporado sin adjustment clip adicional.
- **Nunca** intentes aplicar una transición si el clip de salida no tiene metraje extra después del corte o el clip de entrada no tiene metraje extra antes del corte.
- **Nunca** uses transiciones decorativas (cubo, hojas, etc.) en contenido profesional o cinemático; resérvalas para videos caseros.
- **Siempre** verifica que la duración de la transición no exceda el metraje disponible en ambos clips.

## Errores comunes que evita o menciona
- **Error: "Create transition" no funciona o la transición es muy pequeña.** Ocurre cuando los clips no tienen metraje extra antes/después del corte. Solución: estirar los bordes de los clips para crear espacio.
- **Transición "Drag" sin blur se ve poco orgánica y de baja calidad.** Solución: añadir adjustment clip con desenfoque horizontal y keyframes.
- **Abusar de transiciones en contextos inapropiados.** El instructor aclara que las transiciones dinámicas son adecuadas para Reels/TikTok/Instagram, pero no para videos cinemáticos o de talking head.