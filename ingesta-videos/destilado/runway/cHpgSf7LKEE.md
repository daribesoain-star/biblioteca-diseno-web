# EVERY Camera Movement Prompt in Kling 2.5 (in 6 Minutes)
**Fuente:** runway | https://youtu.be/cHpgSf7LKEE

## Que ensena
Guía completa de movimientos de cámara para video IA en Kling 2.5, desde planos fijos hasta combinaciones complejas (grúa, subacuático, FPV). Explica cómo usar prompts específicos de cinematografía para controlar la cámara en IA generativa, incluyendo la solución al problema de saturación de color y la importancia del contexto narrativo en el prompt.

## Lecciones accionables

### Movimientos básicos (prompts VERBATIM)
- **Plano fijo:** `fixed lens` — funciona la mayoría de veces; si hay micro-movimiento al final, reintentar.
- **Zoom in:** `zoom in` + opcional `fast` para acelerar.
- **Zoom out:** `camera pullback` — aleja la cámara del sujeto.
- **Arco / Rotación alrededor del sujeto:** `rotating lens` — muy consistente, casi siempre funciona.
- **Pan y tilt:** `pan` (horizontal) / `tilt up` / `tilt down`.
- **Primera persona / drone:** `FPV` — para vuelos tipo drone sobre paisajes.

### Movimientos avanzados
- **Vista aérea / bird's eye:** `Fly Above` + `bird's eye view`.
- **Grúa (crane shot):** combinar `camera pullback` + `tilt up` para revelar el cielo, o empezar a nivel de ojos y subir overhead.
- **Subacuático:** `follow` + `underwater` — el personaje y escena se mantienen consistentes.
- **Seguimiento lateral:** `tracking shot` — cámara sigue al sujeto en movimiento.
- **Seguimiento por detrás:** `follow` — cuando el sujeto camina de espaldas.

### Combinaciones complejas (prompts de ejemplo)
- `rotating lens` + `panicking expression` + `camera pullback` + `reveal her holding up a weapon`
- `camera zooms in on the woman's eyes`
- `camera pulls back to reveal her in a dress`
- `he turns around and raises a pistol` + `camera zooms in` (falla sin contexto)
- `camera zooms in on his eyes` + `he turns around and raises a pistol` (corrige el error)
- `tilt up` + `look at the city through a glass ceiling`
- `camera pull back` + `tilt up` + `reveal what's in the sky`
- `overhead` + `shows her standing on a geometric pattern`

### Parámetros técnicos
- **Modo:** Image to Video en Kling (subir imagen de referencia + prompt).
- **Slider:** `creativity and relevance` subido — hace que la IA siga los prompts más fielmente.
- **Control de color:** usar `muted colors` para evitar saturación y cambios cromáticos abruptos; eliminar palabras como `neon` si causan inestabilidad de color.

## Reglas para el director de fotografía IA

- **Usa `fixed lens` cuando** necesites un plano completamente estático; si falla, reintenta 2-3 veces.
- **Usa `fast` cuando** el movimiento por defecto sea demasiado lento para tu ritmo narrativo.
- **Usa `rotating lens` para** arcos alrededor del personaje; es el método más fiable para ese movimiento.
- **Usa `muted colors` siempre que** la IA añada saturación o cambios de color no deseados; especialmente en tomas nocturnas o con luces de neón.
- **Añade contexto narrativo al prompt** para evitar que la IA malinterprete la dirección: en lugar de solo "zoom in", di "zoom in on his eyes" para forzar que el personaje gire hacia cámara.
- **Piensa en el punto de enfoque del movimiento:** no pidas solo "camera pullback", pide "camera pulls back to reveal her in a dress" — el "revelar" da dirección al movimiento.
- **Limita la distancia del movimiento:** cuanto más te alejes del contenido de la imagen original, menos consistente será el video.
- **Para no alucinar en video IA:** mantén los movimientos dentro del contexto de la escena; no pidas un giro de 180° sin especificar qué está mirando el personaje.

## Errores comunes que evita o menciona

1. **Color saturation (saturación de color):** la IA tiende a volver los colores más vibrantes al final del clip. Solución: añadir `muted colors` al prompt.
2. **Movimiento sin contexto:** pedir "zoom in" sin especificar en qué provoca que el personaje no gire hacia cámara. Solución: añadir `zoom in on his eyes` o `zoom in on her face`.
3. **Palabras que desestabilizan el color:** términos como `neon` pueden causar cambios cromáticos bruscos. Solución: eliminarlos o compensar con `muted colors`.
4. **Micro-movimiento en planos fijos:** `fixed lens` a veces deja un leve movimiento al final. Solución: reintentar el prompt hasta que funcione.
5. **Inconsistencia al alejarse demasiado:** movimientos largos (pullback + tilt up) pierden fidelidad visual. Solución: mantener el movimiento dentro del encuadre original.