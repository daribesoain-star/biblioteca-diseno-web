# Master 97% of Higgsfield in 12 Minutes (Full Guide)
**Fuente:** hf_tutorial | https://youtu.be/BtqWM3wQLSo

## Que ensena sobre Higgsfield (2-3 lineas)

Higgsfield tiene 6 herramientas principales: GPT Image 2 (imagen base), Seedance 2.0 (video), Marketing Studio (anuncios), Audio (cambio de voz), Cinema Studio 3.5 (cine consistente) y Supercomputer (agente IA autonomo). El flujo clave es: crear imagen base → animar con Seedance → refinar con herramientas especializadas. La consistencia de personajes se logra guardando assets (personajes, locaciones) y llamandolos por handles.

## Tips y flujos accionables

**Creacion de imagen base (GPT Image 2):**
- Ruta: Home → Image → GPT Image 2
- Parametros exactos: Resolution = 2K, Quality = High, Aspect Ratio = 16:9
- Razón: La imagen final sera 1080p 16:9, generar mas grande evita cropping/stretching
- Prompt ejemplo (verbatim): *"A skier tearing down a mountain, an avalanche right behind him, spray coming off the skis, sunlight exactly where specified"*
- Tip critico: No describas solo el sujeto, describe TODO el shot (que hace, que hay detras, de donde viene la luz)

**Animacion de imagen a video (Seedance 2.0):**
- Ruta: Video Gen → Upload Media → Image Generation → Check Eligibility (aprueba el frame inicial)
- Parametros exactos: Duration = 15 segundos, Resolution = 1080p, Aspect Ratio = 16:9, Audio = ON
- Prompt ejemplo (verbatim, con numeracion de shots): *"1. The skier carving with the avalanche closing in. 2. The drop off the ledge. 3. The jump over the crevasse. 4. The escape at the end. Everything runs at real speed."*
- Truco clave: Agregar "Everything runs at real speed" evita que el modelo ponga camara lenta en escenas de accion
- Duracion: 15 segundos = ~3-4 segundos por shot (duracion de cortes de accion reales)

**Marketing Studio - Anuncio con Avatar (UGC):**
- Ruta: Marketing Studio → Avatar → Create Avatar
- Prompt para avatar realista (verbatim): *"A woman in her late 20s with stray hairs, visible pores, slightly uneven skin. Do not add plastic skin."*
- Guardar avatar con nombre (ej: Tessa), se invoca con [Tessa] entre brackets
- Configuracion anuncio: Avatar = [Tessa], Product = pegar link Amazon, Style = UGC, Setting = nature, Duration = 11 segundos, Aspect Ratio = 9:16, Resolution = 1080p
- Prompt de anuncio (solo handles y dialogo): *"[Tessa] This little flask brews my tea right inside. Drop the leaves in the infuser, add hot water, and it stays hot for hours."*
- Duracion exacta: 11 segundos = tiempo que toma decir el dialogo (evita silencios que delatan IA)

**Marketing Studio - Anuncio solo producto (Hypermotion):**
- Style = hypermotion, Duration = 15 segundos, 9:16, 1080p
- Prompt: solo el handle del producto (ej: [product_handle]), nada mas
- Resultado: video motion design con angulos dinamicos y sonido, sin escribir ni una frase

**Cambio de voz en video terminado:**
- Ruta: Audio → Change Voice
- Subir video UGC ya generado, seleccionar voz de libreria (ej: Gia, Chloe)
- Tip: Cambiar voz sin regenerar el video. Usar mismo video con diferentes voces para A/B testing
- Tip avanzado: Subir tu propia muestra de voz para que los anuncios hablen con tu voz sin filmar

**Cinema Studio 3.5 - Creacion de personaje consistente:**
- Ruta: Cinema Studio 3.5 → Image → AI Cast → Build Your Cast
- NO usar texto, usar settings: Genre = action, Budget = 200 million, Era = 2020s, Archetype = hero
- Construir: Female, Mixed, 30 years old, Athletic build, Tall, Details = facial scar, Outfit = workwear
- Tip: Agregar UN detalle distintivo (cicatriz, lunar, etc) ayuda al modelo a mantener la cara consistente entre shots
- Resultado: Character sheet con front view, back view, close-up (3 vistas = consistencia cuando la camara se mueve)

