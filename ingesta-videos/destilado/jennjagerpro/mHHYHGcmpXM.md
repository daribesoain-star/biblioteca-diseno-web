# How to Remove Plugins from Final Cut
**Fuente:** jennjagerpro | https://youtu.be/mHHYHGcmpXM

## Qué enseña (2-3 líneas)
Este video explica cómo eliminar plugins de Final Cut Pro X (FCPX) desde dos ubicaciones principales: la carpeta `Motion Templates` (para plugins instalados manualmente) y rutas más profundas del sistema (para plugins instalados mediante software propio, como CoreMelt). También muestra cómo localizar plugins difíciles de encontrar usando la búsqueda en Finder y la opción "Show Enclosing Folder".

## Lecciones accionables
- **Para plugins instalados manualmente (ruta simple):**
  1. Abre Finder → selecciona `Macintosh HD` → `Users` → [tu nombre de usuario] → `Movies`.
  2. Busca la carpeta `Motion Templates` y haz doble clic.
  3. Dentro, encontrarás subcarpetas: `Compositions`, `Effects`, `Generators`, `Titles`, `Transitions`.
  4. Navega a la carpeta correspondiente (ej. `Effects`), selecciona los plugins que deseas eliminar (puedes seleccionar múltiples).
  5. Haz clic derecho → `Move to Trash` → vacía la papelera.

- **Para plugins instalados con software propio (ruta profunda, ej. CoreMelt C2):**
  1. Finder → `Macintosh HD` → `Library` → `Application Support` → `Final Cut Pro` → `Templates`.
  2. Dentro, elige la subcarpeta relevante: `Effects`, `Generators`, `Titles`, `Transitions`.
  3. Selecciona los plugins (ej. todas las transiciones `C2`), haz clic derecho → `Move to Trash`.
  4. Se te pedirá tu contraseña de administrador. Vacía la papelera.
  5. Cierra y vuelve a abrir Final Cut Pro para que los cambios surtan efecto.

- **Para localizar plugins difíciles de encontrar:**
  1. Abre Final Cut Pro y selecciona un plugin específico de la carpeta que quieres eliminar (ej. `Track 3D Pin`).
  2. En Finder, usa la función de búsqueda (lupa) e ingresa el nombre exacto del plugin (ej. `Track 3D Pin`).
  3. Haz clic derecho sobre el resultado → `Show Enclosing Folder`.
  4. Cambia la vista a `Columns` para identificar la ruta completa de navegación.
  5. Elimina toda la carpeta que contiene los plugins de ese grupo.

## Reglas para agentes
- Usa la ruta `~/Movies/Motion Templates/` cuando el plugin fue instalado manualmente arrastrando archivos.
- Usa la ruta `/Library/Application Support/Final Cut Pro/Templates/` cuando el plugin fue instalado mediante un instalador propio (como CoreMelt).
- Cuando no encuentres un plugin, busca su nombre exacto en Finder y usa `Show Enclosing Folder` para localizar la carpeta contenedora.
- Siempre vacía la papelera después de mover los plugins a la basura.
- Cierra y reinicia Final Cut Pro después de eliminar plugins para que desaparezcan de la interfaz.
- Nunca elimines plugins de proyectos activos o archivados que planees reabrir en el futuro.

## Errores comunes que evita o menciona
- **No verificar la ruta correcta:** Algunos plugins están en `Motion Templates` (fácil) y otros en `Application Support/Final Cut Pro/Templates` (profundo). Usar la ruta equivocada no los eliminará.
- **No vaciar la papelera:** Los plugins pueden seguir apareciendo en la papelera incluso después de vaciarla; es necesario reiniciar Final Cut Pro para que desaparezcan definitivamente.
- **Eliminar plugins de proyectos en uso:** Puede causar errores al abrir proyectos antiguos. Siempre verifica que no necesites el plugin para trabajos activos o archivados.
- **No usar la búsqueda para plugins ocultos:** Si no encuentras un plugin, buscarlo por nombre exacto en Finder y usar "Show Enclosing Folder" es la solución para localizar su ubicación exacta.