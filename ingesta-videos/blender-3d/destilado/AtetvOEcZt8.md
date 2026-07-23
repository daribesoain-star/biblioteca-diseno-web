# 2d style materials in 3d animation
**Fuente:** Joey Carlino | https://youtu.be/AtetvOEcZt8

## Qué enseña (2-3 líneas)
Tutorial sobre cómo lograr estilos 2D (cel shading, outlines, medios tonos, efectos pictóricos) en animación 3D usando Blender con Eevee. Cubre técnicas con nodos (Shader to RGB, map range, math), modificadores (Solidify), Grease Pencil y Freestyle, además de métodos manuales como texture painting.

## Técnicas accionables

- **Cel shading automático (compositor):** Activa "Use Nodes" en el compositor, añade un nodo "Posterize" (ajusta el valor de pasos). Opcional: pon un nodo "Brightness/Contrast" antes. Para vista previa sin render, activa el viewport setting correspondiente.
- **Cel shading por objeto (Eevee obligatorio):** En el Shader Editor, crea un material. Añade "Shader to RGB", luego un "Color Ramp" (modo "Constant"). Mueve los stops, cambia colores, añade más stops. Deja el color del Principled BSDF en blanco para mejor control. Ajusta Roughness/Metallic para variantes.
- **Luz para cel shading plano:** Selecciona la luz → Properties → Object Data → Shadow: desactiva "Shadow". Reduce el tamaño de la luz al mínimo.
- **Cel shading con Map Range (para node groups):** Usa "Map Range" en vez de Color Ramp. Ajusta los valores "From Min"/"From Max" para controlar la transición (acércalos para bordes duros). Conecta a "Mix Color" (Factor controla la mezcla). Para 3 colores: repite con otro Map Range y Mix Color.
- **Cel shading con Math node:** "Math" → "Greater Than" (solo bordes duros, sin gradientes).
- **Cel shading con imagen de paleta:** Crea un material con 3 colores usando Map Range. Pon la imagen en el slot de color medio. Añade "Mix Color" (Multiply) con la imagen en el primer slot y un color oscuro en el segundo; el Factor controla oscuridad. Repite con "Add" y un color claro para highlights.
- **Cel shading stepped linear:** Map Range → "Stepped Linear". Ajusta "Steps" para número de bandas (espaciado uniforme).
- **Cel shading vector stepped linear:** Map Range → "Vector" + "Stepped Linear". Divide colores del shader en sólidos.
- **Cel shading por canales RGB:** Usa "Separate Color" para dividir en R, G, B. Crea luces roja, verde y azul. Mezcla canales con "Mix Color" (Add/Multiply). Usa el canal rojo como color principal.
- **Cel shading sin luces (fake light direction):** Añade "Texture Coordinate" (Normal) → "Vector Math" (Dot Product). Cambia los valores Z (ej. Z=1 para luz desde arriba). Alternativa: usa un nodo "Normal" para control individual por objeto.
- **Outlines con Fresnel/Layer Weight:** Conecta "Fresnel" o "Layer Weight" a "Math" → "Less Than". Esto da un outline negro que varía con el ángulo. Multiplica para mantenerlo negro o usa "Mix" para elegir colores.
- **Outlines con método Inverted Hull (Solidify):** Añade un segundo slot de material (nómbralo "outline"). En ese material: "Emission" (color negro). Activa "Backface Culling" en Settings. Pon "Shadow Mode" en "None". Añade modificador "Solidify": ajusta "Thickness", activa "Flip Normals", "Material Offset" = 1.
- **Outlines con Geometry Nodes (inverted hull):** Mismo principio que Solidify, pero permite efectos extra (ej. hacer el outline ondulante).
- **Outlines con Grease Pencil Line Art:** Selecciona el objeto → Shift+A → Grease Pencil → "Object Line Art". Añade una cámara y apúntala al objeto. Para vista previa: N → "Lock Camera to View". Selecciona el outline → Properties → modifica "Thickness", material, "Edge Types" (ej. "Silhouette" para solo contorno exterior). Añade modificador "Noise" para jitter.
- **Outlines con Freestyle:** Render Properties → activa "Freestyle". View Layer Properties → ajusta opciones de línea. Requiere renderizar para ver resultado.
- **Outlines con Line Art Curve Modifier (Alan Wyatt):** Descarga el add-on de Geometry Nodes (link en descripción). Emula outlines de tinta y lápiz.
- **Grease Pencil 2D animado en escena 3D:** Shift+A → Grease Pencil → "Blank". Entra en Draw Mode. En el frame deseado, dibuja líneas (ej. arrugas faciales). Duplica frames con Shift+D en el timeline. Escala en Edit Mode. Usa "Inbetween" tool para interpolación. Para keyframes en blanco: I en Draw Mode. Activa Auto Keying para dibujar frame a frame.
- **Rigging de Grease Pencil:** Pesa y riggea como una malla. Para elementos 2D permanentes: parentea los strokes a huesos (ej. strokes de cabeza al bone "Head").
- **Medios tonos / Screen tones (Shader to RGB + Math Greater Than):** Conecta "Shader to RGB" → "Math" (Greater Than). En la entrada del Math, pon "Voronoi Texture" (Distance) → "Texture Coordinate" (Camera). Ajusta "Randomness" a 0, "Dimension" a 2D, escala alta. Para invertir dots (negros sobre blanco): usa "Mix Color" (valores 1 y 0). Ajusta valores para tamaño de dots.
- **Medios tonos planos (sin perspectiva):** Usa "Camera Data" (View Vector) en vez de Texture Coordinate. Los dots mantienen tamaño constante. "Window" Vector es similar pero se deforma al redimensionar la ventana.
- **Variaciones de medios tonos:** Rota con "Mapping Node". Cambia Voronoi por "Wave Texture" para líneas. Para dots que cambian de tamaño en bandas: pon "Color Ramp" (Constant) antes del Math; la posición controla tamaño, el color controla la banda.
- **Efecto pictórico (painterly) manual (Texture Paint):** Entra en Texture Paint Mode. Clica "Add New Image" para base color (en Blender 4.0 está en otra ubicación). Asegúrate de que el objeto tenga UV unwrap. Pinta directamente. Cambia color, tamaño, fuerza en el panel de brushes. Para reducir lag: maximiza la ventana con Ctrl+Spacebar sobre ella. Usa texturas de pincel (ej. de Craft Reaper en Gumroad) en las opciones de textura.
- **Efecto pictórico automático con nodos (normal manipulation):** Asegura sombreado suave. Añade "Geometry" (Normal) → conecta a "Normal" del shader. Pon "Voronoi Texture" (Position) → conecta a la entrada Normal. Esto pixeliza las normales. Para pinceladas: "Noise Texture" (Object) → "Vector Math" (Add) a las normales. Resta 0.5 con otro Vector Math, luego "Scale" para fuerza. Ajusta "Scale" y "Detail" del Noise. Cambia Voronoi a "Smooth" para transiciones suaves.
- **Baking de efectos pictóricos:** Para animación, hornea los efectos en una imagen para que no se muevan de forma antinatural. Usa el add-on "Bake Lab" (gratuito).
- **Postprocesado pictórico:** Usa el "Live Paint Filter" de Alan Wyatt para resultados más realistas.

