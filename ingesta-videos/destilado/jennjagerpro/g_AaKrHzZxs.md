# Media Management in FCP 
**Fuente:** jennjagerpro | https://youtu.be/g_AaKrHzZxs
## Qué enseña (2-3 líneas)
Explica los tres métodos de importación en Final Cut Pro (copiar a la biblioteca, dejar archivos en su lugar e importar desde tarjeta de memoria), sus ventajas y desventajas, y cómo relinkear media perdida. También muestra el sistema de gestión de medios de su empresa, incluyendo backups en disco y en la nube (Dropbox), y el uso de un spreadsheet en Google Drive para rastrear ubicaciones de proyectos.
## Lecciones accionables
- **Para copiar media a la biblioteca:** Al crear una nueva biblioteca, en la ventana de importación selecciona "Copy to library" bajo "Files". Si la opción no aparece, ve al inspector de la biblioteca → "Storage Locations" → "Modify Settings" → cambia "Media" a "In Library" → "OK". Luego importa.
- **Para dejar archivos en su lugar:** En la ventana de importación, selecciona "Leave files in place". Esto acelera la importación (solo crea thumbnails y waveforms) y mantiene la biblioteca pequeña (ej. 29.2 MB vs 102 GB de media original).
- **Para mover media a un disco de backup (no copiar):** Arrastra la carpeta de media original manteniendo presionada la tecla **Command** para que aparezca "Move Items" en lugar de "Copy". Esto elimina los archivos del origen automáticamente.
- **Para consolidar media en la biblioteca después de importar desde tarjeta:** Selecciona la biblioteca en el sidebar → menú "File" → "Consolidate Media" → asegúrate de que el destino sea "In Library". Luego elimina manualmente la carpeta "Final Cut Original Media" del disco (solo si ya tienes backup).
- **Para relinkear media faltante:** Selecciona uno o varios clips en el browser → "File" → "Relink Files" → "Original Media" → "Locate All" → elige la carpeta correcta → "Choose" → "Relink Files". Verifica que 41 of 41 files matched (o similar) en la ventana de detalles.
- **Para backup de biblioteca completa:** Arrastra y suelta la biblioteca .fcbundle a un disco de backup sin presionar Command (esto copia, no mueve). Luego puedes eliminar el original si lo deseas.
- **Para subir a la nube (Dropbox):** Solo después de que el proyecto esté completado y el cliente haya firmado. Sube la biblioteca .fcbundle completa. Puedes abrir el bundle en Dropbox para acceder a clips individuales sin descargar todo.
- **Para rastrear ubicaciones de proyectos:** Usa un spreadsheet compartido (Google Drive o Excel) con columnas: nombre del cliente, disco donde está, fecha de modificación, estado (activo/archivado en Dropbox).
## Reglas para agentes
- **Usa "Copy to library" cuando** trabajes con media de tarjetas de memoria (la opción "Leave files in place" está deshabilitada automáticamente).
- **Nunca renombres o muevas carpetas** que contengan media referenciada por una biblioteca con "Leave files in place" — incluso renombrar la carpeta rompe el vínculo y requiere relink.
- **Siempre ten dos copias físicas** de la media en discos separados durante la edición activa: una para la biblioteca de trabajo y otra como backup en un disco diferente.
- **Usa "Consolidate Media" solo después** de verificar que la biblioteca está configurada para almacenar media "In Library" en Storage Locations.
- **Nunca elimines la carpeta "Final Cut Original Media"** hasta que hayas consolidado la media en la biblioteca y verificado que el backup existe en otro disco.
- **Sube a la nube solo al finalizar el proyecto** (con firma del cliente) — la nube es segura pero lenta, no apta para edición activa.
- **Mantén un spreadsheet actualizado** con la ubicación de cada proyecto (disco físico o nube) para evitar pérdidas.
## Errores comunes que evita o menciona
- **Duplicar media sin querer:** Al copiar media a la biblioteca, los archivos originales quedan en el disco. La solución es moverlos (Command + arrastrar) a un disco de backup en lugar de copiarlos.
- **Perder media al renombrar o mover carpetas:** Si usas "Leave files in place", renombrar la carpeta o moverla dentro del mismo disco rompe el vínculo. Copiar a la biblioteca evita este problema.
- **No tener backup de media activa:** Confiar solo en la nube para proyectos en curso es lento en emergencias. Usa discos físicos para proyectos activos y sube a la nube solo al finalizar.
- **Olvidar eliminar "Final Cut Original Media":** Al importar desde tarjeta con destino a un disco externo, Final Cut crea esta carpeta. Si luego consolidas a la biblioteca, la carpeta original queda como duplicado y debe eliminarse manualmente.
- **No rastrear ubicaciones de proyectos:** Sin un spreadsheet, es fácil perder la pista de dónde está cada proyecto, especialmente en equipos que comparten discos.