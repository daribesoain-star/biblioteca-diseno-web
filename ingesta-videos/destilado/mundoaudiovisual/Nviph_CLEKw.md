# Master 3D IN LIGHTS💡CAMERAS 🎥 and ACTION 🎬 TUTORIAL in Davinci Resolve
**Fuente:** mundoaudiovisual | https://youtu.be/Nviph_CLEKw

## Qué enseña (2-3 líneas)
Este tutorial enseña a configurar y manipular luces, sombras, cámaras y el renderizador en el módulo Fusion de DaVinci Resolve para crear escenas 3D. Cubre los tipos de luz (focal, ambiental, puntual), el posicionamiento de la cámara con keyframes para animación orbital, y el proceso de renderizado para convertir la escena 3D en un resultado 2D final.

## Lecciones accionables
- **Agregar una luz focal (Spotlight):** Ve a Effects > Fusion Composition, luego Shift+Space > Light > Spotlight. En los controles del Spotlight, ajusta: Color (ej. tono cálido), Intensity (ej. 0.5), Conical Angle (ángulo del cono), Penumbra (suavizado del borde), Falloff (caída de la penumbra), Shadow Density (densidad de la sombra), Shadow Blur (desenfoque de sombra, configurar en "Constant" o "Variable").
- **Agregar luz ambiental (Ambient Light):** Shift+Space > Light > Ambient Light. En controles, modifica Color e Intensity. Esta luz ilumina toda la escena de manera uniforme.
- **Agregar luz puntual (Point Light):** Shift+Space > Light > Point Light. Funciona como una bombilla. En controles, puedes añadir un Gradient para simular que la esfera emite luz.
- **Configurar propiedades de sombra en un objeto 3D:** Selecciona el objeto 3D (ej. esfera). En el inspector, activa/desactiva "Affected by Light" (afectado por luz), "Cast Shadow" (proyectar sombra) y "Receive Shadow" (recibir sombra).
- **Mover y rotar una luz:** Usa los controles de Translate (X, Y, Z) para posicionar la luz. Usa Rotate para orientarla. Para que la luz orbite un objeto, mueve el pivot (punto de anclaje) al centro del objeto antes de rotar.
- **Agregar y configurar cámara 3D:** Shift+Space > Camera > 3D Camera. En el inspector, ajusta Focal Length (ej. 17mm para gran angular). Para animar la cámara: en el primer fotograma, posiciona la cámara y añade keyframe en Translate y Rotate; en el último fotograma, mueve/rota la cámara y añade otro keyframe.
- **Usar el Renderer (Renderizador) 3D:** Agrega un nodo Renderer 3D (botón en la barra de herramientas). Conéctalo al MediaOut. En el inspector del Renderer, activa "Enable Lighting" y "Enable Shadows". Selecciona "Camera" como la cámara a usar. Modo de render: "Software Render" (más rápido para este uso). Channels: "RGB".
- **Ver la guía de aspecto 16:9 en la cámara:** En la vista de cámara, haz clic derecho > Guides > elige la guía de 16:9 para ver el encuadre final.
- **Añadir textura a un objeto 3D:** Selecciona el objeto (ej. esfera). En el inspector, en "Structure", arrastra una imagen (ej. textura de la Tierra) desde el Media Pool.

## Reglas para agentes
- **Usa un nodo Renderer 3D siempre** que quieras convertir una escena 3D en una imagen 2D visible en la línea de tiempo.
- **Activa "Enable Lighting" y "Enable Shadows" en el Renderer** para que las luces y sombras se rendericen correctamente.
- **Conecta el Renderer al MediaOut** para ver el resultado final en el módulo de edición.
- **Nunca olvides agregar al menos una luz** (Spotlight, Ambient o Point) cuando trabajes con objetos 3D, o la escena se verá completamente oscura.
- **Usa keyframes en Translate y Rotate de la cámara** para crear animaciones orbitales o movimientos suaves.
- **Ajusta el pivot de la luz o cámara** al centro de un objeto si deseas que orbite a su alrededor al rotar.
- **Configura "Affected by Light", "Cast Shadow" y "Receive Shadow"** en cada objeto 3D para controlar su interacción con las luces.

## Errores comunes que evita o menciona
- **No ver nada en la línea de tiempo:** Ocurre si no se conecta un nodo Renderer 3D al MediaOut. El renderer es necesario para transformar la escena 3D a 2D.
- **Escena completamente oscura:** Sucede cuando no hay ninguna luz activa en la escena. Se debe agregar al menos una luz (ambiental, focal o puntual).
- **Ralentización al renderizar:** Es normal que el renderizado 3D sea lento, incluso en equipos como un Mac Mini M4. Se recomienda paciencia y previsualizar antes de renderizar final.
- **Objeto 3D se ve plano sin sombras:** Ocurre si el objeto tiene desactivado "Affected by Light" o si el Renderer no tiene activado "Enable Lighting" y "Enable Shadows".
- **La cámara no muestra lo esperado:** Puede deberse a que la cámara no está seleccionada en el Renderer (en el campo "Camera") o a que el pivot de la cámara está mal posicionado.