## Reglas para el erudito (imperativas, "usa X cuando Y")

- Usa **Eevee** como render engine cuando trabajes con el nodo **Shader to RGB**; no funciona en Cycles.
- Usa **Shader to RGB + Color Ramp (Constant)** para cel shading plano y controlable por objeto.
- Usa **Map Range** en vez de Color Ramp cuando necesites crear **node groups reutilizables** (el Color Ramp no expone inputs para stops/colores).
- Usa **Math (Greater Than)** cuando solo quieras bordes duros sin gradientes.
- Usa **Backface Culling + Solidify (Flip Normals)** para el método Inverted Hull de outlines; desactiva Shadow Mode en el material outline.
- Usa **Grease Pencil Line Art** cuando necesites outlines que funcionen por cámara y con control de tipos de borde (silueta, contorno, etc.).
- Usa **Freestyle** solo si puedes permitirte renderizar para ver el resultado; no es interactivo en viewport.
- Usa **Texture Coordinate (Camera)** para medios tonos con perspectiva; usa **Camera Data (View Vector)** para medios tonos planos sin perspectiva.
- Usa **Geometry (Normal) + Voronoi/Noise** para efectos pictóricos automáticos; hornea si el personaje se anima para evitar artefactos de movimiento.
- Usa **Separate Color (RGB)** cuando quieras controlar luces de color por canal para rim lights estilizados.
- Usa **Color Management = Standard** solo para cel shading; para otros usos mantén el perfil por defecto.
- Usa **Bake Lab** (add-on gratuito) para hornear iluminación sobre el modelo antes de pintar manualmente.

## Errores comunes / gotchas

- Olvidar cambiar a **Eevee** al usar **Shader to RGB**; Cycles no lo soporta y el material se verá negro o incorrecto.
- Dejar el **Principled BSDF** con color distinto a blanco en cel shading; el resultado será demasiado oscuro y perderás control sobre los colores del Color Ramp.
- No activar **Backface Culling** en el material outline del método Inverted Hull; se verán las caras internas incorrectamente.
- Usar **Grease Pencil Line Art** sin una cámara en la escena; el outline no se generará o se verá roto.
- Esperar que **Freestyle** se vea en el viewport; solo aparece al renderizar (F12).
- Usar **Texture Coordinate (Camera)** para medios tonos y luego alejar la cámara; los dots cambiarán de tamaño por la perspectiva. Si quieres tamaño constante, usa **Camera Data (View Vector)**.
- No hacer **UV unwrap** antes de texture paint; el pincel no funcionará o pintará en UVs incorrectas.
- Aplicar efectos pictóricos con nodos (normal manipulation) a un personaje animado sin hornear; las texturas de ruido/voronoi se moverán de forma antinatural con el objeto.
- Usar **Window Vector** para medios tonos planos y luego redimensionar la ventana de Blender; la textura se deformará. Usa **View Vector** en su lugar.
- No ajustar **Shadow Mode** a "None" en el material outline del Inverted Hull; puede causar sombras extrañas o rendimiento lento.