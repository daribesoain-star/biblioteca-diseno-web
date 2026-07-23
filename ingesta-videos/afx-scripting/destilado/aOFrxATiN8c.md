# Create Your Own Plugin in After Effects (Free & Easy ScriptUI Panel Method)
**Fuente:** AM Film | https://youtu.be/aOFrxATiN8c

## Qué enseña (2 líneas)
Crear un panel ScriptUI personalizado en After Effects usando un script .jsx generado por ChatGPT, que aplica presets de animación guardados y ejecuta acciones como añadir capas o aplicar Easy Ease. El panel se instala en la carpeta `ScriptUI Panels` y se accede desde el menú `Window`.

## Técnicas de scripting accionables

- **Guardar preset de efecto para usar en el panel:**
  - Aplica un efecto a una capa, selecciona el efecto en el panel `Effects`, ve a `Animation > Save Animation Preset`, elige carpeta y nombre (ej. `lmetry.ffx`).
  - El script carga el preset desde la ruta especificada.

- **Estructura del script .jsx generado (basado en el tutorial):**
  ```javascript
  // Ejemplo de estructura que genera ChatGPT (no código exacto del video)
  var myPanel = new Window("palette", "My Plugin", undefined);
  myPanel.orientation = "column";
  myPanel.alignChildren = ["left", "top"];

  // Botón para aplicar preset
  var btnPreset = myPanel.add("button", undefined, "Lummetry Color");
  btnPreset.onClick = function() {
      app.beginUndoGroup("Apply Preset");
      var comp = app.project.activeItem;
      if (comp && comp instanceof CompItem) {
          var layer = comp.selectedLayers[0];
          if (layer) {
              var presetFile = new File("C:/ruta/a/tu/preset/lmetry.ffx");
              layer.property("ADBE Effect Parade").addProperty("ADBE Lummetry Color");
              // Aplicar preset (método hipotético, no mostrado en video)
          }
      }
      app.endUndoGroup();
  };

  // Botón para crear sólido
  var btnSolid = myPanel.add("button", undefined, "New Solid");
  btnSolid.onClick = function() {
      app.beginUndoGroup("Create Solid");
      var comp = app.project.activeItem;
      if (comp && comp instanceof CompItem) {
          comp.layers.addSolid([1,0,0], "Red Solid", 1920, 1080, 1);
      }
      app.endUndoGroup();
  };

  myPanel.show();
  ```

- **Instalación del panel:**
  - Guarda el script como archivo `.jsx` (ej. `MyPlugin.jsx`).
  - Copia a: `C:\Program Files\Adobe\Adobe After Effects <versión>\Support Files\Scripts\ScriptUI Panels\`
  - Reinicia After Effects, ve a `Window > MyPlugin`.

- **Acciones comunes en el panel (según el tutorial):**
  - `app.project.activeItem` → obtener la composición activa.
  - `comp.layers.addSolid(r,g,b, width, height, pixelAspect)` → añadir capa sólida.
  - `comp.layers.addCamera("Camera Name", [0,0,0])` → añadir cámara.
  - `layer.selectedProperties[0].setValueAtTime(time, value)` → no usado directamente, pero implícito en Easy Ease.
  - `app.beginUndoGroup("nombre")` / `app.endUndoGroup()` → agrupar acciones para deshacer.

## Reglas para el operador ("usa X cuando Y", gotchas de ExtendScript)

- **Usa `app.beginUndoGroup` / `app.endUndoGroup`** siempre que ejecutes múltiples cambios en el proyecto (ej. aplicar preset + modificar capa) para permitir deshacer como una sola acción.
- **Usa `File` con ruta absoluta** para cargar presets; las rutas relativas no funcionan en ScriptUI Panels.
- **Usa `comp.selectedLayers[0]`** para aplicar efectos solo a la capa seleccionada; si no hay selección, el script falla.
- **Usa `addProperty("matchName")`** para agregar efectos; los matchNames son cadenas como `"ADBE Lummetry Color"` (dependen del efecto).
- **Gotcha:** ChatGPT puede generar código con errores (ej. rutas incorrectas, nombres de propiedades mal escritos). Siempre prueba el panel y corrige con ChatGPT iterativamente.
- **Gotcha:** El panel no se actualiza automáticamente al añadir nuevos presets; debes reiniciar After Effects.
- **Gotcha:** Si el panel no aparece en `Window`, verifica que el archivo `.jsx` esté en `ScriptUI Panels` (no en `Scripts`).

## Errores comunes

- **El efecto no se aplica al hacer clic:** ChatGPT a menudo escribe mal el matchName del efecto o la ruta del preset. Solución: pide a ChatGPT que corrija el script (ej. "presets not applying").
- **El panel no aparece en el menú Window:** El archivo no tiene extensión `.jsx` o está en la carpeta incorrecta. Renombra a `.jsx` y colócalo en `ScriptUI Panels`.
- **Error "Cannot access property 'activeItem' of undefined":** No hay composición abierta. Asegúrate de tener una comp activa antes de usar el panel.
- **El botón "New Solid" no crea nada:** Falta `app.beginUndoGroup` o la sintaxis de `addSolid` es incorrecta (usa `comp.layers.addSolid([r,g,b], name, width, height, pixelAspect)`).
- **El preset guardado no se carga:** La ruta en el script no coincide con la ubicación real del archivo `.ffx`. Copia la ruta exacta desde el explorador de archivos.