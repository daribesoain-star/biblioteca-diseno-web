# Higgsfield Canvas Tutorial 2026 - Complete Beginner Guide
**Fuente:** hf_tutorial | https://youtu.be/R7GegCn8SbU

## Que ensena sobre Higgsfield (2-3 lineas)
El tutorial enseña a usar **Canvas**, el nuevo sistema de nodos visuales de Higgsfield que permite crear flujos de trabajo para generación de imágenes y video sin saltar entre pestañas. Muestra cómo conectar nodos de **prompt**, **image generator** y **video generation** para mantener estilos consistentes, reemplazar personajes en escenas, y automatizar la producción en lote.

## Tips y flujos accionables

### UI y navegacion
- **Zoom/Pan:** Click medio del mouse para arrastrar; Ctrl + rueda del mouse para zoom.
- **Atajos:** Delete para borrar nodos; Ctrl+Z para deshacer; Ctrl+Z funciona en Canvas.
- **Herramientas inferiores:** Selection (seleccionar), Pen (dibujar lineas), Draw (dibujar formas con color), Sticky Notes (notas adhesivas), Shapes (rectangulos/elipses), Text (texto), Thumbs up (reaccion), Comment (comentarios).
- **Team Chat/Share:** Arriba a la derecha para compartir canvas (publico/privado) y colaborar en tiempo real.

### Flujo basico: Imagen con estilo consistente
1. **Crea nodo Prompt** (click derecho > Add Node > Prompt). Escribe la descripcion del personaje. Ejemplo: *"Viking berserker standing doing a rallying call"*
2. **Crea nodo Image Generator** (click derecho > Add Node > Image Generator). Conecta la salida del Prompt al input del Image Generator.
3. **En el nodo Image Generator:**
   - Selecciona modelo: **GPT Image 2**, **Nano Banana 2**, **Seedream** (los que aparecen en el menu desplegable).
   - En el campo de texto del nodo, pon SOLO las instrucciones de estilo: *"Resin 3D printed hand-painted professional model on a white background"*
   - Settings: Cambia aspect ratio (ej: 9:16 para shorts), resolution, batch size (hasta 4).
4. **Genera.** El resultado mantiene el estilo fijo mientras cambias solo el prompt del personaje.

### Flujo intermedio: Reemplazar personaje en escena + video
1. **Assets:** Arrastra assets existentes desde tu biblioteca (Assets button) o sube nuevos.
2. **Escena base:** Conecta un asset de escena a un nodo Image Generator con prompt: *"Keep everything the same but change aspect ratio"* (si necesitas reencuadrar).
3. **Correccion de encuadre:** Si la camara queda muy lejos, conecta ese output a otro Image Generator con prompt: *"Move the camera closer to the subject and make the background more blurred"*
4. **Video generation:** Conecta la escena corregida + el personaje (asset) + un nodo Prompt de video a un nodo **Video Generator**.
   - En el nodo Video Generator, en el campo de texto, describe el movimiento de camara: *"Camera slowly pans in as the last brush stroke is made. After a slight pause, the miniature comes to life and runs away"*
   - En el nodo Prompt (conectado al input T del video), describe el reemplazo: *"Replace the Viking miniature in the workbench scene with the new Elven miniature"*
5. **Genera video.**

### Flujo avanzado: Fabrica de shorts (batch)
1. **Escena base:** Un asset de escena (ej: workbench con miniatura).
2. **Personajes:** Varios nodos Prompt con descripciones de personajes diferentes (ej: Vikingo, Elfo, Mech).
3. **Nodo Prompt de accion:** Un solo nodo que describe el cambio: *"Replace the miniature in the scene with the new character"*
4. **Nodos Video Generator:** Crea tantos como personajes tengas.
   - Conecta la escena base a cada Video Generator.
   - Conecta el nodo Prompt de accion al input T de cada Video Generator.
   - Conecta cada personaje a su respectivo Video Generator.
5. **Generacion masiva:** Selecciona todos los nodos Video Generator y haz clic en **Run Pipeline** (los genera todos en secuencia).

### Templates pre-hechos
- En la pagina de Canvas, haz clic en **Templates** (5 disponibles).
- Ejemplos: **Long Video** (combina prompts e imagenes para video largo), **Image Edit** (reemplaza personajes en escenas).
- Para usar uno: haz clic en **Add** y se crea un canvas editable con la estructura lista.

## Reglas para el erudito de Higgsfield

- **Para mantener estilo consistente entre personajes:** pon la descripcion del personaje en un nodo **Prompt** y las instrucciones de estilo (material, fondo, iluminacion) en el campo de texto del nodo **Image Generator**.
- **Para reemplazar un personaje en una escena existente:** usa un nodo **Prompt** conectado al input T del **Video Generator** con la instruccion exacta: *"Replace [personaje original] with [nuevo personaje]"*
- **Para corregir encuadre sin perder la escena:** conecta el output del Image Generator a otro **Image Generator** con prompt: *"Move the camera closer to the subject"* y ajusta aspect ratio en Settings.
- **Para batch de videos con misma escena:** conecta la misma escena base a multiples **Video Generator**, cada uno con su propio personaje y un solo nodo **Prompt** de accion compartido.
- **Para colaboracion en tiempo real:** usa **Team Chat** (arriba a la derecha) para llamar o chatear con miembros del equipo dentro del canvas.
- **Para evitar gastar creditos en pruebas:** se detallado en los prompts de reemplazo (especifica que personaje reemplazar y con cual), no asumas que lo hara solo.

## Errores comunes / que evitar

- **No mezclar instrucciones de personaje y estilo en el mismo nodo:** si pones todo en el Image Generator, no podras reutilizar el estilo con otros personajes. Separa: personaje en Prompt, estilo en Image Generator.
- **No olvidar conectar el Prompt al input T (texto) del Video Generator:** el prompt de accion debe ir al input T, no al input de imagen. La escena y el personaje van a los inputs de imagen.
- **No generar sin verificar el encuadre primero:** si cambias aspect ratio, revisa que la camara no se haya alejado. Usa un segundo Image Generator para acercarla antes de pasar a video.
- **No usar prompts genericos para reemplazo:** en lugar de "replace the scene", usa "replace the Viking miniature in the workbench scene with the new Elven miniature" para evitar alucinaciones y ahorrar creditos.
- **No asumir que los templates son editables:** los templates pre-hechos solo se pueden ver, no modificar. Para editarlos, haz clic en **Add** para crear una copia editable.
- **No olvidar que puedes seleccionar multiples nodos y usar Run Pipeline:** si generas uno por uno, pierdes tiempo. Selecciona todos y ejecuta pipeline para batch.