Claro, aquí tienes la destilación del tutorial en español neutro, siguiendo tus instrucciones al pie de la letra.

---

# Automate Your Workflow: Batch Editing Compositions in After Effects with This Powerful Script!
**Fuente:** Emily Gentile | https://youtu.be/A6GDN6SDS9M

## Qué enseña (2 líneas)
El tutorial muestra cómo usar un script personalizado (llamado "Batch It Up") para duplicar y personalizar composiciones de After Effects a partir de los datos de un archivo CSV. El proceso incluye la preparación de datos y fotos, la creación de una plantilla con capas nombradas según los encabezados del CSV, y la ejecución del script para generar automáticamente las composiciones finales para cada fila de datos.

## Técnicas de scripting accionables
- **Preparación del CSV:** El script requiere que el archivo CSV tenga una columna llamada `name` (con N mayúscula, sin espacios) para nombrar las composiciones resultantes. Si se usan fotos, debe existir una columna llamada `photo` (con P mayúscula) que contenga el nombre del archivo de imagen (ej. `player1.png`).
- **Nombrado de capas en la plantilla:** Para que el script reemplace el contenido, la capa en la composición de plantilla debe llamarse exactamente igual que el encabezado de la columna en el CSV. Por ejemplo, si el CSV tiene una columna `player name`, la capa de texto en After Effects debe renombrarse a `player name`.
- **Foto de placeholder:** Se debe incluir una capa en la plantilla llamada `placeholder.jpg` (o `placeholder.png`, etc.). El script busca esta capa específica para reemplazarla con las fotos de la columna `photo` del CSV.
- **Ejecución del script:** Al ejecutar el script `.jsx`, este solicita dos cosas mediante cuadros de diálogo:
    1.  La ruta absoluta del archivo CSV en el sistema.
    2.  El nombre de la carpeta dentro del proyecto de After Effects donde se encuentran importadas las fotos.
- **Manejo de errores (sin fotos):** Si una plantilla no tiene fotos (y por lo tanto no tiene una capa `placeholder.jpg`), el script mostrará un error. La solución es añadir una capa nula (null object) a la plantilla y nombrarla `placeholder.jpg` (o la extensión que uses). Si no hay carpeta de fotos, se puede poner un nombre de archivo cualquiera en esa columna del CSV para que el script no falle.

## Reglas para el operador ("usa X cuando Y", gotchas de ExtendScript)
- **Nombres de columnas del CSV:** La columna `name` es obligatoria y debe escribirse exactamente así (con N mayúscula, sin espacios, sin "s" al final). La columna `photo` también es obligatoria si se usan imágenes y debe escribirse exactamente así (con P mayúscula, sin espacios).
- **Nombres de archivos de imagen:** En la columna `photo` del CSV, la extensión del archivo debe incluirse (ej. `.png`, `.jpg`). El nombre del archivo debe coincidir exactamente con el nombre de la capa importada en After Effects.
- **Nombres de capas en After Effects:** El nombre de la capa en la plantilla debe coincidir *exactamente* (incluyendo mayúsculas, minúsculas y espacios) con el encabezado de la columna del CSV. No es el contenido del texto, sino el nombre de la capa.
- **Composición de salida:** El script genera una nueva composición para cada fila del CSV. Estas composiciones se colocan dentro de una subcarpeta que se crea automáticamente dentro de la carpeta donde se encuentra la plantilla. Se recomienda poner la plantilla dentro de su propia carpeta para mantener el orden.
- **Composición en blanco:** El script tiene un comportamiento conocido (un "quirk") que crea una composición vacía adicional al ejecutarse. El operador debe simplemente eliminar esta composición sobrante.

## Errores comunes
- **Error "no se puede encontrar el placeholder":** Ocurre cuando la plantilla no tiene una capa llamada `placeholder.jpg` (o la extensión correspondiente) y el CSV tiene datos en la columna `photo`. **Solución:** Añadir una capa nula con ese nombre exacto a la plantilla.
- **El script no reemplaza el texto o la imagen:** El nombre de la capa en After Effects no coincide exactamente con el encabezado de la columna en el CSV. Revisar mayúsculas, minúsculas y espacios.
- **Las composiciones de salida no se nombran correctamente:** La columna `name` en el CSV no está escrita exactamente como `name` (con N mayúscula y sin espacios). El script usa esta columna para nombrar las composiciones resultantes.