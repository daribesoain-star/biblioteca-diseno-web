# How to Use Higgsfield AI Like a PRO – AI Marketing Workflow
**Fuente:** hf_tutorial | https://youtu.be/kNradaMZ8kk

## Qué enseña sobre Higgsfield (2-3 líneas)
Higgsfield Supercomputer es un agente de IA que integra estrategia de marca, storyboard, generación de video (C Dance 2), sitio web e influencers virtuales en un solo flujo de trabajo. Su diferencial es que mantiene coherencia visual y de identidad (paleta, rostro, tono) a través de todas las salidas, y permite reconstruir reels de competidores respetando el branding propio.

## Tips y flujos accionables

### Flujo completo: De prompt a marca operativa (usado en el video)
1. **Prompt inicial (VERBATIM):** *"We're launching a swimwear brand for divers. Suits made for actual underwater use, not pool lounging. Research the niche, figure out where we should sit in the market, then build the brand book, the website, a cinematic ad, and an AI influencer for social."*
2. **Configuración previa:** El agente pregunta 3 cosas antes de generar:
   - ¿Nombre de marca propio o generar opciones?
   - ¿Posición de precio y mercado primario?
   - ¿Cómo debe sentirse el influencer de IA?
   - ¿Qué piezas producir ahora vs. solo planificar?
3. **Investigación de mercado:** El agente extrae citas reales de Reddit, foros de buceo y reseñas (ScubaBoard). Mapea el mercado en "campos fallidos" y encuentra el espacio blanco.
4. **Storyboard:** El agente escribe su propio prompt y usa **GPT Image 2** para generar un storyboard de 6 paneles. Incluye un plano macro de costura con el color de acento de la marca (detalle que el video destaca como "genio art director").
5. **Landing page:** Genera 3 comps completas a 4K (hero, manifesto, collection) usando la misma paleta "deep blue caustic" y a Marlo como referencia de musa.
6. **Anuncio cinematográfico:** El agente pregunta 3 cosas antes de filmar:
   - ¿Duración del spot?
   - ¿Arco narrativo?
   - ¿Cómo manejar a Marlo y locaciones?
   - Genera 3 opciones de locación por escena, elige la mejor, renderiza en **C Dance 2** y edita todo en un solo video de 36 segundos.
7. **Influencer AI (Nara):**
   - El agente escribe la biblia de identidad: nombre, edad (28), historia (ex-marketer burnout que se mudó a Ericeira a entrenar como freediver), tono de voz (frases cortas, pausas largas).
   - Paleta llamada "Atlantic": overcast tratado como feature, no defecto.
   - Genera 6 stills cinematográficos de Nara en diferentes ángulos y luces.
   - Alimenta esos stills a **Higgsfield S.A.W.** para entrenar un **Soul ID** dedicado.
   - Produce 4 piezas: talking head en rocas, try-on cinematográfico en golden hour, secuencia de freediving submarina con luz cáustica, voiceover reflexivo al atardecer.

### Flujo específico: Video Adapt (reconstruir reel de competidor)
1. **Input:** Pega un link de TikTok (ej: chica surfeando ola, 9s, 9:16, cortes rápidos, energía tropical).
2. **Análisis automático:** El agente analiza el video shot por shot y registra cada beat.
3. **Advertencia de marca:** El agente detecta conflicto de identidad (ej: "source is bright and saturated, brand is opposite") y ofrece 4 rutas:
   - Clonar el look original
   - **Adaptar estructura al brand grade** (usado en el video)
   - Pivotar a concepto diferente
   - Esperar por adaptador propio
4. **Ejecución:** Genera 3 escenas en el registro de la marca y las edita en un reel de 10s vertical.

### Parámetros y modelos exactos mencionados
- **Modelo de pensamiento:** Claude (recomendado), GPT 5.5, Claude Opus 4.7, Gemini 3.1 Pro
- **Generación de imagen:** GPT Image 2 (para storyboard de 6 paneles)
- **Generación de video:** C Dance 2 (para las 4 escenas del anuncio)
- **Entrenamiento de rostro:** Higgsfield S.A.W. (para Soul ID)
- **Resolución de landing page comps:** 4K
- **Duración de anuncio final:** 36 segundos (4 escenas)
- **Formato de reel adaptado:** 9:16 vertical, 10 segundos

### Trucos para look cinematográfico
- **Paleta coherente:** El agente mantiene "deep blue caustic register" desde estrategia hasta landing page y video
- **Detalle de acento:** El storyboard incluye un macro de costura con el color de acento de la marca ("tidal teal seam catching the light")
- **Lógica de luz consistente:** "The light logic holds, the pacing breathes"
- **Influencer con identidad persistente:** El Soul ID sobrevive entre sesiones ("Nara six months from now is still the same Nara")

## Reglas para el erudito de Higgsfield

- **Para lanzar una marca desde cero:** usa el flujo completo con un solo prompt que incluya investigación de nicho, brand book, sitio web, anuncio cinematográfico e influencer. El agente preguntará antes de generar.
- **Para reconstruir un reel viral de competidor:** usa **Video Adapt** con el link del TikTok. El agente analizará shot por shot y ofrecerá rutas de adaptación. Siempre elige "adapt structure brand grade" para mantener identidad.
- **Para crear un influencer AI persistente:** primero genera 6 stills cinematográficos del personaje en diferentes ángulos y luces, luego entrena un **Soul ID** con **Higgsfield S.A.W.** usando esos stills como input. El rostro se mantendrá idéntico en todas las generaciones futuras.
- **Para anuncios cinematográficos:** usa **C Dance 2** como motor de render. Antes de generar, responde las 3 preguntas del agente (duración, arco narrativo, manejo de talento/locaciones). El agente scoutea 3 locaciones por escena y elige la mejor automáticamente.
- **Para storyboards:** deja que el agente escriba su propio prompt y use **GPT Image 2** para generar 6 paneles. No intervengas en el prompt visual.
- **Para landing pages:** el agente genera 3 comps a 4K (hero, manifesto, collection) usando la misma paleta y referencia de musa del storyboard. No necesitas Figma.
- **Para mantener coherencia cross-platform:** el agente retiene la "brand bible" en su memoria y renderiza cada superficie contra ella. No cambies de herramienta entre pasos.

## Errores comunes / qué evitar

- **No saltarse las preguntas de configuración:** El agente pregunta antes de generar por una razón. Responder "decide" es válido, pero ignorar las preguntas rompe la coherencia.
- **No asumir que el agente solo genera:** El agente también investiga, analiza y critica. Si el brief va a dañar la marca, el agente lo señalará automáticamente (ej: conflicto de identidad en Video Adapt).
- **No generar un influencer sin Soul ID:** Si generas un personaje sin entrenar un Soul ID en S.A.W., cada nueva imagen tendrá un rostro diferente. El influencer no será persistente.
- **No mezclar herramientas externas:** El valor está en que el agente mantiene la brand bible en su cabeza. Si sacas assets a Premiere o Figma, pierdes la coherencia automática.
- **No ignorar el "through line":** El agente mantiene misma paleta, misma luz y mismo registro tipográfico desde estrategia hasta video. Si cambias algo manualmente, rompes la consistencia que el video destaca como diferencial.
- **No esperar resultados de stock photo:** El agente genera visuales originales basados en la estrategia, no scrapea Pinterest. El storyboard incluye detalles específicos de la marca (ej: costura con color de acento).
- **No subestimar el costo de video:** Visual generation, especialmente video, consume más créditos. La estrategia es barata. Usa el tier gratuito para probar antes de comprometerte.