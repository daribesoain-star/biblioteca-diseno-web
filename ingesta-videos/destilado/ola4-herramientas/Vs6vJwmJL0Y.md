# How to make AI Voiceovers that sound Human (2025 ElevenLabs Text to Speech Tutorial) [elevenlabs]
**Fuente:** ola4-herramientas | https://youtu.be/Vs6vJwmJL0Y

## Qué enseña (2-3 líneas)
Este tutorial enseña a crear locuciones con IA que suenan humanas usando ElevenLabs, cubriendo desde la selección de modelos de voz (Multilingual V2 vs Eleven V3 Alpha) hasta el uso de audio tags para controlar la expresividad. También explica cómo diseñar voces personalizadas con Voice Design, ajustar parámetros como estabilidad y similitud, y descargar o compartir el audio generado.

## Lecciones accionables
- **Seleccionar modelo de voz según el uso:**
  - **Eleven Multilingual V2:** Usar para voz natural y consistente, soporta 29 idiomas. Ajustar sliders: estabilidad (bajar para textos largos), similitud (dejar en default), style exaggeration (mantener en 0), speaker boost (toggle opcional).
  - **Eleven V3 Alpha:** Usar para máxima expresividad y emoción, soporta 70+ idiomas. No tiene sliders; se controla exclusivamente con audio tags.
  - **Flash V2.5:** Usar para aplicaciones en tiempo real y baja latencia (conversational AI).
- **Usar audio tags con Eleven V3 (formato exacto):**
  - Escribir la descripción de la entrega entre corchetes: `[laughs]`, `[sighs]`, `[whispering]`, `[angry]`, `[excited]`, `[sad]`, `[narrator]`, `[thoughtful]`, `[dramatic pause]`.
  - Colocar el audio tag justo antes de la línea que se quiere modificar. Ejemplo: `[laughs] This was great.`
  - Combinar múltiples tags para efectos complejos: `[sighs] I just can't get enough of them. [laughs] I love a good barbecue.`
  - Usar el botón "Enhance" para que ElevenLabs agregue audio tags automáticamente.
- **Diseñar voz personalizada con Voice Design:**
  - Ir a "Voices" > "Create or clone a voice" > "Voice Design".
  - Prompt de voz: incluir edad, género, tono, acento, ritmo, emoción, estilo. Ejemplo: `a calm male narrator`.
  - Preview text: usar como guión de actuación, incluyendo audio tags. Ejemplo: `Thoughtful. 'Should we have a barbecue?' Sigh. 'I just can't get enough of them.' Laugh audio tag. 'I love a good barbecue.' Another laugh audio tag.`
  - Generar y elegir entre 3 opciones de voz. Guardar con nombre, etiqueta y descripción.
- **Ajustar parámetros en Multilingual V2:**
  - **Speed:** controla velocidad de salida.
  - **Stability:** subir para consistencia entre generaciones (puede sonar monótono); bajar para textos largos.
  - **Similarity:** subir para claridad y similitud con la voz objetivo; no subir demasiado para evitar artefactos. Dejar en default.
  - **Style exaggeration:** mantener en 0 para evitar inestabilidad (velocidad inconsistente, pronunciaciones incorrectas, sonidos extra).
  - **Speaker boost:** activar para mejorar similitud a costa de velocidad de generación.
- **Descargar y compartir:**
  - Click en ícono de Download para guardar como MP3.
  - Click en Share para crear video con texto animado sincronizado con la voz.
  - Usar "History" para recuperar prompts o generaciones anteriores.

## Reglas para agentes
1. **Siempre especificar el modelo de voz** antes de generar: si se busca expresividad, usar Eleven V3 Alpha; si se busca consistencia y naturalidad, usar Multilingual V2.
2. **Con Eleven V3, usar audio tags obligatoriamente** para controlar la entrega emocional. No confiar en el contexto del texto como con modelos anteriores.
3. **Seleccionar voces de la categoría "Best Voices for V3"** cuando se use el modelo Eleven V3 Alpha.
4. **En Voice Design, el preview text debe incluir audio tags** para que la voz generada capture la expresividad deseada.
5. **Mantener style exaggeration en 0** por defecto para evitar artefactos.
6. **Para textos largos, reducir stability** para evitar monotonía.
7. **Usar el botón "Enhance"** como alternativa cuando no se quiera escribir audio tags manualmente.

## Errores comunes que evita o menciona
- **No incluir las direcciones de entrega en el texto mismo** (ej: "he said happily") porque el modelo las leerá en voz alta. En su lugar, usar audio tags.
- **No subir demasiado el slider de similarity** porque puede causar artefactos en el audio.
- **No usar style exaggeration alto** porque genera inestabilidad: velocidad inconsistente, pronunciaciones incorrectas o sonidos extra.
- **No asumir que todas las voces funcionan con Eleven V3** — hay que seleccionar de la categoría "Best Voices for V3".
- **No usar prompts demasiado cortos en Voice Design** si se busca un resultado matizado; la descripción granular (edad, género, tono, acento, emoción) produce mejores resultados.