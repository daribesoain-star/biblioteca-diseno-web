# 5 Essential Illustrator to After Effects Workflow Techniques
**Fuente:** SonduckFilm | https://youtu.be/jKyMPFncsmk

## Qué enseña
Este tutorial enseña cinco flujos de trabajo prácticos para transferir y animar gráficos vectoriales desde Adobe Illustrator a After Effects. Cubre desde la animación de iconos como trazos hasta la creación de escenas continuas sin costuras, pasando por la animación de objetos individuales dentro de vectores complejos.

## Técnicas accionables
- **Animación de iconos como trazo desde Illustrator:**
  1. En Illustrator, con la herramienta **Direct Selection Tool**, selecciona un icono, elimina un punto de la ruta para borrar todo el trazo, luego selecciona el resto y cópialo (Ctrl+C / Cmd+C).
  2. En After Effects, crea un nuevo **Shape Layer** (Layer > New > Shape Layer). Ábrelo, añade un **Path** (Add > Path), selecciona el path y pega (Ctrl+V / Cmd+V) los datos de la ruta.
  3. Escala con **Ctrl+T / Cmd+T**. Añade **Stroke** (Add > Stroke) y ajusta el ancho del trazo.
  4. Para animar, añade **Trim Paths** (Add > Trim Paths). Activa keyframes en **End**, pon el primer keyframe en **0%** y el segundo en **100%**.
- **Importación de escenas vectoriales complejas:**
  1. En Illustrator, selecciona todos los objetos, ve a **Object > Ungroup** varias veces hasta que todos los grupos y paths estén aislados bajo una sola capa.
  2. Con todas las capas seleccionadas, ve al menú del panel de capas (icono de hamburguesa) y elige **Release to Layers (Sequence)**. Esto separa cada objeto en su propia capa.
  3. Arrastra todas las capas fuera de la capa original. Guarda el archivo como **.ai** (File > Save As).
  4. En After Effects, importa ese archivo: **File > Import > File**, selecciona **Composition** como Import Kind, haz clic en OK.
  5. Dentro de la composición, selecciona las capas vectoriales y activa **Continuously Rasterize** (icono de rayo en la columna de switches). Así puedes escalar sin pérdida de calidad.
  6. Mueve los **Anchor Points** sobre los objetos y anima con valores de **Transform** (Position, Scale, Rotation).
- **Animación de un objeto siguiendo un path personalizado:**
  1. En Illustrator, con la **Direct Selection Tool**, selecciona un path completo y cópialo.
  2. En After Effects, crea un **Solid** (Layer > New > Solid), pégalo como máscara (selecciona el sólido, pega). Presiona **M** para ver la máscara, escala con **Ctrl+T / Cmd+T**.
  3. Copia la ruta de la máscara. Selecciona tu gráfico, presiona **P** para Position, y pega la ruta en el parámetro **Position**. Aparecerán keyframes de posición que puedes estirar para controlar la duración.
- **Animación de paths individuales dentro de un objeto vectorial:**
  1. En After Effects, haz clic derecho sobre la capa vectorial importada, ve a **Create > Create Shapes from Vector Layer**. Esto genera una **Shape Layer** con cada path y objeto como grupo independiente.
  2. Abre los grupos (ej. "Group 6", "Group 7" para manecillas de reloj), ve a **Transform: Group**, y añade keyframes o una expresión como `time*20` en el parámetro **Rotation** para animar.
- **Creación de una escena continua (seamless) con Motion Tile:**
  1. Precompón el fondo: selecciona la capa de fondo, ve a **Layer > Pre-compose**, nómbrala "scene background", haz clic en OK.
  2. Aplica **Effect > Stylize > Motion Tile**. Ajusta **Tile Center** (valor X) para desplazar el fondo infinitamente.
  3. Para ocultar el corte visible, ve a Illustrator, copia un objeto (ej. un árbol), crea un nuevo documento, pégalo y guárdalo como .ai.
  4. En After Effects, importa ese objeto como **Footage**. Activa **Continuously Rasterize** y escálalo para cubrir el corte.
  5. Crea un **Null Object** (Layer > New > Null Object). Selecciona el Null, presiona **P** para Position.
  6. En el efecto Motion Tile, Alt+clic en el stopwatch de **Tile Center**, y exprímelo al **Position** del Null (usando el pick whip).
  7. Selecciona el objeto vectorial (el árbol), presiona **P** para Position, y exprímelo también al **Position** del Null. Repite para otros objetos que oculten cortes adicionales.

## Reglas para el erudito
- Usa **Continuously Rasterize** (icono de rayo) en todas las capas vectoriales importadas de Illustrator antes de escalarlas, para mantener la calidad vectorial.
- Cuando copies paths desde Illustrator, asegúrate de que el path esté completamente limpio (sin puntos sobrantes) antes de pegarlo en After Effects.
- Para animar un objeto siguiendo un path, pega la ruta copiada directamente en el parámetro **Position** del objeto (no en un path de forma).
- Al usar **Motion Tile**, activa **Mirror Edges** solo si el patrón lo permite; de lo contrario, oculta los cortes con objetos vectoriales adicionales.
- Para animar manecillas o partes rotativas, usa la expresión `time*20` (ajusta el multiplicador según la velocidad deseada) en el parámetro **Rotation** del grupo correspondiente.

## Errores comunes que evita o menciona
- No olvides **desagrupar** (Ungroup) varias veces en Illustrator hasta que todos los objetos estén en paths individuales, de lo contrario **Release to Layers** no funcionará correctamente.
- No escalar capas vectoriales sin activar **Continuously Rasterize**; de lo contrario, la imagen se pixelará al agrandarla.
- No animar directamente la posición del fondo sin usar **Motion Tile** o precomposición, porque el fondo se acabará y mostrará un borde vacío.
- No pegar un path de Illustrator directamente en una máscara si lo que quieres es animar la posición de un objeto; debes copiar la ruta de la máscara y pegarla en el parámetro **Position** del objeto.