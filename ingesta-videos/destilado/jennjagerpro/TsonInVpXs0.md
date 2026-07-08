# How to Share FCP Presets 
**Fuente:** jennjagerpro | https://youtu.be/TsonInVpXs0
## Qué enseña (2-3 líneas)
Cómo crear, guardar y compartir presets personalizados de efectos en Final Cut Pro usando solo herramientas nativas del programa. Explica la diferencia entre un efecto (creado en Apple Motion) y un preset (que combina herramientas existentes de FCP). Muestra el proceso de exportación e instalación del archivo .effectpreset en otro equipo.
## Lecciones accionables
- Para guardar un preset: selecciona el clip con los efectos aplicados en el Inspector → haz clic en **Save Effects Preset** → asigna un nombre (ej. "Friday Night Mood") → elige una categoría existente o crea una nueva (ej. "Jen's color looks") → haz clic en **Create** y luego en **Save**.
- Para aplicar el preset a un clip nuevo: arrastra el clip desde el navegador a la línea de tiempo → ve al **Effects Browser** → busca la categoría creada → arrastra el preset al clip.
- Para localizar el archivo del preset en Finder: haz clic derecho sobre el preset en el **Effects Browser** → selecciona **Reveal in Finder** → el archivo tiene extensión `.effectpreset` y es de tamaño muy pequeño (se puede enviar por email).
- Para instalar un preset recibido en otro equipo: abre **Finder** → presiona **Command + Shift + H** para ir a la carpeta de inicio → abre la carpeta **Library** (si no se ve, presiona **Command + J** y activa **Show Library Folder**) → navega a **Library** → **ProApps** → **Effects Presets** → arrastra el archivo `.effectpreset` dentro de esa carpeta.
- Los presets solo pueden incluir efectos nativos de Final Cut Pro (color, grano de película, enfoque, etc.). No se pueden incluir efectos de terceros que el destinatario no tenga instalados, o aparecerá un error de **missing plug-in**.
## Reglas para agentes
- Usa **Save Effects Preset** solo cuando hayas aplicado una combinación de efectos nativos de FCP que quieras reutilizar.
- Nunca incluyas efectos de terceros (plug-ins de desarrolladores externos) en un preset que vayas a compartir, a menos que estés seguro de que el destinatario tiene exactamente esos mismos plug-ins instalados.
- Para compartir un preset, usa **Reveal in Finder** desde el Effects Browser para obtener el archivo `.effectpreset`; no intentes copiar la configuración manualmente.
- Para instalar un preset, el destinatario debe colocarlo exactamente en la ruta `~/Library/ProApps/Effects Presets/`; si la carpeta Library no es visible, activa **Show Library Folder** en las opciones de vista (Command + J).
## Errores comunes que evita o menciona
- **Error de plug-in faltante**: si el preset incluye efectos de terceros que el destinatario no tiene, aparecerá un mensaje de "missing plug-in". La solución es limitar los presets compartidos solo a herramientas nativas de Final Cut Pro.
- **Carpeta Library oculta**: en versiones recientes de macOS, la carpeta Library del usuario está oculta por defecto. Para mostrarla, usa **Command + J** en Finder y marca **Show Library Folder**.
- **Confundir efecto con preset**: un efecto se crea en Apple Motion y se publica a FCP; un preset usa herramientas existentes de FCP y se guarda desde el Inspector. No intentes crear un preset arrastrando efectos de terceros.