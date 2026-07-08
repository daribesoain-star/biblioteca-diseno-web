# Curso de After Effects en español - 🎬  Capítulo 9 - Matte Painting con After Effects.
**Fuente:** mundoaudiovisual | https://youtu.be/_gTWfJwRX-s

## Qué enseña
Este capítulo enseña a realizar una técnica de Matte Painting en After Effects: separar un objeto del fondo (una montaña) usando el pincel de rotoscopia, insertar una nueva imagen de fondo (otras montañas), y aplicar tracking de cámara para que el nuevo elemento se mueva con la toma original de un dron.

## Lecciones accionables
- **Separar el objeto del fondo con el pincel de rotoscopia:**
  - Crear una composición nueva.
  - Seleccionar la capa del clip original.
  - Activar la herramienta **Pincel de rotoscopia** (Rotobrush).
  - Pintar sobre el área que se desea aislar (en este caso, la montaña del primer plano). No es necesario ser preciso en la parte inferior si no interfiere.
  - Dejar que After Effects analice el clip (esperar a que termine el análisis).
  - Ajustar bordes: en el panel de efectos del Rotobrush, modificar **Desplazamiento de borde** (Edge Displacement) a valores negativos (ej. -10, -20, -30) para eliminar halos blancos.
  - Ajustar **Pluma** (Feather) a un valor bajo (ej. 6) para suavizar bordes.
  - Activar **Refinar bordes** (Refine Edges) para mejorar la calidad del recorte.
  - Una vez satisfecho, hacer clic en **Congelar** (Freeze) para guardar el análisis y evitar que se vuelva a calcular.
- **Duplicar la capa y eliminar el efecto de rotoscopia en la copia inferior:**
  - Duplicar la capa con **Cmd/Ctrl + D**.
  - En la capa inferior, eliminar el efecto de rotoscopia (seleccionar el efecto en el panel de efectos y presionar Supr).
  - Esto permite tener la capa superior con el objeto aislado y la inferior con el fondo original intacto.
- **Insertar la nueva imagen de fondo (montañas):**
  - Arrastrar la imagen de las nuevas montañas a la línea de tiempo, colocándola entre la capa del objeto aislado (arriba) y la capa del fondo original (abajo).
  - Presionar **S** para escalar la imagen y ajustar su tamaño.
  - Desactivar la propiedad 3D de la capa si está activada.
  - Mover la capa hacia atrás (alejarla) para evitar problemas de tracking posteriores.
  - Crear una máscara en la nueva imagen para ocultar la parte inferior (donde no hay cielo) usando la herramienta de forma de máscara (rectángulo o pluma).
- **Realizar tracking de cámara para que la nueva montaña se mueva con el dron:**
  - Ocultar temporalmente la capa de la nueva montaña para trabajar solo con el clip original.
  - Abrir el panel **Seguimiento** (Tracker).
  - Elegir **Seguimiento de movimiento** (Track Motion).
  - Marcar **Rotación** y **Escala** (Rotation & Scale).
  - Colocar dos puntos de seguimiento en áreas de alto contraste del clip original (ej. rocas, bordes definidos).
  - Ajustar el tamaño de los puntos de búsqueda para que sean pequeños y precisos.
  - Hacer clic en **Analizar** (Analyze) para que After Effects siga el movimiento.
  - Si el tracking es aceptable, hacer clic en **Editar destino** (Edit Target) y seleccionar **Crear objeto nulo** (Create Null Object). Nombrarlo (ej. "movimiento cámara").
  - Hacer clic en **Aplicar** (Apply) y elegir **Aplicar a X e Y** (Apply to X and Y).
  - Activar la capa de la nueva montaña y enlazarla al objeto nulo (arrastrar el icono de pick whip de la capa de la montaña al objeto nulo).
- **Ajustar color y desenfoque para integrar la nueva montaña:**
  - Seleccionar la capa de la nueva montaña.
  - Aplicar el efecto **Lumetri Color** (desde el panel Efectos y ajustes preestablecidos).
  - En la sección **Curvas** (Curves), seleccionar el canal azul y aumentar la exposición de los azules para igualar el tono del cielo.
  - Reducir ligeramente la saturación general si es necesario.
  - Ajustar la **Exposición** (Exposure) o el **Posicionamiento** (Contrast) para que coincida con la escena.
  - Aplicar el efecto **Desenfoque de canal** (Channel Blur) o **Desenfoque de lente** (Lens Blur) con un valor bajo (ej. 15) para simular profundidad de campo y dar sensación de lejanía.
- **Estabilizar la composición final (opcional):**
  - Precomponer todas las capas (seleccionarlas y presionar **Cmd/Ctrl + Shift + C**).
  - Aplicar el efecto **Estabilizador de deformación** (Warp Stabilizer) a la precomposición.
  - Hacer clic en **Analizar** (Analyze) para suavizar saltos residuales del tracking.

## Reglas para agentes
- Usa el **Pincel de rotoscopia** para separar objetos del fondo cuando el fondo sea estático o tenga poco movimiento; no uses máscaras manuales frame a frame si el objeto tiene bordes complejos.
- Aplica **Congelar** (Freeze) después de ajustar el Rotobrush para evitar que After Effects recalcule el análisis en cada reproducción.
- Cuando dupliques una capa para separar objeto y fondo, elimina el efecto de rotoscopia en la capa inferior para que el fondo original se vea completo.
- Para tracking, selecciona siempre puntos de seguimiento en áreas de **alto contraste** y con bordes definidos; evita zonas planas o sin textura.
- Al enlazar la nueva imagen al objeto nulo, asegúrate de que la capa de la imagen **no tenga la propiedad 3D activada** si el tracking es 2D.
- Ajusta el color de la nueva imagen con **Lumetri Color** usando curvas por canal (especialmente azul) para igualar la iluminación de la escena original.
- Aplica un **desenfoque suave** (valor bajo, ej. 10-15) a la nueva imagen para integrarla visualmente y simular distancia.
- Nunca uses valores altos de **Desplazamiento de borde** (Edge Displacement) en el Rotobrush (más de -30) porque puede deformar el borde del objeto.

## Errores comunes que evita o menciona
- **No ajustar el desplazamiento de borde:** si no se corrige, aparecen halos blancos alrededor del objeto rotoscopiado. El instructor recomienda valores negativos (-10, -20, -30) hasta que desaparezcan.
- **No congelar el análisis del Rotobrush:** si no se congela, After Effects vuelve a analizar el clip cada vez que se reproduce, lo que ralentiza el flujo de trabajo.
- **Olvidar eliminar el efecto de rotoscopia en la capa inferior duplicada:** si no se hace, la capa inferior también tendrá el recorte y no se podrá ver el fondo original.
- **Colocar la nueva imagen demasiado cerca en el espacio 3D:** puede causar problemas de perspectiva o tracking. El instructor recomienda alejarla mucho y luego escalarla.
- **Usar puntos de tracking en zonas sin contraste:** el tracking falla. El instructor lo menciona al decir que el clip "no tiene suficiente contraste" y busca áreas con bordes definidos.
- **No ajustar el color ni el desenfoque de la nueva imagen:** la integración se ve artificial. El instructor aplica Lumetri Color y desenfoque para igualar tono y profundidad.