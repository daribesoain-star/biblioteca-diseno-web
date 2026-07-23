# GOOGLE VEO 3: THE DEFINITIVE GUIDE FROM SCRATCH TO VIRAL VIDEOS AND PROMPTS
**Fuente:** Arca Artificial by Lordwind Enrique | https://youtu.be/oodW_W15rLY

## Qué enseña (2-3 líneas)
Guía completa para usar Google Veo 3 desde cero: cómo acceder a través de Google Flow (dentro de Google Labs), estructura de prompts optimizada para video, y técnicas para crear videos virales en formatos como entrevistas callejeras, vlogs, ASMR y escenas cinematográficas. Incluye solución de bugs comunes y métodos para convertir videos horizontales a verticales usando Runway.

## Técnicas accionables
- **Acceso a Veo 3:** Suscríbete al plan Google AI Pro (€22/mes, 1000 créditos/mes en Flow) o Google AI Ultra (€140 primeros 3 meses, luego €274, 12,500 créditos/mes, primer mes gratis). Entra a one.google.com, no desde Gemini. Cancela antes del mes para no pagar.
- **Plataforma Flow:** Ve a "Plow" en Google Labs → "crear" → "new project". Opciones: text-to-video, single frame-to-video. Modelos disponibles: Veo 2 (sin audio), Veo 3 quality (100 tokens), Veo 2 fast, Veo 3 Fast (20 tokens, por defecto). Hasta 4 generaciones simultáneas.
- **Estructura de prompt para Veo 3 (8 componentes):**
  1. **Formato inicial:** Define el formato viral al inicio (ej: "street interview style", "selfie video", "realistic cinematic scene")
  2. **Sujeto/personaje:** Siempre al menos un personaje (persona, auto, perro, etc.)
  3. **Acción/verbo:** Qué hace (corre, habla, camina)
  4. **Entorno/fondo:** Escenario que da contexto
  5. **Estilo visual:** Cinematográfico, animado, etc.
  6. **Perspectiva y movimiento de cámara:** Usa términos exactos (pan left, dolly shot, close-up, etc.)
  7. **Iluminación y atmósfera:** Golden hour, noche, estudio fotográfico, etc.
  8. **Sonido y música:** Siempre al final del prompt. Especifica música ambiental y efectos (crujido de puerta, rotura de vidrio, pasos)
- **Diálogo:** Escribe "dialogue:" seguido de dos puntos, sin comillas. Ejemplo: `dialogue: Hi, how are you?` No uses comillas ni apóstrofes (evita subtítulos aleatorios).
- **Diálogo entre personajes:** Especifica quién habla primero. Ejemplo: `After explaining the scene, the reporter speaks first. [diálogo del reportero]. Then the surgeon responds confidently while continuing with his work. [diálogo del cirujano].`
- **Negative prompt:** Añade "no subtitles" para evitar subtítulos no deseados.
- **Combinar movimiento de cámara con acción:** Describe ambos juntos. Ej: "The camera stays on the hand placing the cup on the table" mientras describes la acción.
- **Image-to-video:** Usa "single frame to video" en Flow.
- **Conversión a vertical:** Descarga el video horizontal de Veo 3 → ve a Runway → selecciona modelo "alpha turbo" → usa "expand video" → selecciona el video → elige orientación vertical → genera.
- **Mejora de resolución:** Al descargar, elige "improving resolution" (pasa de 720p a 1080p, sin costo de créditos). El video tendrá watermark.

## Reglas para el erudito (imperativas, "usa X cuando Y")
- **Define el formato al inicio del prompt** cuando quieras un estilo viral específico (entrevista callejera, selfie, escena cinemática).
- **Usa "dialogue:" sin comillas ni apóstrofes** cuando quieras que un personaje hable; evita subtítulos aleatorios.
- **Especifica quién habla primero** cuando tengas diálogos entre dos personajes para evitar que la IA intercambie los roles.
- **Combina descripción de cámara con acción del personaje** cuando quieras mayor profundidad visual (ej: "dolly shot mientras el personaje deja caer la taza").
- **Escribe sonido y música siempre al final del prompt** para que complementen la escena sin saturarla.
- **Usa "no subtitles" como negative prompt** cuando no quieras subtítulos automáticos.
- **Usa Runway alpha turbo "expand video"** cuando necesites convertir un video horizontal de Veo 3 a formato vertical.
- **Usa Veo 3 Fast (20 tokens)** para pruebas y experimentación; reserva Veo 3 Quality (100 tokens) para proyectos finales.

## Errores comunes / limitaciones que menciona
- **Subtítulos aleatorios:** Ocurre cuando usas comillas en el diálogo o apóstrofes en el prompt. Solución: eliminar comillas y apóstrofes, usar "dialogue:" sin puntuación extra.
- **Intercambio de diálogo entre personajes:** La IA cambia quién habla primero si das instrucciones contradictorias (ej: "el doctor habla" pero también "mientras el doctor habla, las luces parpadean"). Solución: estructurar el orden explícitamente.
- **Sin audio generado:** Ocurre cuando el personaje parece un niño (ej: "childlike facial expressions"). La IA no genera audio para personajes con apariencia infantil.
- **Sin opción nativa vertical:** Veo 3 solo genera horizontal. Necesitas Runway u otras herramientas (Luma, Capcut) para convertir a vertical.
- **Watermark en descargas:** Todos los videos descargados tienen marca de agua de Google.
- **Créditos limitados:** Veo 3 Fast gasta 20 tokens por generación; Veo 3 Quality gasta 100 tokens. El plan Pro da 1000 créditos/mes, el Ultra da 12,500.
- **Calidad base 720p:** Los videos se generan en 720p; puedes mejorar a 1080p sin costo extra pero con watermark.