# Runway AI - Tutorial for Beginners in 17 MINUTES !  [ FULL GUIDE ]
**Fuente:** runway | https://youtu.be/FqYRkl12ON8

## Que ensena (2-3 lineas)
Este tutorial cubre el flujo completo de generación de video con Runway AI, desde la interfaz básica hasta técnicas avanzadas como keyframes, camera control, Act One/Two, y el uso de referencias múltiples con nombres (@). Enseña a estructurar prompts de video con descripción de sujeto, movimiento, cámara, escenario y estilo, y a elegir entre modelos Gen-4, Gen-3 Alpha y Turbo según la complejidad del proyecto.

## Lecciones accionables

- **Estructura de prompt para video (orden recomendado):** sujeto principal + cómo se mueve + movimiento de cámara + escenario/fondo + estilo. Ejemplo: *"a blonde horse running with powerful movement, camera tracks the horse while it runs, the desert remains static, only sand dust rises behind, cinematic, realistic"*
- **Modelos y cuándo usarlos:**
  - **Gen-4 Turbo:** ideal para live action, VFX, motion clips, animar imágenes simples. Requiere imagen de referencia. Output 720p a 24fps.
  - **Gen-4 (pago):** máxima consistencia de personajes, mejor alineación con imagen de referencia. Usar cuando el sujeto tiene características complejas (ej: piel de jaguar).
  - **Gen-3 Alpha Turbo:** más barato en créditos, permite hasta 10 segundos de video. Incluye Camera Control (pan, tilt). Menos preciso que Gen-4.
  - **Gen-3 Alpha (pago):** permite generar solo con texto (sin imagen), mayor precisión que Turbo.
- **Uso de referencias con @:** subir hasta 3 imágenes, nombrarlas (ej: "Lion", "JaguarPattern", "Vulcan"), y en el prompt usar `@Nombre` para referenciar cada una. Ejemplo: *"Select @Lion as main subject, describe its skin by adding @JaguarPattern as skin, define environment using @Vulcan"*
- **Keyframes:** definir primera imagen (keyframe 1), opcionalmente central y final. Mantener keyframes con contenido similar para evitar saltos bruscos. El Camera Control aplica a todo el video, no a keyframes individuales.
- **Camera Control (Gen-3 Alpha Turbo):** activar en settings, efectos como panning (paneo horizontal) o tilting (inclinación vertical). También se puede describir movimiento de cámara directamente en el text prompt.
- **Act One (Gen-3 Alpha Turbo):** transferir gestos faciales de un video de referencia a un personaje (imagen o video). Próximo a deprecarse.
- **Act Two (Gen-4):** transferir gestos de cara, manos y cuerpo completo desde un video de referencia. Configurar aspect ratio, expressiveness, y si transferir gestos.
- **Lip Sync:** en Generative Audio > Lip Sync Video. Subir video del personaje (funciona mejor con rostros humanos), subir audio o escribir texto, elegir voz. Output: *"Welcome to this new world of AI."*
- **Sketch tool:** dibujar sobre imagen de referencia para guiar modificaciones. Usar colores contrastantes (ej: rosa) para indicar cambios. Dibujar flechas + etiqueta para claridad. Export Sketch y generar con o sin prompt de apoyo.
- **Expand feature:** cambiar aspect ratio de cualquier video (ej: de portrait a landscape).
- **Upscale:** imágenes hasta 4K; videos siempre en 720p nativo, se puede upscalear a 4K gastando 10 créditos.
- **Aspect ratios disponibles:** configurar antes de generar. Para video, duración máxima 5s (Gen-4 Turbo) o 10s (Gen-3 Alpha Turbo).
- **Aleph (edición con IA):** en Gen-4, usar Edit with Aleph para modificar video existente: cambiar ángulo de cámara, ajustar iluminación, clima, añadir/remover detalles. Instrucciones simples: Add, Remove, Change, Replace. Ejemplo: *"replace the horse with a fire horse"*

## Reglas para el director de fotografia IA

- **Usa prompts directos, claros, sin bucles ni frases negativas.** Sé específico y directo para guiar a la IA.
- **Para no alucinar en video IA, usa imagen de referencia siempre que sea posible**, especialmente con Gen-4 Turbo que la requiere. Sin referencia, el texto debe describir completamente el output.
- **Cuando uses keyframes, mantenlos visualmente similares** para evitar que la generación salte al último keyframe demasiado rápido.
- **Para consistencia de personajes complejos**, usa Gen-4 (no Turbo) y referencias con nombres (@). Si el resultado no coincide, añade más detalle desde las referencias usando Generate Prompt.
- **Describe el movimiento de cámara tanto en el text prompt como en Camera Control** para mayor control. El Camera Control aplica a todo el video, no a keyframes individuales.
- **Para editar videos existentes con Aleph**, usa instrucciones simples y directas (Add, Remove, Change, Replace). Puedes añadir imagen de referencia para guiar la edición más precisamente.
- **Al usar Sketch para crear planos de cámara**, dibuja formas simples y usa colores que contrasten con la imagen original.
- **Para lip sync, usa principalmente rostros humanos** ya que la herramienta funciona mejor con ellos.

## Errores comunes que evita o menciona

- **No usar prompts complejos con Gen-3 Alpha Turbo** si se espera alta precisión; el tutorial muestra un ejemplo donde un prompt complejo no funcionó y recomienda cambiar a Gen-4.
- **No asumir que la resolución del video sube con la imagen de referencia:** los videos siempre se generan en 720p aunque uses una imagen 4K como referencia.
- **No olvidar que Gen-4 Turbo requiere imagen de referencia obligatoriamente**; no se puede generar solo con texto.
- **No usar keyframes muy diferentes entre sí** porque la transición será brusca y saltará al último keyframe demasiado rápido.
- **No confundir Act One (solo gestos faciales, Gen-3, próximo a deprecarse) con Act Two (cara, manos y cuerpo completo, Gen-4).**
- **No generar videos largos sin verificar el límite del modelo:** Gen-4 Turbo máximo 5s, Gen-3 Alpha Turbo hasta 10s, Extend añade 8s adicionales con nuevo prompt.
- **No olvidar que los créditos se consumen según modelo y tipo de generación** (imagen vs video); el plan gratis da 125 créditos iniciales.