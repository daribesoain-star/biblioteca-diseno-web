# Customize Final Cut Pro | Favorites Folders, Layouts, Shortcuts & More!
**Fuente:** jennjagerpro | https://youtu.be/MnmkdOGCYtQ

## Qué enseña (2-3 líneas)
Cómo personalizar Final Cut Pro creando workspaces propios, atajos de teclado personalizados, carpetas de favoritos para efectos, títulos, generadores y transiciones, y ajustes de configuración como la herramienta de color predeterminada. Incluye dos métodos para crear carpetas de favoritos: con y sin Apple Motion.

## Lecciones accionables

- **Crear y guardar un workspace personalizado:** Ve a `Window > Workspaces > Save Workspace As`. Nombra el layout (ej. "editing audio"). Para recuperarlo, ve a `Window > Workspaces` y selecciona el workspace guardado. Se restauran todas las ventanas, tamaños y paneles abiertos exactamente como se guardaron.
- **Crear un Command Set (conjunto de comandos) personalizado:** Ve a `Final Cut Pro > Command Sets > Customize`. En el Command Editor, en la esquina superior izquierda, selecciona `Default`, haz clic en `Duplicate` y nómbralo (ej. "gen"). Esto preserva todos los atajos originales y permite añadir nuevos.
- **Asignar un atajo de teclado a un comando:** En el Command Editor, selecciona `All Final Cut Pro Commands` en "Command Groups". Usa el buscador (ej. "color adjustments"). Selecciona el comando. En el teclado virtual de arriba, activa las teclas modificadoras (Command, Shift, Option, Control). Las teclas en gris están libres; las de color ya tienen atajos asignados. Pulsa la tecla deseada (ej. C). Haz clic en `Save`.
- **Verificar si una combinación de teclas está disponible:** En el Command Editor, activa las teclas modificadoras deseadas. Las teclas grises en el teclado virtual indican que esa combinación no está usada. Pasa el cursor sobre una tecla de color para ver qué atajo tiene asignado (ej. Command-Shift-V = "Paste Attributes").
- **Cambiar la herramienta de color predeterminada:** Ve a `Final Cut Pro > Settings > General`. En "Default color correction tool", selecciona: `Color Board`, `Color Wheels`, `Color Curves`, `Hue/Saturation Curves` o `Color Adjustments Slider`.
- **Guardar colores personalizados en una paleta:** Abre un título, ve al inspector de texto > Face. Haz clic en el color swatch. Arrastra el cuadrado grande de color desde el selector a la paleta inferior. Para crear una carpeta de cliente, haz clic en el ícono de paletas, luego en el botón `+` y selecciona `New`. Arrastra colores a la ventana grande. Para renombrar, haz clic en el ícono de paletas > `Rename`. Para eliminar un color, selecciónalo y pulsa el botón `-`.
- **Crear carpeta de favoritos para EFECTOS (nativos y third-party):** Aplica el efecto a un clip en la línea de tiempo. En el Inspector, sin modificar parámetros o con los deseados, haz clic en `Save Effects Preset`. En el pop-up, nombra el preset. En "Category", desplázate al final y selecciona `New Category`. Nombra la categoría (ej. "*Favorites" — el asterisco la mantiene al inicio). Haz clic en `Create` y luego `Save`. Para añadir otro efecto, primero elimina el efecto anterior del clip, aplica el nuevo y repite el proceso.
- **Crear carpeta de favoritos para TÍTULOS, GENERADORES Y TRANSICIONES (con Apple Motion):** Haz clic derecho sobre el título/generador/transición en el navegador y selecciona `Open a Copy in Motion`. En Motion, ve a `File > Save As`. En el pop-up, nombra el archivo. En "Category", selecciona `New Category`, nómbrala (ej. "*Favorites"), haz clic en `Create` y luego `Publish`. El elemento aparecerá en la nueva categoría en Final Cut Pro.
- **Crear carpeta de favoritos para TÍTULOS, GENERADORES Y TRANSICIONES (SIN Apple Motion, solo third-party):** En Finder, ve a `~/Movies/Motion Templates/`. Dentro, abre la carpeta correspondiente (`Effects`, `Generators`, `Titles` o `Transitions`). Crea una nueva carpeta llamada "Favorites". Abre otra ventana de Finder en la misma ruta. Navega dentro de las carpetas de categorías existentes (ej. "Ripple Wipes"). Haz clic derecho sobre la carpeta del elemento deseado y selecciona `Copy`. Pégalo dentro de la carpeta "Favorites". Al volver a Final Cut Pro, aparecerá la categoría "Favorites".
- **Ajustar duraciones predeterminadas:** Ve a `Final Cut Pro > Settings > General`. Cambia los valores de "Duration" para audio fades, cross fades, still images y transitions.
- **Deshabilitar o retrasar el renderizado en segundo plano:** Ve a `Final Cut Pro > Settings > Playback`. Desmarca "Background render" para deshabilitarlo, o actívalo y ajusta "Start after" (ej. 10 segundos de inactividad).

## Reglas para agentes

- Usa `Final Cut Pro > Command Sets > Customize` para acceder al Command Editor; nunca busques "keyboard shortcuts" en el menú principal.
- Duplica siempre el Command Set `Default` antes de crear atajos personalizados; nunca modifiques el conjunto por defecto directamente.
- Usa el teclado virtual en el Command Editor para verificar disponibilidad de teclas: solo las teclas grises están libres para la combinación de modificadores seleccionada.
- Al guardar un Effects Preset para crear una carpeta de favoritos, elimina el efecto anterior del clip antes de aplicar y guardar el siguiente; de lo contrario, se sobrescribirá.
- Para mantener una carpeta de favoritos al inicio de la lista en el navegador, antepón un carácter especial (ej. asterisco `*`) al nombre de la categoría.
- Para guardar colores en una paleta personalizada, arrastra el cuadrado grande del selector de color, no el círculo pequeño del espectro.
- Cuando uses el método sin Apple Motion para favoritos de títulos/generadores/transiciones, copia la carpeta completa del elemento desde dentro de la carpeta de categoría existente; no copies archivos sueltos.

## Errores comunes que evita o menciona

- **Confundir "Command Sets" con "Keyboard Shortcuts":** El menú se llama "Command Sets", no "Keyboard Shortcuts", lo que puede desorientar al usuario.
- **No duplicar el Command Set por defecto:** Intentar modificar el Default directamente no está permitido; es obligatorio duplicarlo primero para preservar los atajos originales.
- **Asignar un atajo ya en uso:** El video muestra cómo verificar teclas grises (libres) vs. teclas de color (ocupadas) en el teclado virtual del Command Editor.
- **Sobrescribir un Effects Preset al añadir otro favorito:** Si no se elimina el efecto anterior del clip antes de aplicar y guardar el nuevo, el preset se sobrescribe en lugar de añadirse.
- **Intentar guardar títulos, generadores o transiciones nativos en favoritos sin Apple Motion:** El botón "Save Effects Preset" no funciona para estos elementos, y los archivos nativos están inaccesibles en el Finder para copiarlos manualmente.
- **No usar un prefijo en el nombre de la carpeta de favoritos:** Sin un carácter como el asterisco, la carpeta nueva aparecerá al final de la lista de categorías, no al inicio.