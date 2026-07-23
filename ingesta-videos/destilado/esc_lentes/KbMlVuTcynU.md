# Lens Distortion in Blender: Secret Camera Setting!
**Fuente:** esc_lentes | https://youtu.be/KbMlVuTcynU

## Que enseña
Cómo usar el ajuste de cámara **Panorámico** en Blender (específicamente el tipo *Equirectangular*) para generar distorsión de lente extrema y animaciones abstractas sin geometría compleja ni simulaciones. Muestra cómo mover la cámara a través de una escena simple con partículas de cabello para crear efectos visuales psicodélicos y perspectivas imposibles.

## Lecciones accionables

- **Cambiar tipo de lente:** En Blender, ve a las propiedades de la cámara y cambia *Lens Type* de *Perspective* a *Panoramic*. Esto activa la distorsión esférica.
- **Ajustar campo de visión:** Para llenar los bordes y obtener la distorsión máxima, establece *Field of View* a **360 Degrees**.
- **Control de intensidad de distorsión:** Aumenta el número junto a *Lens* (más allá de 15 escribiendo manualmente el valor) para intensificar el efecto de ojo de pez.
- **Tipo panorámico clave:** Selecciona *Equirectangular* (el mismo tipo que los HDRI de 360°). Luego, ajusta *Latitude* a **0** para obtener el efecto de "intro de Netflix" (línea recta en el horizonte con distorsión en los polos).
- **Configuración de escena para animación:**
    - Añade un plano → Sistema de partículas de cabello (*Hair*) con turbulencia (*Turbulence*).
    - Aumenta la resolución del cabello, escala la turbulencia.
    - Convierte a malla (*Convert to Mesh*), extruye (*Extrude*), añade *Solidify Modifier*.
    - Duplica y modifica la forma de las mallas, rota y duplica más.
    - Coloca la cámara dentro de la estructura de alambre.
    - Snap cámara a la vista con **Ctrl + Alt + 0**.
    - Cambia *Clip Start* de la lente para evitar recortes.
- **Movimiento de cámara:** Mover la cámara a través de la escena genera animaciones abstractas fluidas. Añade luces de colores para potenciar el efecto.

## Reglas para el director de fotografía IA

- **Usa *Equirectangular Projection* o *Fisheye Lens* en prompts** cuando quieras distorsión esférica extrema, ojo de pez o perspectivas de 360° en video IA (Veo 3, Kling, Runway). Ejemplo de prompt: *"camera with equirectangular projection, 360 degree field of view, extreme fisheye distortion, moving through abstract wireframe geometry"*.
- **Para no alucinar en video IA:** Si pides *"panoramic camera"* sin especificar, la IA puede generar un paisaje ancho normal. Sé explícito: *"spherical distortion, lens distortion, warped perspective, latitude 0, horizon line straight, poles distorted"*.
- **Usa *Latitude 0* en prompts** para obtener el efecto de horizonte recto con distorsión en los extremos (similar a un *tiny planet* o *Netflix intro*). Ejemplo: *"latitude 0, equirectangular, horizon line perfectly straight, top and bottom of frame heavily distorted"*.
- **Controla la intensidad con *Lens Distortion Strength* o *Focal Length*:** En prompts, especifica *"extreme lens distortion"* o *"subtle fisheye"* según el efecto deseado. Valores altos (ej. *"lens value 20"*) dan más deformación.
- **Para animaciones abstractas:** Combina *"camera moving through wireframe, particle system, hair strands, turbulence, colorful lights, panoramic camera, 360 degree view"*.

## Errores comunes que evita o menciona

- **No usar *Perspective* por defecto:** El error es dejar la cámara en modo *Perspective* y esperar distorsión. Debes cambiarla a *Panoramic* manualmente.
- **No confundir *Panoramic* con *Panorama* de video real:** En Blender, *Panoramic* es un tipo de lente que distorsiona la geometría, no un barrido de cámara. En prompts de IA, *"panoramic"* puede malinterpretarse como *"wide shot"*.
- **No olvidar ajustar *Clip Start*:** Si la cámara está dentro de la geometría, el *Clip Start* por defecto (0.1) puede recortar la vista. Auméntalo (ej. 0.01 o menor) para evitar que desaparezcan los objetos cercanos.
- **No usar *Field of View* menor a 360°:** Para el efecto completo de distorsión esférica, el *FOV* debe ser 360°. Menos grados dan una distorsión parcial o un recorte.
- **No ignorar el tipo *Equirectangular*:** Usar otros tipos panorámicos (como *Mirror Ball* o *Fisheye Equisolid*) da resultados diferentes. Para el efecto "Netflix intro" o HDRI, elige *Equirectangular* y ajusta *Latitude* a 0.