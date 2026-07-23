# How Do You Get Professional Camera Movements in Higgsfield AI?
**Fuente:** hf_presets | https://youtu.be/s1VcLR9ahgQ

## Que ensena sobre Higgsfield (2-3 lineas)
Enseña a usar **Cinema Studio** dentro de Higgsfield para aplicar presets de movimiento de cámara profesional (estático, handheld, zoom, cámara sigue, órbita, 360 roll, jib up, tilt up) sobre una imagen base. Muestra que **sin prompt** la IA alucina acciones (ej: disparar un arma), pero con un **prompt descriptivo de acción** (sin describir la imagen) se logra control narrativo. También cubre **speed ramp** (ralentizar/acelerar en timeline) y **sonido ambiental** generado por IA.

## Tips y flujos accionables

### Acceso a Cinema Studio
1. Inicia sesión en Higgsfield.
2. En la página principal, arriba a la izquierda, haz clic en **Video** → **Cinema Studio video**.
3. Se abre el **Director Panel**.

### Configuración del Director Panel (valores exactos usados)
- **Input:** Image (no video)
- **Shot type:** Single shot
- **Aspect ratio:** 16:9
- **Quality:** 1080p
- **Genre:** General (excepto en test final donde usaron Horror)
- **Audio:** ON
- **Batch size:** 1
- **Duration:** 6 segundos (más duración = más créditos)
- **Speed ramp:** Ajustable en timeline (arrastrar puntos para ralentizar/acelerar)

### Presets de cámara probados (sin prompt vs con prompt)
| Preset | Prompt usado | Resultado clave |
|--------|-------------|-----------------|
| **Static** | Sin prompt | IA alucina: la chica dispara el arma sola |
| **Handheld** | *"The girl runs behind a jagged sandstone pillar for cover as blue plasma bolts impact the rock beside her, sending sparks and dust flying. Her hand is firmly on the grip of her holster, eyes narrowed in intense focus as she prepares to return fire against an unseen enemy in the vast, hazy desert."* | Movimiento tembloroso realista + acción controlada |
| **Zoom in** | Sin prompt (para probar detalle al cambiar distancia focal) | Mantiene detalle en el rostro |
| **Camera follows** | *"She slowly turns around to face away from the camera, then begins to run with determination off into the distance."* | Tracking lateral perfecto, fondo se mueve con ella |
| **Orbit around** | Sin prompt | Efecto circular alrededor del sujeto |
| **360 roll** | Sin prompt | Muy cinematográfico, especialmente los planos finales |
| **Jib up** | Sin prompt | Cámara sube verticalmente |
| **Tilt up** | Sin prompt | Inclinación hacia arriba |
| **Zoom** (con prompt) | Prompt para sonrisa + género Horror | Zoom a close-up + sonido de terror ambiental |

### Reglas de oro para prompts en Cinema Studio
- **NO describas lo que ya está en la imagen.** Solo describe la **acción** que quieres.
- Ejemplo correcto: *"She slowly turns around... then begins to run off into the distance"* (no mencionar su ropa, arma, etc.)
- Para cambios faciales (sonrisa), usa zoom + prompt específico de expresión.

### Speed ramp (cómo se usó)
- En el timeline del video, ajustaron manualmente los puntos de velocidad.
- Efecto: ralentiza en un momento clave (ej: justo antes de un disparo) y luego acelera.

### Sonido generado por IA
- Se activa con el toggle **Audio** en ON.
- Resultado: hit or miss, pero en el video funcionó bien (sonidos de disparo, pasos, ambiente de horror).

## Reglas para el erudito de Higgsfield

- **Para control narrativo:** usa **siempre un prompt descriptivo de acción** + un preset de cámara. Sin prompt, la IA alucina.
- **Para que no alucine acciones no deseadas:** en el prompt, especifica exactamente lo que quieres que ocurra (ej: "she runs behind a pillar for cover" evita que dispare sola).
- **Para look cinematográfico:** usa **360 roll** o **Camera follows** con speed ramp en el timeline.
- **Para cambios de expresión facial:** usa preset **Zoom** + prompt que describa la nueva expresión (ej: "she smiles").
- **Para atmósfera:** activa **Audio** y prueba diferentes **géneros** (General, Horror, etc.) para cambiar el tono del sonido ambiental.
- **Para ahorrar créditos:** mantén **Duration** en 6 segundos. Más duración = más créditos.
- **Para multi-toma:** cambia **Shot type** a Multi-shot (no explorado en el video, pero disponible).

## Errores comunes / que evitar

- **No usar prompt:** la IA inventa acciones basadas en objetos en la imagen (ej: si hay un arma, dispara sola).
- **Describir la imagen en el prompt:** solo describe la acción, no lo que ya se ve.
- **Ignorar el speed ramp:** es clave para dar énfasis dramático en momentos específicos.
- **Esperar sonido perfecto siempre:** el audio generado es "hit or miss", no confiable al 100%.
- **Usar duración muy larga sin necesidad:** cada segundo extra gasta más créditos sin mejorar calidad.
- **No probar géneros:** cambiar el género (ej: Horror) transforma tanto el estilo visual como el sonido ambiental.