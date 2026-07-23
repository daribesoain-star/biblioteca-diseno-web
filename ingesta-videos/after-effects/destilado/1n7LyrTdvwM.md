# Element 3d Introduction Tutorial in After Effects
**Fuente:** RobikFX | https://youtu.be/1n7LyrTdvwM

## Qué enseña
Este tutorial cubre todas las funciones principales del plugin Element 3D: importación de modelos 3D, extrusión de texto y logos, texturizado con mapas difusos y normales, uso de canales auxiliares para animar piezas individuales, el motor de animación para transiciones entre grupos, y los ajustes de renderizado como sombras, iluminación, profundidad de campo y passes de salida.

## Técnicas accionables
- Crear una capa Element 3D: aplicar el efecto a un sólido negro, fondo negro, y crear una cámara en la composición.
- En Scene Setup, usar atajos de teclado: **R** para escala, **E** para rotación, **W** para transformación/posición.
- Importar modelos 3D: Archivo > Importar > Objeto 3D, seleccionar archivo .obj. Si el modelo viene en .fbx o .glb, convertirlo a .obj usando Blender (importar a Blender, exportar como .obj).
- Activar **Normalized Size** en el modelo importado si es demasiado pequeño o grande para la escena.
- Para texto 3D: crear capa de texto 2D en AE, en Element 3D ir a Custom Layers > Custom Text and Mask, seleccionar la capa de texto en Path Layer, hacer clic en **Extrude**.
- Para logos 3D con textura: precomponer el logo (con Move All Attributes), aplicar Auto Trace (Capa > Auto Trace, modo Alpha), luego en Element 3D seleccionar la capa precompuesta en Path Layer, hacer clic en Extrude, y en Custom Texture Maps seleccionar la misma capa. En el material del modelo, en Diffuse elegir Custom Layer 1 y activar **Use Layer as UV**.
- Para bordes dorados en texto/logo: en el modelo extruido, en Bevel Copies poner **2**, expandir Edge, ajustar Extrude y Z Offset. Luego arrastrar un preset de Physical (ej. dorado) al material del borde.
- Particle Replicator: en Particle Replicator, elegir forma (Sphere, Ring, Grid), ajustar Count, Scale Shape, Particle Size, Rotation Random, Random Size, Scatter.
- Multi-Object: en Particle Look, activar **Multi-Object**. Funciona con modelos que contienen múltiples piezas (ej. Floor Fracture del starter pack). Ajustar Random Rotation, Displace, Scatter.
- Deformaciones: en Particle Look, activar **Deform**. Opciones: Twist (ajustar dirección Y), Bend, Noise. Para que sea suave, aumentar Subdivision Level en Surface Options del modelo (ej. a 4 o 5).
- Para animar deformación: poner keyframes en Y Twist (u otro parámetro), ajustar velocidad con el gráfico.
- Texturizado con mapas de Poly Haven: descargar textura, en el material del modelo hacer clic derecho > Reset, luego en Texture tab > Diffuse importar el mapa diffuse. Para más detalle, importar el mapa Normal o Bump en el slot correspondiente y aumentar Bump.
- Para texturas con partes brillantes: en Illumination importar una imagen en blanco y negro, cambiar Color a verde (u otro), aumentar Intensity.
- UV Mapping: si la textura se ve mal, cambiar a **Box** en UV Mapping del modelo. Ajustar Duplicates (ej. 5x5) para repetir la textura.
- Canales Auxiliares (OX Channels): en el material del modelo, cambiar a vista Mesh (icono de malla), seleccionar la pieza a animar (ej. un ventilador), clic derecho > Auxiliary Animation > Channel 1. Luego en Group > OX Channels > Channel 1, animar Rotation (ej. Y rotation, 2 evoluciones en 2 segundos).
- Animation Engine: duplicar el grupo del modelo (Group Folder > duplicar, asignar a Group 2), cambiar textura del Group 2. En Group Utilities, copiar Group 1 y pegar en Group 2. Activar Animation Engine, poner keyframe de 0 a 100 en el primer frame. Ajustar Directional Options (Y Angle a 180) para controlar dirección.
- Para transiciones de texto con Animation Engine: duplicar el texto en Group 2, animar posición/rotación del Group 2, luego activar Animation Engine con Start Group 2 y Finish Group 1.
- Animation Type: cambiar a Radial, luego ajustar de Outward a Inward para invertir la dirección de la animación.
- Utilities para posicionar objetos 3D: en Utilities, hacer clic en un punto 2D de la escena 3D, seleccionar Generate Null. Copiar la posición del null 3D generado al objeto que se quiere posicionar.
- Render Settings > Physical Environment: activar Environment, rotarlo con keyframes para que se refleje dinámicamente.
- Iluminación: usar tanto la luz predefinida de Element 3D (Lighting) como luces de AE. Crear luz en AE (Layer > New > Light, tipo Parallel o Spot, Intensity 50, Cast Shadows On). Ajustar posición y Anchor Point.
- Sombras: en Render Settings > Shadows, activar. Ajustar Shadow Darkness, Shadow Size, Blur Radius.
- Ambient Occlusion: activar siempre. Aumentar Intensity para contacto entre objetos.
- Depth of Field: activar en Render Settings, modo Focus Indicator (rojo = en foco). Cambiar a Pixel Blur. Ajustar Aperture y Blur Level en la cámara de AE.
- Glow: activar en Render Settings si el modelo tiene datos de Illumination Channel.
- Ray Tracer: para objetos transparentes, activar Ray Tracer y poner Translucent para que las sombras se vean dentro del objeto.
- Mat Shadow / Mat Reflection: en el material del suelo, cambiar Reflection Mode a Mirror Surface o Spherical. Luego en Render Settings, activar Mat Shadow y Mat Reflection para que solo se vean sombras y reflejos sin el suelo visible.
- Output passes: cambiar Composite a Ambient Occlusion, Illumination, Z Depth, Specular, etc. Usar capas duplicadas de Element 3D con diferentes passes para compositing.
- Para glow más realista: duplicar capa Element 3D, poner Composite en Illumination, aplicar Deep Glow (plugin externo) en modo Screen.
- Para depth of field alternativo: duplicar capa Element 3D, Composite en Z Depth. Crear Adjustment Layer, aplicar Camera Lens Blur, seleccionar la capa Z Depth como Blur Layer.
- Anti-aliasing: si hay flickering, en Render Settings poner Multi-Sampling a **16** y Super Sampling a **2** o **4**.
- Render Mode: cambiar a Draft o Preview para vista previa más rápida.

