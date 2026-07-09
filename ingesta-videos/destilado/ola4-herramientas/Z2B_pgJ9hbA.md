# ElevenLabs V3 Full Tutorial: Best Voice Settings + Free GPT Tool (Eleven V3 Alpha) [elevenlabs]
**Fuente:** ola4-herramientas | https://youtu.be/Z2B_pgJ9hbA

## Qué enseña (2-3 líneas)
Este tutorial enseña a dominar el nuevo modelo ElevenLabs V3 Alpha usando tres pilares: selección de voz, ajustes de estabilidad y etiquetas de audio (audio tags) para controlar emociones, acentos y efectos. Incluye un GPT gratuito que formatea scripts automáticamente para obtener resultados expresivos y naturales.

## Lecciones accionables
- **Seleccionar el modelo V3:** En la interfaz de ElevenLabs, seleccionar el modelo "V3" en el panel derecho.
- **Elegir voces con tag "best voices for V3":** Filtrar voces que tengan el tag específico para V3. Las voces verificadas tienen un checkmark a la izquierda.
- **Ajustar el slider de estabilidad:**
  - **Creative (izquierda):** Máxima expresividad emocional, propenso a alucinaciones. Usar cuando se empleen audio tags.
  - **Natural (centro):** Equilibrado, más cercano a la voz original. Usar con audio tags.
  - **Robust (derecha):** Altamente estable, resultados consistentes, pero menos receptivo a direcciones emocionales. Usar para automatizaciones donde se requiera reproducibilidad.
- **Usar audio tags para control emocional:**
  - `[laugh]`, `[laughs harder]`, `[starts laughing]`, `[wheezing]`
  - `[sigh]`, `[exhale]`
  - `[sarcastic]`, `[curious]`, `[excited]`
  - `[whisper]` — todo el texto después de este tag se susurra
  - `[laughs the following words]` — el texto siguiente se dice riendo
- **Agregar efectos de sonido con audio tags:**
  - `[gunshot]`, `[applause]`, `[clapping]`, `[explosions]`
  - Ejemplo: `[applause] Thank you all for coming tonight. [gunshot] [surprised] What was that?`
- **Controlar acentos:**
  - `[strong French accent]`, `[strong Russian accent]`, `[strong German accent]`
  - Usar `[French accent]`, `[Russian accent]` para acentos más sutiles
- **Usar puntuación para ritmo natural:**
  - `...` (elipsis) para pausas naturales
  - `—` (guión largo) para pausas enfáticas
  - Mayúsculas para énfasis: `VERY loud` enfatiza "VERY"
  - Puntuación estándar (comas, puntos) para ritmo natural del habla
- **Diálogo multi-speaker:**
  - Usar etiquetas como `[Speaker A]` y `[Speaker B]` para alternar voces
  - Agregar descripciones a cada speaker para diferentes entonaciones
- **Estructura del texto:**
  - Comenzar con voz neutral como línea base
  - Usar elipsis para pausas naturales
  - Combinar etiquetas emocionales con texto de entrega
  - Usar mayúsculas para énfasis (ej: "Oh my GOD")
  - Cambiar emociones gradualmente (ej: de risa a sorpresa a tristeza)
  - Mantener el texto entre 200 y 10,000 caracteres (límite del modelo V3)
- **Usar el GPT gratuito "ElevenLabs 11v3 Formatter Script Generator":**
  - Dar una instrucción simple como: "write a very concise, very expressive four sentences why people should subscribe to my YouTube channel"
  - Pedir refinamiento: "be even more expressive and add more dramatic pauses via punctuation"
  - Copiar el resultado formateado directamente a ElevenLabs

## Reglas para agentes
- Usa el slider de estabilidad en "Creative" o "Natural" cuando emplees audio tags emocionales; nunca uses "Robust" si buscas expresividad.
- Selecciona siempre una voz con el tag "best voices for V3" o entrena tu propia voz para que los tags emocionales funcionen correctamente.
- Usa elipsis (`...`) para pausas naturales en lugar de solo comas cuando quieras énfasis en la pausa.
- Capitaliza palabras clave para aumentar el énfasis en la entrega (ej: "VERY important").
- Combina múltiples audio tags para lograr entregas emocionales complejas (ej: `[surprised] [whisper]`).
- Empareja los tags emocionales con el tipo de voz: una voz profesional seria no responde bien a tags como `[giggles]` o `[mischievous]`.
- Mantén el texto de entrada entre 200 y 10,000 caracteres para evitar errores del modelo V3.
- Usa el GPT formateador para generar scripts optimizados automáticamente en lugar de escribir manualmente los tags.

## Errores comunes que evita o menciona
- **No usar el slider de estabilidad incorrecto:** Si usas audio tags con el slider en "Robust", los tags no funcionarán bien. Debe estar en "Creative" o "Natural".
- **No seleccionar voces sin el tag V3:** Usar voces no optimizadas para V3 reduce la efectividad de los tags emocionales.
- **No estructurar el texto correctamente:** Sin puntuación adecuada (elipsis, mayúsculas, guiones), el modelo no genera pausas ni énfasis naturales.
- **No comenzar con voz neutral:** Si el texto de entrada ya tiene emociones fuertes desde el inicio, el modelo no tiene una línea base para aplicar cambios graduales.
- **Exceder el límite de caracteres:** El modelo V3 tiene un límite de 10,000 caracteres; superarlo causa errores.
- **Usar voces no entrenadas para tags emocionales:** Las voces personalizadas deben ser entrenadas específicamente para que los tags emocionales funcionen correctamente.
- **No experimentar con combinaciones de tags:** El tutorial enfatiza que probar diferentes combinaciones de tags, voces y estructuras es clave para encontrar lo que funciona mejor.