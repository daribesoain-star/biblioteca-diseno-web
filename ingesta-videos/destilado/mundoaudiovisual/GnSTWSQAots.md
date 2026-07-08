# DJI MINI 2 - HYPERLAPSE with the DJI Fly - YES WE CAN!
**Fuente:** mundoaudiovisual | https://youtu.be/GnSTWSQAots

## Qué enseña
Cómo crear hyperlapses con el DJI Mini 2 usando solo la app DJI Fly, sin aplicaciones de terceros. Se explica el flujo completo: captura de fotos con velocidad de crucero constante, edición en Lightroom Classic y estabilización en Adobe Premiere Pro.

## Lecciones accionables
- Usa un **accesorio de control de joystick** (tornillo ajustable para el mando) para mantener una velocidad de crucero constante y muy lenta en el DJI Mini 2.
- Ajusta la velocidad de crucero a **0.1 m/s** o ligeramente más, girando el tornillo hasta inclinar el joystick hacia adelante.
- Para detener la velocidad de crucero: presiona **Return to Home** y luego afloja el tornillo.
- Configura la cámara en **modo Pro** con los siguientes parámetros:
  - **Filtro ND1000** para lograr exposición larga.
  - **Velocidad de obturación: 1 segundo** (para motion blur en objetos en movimiento).
  - **Exposición: +0.3**
  - **Intervalo mínimo entre fotos: 5 segundos** (limitación de DJI Fly en Mini 2).
- Coloca el **gimbal en su posición más baja** antes de iniciar la captura.
- En Lightroom Classic:
  - Importa solo las fotos en **RAW**.
  - Selecciona la foto central como referencia para editar.
  - Ajustes clave: enderezar horizonte, bajar altas luces, usar **Dehaze** (eliminar neblina) ligeramente, ajustar negros con tecla **Alt**, modificar curvas de color para simular campos verdes (mover amarillos/naranjas a la derecha, verdes a la izquierda, bajar luminancia).
  - Copia ajustes con **Ctrl+C / Cmd+C**, selecciona todas las fotos con **Ctrl+A / Cmd+A**, pega con clic derecho > Develop Settings > Paste Settings.
  - Exporta como **JPG calidad máxima** en carpeta dedicada.
- En Adobe Premiere Pro:
  - Crea secuencia personalizada a **25 fps**, resolución **1920x1080**.
  - Importa la primera foto marcando **"Image Sequence"** para que cargue todas.
  - Ajusta al tamaño del fotograma con clic derecho > **Scale to Frame Size**.
  - Elimina fotos anómalas: corta antes y después del frame problemático y bórralo.
  - Anida los clips restantes en un solo clip.
  - Aplica **Warp Stabilizer** con configuración:
    - **Method: Subspace Deformation**
    - **Detailed Analysis** activado
    - **Enhanced Reduction** seleccionado
  - Opcional: anida nuevamente y aplica un segundo Warp Stabilizer con la misma configuración para mayor suavizado.

## Reglas para agentes
- Usa el accesorio de tornillo para joystick solo si ya tienes experiencia volando el DJI Mini 2.
- Mantén el control manual del drone aflojando el tornillo cuando necesites maniobrar normalmente.
- Usa ND1000 cuando quieras motion blur en tráfico o elementos en movimiento en hyperlapses.
- Configura siempre el intervalo mínimo de 5 segundos en DJI Fly para Mini 2 (no usar intervalos menores aunque sean deseables).
- Selecciona siempre la primera foto como "Image Sequence" al importar en Premiere Pro para que cargue toda la secuencia.
- Aplica Warp Stabilizer con Subspace Deformation y Enhanced Reduction para hyperlapses no estabilizados de fábrica.
- Nunca uses aplicaciones de terceros como Lichi para hyperlapses en Mini 2 (el creador reporta mala estabilización y control deficiente).

## Errores comunes que evita o menciona
- **No usar el accesorio de joystick**: sin él, el Mini 2 no puede mantener una velocidad de crucero constante y lenta necesaria para hyperlapses.
- **Intervalos menores a 5 segundos**: DJI Fly no lo permite en Mini 2; intentar con apps externas como Lichi da mala estabilización.
- **No usar filtro ND**: sin ND1000 no se logra exposición de 1 segundo, perdiendo el motion blur que da sensación de movimiento.
- **No estabilizar en postproducción**: el hyperlapse del Mini 2 tiene movimientos extraños que requieren Warp Stabilizer (incluso doble aplicación).
- **No eliminar fotos anómalas**: frames individuales con movimientos bruscos arruinan la fluidez; hay que cortarlos y borrarlos manualmente.
- **No editar en RAW**: perder la capacidad de ajustar color, exposición y ruido; el RAW permite transformar campos secos en verdes simulados.
- **No aplicar ajustes en lote**: editar foto por foto es inviable; usar copiar/pegar ajustes en Lightroom es obligatorio para 172+ fotos.