## Reglas para el erudito
- Usa **Normalized Size** siempre que importes modelos de terceros para evitar escalas incorrectas.
- Activa **Ambient Occlusion** en todos los renders, incluso en texto simple, para dar profundidad entre objetos.
- Usa **Subdivision Level** (4 o 5) antes de aplicar deformaciones como Twist para evitar bordes dentados.
- Cuando uses Animation Engine, asegúrate de que ambos grupos tengan el **mismo modelo 3D** con la misma cantidad de piezas para transiciones suaves.
- Para texturas planas (suelos, cajas), cambia UV Mapping a **Box** y ajusta Duplicates para mejor visualización.
- Activa **Multi-Sampling 16** y **Super Sampling 2** como valores por defecto para evitar flickering en reflejos.
- Usa **Mat Shadow** y **Mat Reflection** cuando quieras sombras/reflejos sin un suelo visible en la escena final.
- Para animar piezas individuales de un modelo, asigna siempre **Auxiliary Channel** a cada pieza antes de animar.
- Renderiza en modo **Draft** durante la animación y cambia a calidad completa solo para el render final.

## Errores comunes que evita o menciona
- No usar Element 3D para modelado 3D avanzado; solo tiene formas básicas (cubo, esfera, plano) y está diseñado para importar modelos ya hechos.
- No importar modelos .fbx o .glb directamente; Element 3D solo lee .obj y .c4d. Hay que convertirlos con Blender.
- Olvidar activar **Use Layer as UV** al proyectar textura 2D sobre un logo 3D extruido; sin esto la textura se ve distorsionada.
- No aumentar **Subdivision Level** antes de aplicar deformaciones, resultando en bordes poco suaves.
- Intentar usar Animation Engine con dos modelos diferentes (ej. dos textos distintos) produce transiciones poco suaves; solo funciona bien con el mismo modelo con diferentes texturas o posiciones.
- No activar **Ambient Occlusion** hace que los objetos parezcan flotar sin sombras de contacto.
- Usar el Glow interno de Element 3D cuando se puede obtener un resultado más realista duplicando la capa con el pass de Illumination y aplicando Deep Glow u otro efecto de glow externo.