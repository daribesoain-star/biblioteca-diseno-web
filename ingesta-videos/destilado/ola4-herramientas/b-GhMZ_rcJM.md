# How to Use Eleven v3 - Expressive AI Voice Prompt Engineering Guide [elevenlabs]
**Fuente:** ola4-herramientas | https://youtu.be/b-GhMZ_rcJM

## Qué enseña (2-3 líneas)
Guía práctica para usar el modelo de texto a voz Eleven v3 (alpha) de elevenlabs, enfocada en prompt engineering con audio tags para controlar emoción, velocidad, tono y entrega. Cubre selección de voces compatibles, ajuste de estabilidad, y mejores prácticas para generar speech expresivo y diálogos multi-voz.

## Lecciones accionables
- **Seleccionar modelo:** En el menú desplegable del tool de texto a voz, elegir "11 V3" para activar el modelo.
- **Elegir voz de la categoría "best voices for V3":** Usar exclusivamente voces listadas en esa categoría para resultados óptimos.
- **Ajustar estabilidad:** Control deslizante con tres modos:
  - *Natural:* más cercano al audio de referencia, balanceado y neutral.
  - *Creative:* mayor emoción y expresividad, pero propenso a alucinaciones.
  - *Robust:* máxima estabilidad, menos responsive a prompts direccionales (similar a V2).
- **Usar prompts largos (mínimo 250 caracteres):** V3 funciona mejor con textos extensos; menos de 250 caracteres produce resultados inconsistentes.
- **Aplicar audio tags para control expresivo:** Insertar tags en el texto para modular emoción, dirección, velocidad, entrega y sonido. Ejemplos de tags mencionados: `[angry]`, `[shouting]`, `[happy]`, `[sad]`, `[calm]`, `[quiet]`.
- **Emparejar tags con la voz seleccionada:** Si la voz es calmada y tranquila, no usar tags agresivos como `[angry]` o `[shouting]` — esto genera resultados inconsistentes.
- **Generar diálogos multi-voz:** Usar dos o más voces en el mismo texto para conversaciones contextuales fluidas y realistas.
- **Idiomas soportados:** V3 genera speech en más de 70 idiomas (vs. 29 en V2 y 32 en V2.5).
- **Regla "menos es más":** No añadir demasiados tags en una misma generación, ya que puede producir resultados erráticos o "wild".

## Reglas para agentes
- Usa siempre prompts de al menos 250 caracteres cuando generes con Eleven v3.
- Selecciona voces exclusivamente de la categoría "best voices for V3" dentro de la plataforma.
- Ajusta el control de estabilidad a "Creative" si buscas máxima emoción y expresividad; usa "Robust" si priorizas estabilidad sobre respuesta a prompts.
- Empareja los audio tags con el tono natural de la voz elegida: no uses tags agresivos en voces calmadas.
- No combines más de 2-3 audio tags por generación para evitar resultados incoherentes.
- Para diálogos multi-voz, alterna entre voces distintas en el mismo bloque de texto.

## Errores comunes que evita o menciona
- **Usar prompts cortos (<250 caracteres):** Produce resultados inconsistentes y poco fiables.
- **Seleccionar voces no optimizadas para V3:** Voces fuera de la categoría "best voices for V3" no funcionan bien con el nuevo modelo.
- **Desajustar tags con la voz:** Aplicar tags de enfado o gritos a una voz naturalmente calmada genera resultados incoherentes.
- **Sobrecargar de tags:** Demasiados audio tags en una sola generación producen resultados erráticos ("wild results").
- **Ignorar el ajuste de estabilidad:** No configurar el nivel adecuado (Natural/Creative/Robust) según el resultado deseado limita el control expresivo.