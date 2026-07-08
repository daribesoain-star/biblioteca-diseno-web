# 3D Photo Effect in Apple Motion
**Fuente:** jennjagerpro | https://youtu.be/mz-PU_VWO6M

## Qué enseña
Cómo convertir una foto fija en una animación 3D con profundidad y movimiento usando Apple Motion, combinando recortes de elementos desde Photoshop Elements, posicionamiento en el eje Z, animación de rotación y traslación, y efectos de cámara y partículas.

## Lecciones accionables
- **Preparación en Photoshop Elements:**
  - Duplica la capa base tantas veces como elementos independientes necesites (pinwheel, niño, brazos del niño, abuelo, brazo del abuelo, fondo).
  - Nombra cada capa según el elemento.
  - Selecciona todas las capas, haz clic derecho y elige **Simplify Layer** para rasterizar.
  - Usa **Quick Selection Tool** para seleccionar cada elemento, luego **Select Inverse** y presiona **Delete** para aislarlo.
  - Para parchar patrones (ej. camisa a cuadros), usa **Clone Tool** (tecla S) para copiar partes del patrón y cubrir áreas donde se separaron los brazos.
  - Para eliminar personajes del fondo, usa **Clone Tool** pintando fuera de los bordes (se recortará en Motion).
  - Guarda cada capa aislada como archivo **PNG** individual.

- **Configuración en Apple Motion:**
  - Arrastra todos los PNGs al panel de proyecto. Orden de apilamiento: pinwheel arriba, brazos niño, brazo abuelo, cuerpo niño, cuerpo abuelo, fondo abajo.
  - Ve al centro superior de la pantalla, haz clic en **Add Camera** y cambia a **3D**.
  - Selecciona el fondo → Properties → Position Z: `-1250`. Escala para llenar el encuadre.
  - Selecciona los demás elementos, ajústalos en el encuadre y muévelos en el eje Z hacia adelante (valores positivos). Deja el cuerpo del niño en Z: `0`.

- **Animación del pinwheel:**
  - Cambia la herramienta Transform a **Anchor Points**.
  - Reposiciona el punto de anclaje al centro del pinwheel (arrastra las flechas hasta el punto azul deseado).
  - En Inspector → Rotation, crea un keyframe en `0°` al inicio.
  - Lleva el cursor al final de la línea de tiempo, crea otro keyframe y gira el pinwheel en Z (ej. varias rotaciones completas). Movimiento lento recomendado.

- **Animación de brazos del niño:**
  - Selecciona los brazos del niño → Anchor Point en la articulación del hombro.
  - Crea keyframe en Rotation Z: `0°` al inicio.
  - Ve al último keyframe del pinwheel, crea otro keyframe y rota los brazos hacia arriba.
  - Ajusta la posición del pinwheel para que coincida con la nueva posición de los brazos: crea keyframes en Position al inicio y al final, reposiciona el pinwheel.

- **Animación del brazo del abuelo:**
  - Crea keyframes en **todas las propiedades** del brazo (Position, Rotation, Scale, Four Corner).
  - Anchor Point en la articulación del hombro.
  - Al final de la línea de tiempo, crea keyframes y ajusta posición, rotación y esquinas para alinear el palo con el de los brazos del niño.
  - Para ocultar imperfecciones entre brazo y cuerpo, keyframea la posición del cuerpo del abuelo.

- **Animación de cámara:**
  - Selecciona la cámara en el panel de proyecto.
  - Al inicio: crea keyframes en Scale, Position y Rotation.
  - Al final: crea keyframes, reduce Scale (zoom in) y sube el valor Y de Position.

- **Elementos de primer plano (césped):**
  - Importa imagen de césped, colócala al frente en el eje Z (valor positivo alto).
  - Ajusta escala.
  - Aplica **Colorize** para matizar el color (más amarillo para igualar el fondo).
  - Agrupa el césped (selecciona el grupo, no la imagen).
  - Ve a Filters → Blur → **Gaussian Blur** para suavizar y dar profundidad.

- **Partículas flotantes:**
  - Ve a Library → Particle Emitters → busca **Snow Flurry**.
  - Arrástralo al tope del panel de proyecto.
  - En Inspector, ajusta Width y Height para cubrir todo el canvas.
  - Aumenta Columns y Rows para más partículas.

## Reglas para agentes
- Usa **Simplify Layer** en Photoshop Elements antes de recortar cualquier elemento.
- Guarda cada elemento recortado como **PNG** individual, nunca como JPEG.
- En Apple Motion, ordena los elementos en el panel de proyecto con el pinwheel arriba y el fondo abajo.
- Cambia a **3D** y agrega **Camera** antes de mover elementos en el eje Z.
- Usa **Anchor Points** para rotar desde la articulación natural (hombro, centro del objeto).
- Crea keyframes en **todas las propiedades** (Position, Rotation, Scale, Four Corner) cuando animes elementos que requieren alineación precisa.
- Aplica **Gaussian Blur** al grupo del primer plano, no al elemento individual.
- Usa movimientos lentos en rotaciones y traslaciones para efecto más dramático y surrealista.

## Errores comunes que evita o menciona
- No olvidar simplificar las capas en Photoshop antes de recortar.
- No dejar el punto de anclaje en la posición por defecto (ej. en el hombro en lugar del centro del pinwheel).
- No ignorar el desajuste entre el pinwheel y el palo al animar los brazos; hay que keyframe la posición del pinwheel para que coincida.
- No dejar espacios visibles entre el brazo del abuelo y su cuerpo; keyframe la posición del cuerpo para cubrirlos.
- No aplicar blur directamente al elemento de primer plano; agruparlo primero para un desenfoque más natural.
- No usar movimientos rápidos en animaciones 3D de fotos; la lentitud mejora el realismo.