# Higgsfield AI Ultimate Tutorial — EVERY Feature Explained & Reviewed
**Fuente:** hf_tutorial | https://youtu.be/l-rFCkjJzu8

## Que ensena sobre Higgsfield (2-3 lineas)
Higgsfield agrega multiples modelos de IA (Seedance 2.0, Kling 3.0, Cinema Studio 3.5, GPT Image 2, Nana Banana Pro) en una sola plataforma con generacion de imagen, video y audio. La mayoria de las 40+ funciones son redundantes o estan desactualizadas; solo 5-10 valen la pena. El rendimiento depende del modelo subyacente, no de Higgsfield.

## Tips y flujos accionables

### Flujo principal: Crear video con personaje consistente
1. **Entrena personaje en Soul ID Character**: sube 20+ fotos de la misma persona, espera ~5 min a que se genere.
2. **Crea imagen base con cinematic cameras**: usa el preset `Grand Format 70mm Film`, lente `Vintage Prime`, focal length `35mm`, aperture `f1.4`. Prompt ejemplo: *"Create an image of @me sunbathing at the surface of Mars with some soft drinks"*.
3. **Genera video en Cinema Studio**: arrastra la imagen como start frame, selecciona modelo `Cinema Studio 3.5`, movement type `Zoom Out`, speed ramp `Slow-mo`, duration `12s` (maximo), aspect ratio `Cinematic`, quality `720p`, genre `Western`, audio ON, single shot.
4. **Para clips mas largos**: usa el supercomputer con instruccion *"make a cinematic clip of this man walking on the moon planting a flag and smiling"* — pero espera resultados mediocres.

### Flujo: UGC Advertisement desde URL de producto
1. Ve a **Marketing Studio** → pega URL del producto (ej: bloom.com).
2. Selecciona estilo `User Generated Content`, duration `12-15s`, quality `720p`.
3. Elige avatar (ej: Jaden) o ninguno.
4. Prompt: *"a student who has just installed this app, just landed abroad, friend is filming them while they are happy surfing the internet for free"*.
5. Aspect ratio `Mobile` para redes sociales.
6. **Resultado**: usable con edicion minima, pero la voz suena robotica y el actor parece modelo.

### Flujo: Motion Control con Kling 3.0
1. Ve a **Video tab** → selecciona `Kling 3.0 Motion Control`.
2. Elige un motion preset de la libreria (ej: actor caminando).
3. Sube una imagen como character frame.
4. Modelo: `Kling 3.0 Motion Control` — permite duracion de hasta 17s sin limite de 15s.
5. Genera: copia los movimientos del preset en la imagen subida.

### Flujo: Lip Sync Studio
1. Crea imagen con `Create Image` → modelo `Nana Banana Pro`, prompt: *"a man sitting in a studio looking at a camera talking head setup"*, aspect ratio `16:9`.
2. Descarga la imagen.
3. Ve a **Lip Sync Studio** → sube la imagen.
4. Genera speech: escribe *"Welcome to the Higgsfield AI tutorial. I'll cover absolutely everything in this one."*
5. Selecciona voice actor (ej: Mar).
6. Prompt para video: *"a man calmly welcomes his viewers to a new video"*.
7. Modelo: `Infinite Talk`.
8. **Tip**: usa video upscaler despues para mejorar calidad.

### Flujo: Canvas para automatizacion
1. Crea nuevo canvas → right click → añade nodo `Prompt` con *"create an image of a cat swimming"*.
2. Conecta a nodo `Image Generation` → modelo `GPT Image 2`, aspect ratio `9:16`, quality `Medium`.
3. Conecta imagen a nodo `Video Generation` → modelo `Kling 3.0`, prompt *"cat swimming"*, duration `5s`.
4. **Tip**: clona workflows de la descripcion del video original para UGC de productos.

