# HIGGSFIELD AI: A Beginner’s Guide to Mind-Blowing AI Video!
**Fuente:** hf_tutorial | https://youtu.be/N0X5naSpqTk

## Que ensena sobre Higgsfield (2-3 lineas)

Higgsfield es una plataforma todo-en-uno que integra múltiples modelos de IA (Kling, Grok, Sora, propios) para generar imágenes, videos, audio y personajes desde el navegador. El flujo clave es: crear personajes en **Cast**, generar locaciones en **Image**, combinar ambos en **Scene**, y luego animar con **Video** usando **Cinema Studio 2.5** o **Kling 3.0 Motion Control**.

## Tips y flujos accionables

### Flujo completo para un cortometraje (orden exacto)

1. **Crear personajes en Cast (Cinema Studio 2.5)**
   - Género: seleccionar de lista (ej: "Western")
   - Presupuesto: usar **100 million** (evitar 250M porque "tiene más alucinaciones de IA")
   - Época: ej: "1900s"
   - Arquetipo: ej: "Lover" (femenino), "Rebel" (masculino)
   - Identidad: Female/Male, raza, edad (ej: 25, 30)
   - Apariencia física: Slim, Average height, green/hazel eyes, messy/wavy hair, blonde/brown
   - Detalles: freckles, facial scar (opcional)
   - Vestimenta: custom prompt ej: `old time western outfit suitable for riding horses`
   - Generaciones: **5 versiones** (costo: 0.625 créditos)
   - Guardar como elemento: click "Save as element"

2. **Crear locación en Image**
   - Prompt: `old western town in the 1800s`
   - Generaciones: **5 versiones**
   - Guardar como "Main Street Dry Gulch" (o nombre descriptivo)

3. **Crear escena (Scene)**
   - Combinar: personajes + locación
   - Prompt usado: `a rugged western town at golden hour, dusty streets glowing in warm sunset light, wooden storefronts lining the road, saloon doors swinging slightly in the breeze, a man and woman cowboy stand facing each other in the middle of the street, tension and chemistry between them`
   - Generaciones: **4 versiones** (importante para filtrar alucinaciones)
   - Color grading integrado: aplicar **"cinematic"** preset, luego ajustar Temperature, Hue, Saturation, Halation, Lens distortion, Exposure, Film grain

4. **Generar ángulos adicionales**
   - **Multi-shot**: genera 9 ángulos cinematográficos en una generación
   - **What's next**: explora ideas de qué podría pasar después
   - Guardar frames como elementos para usar en video

5. **Crear video multi-shot manual**
   - Ir a **Video** > **Multi-shot manual**
   - Configuración: hasta **4 shots**, **12 segundos total**
   - Distribución: ej: 3 shots de 4 segundos cada uno
   - Por cada shot:
     - **Start frame**: seleccionar imagen de referencia
     - **End frame**: opcional (no siempre necesario)
     - Personajes: mencionar por nombre (Silas Cole, Ingrid Anderson)
     - Emoción del personaje: click en carita → seleccionar (ej: "apprehensive", "fearful")
     - Acción: prompt descriptivo ej: `Silas Cole apprehensively steps closer to Ingrid Anderson who's also apprehensive`
     - Diálogo: escribir entre comillas ej: `"I haven't seen you around these parts before."`
   - Generar **2 versiones** del multi-shot completo

### Motion Control con Kling 3.0

- **Input**: video propio filmado
- **Proceso**: subir video → añadir foto diferente → convertirte en otro personaje
- **Costo**: ~57 créditos por generación
- **Resultado**: el movimiento original se mantiene, la apariencia cambia completamente

### Tips para look cinematográfico

- **Color grading**: usar preset "cinematic" antes de generar video
- **Presupuesto bajo (100M)**: produce resultados más "vendibles" que 250M (menos alucinaciones)
- **Múltiples generaciones**: siempre generar 4-5 versiones para filtrar errores
- **Start frame obligatorio**: siempre dar un frame de inicio para mejor coherencia

## Reglas para el erudito de Higgsfield

- **Para crear personajes consistentes**: usa **Cast** en Cinema Studio 2.5 con género, arquetipo, y vestimenta custom prompt
- **Para locaciones**: usa **Image** con prompt descriptivo y guarda como elemento
- **Para escenas**: combina personajes + locación en **Scene** con prompt detallado
- **Para múltiples ángulos**: usa **Multi-shot** (9 ángulos) o **What's next** (exploración narrativa)
- **Para animar escenas**: usa **Video** > **Multi-shot manual** con start frame, emoción de personaje, y diálogo
- **Para motion control realista**: usa **Kling 3.0 Motion Control** con video propio como input
- **Para color grading**: aplica preset "cinematic" y ajusta Temperature/Hue/Saturation/Halation/Lens distortion/Exposure/Film grain
- **Para voces**: usa **Audio** > **Generate speech from text** o **Change speech**
- **Para exclusividad de personaje**: activa "Exclusive rights" al guardar en Cast

## Errores comunes / que evitar

- **No usar presupuesto 250M**: produce más "AI tells" que 100M
- **No generar solo 1 versión**: siempre generar 4-5 para filtrar alucinaciones (ej: personaje pierde cabello largo, rostro incorrecto)
- **No saltarse el start frame**: esencial para coherencia del video
- **No usar end frame si no es necesario**: a veces confunde al modelo
- **No olvidar asignar emociones a personajes**: click en carita para "apprehensive", "fearful", etc.
- **No subestimar el color grading**: aplicarlo antes de generar video para mejor control estético
- **No usar prompts demasiado genéricos**: ser específico en locación, época, vestimenta, acción