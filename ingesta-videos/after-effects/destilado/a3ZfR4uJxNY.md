# Trapcode Particular 3 Training
**Fuente:** Maxon Red Giant | https://youtu.be/a3ZfR4uJxNY

## Qué enseña (2-3 líneas)
Este tutorial explica cómo usar la función **Motion Paths** en Trapcode Particular para guiar partículas a lo largo de una ruta 3D definida por la animación de una luz. Cubre la diferencia entre un emisor de luz estándar y un motion path, y muestra cómo integrar escenas de Cinema 4D Lite con After Effects para crear flujos de partículas alrededor de objetos 3D.

## Técnicas accionables
- **Configurar un Motion Path básico:**
  1. Crear una luz en After Effects y nombrarla (ej. "motion path one").
  2. Animar la posición de la luz para definir la trayectoria deseada.
  3. En el panel de efectos de Particular, ir a **Physics > Air > Motion Path** y seleccionar el nombre de la luz creada (ej. "motion path one").
  4. Asegurarse de que **Emitter > Emitter Type** NO esté en "Lights"; usar "Point" (o "Point 4").
  5. Ajustar **Emitter > Particles/sec** (ej. 25) y **Physics > Velocity** (reducir a 0 para que las partículas sigan exactamente la ruta).
  6. Alinear la posición del emisor con el punto de inicio de la luz: copiar los valores de posición de la luz (X, Y, Z) y pegarlos en **Emitter > Position XY** y **Position Z**.
  7. Ajustar **Particle > Life** para que las partículas vivan lo suficiente para recorrer toda la longitud de la spline (ej. si la spline dura 4 segundos, Life debe ser ≥ 4).

- **Usar un sprite personalizado con orientación a la ruta:**
  1. En **Particle > Particle Type**, seleccionar "Sprite Colorize".
  2. En **Sprite > Layer**, elegir un sprite de la biblioteca (ej. flecha básica).
  3. En **Size**, aumentar el tamaño (ej. 80 píxeles).
  4. En **Rotation**, activar **Orient to Motion** y ajustar **Rotate** a 90 grados para que la flecha apunte en la dirección del movimiento.

- **Corregir la orientación del primer fotograma (partícula desalineada en frame 0):**
  - **Opción 1 (expresión):** Alt+clic en el cronómetro de **Particles/sec** y escribir:
    ```
    if (time == inPoint) 0 else value
    ```
    Esto establece Particles/sec a 0 en el primer fotograma de la capa, evitando que se genere la partícula sin movimiento.
  - **Opción 2 (periodicidad aleatoria):** En **Emission Extras**, ajustar **Periodicity Random** a un valor distinto de cero (ej. 1) para corregir partículas "rebeldes" ocasionales.

- **Integrar escena de Cinema 4D Lite con Motion Path:**
  1. En After Effects, crear un archivo Cinema 4D: **File > Maxon Cinema 4D File**.
  2. En Cinema 4D, crear un objeto (ej. cilindro) y un **Null** para definir el centro del flujo.
  3. Aplicar al Null el tag **Tags > Cinema 4D > External Compositing** para que aparezca en After Effects como un null 3D.
  4. Para que un objeto (ej. cilindro azul) tenga su propio canal alfa, seleccionarlo, ir a la pestaña **Compositing** (última pestaña), activar **Object Buffer** y marcar **Enable** (buffer 1).
  5. Habilitar **Multi-Pass** en la configuración de render: **Render Settings > Multi-Pass > Enable**, y añadir **Object Buffer** como pase adicional.
  6. En After Effects, importar el archivo C4D. En la capa C4D, ir a **Cinema 4D Controls > Extract** para obtener el null y la cámara.
  7. Cambiar el renderizador a **Standard (Draft/Full)** y usar **Add Image Layers** para añadir los pases múltiples (RGB y Object Buffer).
  8. Crear una luz, parentearla al null 3D (Shift+arrastrar) y animar su posición y rotación (ej. Y rotation: 3 vueltas en 4 segundos, posición de abajo arriba).
  9. En Particular, asignar esa luz como **Motion Path** en Physics > Air.
  10. Ajustar **Emitter Position** para alinear con el null (ej. valores cercanos a 0, 260, 0).
  11. Para que las partículas interactúen con el objeto 3D (delante/detrás), en **Visibility > Z Buffer**, activar **Use Z Buffer** y seleccionar la capa del Object Buffer como **Z Buffer Layer**.
  12. Ajustar **Z Buffer Distance** (ej. alrededor de 1200 píxeles) para definir la distancia entre la cámara y el objeto en el espacio 3D.

- **Animar una luz en Cinema 4D a lo largo de una spline para Motion Path:**
  1. Crear una spline y un círculo, luego un objeto **Sweep** que use ambos para generar geometría.
  2. Crear una luz y aplicarle el tag **Align to Spline**.
  3. Animar la posición del tag de 0 a 100 para que la luz recorra la spline.
  4. En Cinema 4D, seleccionar el tag, ir a **Timeline > Functions > Bake Objects** y aceptar para convertir la animación en keyframes.
  5. Importar la luz con keyframes horneados a After Effects y usarla como Motion Path en Particular.

## Reglas para el erudito (imperativas y verificables)
- **Usa "Point" como Emitter Type** cuando trabajes con Motion Paths; nunca uses "Lights" porque el motion path no es un emisor de luz, es una spline que define el flujo.
- **Alinea siempre la posición del emisor con el punto de inicio de la luz** para que las partículas comiencen exactamente donde empieza la ruta.
- **Ajusta el Life de las partículas** para que sea igual o mayor que la duración de la spline; si la spline dura 4 segundos, Life debe ser ≥ 4.
- **Usa la expresión `if (time == inPoint) 0 else value`** en Particles/sec para evitar la partícula desalineada en frame 0; es más flexible que keyframear manualmente.
- **Aplica Periodicity Random > 0** en Emission Extras si ves una partícula ocasional mal orientada incluso con la expresión.
- **Para integración 3D con Cinema 4D, usa Z Buffer** en lugar de Obscuration Layer; el Z Buffer respeta la profundidad 3D real del objeto, mientras que Obscuration Layer solo funciona con capas planas de After Effects.
- **Ajusta Z Buffer Distance** experimentalmente (ej. empezar en 1000 y subir hasta que las partículas aparezcan delante del objeto); en After Effects la distancia se mide en píxeles.

## Errores comunes que evita o menciona
- **Confundir Motion Path con Light Emitter:** El tutorial aclara que un light emitter solo dicta dónde nacen las partículas, pero no afecta su trayectoria; el motion path sí controla el flujo continuo de las partículas a lo largo de la ruta.
- **No alinear el emisor con el inicio de la luz:** Si no se copian los valores de posición de la luz al emisor, las partículas no comenzarán en el punto correcto de la ruta.
- **Partículas que se detienen antes del final de la spline:** Ocurre cuando el Life es menor que la duración de la spline; hay que aumentar Life para que las partículas recorran toda la ruta.
- **Partícula desalineada en frame 0 al usar Orient to Motion:** En frame 0 no hay movimiento, por lo que la orientación falla. Se corrige con la expresión en Particles/sec o con Periodicity Random.
- **Usar Obscuration Layer en lugar de Z Buffer para objetos 3D reales:** Obscuration Layer solo funciona con capas planas de After Effects; para objetos 3D de Cinema 4D se debe usar Z Buffer con el Object Buffer correspondiente.
- **No habilitar Multi-Pass ni Object Buffer en Cinema 4D:** Sin estos ajustes, no se genera el canal alfa separado necesario para el Z Buffer en After Effects.