# ALL Camera Movement Prompts in AI Filmmaking (38 Cinematic Moves)
**Fuente:** hf_presets | https://youtu.be/zQI_pWw9qWo

## Que ensena sobre Higgsfield (2-3 lineas)
Higgsfield (accesible via magicour.ai) permite aplicar 38 movimientos de cámara cinematográficos usando modelos como Cinema Studio, Seedance y Kling. La clave está en separar en el prompt: cámara, sujeto y entorno para evitar alucinaciones. Se usa tanto image-to-video como text-to-video, y la duración del video (ej. 5 segundos) afecta la completitud del movimiento.

## Tips y flujos accionables

### Estructura de prompt recomendada
- **Separar explícitamente:** `[camera movement], [subject description], [environment]`
- **Ejemplo del video:** Para dolly in/out, el creador separa: "slow dolly in, woman standing, studio background"
- **Para vertigo effect (zolly):** Usar prompt exacto: "vertigo effect, camera moves backward while lens zooms in"

### Modelos y presets mencionados
- **Seedance:** Usado para ejemplos de zoom óptico y snap zoom (calidad "no out of this world" segun el creador)
- **C Dance (posiblemente Cinema Studio):** Usado para over-the-shoulder (OTS) shot
- **Kling:** No se menciona explícitamente en ejemplos, pero disponible en magicour.ai
- **Magicour.ai:** Plataforma donde se ejecutaron todas las pruebas

### Parametros clave
- **Duracion del video:** 5 segundos (mencionado para spin 360 que no completó el circulo por tiempo limitado)
- **Iteracion:** "AI filmmaking is about iteration. You test, regenerate, refine"

### Flujo de trabajo recomendado
1. Elegir modelo (Seedance para efectos opticos simples, C Dance para OTS)
2. Definir prompt con estructura: `[movimiento], [sujeto], [entorno]`
3. Para movimientos complejos (drone orbit, vertigo), regenerar varias veces hasta obtener resultado deseado
4. Ajustar duración si el movimiento no se completa

### Trucos para look cinematografico
- **Para rack focus:** Prompt: "rack focus foreground to background, subject sharp then blurry, background blurry then sharp"
- **Para handheld:** Prompt: "handheld documentary style, slight camera shake"
- **Para whip pan:** Prompt: "whip pan left, extreme directional motion blur"
- **Para Dutch angle:** Prompt: "Dutch angle, camera tilted on Z axis"

## Reglas para el erudito de Higgsfield

- **Para dolly in/out:** usa prompt `slow dolly in` o `fast dolly in (rush)` con separacion sujeto/entorno
- **Para vertigo effect:** usa prompt `vertigo effect, camera moves backward while lens zooms in`
- **Para over-the-shoulder:** usa modelo C Dance con prompt `over-the-shoulder OTS shot, foreground subject blurred, main subject in focus`
- **Para fish-eye:** usa prompt `extreme wide-angle distortion, fish-eye lens, peephole view`
- **Para reveal from behind:** usa prompt `camera starts blocked by foreground object, slides laterally to reveal subject`
- **Para true shot (fly-through):** usa prompt `camera flies through aperture/window towards subject face`
- **Para reveal from blur:** usa prompt `video starts completely out of focus, lens slowly pulls focus until subject razor sharp`
- **Para rack focus:** usa prompt `rack focus foreground to background, subject sharp then blurry, background blurry then sharp`
- **Para tilt up/down:** usa prompt `tilt up from legs to eyes` o `tilt down from head to feet`
- **Para truck left/right:** usa prompt `camera truck left` o `camera truck right`
- **Para orbit 180:** usa prompt `orbit 180, half circle around subject`
- **Para fast 360 orbit (spin):** usa prompt `fast 360 orbit, spin` con duracion >=5s
- **Para slow cinematic arc:** usa prompt `slow cinematic arc, gentle wide curve around subject`
- **Para pedestal up/down:** usa prompt `pedestal up from waist to eye level` o `pedestal down`
- **Para crane up/down:** usa prompt `crane up, high angle reveal` o `crane down, landing`
- **Para optical zoom in/out:** usa modelo Seedance con prompt `smooth optical zoom in` o `smooth optical zoom out`
- **Para snap zoom:** usa prompt `sudden extremely rapid zoom into subject's eyes, crash zoom`
- **Para drone flyover:** usa prompt `drone flyover, high altitude over subject to landscape`
- **Para epic drone reveal:** usa prompt `pedestal plus tilt, epic drone reveal`
- **Para large scale drone orbit:** usa prompt `massive sweeping aerial circle around subject, immense scale`
- **Para top down:** usa prompt `God's eye view, top down drone shot, directly overhead pointing straight down, slowly twisting`
- **Para FPV drone dive:** usa prompt `FPV drone, aggressive dive towards subject`
- **Para handheld:** usa prompt `handheld documentary style, slight camera shake`
- **Para whip pan:** usa prompt `whip pan left/right, extreme directional motion blur`
- **Para Dutch angle:** usa prompt `Dutch angle, camera permanently tilted on Z axis`
- **Para leading shot:** usa prompt `subject walks forward toward camera, camera moves backward at same speed`
- **Para following shot:** usa prompt `subject walks away from camera, camera follows behind`
- **Para side tracking:** usa prompt `subject walks left to right, camera tracks alongside, parallel movement`
- **Para POV walk:** usa prompt `first-person walk, camera moves forward with slight bobbing and swaying, approaching subject`

## Errores comunes / que evitar

- **No separar camara/sujeto/entorno en el prompt:** causa que el modelo "misunderstand you and create something completely different"
- **Usar duracion muy corta para movimientos amplios:** el spin 360 no se completo en 5 segundos; aumentar duracion si el movimiento requiere mas tiempo
- **Esperar resultados perfectos en el primer intento:** "not every generation will be perfect and that's completely normal"; iterar y regenerar es parte del flujo
- **Usar Seedance para tomas complejas como OTS:** Seedance da calidad "not out of this world"; usar C Dance para tomas con profundidad de campo
- **No ajustar prompt para movimientos que requieren precision:** para vertigo effect o rack focus, el prompt debe ser muy especifico o el modelo alucinara
- **Ignorar la direccion del movimiento:** en whip pan, especificar "left" o "right"; en truck, especificar direccion
- **Usar el mismo modelo para todos los movimientos:** cada modelo (Seedance, C Dance, Kling) tiene fortalezas distintas; elegir segun el efecto deseado