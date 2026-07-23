Aquí tienes la destilación del tutorial en español neutro, siguiendo estrictamente tus reglas.

# Terminal rendering in After Effects
**Fuente:** Marcos Salvi | https://youtu.be/HjeqG_MjpWA

## Qué enseña (2 líneas)
Cómo enviar una composición a la cola de render desde la interfaz de After Effects y luego ejecutar el renderizado por línea de comandos (Terminal en macOS) para que el programa siga respondiendo mientras procesa, sin usar scripting.

## Técnicas de scripting accionables
- **No se usa scripting en este tutorial.** El método es completamente manual: seleccionar una composición en el panel Proyecto, presionar `Cmd+Shift+/` (Mac) para enviarla a la cola de render, configurar el módulo de salida (QuickTime, codec DNxHD, resolución 1080p 23.976 fps, 8-bit, sin audio) y la ruta de salida.
- **Comando de terminal (no ExtendScript):**  
  `renderaerender -project /ruta/al/archivo.aep`  
  (Arrastrar el ejecutable `aerender` desde la carpeta de After Effects a la terminal, luego escribir `-project`, arrastrar el archivo `.aep` y presionar Enter).

## Reglas para el operador ("usa X cuando Y", gotchas de ExtendScript)
- **Usa `Cmd+Shift+/`** para enviar la composición seleccionada a la cola de render (atajo por defecto en macOS).
- **Guarda el proyecto (.aep) antes** de ejecutar el comando de terminal; si no, `aerender` no encontrará los cambios.
- **El comando `aerender`** permite que After Effects siga funcionando mientras renderiza en segundo plano (no bloquea la interfaz).
- **Evita el codec Animation** en los ajustes de formato QuickTime porque "tomaría una eternidad" (gotcha de rendimiento).

## Errores comunes
- **No guardar el proyecto** antes de ejecutar `aerender` → el render usará la última versión guardada, no los cambios recientes.
- **Olvidar el flag `-project`** en el comando de terminal → `aerender` no sabrá qué archivo abrir.
- **Usar codec Animation** en lugar de DNxHD → tiempos de render extremadamente largos y archivos de gran tamaño.