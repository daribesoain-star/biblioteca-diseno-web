# 3D Scroll Stopper in Apple Motion
**Fuente:** jennjagerpro | https://youtu.be/iZYotWOnDkY

## Qué enseña (2-3 líneas)
A crear un efecto visual 3D tipo "scroll stopper" para redes sociales usando Apple Motion, combinando imágenes recortadas, texto 3D, replicadores, luces y animación oscilante de cámara. El resultado es un loop perfecto que llama la atención en feeds de Instagram.

## Lecciones accionables
- **Preparación de assets en Pixelmator Pro:** usa la **herramienta de selección por color** para aislar cada gummy bear individualmente, evitando arrastrar sombras. Luego, con la **herramienta Clonar**, repara imperfecciones del recorte original. Exporta como **PSD** (File > Export > PSD).
- **Configuración de proyecto en Apple Motion:** preset **Custom**, resolución **2160×2160**, relación de aspecto **Square**, frame rate **60 fps**.
- **Fondo con capas:** añade **Color Solid** (Library > Generators) y **Soft Gradient** (Library > Generators). Agrupa ambos (clic derecho > Group). En el grupo, escala a **180%** en Properties para que el gradiente oscuro quede en el perímetro.
- **Activar 3D:** ve a **Add Object > Camera** y confirma "Switch to 3D".
- **Importar capas desde PSD:** arrastra el archivo PSD desde Finder al panel de proyecto, sin soltar el clic, y selecciona **Import All Layers**. Esto crea un grupo con cada gummy bear como capa individual.
- **Replicador para profundidad 3D:** selecciona un gummy bear, haz clic en **Replicate** (esquina superior derecha). En Inspector > Replicator:
  - Shape: **Line**
  - Marca **3D** (checkbox)
  - Start Point: X=**0**, End Point: X=**0**, Z=**aumentar** (ej. 200)
  - Points: **20** (no más para evitar oscurecimiento)
- **Repite el replicador** para cada gummy bear individualmente.
- **Estrellas con replicador:** añade **Star** (Library > Generators). Ajusta: **Spike Width** aumentar, **Radius** reducir. Luego Replicate:
  - Marca **3D**
  - Shape: **Sphere**
  - Arrangement: **Random Fill**
  - Radius: **12-20**
  - Points: **1000**
  - Cell Controls: **Angle Randomness** subir, **Scale Randomness** subir
  - Blend Mode: **Add**
- **Texto 3D:** selecciona **3D Text** (Add Object), escribe el texto, centra alignment. En Inspector > Appearance, añade **Depth**. En Substance, elige **Plastic** y color vibrante.
- **Transform Glyph Tool:** para escalar letras individuales (ej. "3" y "D"), selecciona la herramienta en el menú de herramientas, mantén **Shift** para escalar sin distorsión, usa flechas para reposicionar.
- **Posicionamiento en Z:** cambia vista a **Left** (menú superior del canvas). Selecciona cada elemento y en Inspector > Properties, ajusta Z a **2000** para acercarlos a cámara. Luego vuelve a **Active Camera** y reescala/reposiciona.
- **Variación Z:** para gummy bears, ajusta Z individualmente en cada replicador. Para texto, usa **Transform Glyph Tool** y arrastra el **punto azul** hacia adelante/atrás para mover letras en Z.
- **Luz:** Add Object > Light. En vista Left, ajusta Z a **2500** (detrás de cámara). En Inspector > Light: **Intensity** ~225, **Falloff** ~2.25, marca **Shadows**, **Softness** alto, **Opacity** bajo, desmarca **Uniform Softness**.
- **Animación de cámara:** selecciona Camera en proyecto. En Properties > Rotation Y, haz clic derecho > Add Parameter Behavior > **Oscillate**. En Keyframe Editor: **Speed** alto (ondas apretadas), **Amplitude** reducir a **1**.
- **Loop perfecto:** ajusta **Phase** hasta que la onda comience en un pico. Encuentra el frame donde Rotation Y vuelve a **1** (ej. frame 429). Arrastra el **Range Tool** hasta ese punto. Al exportar (Share > Export Movie > Settings), marca **Use Play Range** en Duration.

## Reglas para agentes
- Usa **Import All Layers** al arrastrar un PSD a Motion, nunca arrastres capas individuales.
- Cuando ajustes colores de Color Solid y Soft Gradient, selecciona tonos **más vibrantes** de lo deseado porque se oscurecen al renderizar.
- Si exportas como GIF, **evita gradientes dramáticos** para prevenir banding.
- Al escalar letras con Transform Glyph Tool, mantén **Shift** presionado para evitar distorsión.
- Para loop perfecto, **siempre marca "Use Play Range"** en la exportación de película.
- Cuando añadas luz, **ajusta su Z a 2500** (detrás de cámara) para evitar iluminación frontal plana.
- En el replicador de estrellas, **nunca bajes Points por debajo de 1000** para mantener densidad visual.

## Errores comunes que evita o menciona
- **No arrastrar sombras no deseadas:** usa selección por color en lugar de selección mágica para evitar incluir drop shadows de los assets originales.
- **No exceder Points en replicador:** más de 20 puntos por gummy bear oscurece los bordes y pierde el color brillante.
- **No ignorar la vista Left:** esencial para posicionar correctamente elementos y luz en el eje Z.
- **No olvidar reescalar después de mover a Z=2000:** los elementos se ven enormes al acercarlos; hay que reducir scale y ajustar Y position.
- **No usar luz si el equipo tiene problemas de rendimiento:** es un paso opcional que puede ralentizar máquinas menos potentes.
- **No exportar sin "Use Play Range":** el loop no será perfecto si no se limita la duración al rango exacto donde la animación se repite.