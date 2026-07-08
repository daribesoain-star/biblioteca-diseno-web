# Apple Motion Drop Zones Tutorial
**Fuente:** jennjagerpro | https://youtu.be/2Byomb5KmfE

## Qué enseña
Cómo crear y configurar drop zones en Apple Motion para usarlas como generadores personalizados en Final Cut Pro, incluyendo la publicación de parámetros (pan, scale, filtros) para que sean editables desde Final Cut. También cubre buenas prácticas para proyectos complejos con múltiples drop zones, máscaras y efectos.

## Lecciones accionables
- Para crear un drop zone: ve a **Object > New Drop Zone** en Apple Motion.
- Para aplicar una máscara circular a un drop zone: selecciona el drop zone, ve al menú desplegable **Shape Masks** en la parte inferior del canvas y elige **Circle Mask**; dibuja el círculo sobre el drop zone.
- Para añadir un filtro a un drop zone: selecciona el drop zone en la lista de proyectos, ve a **Filters > Looks > Process** (o cualquier otro filtro deseado).
- Para publicar parámetros de drop zone para Final Cut: pasa el cursor sobre el parámetro (ej. **Pan** en el inspector), haz clic en el pequeño triángulo (carrot) que aparece y selecciona **Publish**. Repite para **Scale** y para cualquier filtro aplicado.
- Para guardar como generador de Final Cut: ve a **File > Save**, asigna un **Template Name** (ej. "drop zone example"), elige una **Category** existente o crea una nueva con **New Category**, deja **Theme** en "None" y haz clic en **Publish**.
- Para reemplazar un clip dentro de un drop zone en Motion: arrastra un archivo de video sobre el drop zone hasta que el borde se vuelva amarillo y suéltalo.
- Para limpiar drop zones antes de publicar un generador profesional: elimina el contenido de video de los drop zones dejándolos como slates grises con flechas; esto se hace después de haber publicado los parámetros (pan, scale, filtros) mientras aún había contenido.
- Para ajustar pan y scale de un drop zone en Motion: selecciona el drop zone en el panel de proyectos, ve al **Inspector** y modifica los valores de **Pan** y **Scale** en la sección del drop zone.
- Para acceder al generador en Final Cut: abre Final Cut, ve a la barra lateral de **Generators**, busca la categoría que elegiste (ej. "Show Opens") y arrastra el generador a la línea de tiempo.
- Para cambiar el clip de un drop zone desde Final Cut: selecciona el generador en la línea de tiempo, ve al **Inspector de Generator** y usa el menú desplegable del drop zone para elegir otro clip.

## Reglas para agentes
- Publica siempre los parámetros **Pan**, **Scale** y cualquier **filtro** de un drop zone en Motion antes de guardar el generador, o no aparecerán como opciones editables en Final Cut.
- Publica los parámetros **mientras haya contenido de video dentro del drop zone**; si el drop zone está vacío, las opciones de publicación para pan y scale no estarán disponibles.
- Usa **Object > New Drop Zone** para insertar drop zones, no arrastres archivos directamente sobre otros en Motion si quieres crear un generador reutilizable.
- Cuando crees un generador profesional, **limpia los drop zones** (elimina el contenido) antes de la publicación final, dejando solo los slates grises.
- Guarda el generador en una **categoría específica** (ej. "Show Opens") para organizarlo en Final Cut; usa **New Category** si no existe una adecuada.
- En Final Cut, solo podrás modificar los parámetros que publicaste en Motion; los parámetros no publicados quedarán fijos.

## Errores comunes que evita o menciona
- **No publicar parámetros en Motion**: si solo guardas el generador sin publicar pan, scale y filtros, en Final Cut solo aparecerá la opción de cambiar el clip del drop zone, sin controles adicionales para ajustar zoom, posición o intensidad del filtro.
- **Publicar parámetros con el drop zone vacío**: si intentas publicar pan o scale cuando el drop zone no tiene contenido, esas opciones no estarán disponibles; debes tener un clip dentro del drop zone para poder publicar esos parámetros.
- **No limpiar los drop zones en generadores profesionales**: dejar el contenido de video dentro del drop zone al publicar el generador hace que se vea menos profesional; lo correcto es eliminar el contenido después de publicar los parámetros, dejando el slate gris.