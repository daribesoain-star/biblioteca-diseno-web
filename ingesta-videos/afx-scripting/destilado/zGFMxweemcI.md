# Comp Replicator: CSV Driven Batch Comps - Quickstart Guide Tutorial
**Fuente:** Adam Nix | https://youtu.be/zGFMxweemcI

## Qué enseña (2 líneas)
Uso del script **Comp Replicator** para generar lotes de composiciones en After Effects a partir de datos de un archivo CSV, reemplazando capas de texto y fuentes de capa (layer sources) automáticamente, incluyendo duplicación de precomposiciones y envío a la cola de render.

## Técnicas de scripting accionables

- **Seleccionar comp template:** `app.project.activeItem` (comp activo se selecciona automáticamente al abrir el script).
- **Cargar CSV:** El script lee archivos `.csv` mediante `File.openDialog()` o selección desde interfaz.
- **Asignar targets automáticamente:** En el nombre de la capa del template, escribir `#` seguido del número de target (ej: `#1`). Luego hacer clic en **Refresh** en la UI del script.
- **Filtros de capa:** Usar filtro `text` para capas de texto y `source` para capas con fuente (archivo o comp).
- **Reemplazar source con comp:** Si el CSV contiene un nombre de comp, el script busca en `app.project.items` el comp con ese nombre y lo asigna como `layer.source`.
- **Duplicar precomposiciones:** El script duplica automáticamente las precomps que contienen las capas target.
- **Render Queue:** Al hacer clic en **Create Comp**, los comps generados se añaden a `app.project.renderQueue.items` con configuraciones de render y output module personalizadas.
- **Still Frame:** Botón **Still Frame** → **Q Existing** agrega los comps existentes a la cola de render como fotogramas fijos.
- **UI dinámica:** La interfaz (`ScriptUI`) se redimensiona automáticamente según el tamaño del CSV cargado.
- **Dockable:** El script es totalmente acoplable (`panel.dockable = true`).

## Reglas para el operador

- **Usa `#` + número** en el nombre de la capa del template para que el script asigne targets automáticamente al hacer Refresh.
- **Para reemplazar source con un comp**, el valor en el CSV debe coincidir exactamente con el nombre del comp en el proyecto.
- **Si la capa target está dentro de una precomp**, el script duplica toda la precomp automáticamente.
- **Para actualizar un dato**, selecciona la fila correspondiente en la UI, edita el campo y haz clic en **Create Comp** de nuevo.
- **Para ver todos los datos a la vez**, ve a **Settings** → **Add more targets**.
- **Para renderizar lotes**, los comps se agregan a la cola con los mismos ajustes de render y output module que el template original.

## Errores comunes

- **No seleccionar el comp template** antes de abrir el script → el campo de comp queda vacío.
- **Escribir mal el `#` + número** en el nombre de la capa (ej: espacio antes del número) → el Refresh no detecta el target.
- **El nombre del comp en el CSV no coincide exactamente** con el nombre en el proyecto → el source no se reemplaza.
- **Cerrar el script antes de hacer Q Existing** → los comps generados no se pueden añadir a la cola de render.
- **No hacer Refresh después de añadir `#`** → los targets no se actualizan en la UI.