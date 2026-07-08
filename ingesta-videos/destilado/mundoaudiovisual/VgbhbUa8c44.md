# Curso de efectos de Video - Fusion - Davinci Resolve - 🎬 Capítulo 6 - Entornos 3D - Iniciación
**Fuente:** mundoaudiovisual | https://youtu.be/VgbhbUa8c44

## Qué enseña (2-3 líneas)
Introducción al entorno 3D en Fusion: navegación espacial, creación de texto 3D, uso de cámara y luces (spotlight, point light, ambient light), y configuración del render 3D para visualizar el resultado final. Explica cómo orquestar nodos 3D (Scene, Merge 3D, Render 3D) y animar la cámara con keyframes.

## Lecciones accionables

- **Crear composición 3D:** Ve a Effects Libraries > Blend Composition, añádela a la timeline y abre el panel Fusion. Coloca un nodo MediaOut.
- **Añadir texto 3D:** Presiona `Shift + Espacio`, escribe "3D text" y selecciona el nodo. Conéctalo a un nodo **Render 3D** (Shift+Espacio > "Render") y luego a MediaOut.
- **Navegar en el visor 3D:**
  - Sin tecla: scroll del mouse → sube/baja.
  - `Shift` + scroll → desplaza en el eje horizontal.
  - `Control` + scroll → avanza/retrocede.
  - `Alt + Shift` + scroll → rota en un eje.
  - Presionar la rueda del mouse (clic) → desplaza libremente.
- **Añadir cámara:** Selecciona el nodo de texto 3D, luego ve a nodos > Camera (o Shift+Espacio > "Camera"). Conecta la salida de la cámara al nodo Render 3D. En el inspector de la cámara, ajusta el **ángulo de visión** (Viewing Angle) y la **distancia focal** (Focal Length).
- **Configurar el Render 3D:** En el nodo Render 3D, en el inspector, selecciona "Use 3D Camera 1" para que use la cámara creada.
- **Añadir luces:**
  - **Spotlight:** Selecciona el nodo de texto 3D, ve a nodos > Light > Spotlight (o Shift+Espacio > "light"). Ajusta intensidad, ángulo del cono y penumbra en el inspector.
  - **Point Light:** Similar, selecciona Point Light. Cambia su color en el inspector.
  - **Ambient Light:** Añade Ambient Light para iluminación general; ajusta color e intensidad.
- **Activar sombras:** En el visor 3D, haz clic derecho y selecciona "3D Lighting Options" y luego "Shadow Options" para que las luces proyecten sombras.
- **Mover luces y cámara:** Usa los manejadores del visor (posición, rotación, escala) o los parámetros numéricos en el inspector (Transform > Rotate, Position).
- **Cambiar vistas del visor:** Haz clic derecho en el visor y selecciona: Camera (frontal), Top (superior), Left (izquierda), Right (derecha), Perspective (perspectiva libre).
- **Animar cámara con keyframes:**
  1. Selecciona la cámara.
  2. En el inspector, ajusta el **pivot point** (Pivot) para que coincida con el centro del texto (usa vista Top para precisión).
  3. En el fotograma inicial, activa keyframes en Rotation y Position (clic en el diamante junto a cada parámetro).
  4. Avanza en la línea de tiempo, modifica rotación/posición de la cámara (se crearán keyframes automáticamente).
  5. Reproduce para ver la animación orbital.
- **Extrusión 3D del texto:** En el inspector del nodo Text 3D, ajusta el parámetro **Extrusion Depth** para dar volumen a las letras.

## Reglas para agentes

- Usa un nodo **Render 3D** siempre que quieras visualizar cualquier elemento 3D en el MediaOut.
- Conecta la cámara al nodo Render 3D mediante el conector verde (Scene Input) del Render 3D.
- Para añadir luces o cámara a un objeto 3D, selecciona primero el nodo del objeto (ej. Text 3D) antes de insertar el nodo de luz/cámara.
- Activa "Use 3D Camera" en el inspector del Render 3D para que la vista use la cámara creada; de lo contrario, se usará la vista frontal por defecto.
- Nunca conectes directamente un nodo 3D (Text 3D, Shape 3D) al MediaOut sin pasar por un Render 3D.
- Para animar la cámara en órbita, modifica el **pivot point** de la cámara (no solo su posición) para que el centro de rotación sea el objeto.

## Errores comunes que evita o menciona

- **No ver nada en el visor:** Ocurre si no hay un nodo Render 3D conectado entre los elementos 3D y el MediaOut.
- **Texto sin volumen 3D:** Se soluciona aumentando el parámetro **Extrusion Depth** en el inspector del Text 3D y añadiendo luces con sombras activadas.
- **Cámara no se mueve en la animación:** Olvidar poner keyframes en los parámetros de rotación/posición de la cámara; o no haber seleccionado la cámara correcta en el Render 3D.
- **Luces no afectan al objeto:** No se activaron las opciones de iluminación 3D (clic derecho en visor > 3D Lighting Options) o no se conectó la luz al nodo Scene correcto.
- **Desorden en el panel de nodos:** Se recomienda mantener una estructura: objeto 3D → Merge 3D → Render 3D → MediaOut, con cámara y luces conectadas al Merge 3D.