# Runway Gen 3 AI Filmmaking Course (Your Ultimate Guide to Cinematic Masterpieces)
**Fuente:** runway | https://youtu.be/8mXuLKy5tcQ

## Que enseña (2-3 lineas)
Curso completo de cinematografía para video IA usando Runway Gen 3, centrado en dominar movimientos de cámara clásicos (dolly, pan, tilt, tracking, crane, handheld) y traducirlos a prompts efectivos. Enseña a combinar generación de imagen inicial (Midjourney/Flux) con prompting de movimiento en Runway para lograr secuencias cinematográficas coherentes y emocionales.

## Lecciones accionables

### 1. Static Shot (Plano Fijo)
- **Prompt imagen inicial:** `cinematic` + `sharp focus` (minimiza áreas borrosas que Runway alucina)
- **Prompt Runway:** `static shot natural movement` (movimiento sutil) o `static shot dynamic movement` (más movimiento)
- **Tip:** Para escenas de naturaleza o detalles cotidianos, usa `documentary photography` en el prompt de imagen
- **Mejor generador de imagen:** Flux (menos errores anatómicos que Midjourney)

### 2. Dolly Shot (Dolly In / Dolly Out)
- **Prompt imagen inicial (Flux):** `cinematography dolly in` (Flux elige el shot type automáticamente)
- **Prompt Runway Dolly In:** `camera slowly zooms in` o `camera slowly pulls in` + `natural movement`/`dynamic movement`
- **Prompt Runway Dolly In específico:** `the camera slowly zooms to her face`
- **Prompt Runway Dolly Out:** `camera slowly pulls back` o `camera slowly pulls out` + `natural movement`

### 3. Pan Shot (Panorámica horizontal)
- **Prompt imagen inicial:** `off-center shot` o `rule of thirds shot` o `cinematography pan shot`
- **Prompt Runway:** `pan camera right` o `pan camera left`
- **Duración recomendada:** 5 segundos (10 segundos tiende a producir resultados extraños)
- **Si usas 10 segundos:** Especifica la segunda parte del shot: `camera pans left a beautiful sunrise sea`

### 4. Tilt Shot (Inclinación vertical)
- **Prompt Runway Tilt Up:** `camera tilts up` (revela altura, grandeza)
- **Prompt Runway Tilt Down:** `camera tilts down` (revela detalles, construye suspenso)
- **Uso:** Tilt up para sorpresa/empoderamiento; Tilt down para descubrimiento/contexto

### 5. Handheld Shot (Cámara en mano)
- **Prompt Runway:** `handheld shot`
- **Advertencia:** Runway a veces pierde coherencia; usa el mini video editor para recortar inicios/finales
- **Post-producción:** Acelera el footage al menos 25% (Runway tiende a hacerlo más lento de lo normal)
- **Tip extra:** Puedes reverse el video (tilt up → tilt down y viceversa)

### 6. Tracking Shot (Cámara lateral)
- **Prompt imagen inicial:** `full body shot` o `over the shoulder shot` o `cinematography tracking shot`
- **Prompt Runway:** `tracking shot`, `tracking right shot`, `tracking left shot`
- **Nota:** Si mencionas dirección, el sujeto se moverá en esa dirección y la cámara lo seguirá

### 7. Leading Shot (Cámara adelantada)
- **Prompt Runway:** `leading shot` al inicio del prompt
- **Efecto:** La cámara va delante del personaje, guiando al espectador

### 8. Crane Up Shot (Grúa ascendente)
- **Prompt imagen inicial:** `establishing shot` + `rule of thirds` o `cinematography crane shot`
- **Prompt Runway (orden específico):** `aerial drone shot camera moves up` o `high angle crane`
- **Advertencia:** Sin estos keywords específicos, Runway puede dar tilt shots en lugar de crane up

### 9. Crane Down Shot (Grúa descendente)
- **Prompt Runway:** `aerial drone shot camera moves down`
- **Nota:** Puede requerir varios intentos (reruns)

### 10. Action Shot (Plano de acción)
- **Técnica clave:** Primero genera en cámara lenta, luego acelera
- **Prompt imagen inicial:** `full body shot` del sujeto en movimiento
- **Prompt Runway:** `slow motion action shot`
- **Post-producción:** Acelera el footage en el editor nativo de Runway

### 11. Aerial Drone Shot (Toma aérea)
- **Prompt imagen inicial:** `aerial shot` o `drone shot` + `landscape photography`
- **Prompt Runway:** `aerial drone shot wide angle establishing shot showcasing its vast landscape and surroundings`
- **Extra:** Añade hora del día o condiciones climáticas para mood

### 12. POV Shot (Punto de vista)
- **Prompt imagen inicial:** `POV` o `first person view`
- **Prompt Runway:** `POV` o `first person view`

### 13. SnorriCam (Cámara montada al actor)
- **Prompt imagen inicial:** `GoPro selfie shot`
- **Prompt Runway:** `snor cam she is running fast` o `snor cam disorienting background blur`

### 14. Key Frames (Runway Gen 3 Turbo)
- **Técnica:** Selecciona primer frame y último frame; Runway renderiza la transición creativamente
- **Resultado:** Escenas interesantes e inesperadas

## Reglas para el director de fotografía IA

1. **Usa `cinematic` al inicio del prompt de imagen** para sentar la base estética fílmica
2. **Usa `sharp focus` en el prompt de imagen** para minimizar áreas borrosas que Runway alucina (añade caras/elementos extraños)
3. **Usa Flux para generar imágenes iniciales** porque produce menos errores anatómicos (dedos raros) que Midjourney
4. **Para no alucinar en video IA, estructura el prompt Runway así:** `[tipo de movimiento de cámara] + [descripción del evento]` — NO describas la imagen en Runway, solo el movimiento y la acción
5. **Usa `natural movement` para movimiento sutil y `dynamic movement` para más movimiento** en todos los tipos de shot
6. **Para pan shots, usa 5 segundos en lugar de 10** para evitar resultados extraños
7. **Para action shots, genera primero en slow motion y luego acelera** para obtener movimientos más fluidos
8. **Acelera el footage final al menos 25%** porque Runway tiende a generar movimiento más lento de lo natural
9. **Usa el mini video editor de Runway** para recortar inicios/finales problemáticos y para reverse videos
10. **Para crane up shots, usa el orden exacto `aerial drone shot camera moves up`** o Runway dará tilt en lugar de crane

## Errores comunes que evita o menciona

- **Runway alucina áreas borrosas:** No dejes zonas desenfocadas en la imagen inicial; usa `sharp focus` para evitarlo
- **Runway por defecto hace zoom in gradual:** Siempre especifica el movimiento de cámara deseado, o terminarás con un zoom automático
- **Pan shots de 10 segundos producen resultados extraños:** Usa 5 segundos o especifica la segunda parte del shot
- **Handheld shots pierden coherencia:** Usa el editor de video para recortar partes problemáticas
- **Runway renderiza más lento de lo natural:** Acelera siempre al menos 25% para dinamismo
- **Crane up sin keywords específicos da tilt shots:** Usa `aerial drone shot camera moves up` exactamente
- **Flux vs Midjourney:** Flux produce menos errores anatómicos (dedos), mejora el workflow
- **Image to video con cambios de shot type:** Si pides transición de over-the-shoulder a wide establishing, Runway pierde coherencia