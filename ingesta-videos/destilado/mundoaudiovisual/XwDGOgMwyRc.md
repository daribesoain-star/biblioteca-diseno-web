# Video Effects Course - Fusion - Davinci Resolve - 🎬 Chapter 7 - Creating the Milky Way.
**Fuente:** mundoaudiovisual | https://youtu.be/XwDGOgMwyRc

## Qué enseña (2-3 líneas)
Transforma imágenes 2D planas (texturas JPG de planetas) en objetos 3D esféricos dentro de Fusion en DaVinci Resolve. Crea una escena 3D con Tierra, Luna y fondo de Vía Láctea, aplicando rotaciones, desplazamiento de pivote para órbitas y configuración básica de cámara y renderizado.

## Lecciones accionables
- **Crear un plano 3D desde imagen 2D:** Presiona `Shift + Espacio`, busca y selecciona `dot13` (ImagePlane3D). Conecta el nodo MediaIn (imagen JPG) al ImagePlane3D. Conecta el ImagePlane3D a un nodo `Merge3D` y luego a un `Renderer3D`.
- **Convertir plano en esfera:** En el nodo ImagePlane3D, en Inspector, cambia el parámetro `Object Style` de `Plane` a `Sphere`. Ajusta `Radius` (ej. reducir) y `Subdivisions` (ej. 30-35 para balance calidad/rendimiento).
- **Configurar cámara 3D:** Añade un nodo `Camera3D` (Shift+Espacio > Camera3D). Conéctalo al Merge3D. Usa los controles en pantalla o el Inspector para posicionar la cámara (ej. vista frontal, lateral, perspectiva).
- **Crear la Luna:** Repite el proceso con otra imagen JPG de textura lunar. Conecta su ImagePlane3D al mismo Merge3D. Ajusta `Radius` menor que la Tierra. Usa el parámetro `Transform` > `Translate` (X, Y, Z) para posicionarla lejos de la Tierra.
- **Rotar la Tierra sobre su eje:** Selecciona el nodo ImagePlane3D de la Tierra. En `Transform` > `Rotation` (Y), añade un keyframe en frame 0 (valor 0). Ve al frame 115, cambia `Rotation Y` a 360, añade otro keyframe.
- **Hacer que la Luna orbite la Tierra:** Selecciona el nodo ImagePlane3D de la Luna. En `Transform` > `Pivot`, desplaza el pivote en el eje X hasta la posición de la Tierra (centro de la escena). Luego, en `Transform` > `Rotation` (Y), añade keyframes: frame 0 (0°), frame 115 (360°).
- **Ajustar velocidad de rotación:** Ve al menú `Spline` (curvas paramétricas). Selecciona la curva de rotación. Asegúrate de que la línea sea recta (velocidad constante, sin aceleración).
- **Agregar fondo de Vía Láctea:** Conecta un nodo `MediaIn` con la imagen JPG de la Vía Láctea a un nodo `Merge` (Merge2D). Conecta la salida del Renderer3D al otro input del Merge. Conecta el Merge al MediaOut final.
- **Mejorar el fondo:** Entre el MediaIn de la Vía Láctea y el Merge, inserta un nodo `BrightnessContrast`. Ajusta `Brightness` y `Contrast` para hacerlo más realista.
- **Usar GPU para renderizar:** En el nodo `Renderer3D`, en Inspector, cambia `Render Mode` de `Software` a `OpenCL` (o `OpenGL` si está disponible). Esto acelera el renderizado si tienes una tarjeta gráfica compatible (ej. Nvidia 3060, 3080).

## Reglas para agentes
- Usa `ImagePlane3D` (dot13) para convertir imágenes 2D en objetos 3D, no otro nodo 3D genérico.
- Cuando crees una órbita (Luna alrededor de Tierra), desplaza el `Pivot` del objeto orbitante al centro del objeto central antes de aplicar rotación.
- Conecta siempre el `Renderer3D` a un `Merge` (2D) antes del `MediaOut` si necesitas superponer fondos 2D adicionales.
- Para rotaciones constantes, verifica en el `Spline` que la curva sea una línea recta; nunca dejes curvas suavizadas por defecto si quieres velocidad uniforme.
- Usa `OpenCL` en el `Renderer3D` cuando el hardware lo soporte; nunca uses `Software` si hay GPU disponible.

## Errores comunes que evita o menciona
- No olvidar cambiar `Object Style` de `Plane` a `Sphere` en el ImagePlane3D; de lo contrario, el planeta se ve como un disco plano.
- No dejar `Subdivisions` demasiado altas (ej. >100) porque consume muchos recursos y ralentiza el rendimiento; 30-35 es suficiente.
- No rotar la Luna sin ajustar primero el `Pivot`; si no, gira sobre su propio eje en lugar de orbitar la Tierra.
- No usar `Software` render si hay GPU disponible; el rendimiento es mucho peor.
- No olvidar conectar el fondo de Vía Láctea a un Merge 2D separado después del Renderer3D; si se conecta al Merge3D, se comporta como un objeto 3D y puede bloquear la vista.