# Introducción al Scripting en After Effects
**Fuente:** Digital Magician - VFX & Mograph Tutorials | https://youtu.be/iEXhPPqolNI

## Qué enseña (2 líneas)
Explica qué es el scripting en After Effects (ExtendScript/.jsx), su diferencia con las expresiones, y la estructura del modelo de objetos (proyectos, composiciones, capas, elementos de render). Destaca que los scripts automatizan tareas y acceden a funciones no disponibles en la interfaz gráfica.

## Técnicas de scripting accionables
- **Acceder al proyecto activo:** `app.project`
- **Crear una composición:** `app.project.items.addComp("Nombre", ancho, alto, 1, duración, 30)`
- **Agregar capa desde archivo:** `comp.layers.add(file)`
- **Agregar capa de texto:** `comp.layers.addText("Texto")`
- **Agregar capa sólida:** `comp.layers.addSolid([1,0,0], "Rojo", 1920, 1080, 1)`
- **Acceder a propiedades de capa:** `layer.property("Transform").property("Position")`
- **Acceder a efectos por matchName:** `layer.effect("ADBE Color Balance")` o `layer.property("ADBE Effect Parade").property("ADBE Color Balance")`
- **Establecer keyframe con valor en tiempo:** `prop.setValueAtTime(tiempoEnSegundos, [x, y])`
- **Aplicar expresión a propiedad:** `prop.expression = "wiggle(5, 10)"`
- **Crear ventana ScriptUI:** `var win = new Window("palette", "Título", [100,100,400,300])`
- **Agregar botón a ventana:** `var btn = win.add("button", undefined, "Ejecutar")`
- **Asignar acción al botón:** `btn.onClick = function() { alert("¡Hola!"); }`
- **Agrupar operaciones para deshacer:** `app.beginUndoGroup("Nombre de acción")` / `app.endUndoGroup()`
- **Acceder a cola de render:** `app.project.renderQueue`
- **Agregar composición a cola:** `app.project.renderQueue.items.add(comp)`
- **Leer/escribir archivo:** `var archivo = new File("ruta/archivo.txt")` / `archivo.open("r")` / `archivo.read()` / `archivo.close()`

## Reglas para el operador
- Usa `app.project` como punto de entrada para manipular el proyecto actual.
- Usa `addComp()` cuando necesites crear una composición desde cero; los parámetros son: nombre, ancho, alto, relación de píxeles, duración en segundos, framerate.
- Usa `layers.add()` para footage, `layers.addText()` para texto, `layers.addSolid()` para sólidos.
- Usa `property()` con el nombre exacto de la propiedad (ej: "Transform", "Position", "Scale", "Opacity").
- Usa `effect()` o `property("ADBE Effect Parade")` para acceder a efectos; los matchNames son cadenas específicas de After Effects.
- Usa `setValueAtTime(tiempo, valor)` para crear keyframes; el tiempo está en segundos.
- Usa `expression` como propiedad de cadena para asignar expresiones a propiedades.
- Usa `beginUndoGroup()` / `endUndoGroup()` para agrupar múltiples cambios en una sola acción de deshacer.
- Usa ScriptUI (`Window`, `panel`, `button`, `onClick`) para interfaces gráficas personalizadas.
- Usa `renderQueue.items.add(comp)` para enviar composiciones a la cola de render.
- Usa `File` para operaciones de entrada/salida; recuerda abrir (`open()`), leer/escribir y cerrar (`close()`).
- **Gotcha de ExtendScript:** Las propiedades en JavaScript se llaman "atributos" en el modelo de objetos de After Effects para evitar confusión con las propiedades animables de capas/efectos.

## Errores comunes
- Confundir **expresiones** con **scripts**: las expresiones definen el valor de una propiedad en tiempo real; los scripts ejecutan comandos que modifican el proyecto.
- Usar nombres incorrectos de propiedades o matchNames (ej: escribir "Position" en vez de "Transform" > "Position").
- Olvidar cerrar archivos después de leerlos o escribirlos (`archivo.close()`).
- No agrupar operaciones con `beginUndoGroup()`/`endUndoGroup()`, lo que impide deshacer múltiples cambios como una sola acción.
- Asumir que todo lo que se puede hacer en la interfaz gráfica tiene un método directo en scripting (aunque la mayoría sí, no todos).
- No verificar que `app.project` exista (puede ser `null` si no hay proyecto abierto).