### Parametros clave
- **Seedance 2.0**: mejor modelo general para video, max 15s, 135 credits en Full HD.
- **Cinema Studio 3.5**: max 12s, 24 credits, requiere start frame.
- **Kling 3.0 Motion Control**: hasta 17s, excelente para copiar movimientos.
- **Calidad**: usa 720p para ahorrar credits; upscala despues con Topaz Video.
- **Creditos**: plan Ultra ($220/mes) da 6000 credits; 1 hora de video Cinema Studio cuesta ~$1000-2000.

## Reglas para el erudito de Higgsfield

- **Para video cinematografico**: usa `Cinema Studio 3.5` con start frame, movement `Zoom Out`, speed ramp `Slow-mo`, genre `Western`, single shot.
- **Para UGC ads**: usa `Marketing Studio` con URL de producto, estilo `User Generated Content`, avatar realista, duration 12-15s.
- **Para motion control**: usa `Kling 3.0 Motion Control` con preset de movimiento y character frame.
- **Para personaje consistente**: entrena en `Soul ID Character` con 20+ fotos, luego usa `@me` en prompts.
- **Para upscaling**: usa `Topaz Labs` model, 2x o 4x para imagen, `Topaz Video` para video.
- **Para lip sync**: usa `Lip Sync Studio` con modelo `Infinite Talk`, speech generado con voice actor Mar.
- **Para explicaciones animadas**: usa `Web Motion` con preset `Infographics`, template `Corporate`, font `Space Mono Prism`.
- **Para traducir video con lip sync**: usa `Translate` en Audio tab, selecciona idioma (ej: French).
- **Para cambiar voz en video**: usa `Change Voice` en Audio tab, selecciona voz femenina en actor masculino.
- **Para photo dump**: usa `Photo Dump` con preset estilo (ej: vintage), personaje de Soul ID, genera 15 imagenes.
- **Para mood board**: usa `Mood Board` con 20-30 fotos similares de estilo, o selecciona preset existente (ej: Y2K Street).

## Errores comunes / que evitar

- **No uses Supercomputer para resultados profesionales**: falla en tareas basicas, produce audio robotico, inconsistencias de voz entre clips, movimientos antinaturales. Mejor usa Create Video directamente.
- **No uses MCP/CLI esperando mejor calidad**: solo ejecuta Higgsfield fuera de la plataforma; el rendimiento es identico. Gasta credits rapidamente en automations.
- **No uses Sora 2 Trends**: completamente desactualizado, resultados ridiculos (discos que vuelven al punto de partida).
- **No uses UGC Factory**: modelos VEO desactualizados; usa Marketing Studio o Canvas con Seedance 2.0.
- **No uses Face Swap / Character Swap**: resultados terribles (parecen IA de hace 4 años), mejor usa Create Image con imagenes de referencia.
- **No uses Draw to Video**: aparentemente roto, no genera nada util.
- **No uses Sketch to Video**: extremadamente lento, resultados no garantizados.
- **No uses Mixed Media para clips cortos**: cuesta ~$10 por 5 segundos de resultado aleatorio.
- **No confies en Inpainting**: falla incluso en tareas simples como eliminar un objeto; mejor regenera la imagen completa.
- **No subas imagenes demasiado grandes a Cinema Studio**: el AI las rechaza; toma screenshot y usa esa version.
- **No esperes que prompts detallados siempre mejoren resultados**: a veces el AI se confunde con demasiada informacion.
- **No uses modelos por debajo de Seedance 2.0, Kling 3.0, o Cinema Studio 3.5**: el resto estan desactualizados o son inferiores.
- **No edites videos directamente en Higgsfield**: el editor es basico y produce resultados antinaturales (olas raras, gatos deformes). Mejor regenera el video completo.
- **No uses el plan Ultra para proyectos largos**: 1 hora de video Cinema Studio cuesta $1000-2000; 1 hora con Seedance 2.0 Full HD cuesta $10,000-15,000.