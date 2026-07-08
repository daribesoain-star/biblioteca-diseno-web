# Motion 5 tutorial course in Spanish - 🎬 * Chapter 3 - Particles and Replicators.
**Fuente:** mundoaudiovisual | https://youtu.be/k54IR7Ay56Y

## Qué enseña
Este capítulo explica cómo crear y controlar Replicators y Emisores de Partículas en Motion 5, tanto desde cero como usando presets de la biblioteca. También introduce los Behaviors de secuencia aplicados a réplicas y partículas.

## Lecciones accionables
- **Crear un Replicator desde una forma:** Selecciona una forma (ej. círculo) y presiona la tecla **Y** para que ocupe toda la línea de tiempo. Luego haz clic en el botón **Replicate**.
- **Ajustar la forma del Replicator:** En el inspector, pestaña **Replicator**, elige entre: **Point**, **Line**, **Rectangle**, **Circle** o **Wave**.
- **Configurar Fill y Outline:** En el inspector del Replicator, cambia **Fill** a **Outline** para replicar solo el borde de la forma.
- **Controlar número de puntos:** Ajusta el parámetro **Points** (1 a 5) para definir cuántas réplicas se crean.
- **Animar offset con keyframes:** Activa keyframes en **Offset** en dos puntos temporales distintos. Cambia el valor de offset en el segundo keyframe para crear un efecto de movimiento circular alrededor de la forma.
- **Ajustar escala en Cell Controls:** En la sección **Cell Controls** del inspector, modifica **Scale** para cambiar el tamaño de la réplica. Usa **Scale** (primera réplica) y **Scale** (réplicas superiores) para escalado progresivo. Activa **Random** para escalado aleatorio en X, Y y Z.
- **Cambiar visualización de objetos:** En **Show Objects** selecciona entre: **Image**, **Wireframe**, **Lines** o **Points**.
- **Crear un Emisor de Partículas:** Selecciona una forma (ej. cuadrado), hazla pequeña, colócala en el centro y haz clic en **Create Particles**.
- **Configurar emisión:** En el inspector, pestaña **Emitter**, elige el tipo de emisión: **Point**, **Line**, **Rectangle**, **Explosion** o **Geometry**.
- **Controlar cantidad de partículas:** Ajusta **Emission Source** (de menos a más) y activa **Random** para emisión aleatoria. Usa **Initial Number** para definir cuántas partículas aparecen al inicio (ej. 83).
- **Ajustar velocidad:** Modifica **Speed** para la velocidad de las partículas. Activa **Random** para que la velocidad varíe aleatoriamente.
- **Usar presets de la biblioteca:** Ve a la pestaña **Library** > **Particle Emitters** o **Replicators**. Arrastra un preset (ej. "FOC", "fire from ground") a la línea de tiempo o selecciona y haz clic en **Apply**.
- **Modificar un preset de partículas:** Selecciona el emisor en la línea de tiempo. En el inspector, cambia el tipo de emisión (ej. de **Point** a **Circle**), ajusta **Rotation** y **Position** del emisor.
- **Modificar un preset de Replicator:** Selecciona el replicador en la línea de tiempo. En el inspector, ajusta **Scale**, **Initial Scale**, **Final Scale**, **Random**, **Additive Mix**, **Seeds** (ej. 1,030), **Columns**, **Rows** y **Deviation**.
- **Aplicar un Behavior de secuencia a un Replicator:** Crea un replicador desde una forma. En el inspector del replicador, ve a la pestaña **Behaviors** y agrega **Sequence Replicator**. En el inspector del behavior, configura:
  - **Parameter:** elige **Scale**.
  - **Scale:** establece a 300.
  - **Rotation:** ajusta rotación (ej. 90°).
  - **Sequence:** elige **Beginning to End**.
  - **Speed:** selecciona **Slow Entry** o **Constant**.
  - **Loops:** define número de repeticiones (ej. 3).

## Reglas para agentes
- Usa la tecla **Y** para que una forma ocupe toda la línea de tiempo antes de replicar o emitir partículas.
- Siempre selecciona la forma y haz clic en **Replicate** o **Create Particles** desde los botones de la interfaz, no desde menús contextuales.
- Cuando animes offset con keyframes, coloca el primer keyframe al inicio y el segundo en un punto posterior, cambiando el valor de offset en el segundo.
- Para presets de la biblioteca, arrastra directamente a la línea de tiempo o usa el botón **Apply**; nunca copies y pegues desde el Finder.
- Al modificar un preset, selecciona primero el emisor o replicador en la línea de tiempo, luego ajusta parámetros en el inspector.
- Para behaviors de secuencia, agrega **Sequence Replicator** desde la pestaña **Behaviors** del inspector del replicador, no desde la biblioteca general de behaviors.
- Nunca uses valores de escala negativos en Cell Controls; usa siempre valores positivos y activa **Random** para variación.

## Errores comunes que evita o menciona
- **No ver partículas al crear un emisor:** Ocurre si no se presiona **Play**; el emisor necesita tiempo para generar partículas visibles.
- **Confundir Replicator con Emitter:** El replicador duplica una forma estáticamente; el emisor genera partículas animadas en el tiempo.
- **Olvidar que los presets de partículas y replicadores ya tienen parámetros predefinidos:** Se pueden modificar completamente en el inspector, no son fijos.
- **No activar keyframes en offset correctamente:** Si solo se pone un keyframe, no hay animación; se necesitan dos keyframes con valores distintos.
- **Aplicar behaviors de secuencia a objetos que no son replicadores:** El behavior **Sequence Replicator** solo funciona sobre replicadores, no sobre formas simples o emisores.