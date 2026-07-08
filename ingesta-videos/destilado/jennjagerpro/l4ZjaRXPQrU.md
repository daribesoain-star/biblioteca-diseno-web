# Looping Logo Tutorial in Apple Motion
**Fuente:** jennjagerpro | https://youtu.be/l4ZjaRXPQrU

## Qué enseña (2-3 líneas)
Cómo crear una animación de logo en bucle (looping logo) en Apple Motion, partiendo de un archivo PSD preparado en Photoshop Elements. Cubre el uso del comportamiento Overshoot para rotaciones, animación de letras con el comportamiento Custom, y técnicas de enmascaramiento y anclaje para lograr un efecto profesional y repetitivo.

## Lecciones accionables
- **Preparación del PSD en Photoshop Elements:**
  - Duplicar el logo original y aislar el segundo "o" (sin círculos flotantes), guardarlo como capa separada.
  - Aislar el círculo punteado exterior, rellenar los huecos dejados por las esferas naranjas duplicando partes del círculo.
  - Usar la herramienta "Quick Selection Tool" para aislar las dos esferas naranjas y guardarlas juntas en una capa.
  - Aislar cada letra de "launchpad" como capa individual.
  - Redimensionar el lienzo: **Image > Resize > Canvas Size**, ancho +1.3 pulgadas, alto +0.5 pulgadas para evitar recortes en Motion.
  - Guardar como archivo **PSD** (Photoshop).

- **Importación en Apple Motion:**
  - Crear proyecto de 15 segundos.
  - Agregar fondo: **Library > Generators > Color Solid**, cambiar color con código HEX específico en Inspector.
  - Arrastrar el PSD al panel de proyecto, seleccionar **"Import All Layers"**.

- **Animación del segundo "o" (con play button):**
  - Seleccionar la capa "o" en el panel de proyecto.
  - **Behaviors > Parameter > Overshoot**.
  - En Inspector del comportamiento:
    - **Apply To:** Properties > Transform > Rotation > Z.
    - **Start Value:** -162.
    - **N Value:** 0.
    - **Ramp Duration:** 7.
    - **Cycles:** 1.5.
    - **Acceleration:** 100.
  - Acortar duración del comportamiento en timeline arrastrando el extremo a ~2:11 segundos.

- **Animación del círculo punteado (Completed Circles):**
  - Copiar el comportamiento Overshoot (clic derecho > Copy).
  - Seleccionar el grupo "Completed Circles" en proyecto, pegar comportamiento.
  - **Ajustar anchor point:** Herramienta **Anchor Point** (esquina inferior izquierda del canvas), reposicionar el punto azul al centro del play button usando flechas rojas/verdes.
  - En Inspector del comportamiento:
    - **Start Value:** -350.
    - **Ramp Duration:** 25.
    - **Cycles:** 3.5.
    - **Acceleration:** 0.

- **Animación de las esferas naranjas (Orange Circles):**
  - Pegar el comportamiento Overshoot.
  - En Inspector:
    - **Start Value:** -60.
    - **Ramp Duration:** 2.5.
    - **Cycles:** 5.
    - **Acceleration:** 65.
  - Acortar duración del comportamiento a 3 segundos en timeline.

- **Animación de letras de "launchpad":**
  - Seleccionar la letra "L", playhead al inicio.
  - **Behaviors > Parameter > Custom**.
  - Agregar parámetros:
    - **Add Parameter:** Properties > Transform > Position > Y.
    - **Add Parameter:** Properties > Blending > Opacity.
    - **Add Parameter:** Properties > Transform > Rotation > Y.
  - Keyframes para Position Y:
    - En frame 0: agregar keyframe, valor **-750**.
    - Avanzar 8 frames (flecha derecha 8 veces), cambiar valor a **0**.
  - Keyframes para Opacity:
    - En frame 0: agregar keyframe, valor **-100**.
    - Avanzar 6 frames, cambiar valor a **100**.
  - Keyframes para Rotation Y:
    - En frame 0: agregar keyframe, valor **-360**.
    - Avanzar 8 frames (usar flecha en Position Y como referencia), cambiar valor a **0**.
  - Copiar el comportamiento Custom, seleccionar todas las demás letras, pegar.
  - **Stagger timing:** En timeline, mover cada letra unos frames más adelante para que aparezcan en secuencia (escalonadas).
  - Colapsar grupo "launchpad" y moverlo 7 frames hacia adelante en timeline.

- **Animación del resto del logo (Motion sin "o", "o", círculos, esferas):**
  - Seleccionar esas capas/grupos, **clic derecho > Group**.
  - Playhead al inicio, en Inspector > Properties > Position: agregar keyframe, mover valor hacia abajo (fuera de pantalla).
  - **Enmascaramiento para efecto de revelado:**
    - Volver a agrupar ese grupo (clic derecho > Group).
    - Usar herramienta **Rectangle Mask** (centro inferior del canvas), dibujar máscara alrededor de la palabra "Motion".
    - En Inspector > Mask: marcar **Invert Mask**.

- **Creación del bucle (looping):**
  - En timeline, seleccionar los 3 comportamientos Overshoot de los círculos (Command + clic).
  - **clic derecho > Duplicate**.
  - Mover los duplicados al segundo **5:00**.
  - Duplicar nuevamente y mover al segundo **10:00**.

## Reglas para agentes
- Usa **"Import All Layers"** al arrastrar un PSD a Motion para mantener capas separadas.
- Cuando trabajes con grupos en lugar de elementos individuales, **ajusta el anchor point manualmente** con la herramienta Anchor Point para que la rotación ocurra desde el centro correcto.
- Para que un objeto se desplace y se revele desde un borde, **agrupa el grupo animado dentro de otro grupo** y aplica la máscara al grupo padre, no al que tiene keyframes de posición.
- Para animaciones secuenciales de letras, **duplica el comportamiento Custom** en todas las letras y luego **escalona manualmente** su posición en el timeline.
- Para lograr un bucle continuo, **duplica los comportamientos Overshoot** y colócalos en intervalos regulares (ej. cada 5 segundos en un proyecto de 15s).

## Errores comunes que evita o menciona
- **No redimensionar el lienzo en Photoshop antes de exportar:** Si el logo llega al borde del canvas, al moverlo en Motion algunos elementos se verán recortados. Solución: aumentar el canvas size (ancho +1.3", alto +0.5").
- **Aplicar una máscara directamente a un grupo con keyframes de posición:** La máscara se moverá con el grupo y no dará el efecto de revelado deseado. Solución: agrupar ese grupo dentro de otro y aplicar la máscara al grupo padre.
- **Olvidar ajustar el anchor point en grupos:** Al pegar un comportamiento Overshoot a un grupo, el anchor point por defecto está en el centro del proyecto, no en el centro del objeto. Solución: usar la herramienta Anchor Point para reposicionarlo manualmente.
- **No escalonar las letras en el timeline:** Si todas las letras tienen el mismo comportamiento Custom sin desplazamiento temporal, aparecerán simultáneamente. Solución: mover cada letra unos frames más adelante para crear una secuencia escalonada.