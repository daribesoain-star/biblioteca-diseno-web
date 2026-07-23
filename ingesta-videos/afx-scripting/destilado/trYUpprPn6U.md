# After Effects Scripting Tutorial: Teach Yourself Scripting
**Fuente:** NT Productions | https://youtu.be/trYUpprPn6U

## Qué enseña (2 líneas)
Estrategias para aprender scripting de After Effects por cuenta propia: usar guías de referencia, depurar código, pensar en niveles de objetos y practicar con metas concretas. No es un tutorial de sintaxis, sino de metodología de aprendizaje.

## Técnicas de scripting accionables

- **Referencia obligatoria:** Consultar la *Scripting Guide* y la *UI Guide* (para ScriptUI) incluidas en la instalación de After Effects.
- **Depuración con `alert()`:** `alert("valor de x: " + x);` — muestra un cuadro de diálogo.
- **Depuración con `$.writeln()`:** `$.writeln("mensaje");` — escribe en la consola de JavaScript (Ventana > Consola de JavaScript).
- **Object Model Viewer (OMV):** En ExtendScript Toolkit, usar Ver > Explorador de objetos para inspeccionar clases, constructores, propiedades y métodos de After Effects y ScriptUI.
- **Jerarquía correcta de objetos:** No usar `comp.addSolid()`, sino `comp.layers.addSolid()`. No usar `app.project.addItem()`, sino `app.project.items.addComp()`.
- **Prueba en múltiples versiones:** Ejecutar el script en CS6, CC 2014, CC 2018, etc., porque métodos como `property()` pueden no existir en versiones antiguas.
- **Prueba en Windows y Mac:** Especialmente con rutas de archivo (File I/O), ya que la sintaxis de carpetas difiere.
- **Foros:** Buscar primero en foros de scripting de After Effects antes de publicar; no duplicar hilos existentes.
- **Metas progresivas:** Ejemplo: "Quiero un script que active/desactive todas las capas" → primero aprender a apagar una capa (`layer.enabled = false`), luego iterar sobre todas.

## Reglas para el operador ("usa X cuando Y", gotchas de ExtendScript)

- **Usa `comp.layers.addSolid()` en lugar de `comp.addSolid()`** — el método `addSolid` pertenece a `LayerCollection`, no a `CompItem`.
- **Usa `app.project.items.addComp()` en lugar de `app.project.addComp()`** — los métodos de agregado están en `items`, no directamente en `project`.
- **Usa `$.writeln()` para depuración silenciosa** (sin interrumpir al usuario); usa `alert()` solo cuando quieras que el usuario vea el mensaje inmediatamente.
- **Usa el Object Model Viewer (OMV)** para verificar la jerarquía exacta de objetos antes de escribir código.
- **Prueba en Mac si usas rutas de archivo** — las barras invertidas (`\`) de Windows no funcionan; usa `Folder.selectDialog()` o `File.openDialog()` para evitar problemas de plataforma.
- **Revisa la guía de versiones antiguas** — métodos como `property("ADBE Transform Position")` pueden no estar disponibles en CS6; usa `property(1)` como alternativa.

## Errores comunes

- **Llamar a un método en el objeto equivocado:** Ejemplo: `comp.addSolid()` en lugar de `comp.layers.addSolid()`.
- **No revisar la jerarquía de objetos:** Intentar `app.project.addComp()` en vez de `app.project.items.addComp()`.
- **Usar `alert()` para todo en depuración:** Interrumpe el flujo; mejor usar `$.writeln()` y la consola de JavaScript.
- **No probar en múltiples versiones de After Effects:** Un script que funciona en CC 2018 puede fallar en CS6 por falta de métodos.
- **No probar en Mac:** Especialmente con rutas de archivo hardcodeadas (ej: `"C:\carpeta\archivo.jsx"`).
- **Publicar en foros sin buscar primero:** Preguntar algo ya respondido genera mala recepción.
- **No usar el Object Model Viewer:** Lleva a confusiones sobre qué propiedades/métodos están disponibles en cada objeto.