**Cinema Studio 3.5 - Creacion de locacion:**
- Ruta: Image → Cinematic Locations → pegar prompt de locacion
- Guardar: Upload Media → Elements → New Element → subir imagen → poner nombre → categoria → save
- Mismo flujo para props y set pieces

**Cinema Studio 3.5 - Video con assets guardados:**
- Ruta: Video tab → cargar personaje guardado y locacion guardada
- Emotion picker: icono de sonrisa debajo de la referencia de Quinn → seleccionar "vigilance" (define como se comporta antes de que pase nada)
- Genre = action, Duration = 15 segundos, 1080p, 16:9, Audio = ON
- Prompt (solo coreografia, sin describir personaje ni locacion): *"[Quinn] walks down the corridor as four men close in. She throws the first one into a container wall and drops the next one with an elbow. When the last two rush her together, one gets swept off his feet and the other ends up pinned against a container."*
- Resultado: 15 segundos de pelea, cara, outfit, cicatriz y locacion consistentes en todos los cortes

**Supercomputer (Agente IA autonomo):**
- Ruta: Higgsfield homepage → Supercomputer
- Configuracion: "Ask before generation" para aprobar cada paso (no gasta creditos en lo que no has visto)
- Prompt ejemplo (verbatim, sin settings ni shot list): *"A fight scene between two characters in a container yard. Build the elements and a storyboard first. 30 seconds, 16:9, audio on."*
- Orden explicito: "elements first, then storyboard, then video" = mismo orden que Cinema Studio
- Flujo: Agente muestra 3 opciones de personaje → eliges 1 → 3 opciones de segundo personaje → eliges 1 → 3 opciones de locacion → eliges 1 → agente escribe su propio storyboard
- Post-produccion: Los 30 segundos salen como 2 videos, descargar y unir en CapCut (unico paso fuera de la plataforma)

## Reglas para el erudito de Higgsfield

- Para crear imagen base que se pueda animar: usa GPT Image 2 con Resolution=2K, Quality=High, Aspect Ratio=16:9, describe TODO el shot (sujeto + fondo + luz)
- Para animar imagen a video con cortes y sonido: usa Seedance 2.0 con Duration=15s, 1080p, 16:9, Audio=ON, escribe prompt como 4 shots numerados, agrega "Everything runs at real speed"
- Para anuncio UGC con presentador realista: usa Marketing Studio → Avatar, prompt con imperfecciones (stray hairs, visible pores, uneven skin), guarda con nombre, invoca con [nombre], duracion = tiempo exacto del dialogo
- Para anuncio solo producto sin texto: usa Marketing Studio → Style=hypermotion, Duration=15s, prompt solo con handle del producto
- Para cambiar voz sin regenerar video: usa Audio → Change Voice, selecciona de libreria o sube tu propia muestra
- Para personaje consistente entre shots: usa Cinema Studio 3.5 → AI Cast, construye con settings (no texto), agrega UN detalle distintivo (cicatriz, lunar), guarda las 3 vistas
- Para locacion reutilizable: crea con Cinematic Locations, guarda como elemento en Upload Media → Elements
- Para video con assets: carga personaje y locacion guardados, usa emotion picker, prompt solo con coreografia (no describas assets, usa handles)
- Para video completo sin hacer nada: usa Supercomputer con "Ask before generation", prompt con orden explicito "elements first, then storyboard, then video", aprueba 3 opciones por paso

## Errores comunes / que evitar

- NO generar imagen en resolucion menor a 2K si el video final es 1080p (causa cropping o stretching)
- NO describir solo al sujeto en la imagen base (el modelo ignora fondo y luz, la imagen no sera animable)
- NO olvidar "Everything runs at real speed" en prompts de accion (el modelo pone camara lenta por defecto)
- NO poner duracion mayor al dialogo en anuncios UGC (los silencios al final delatan que es IA)
- NO usar piel perfecta en avatares (el #1 giveaway de IA son las imperfecciones faltantes)
- NO describir al personaje o locacion en el prompt de Cinema Studio si ya estan cargados como handles (causa inconsistencias)
- NO generar en Supercomputer sin "Ask before generation" (gasta creditos en resultados que no has visto)
- NO esperar que Supercomputer entregue un solo video de 30 segundos (viene en 2 partes, hay que unirlas en CapCut)