# EVERY Camera Movement Prompt in Kling 2.5 (in 6 Minutes)
**Fuente:** ai_kling | https://youtu.be/cHpgSf7LKEE

## Que enseña
Este tutorial enseña a controlar el movimiento de cámara en Kling 2.5 mediante prompts precisos, desde planos fijos hasta movimientos complejos como grúas, arcos y tomas submarinas. También cubre cómo mantener la consistencia cromática y cómo usar contexto escénico para que la IA ejecute correctamente las transiciones de cámara.

## Lecciones accionables

### Movimientos básicos (prompts exactos)
- **Plano fijo:** usa `fixed lens` para mantener la cámara estática. Si hay micro-movimiento al final, regenerea el prompt.
- **Zoom in:** `zoom in` + opcional `fast` para acelerar.
- **Zoom out:** `camera pullback` + opcional `fast`.
- **Arco alrededor del sujeto:** `rotating lens` (consistente, funciona casi siempre).
- **Primera persona / drone:** `fpv` (first person view) para vuelos sobre paisajes.

### Movimientos avanzados
- **Vista cenital:** `fly above` + `bird's eye view`.
- **Grúa (crane shot):** combinar `camera pullback` + `tilt up` para subir desde nivel de ojos a overhead.
- **Pan y tilt:** `pan` (horizontal) y `tilt up/down` (vertical).
- **Seguimiento:** `follow` (cuando el sujeto camina alejándose) o `tracking shot` (sigue al sujeto en movimiento).
- **Submarino:** pedir que la cámara siga al sujeto `underwater`.

### Parámetros técnicos
- **Slider Creativity/Relevance:** subirlo para que la IA siga el prompt más fielmente.
- **Color consistency:** usar `muted colors` para evitar saturación abrupta y cambios cromáticos no deseados.
- **Contexto escénico:** siempre especificar *hacia dónde* se mueve la cámara y *qué revela*. Ej: `camera zooms in on the woman's eyes` o `camera pulls back to reveal her in a dress`.

### Combinación de movimientos
- Ejemplo: `camera pull back and then tilt up to reveal what's in the sky` (retroceso + tilt up).
- Ejemplo con personaje: `he turns around and raises a pistol, camera zooms in on his eyes` (obliga al personaje a girarse completamente).

## Reglas para el director de fotografía IA

1. **Usa `fixed lens`** cuando necesites un plano completamente estático; si falla, repite el prompt hasta 3 veces.
2. **Usa `rotating lens`** para arcos alrededor del sujeto; es el método más confiable en Kling 2.5.
3. **Usa `muted colors`** cuando el prompt incluya luces de neón, colores vibrantes o escenas nocturnas para evitar saturación inconsistente.
4. **Siempre añade contexto escénico** al movimiento: no digas solo "zoom in", di "zoom in on her eyes" o "pull back to reveal the city".
5. **Para no alucinar en video IA:** cuanto más te alejes del contenido de la imagen original, menos consistente será el video. Limita los movimientos largos o combínalos con `muted colors` para estabilizar.
6. **Usa `fast`** cuando el movimiento por defecto sea demasiado lento para tu ritmo narrativo.
7. **Para que un personaje se gire completamente**, fuerza el punto de atención: `camera zooms in on his eyes` obliga al personaje a girar hacia cámara.

## Errores comunes que evita o menciona

- **Color saturation abrupta:** ocurre al final del clip cuando la IA cambia la paleta de colores sin aviso. Se soluciona añadiendo `muted colors` al prompt.
- **Movimiento residual en planos fijos:** a veces `fixed lens` genera micro-movimiento al final. Solución: regenerar el prompt hasta que funcione.
- **Personaje no gira completamente:** si pides "se da la vuelta y levanta un arma" pero el personaje sigue de espaldas, falta contexto. Añade `camera zooms in on his eyes` para forzar el giro completo.
- **Inconsistencia al alejarse mucho de la imagen original:** movimientos largos (grúa, bird's eye view) pierden fidelidad visual. Mitigar con `muted colors` y prompts de contexto.