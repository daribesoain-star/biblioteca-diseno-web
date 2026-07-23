# Higgsfield vs Kling Runway Veo comparison
**Fuente:** hf_compare | https://youtu.be/Higgsfield vs Kling Runway Veo comparison

## Que ensena sobre Higgsfield (2-3 lineas)
Higgsfield (Hyo) es útil para generar video a partir de texto o imagen, pero en esta comparación mostró debilidad en realismo de manos, movimientos y partículas frente a Kling, Runway y Veo. Su punto fuerte es la generación sin cuadro final (solo imagen inicial) y resultados naturales en escenas simples como una mujer tomando café.

## Tips y flujos accionables
- **Para texto a video:** Usa prompts detallados con interacción de materiales, partículas de aire, texturas y movimiento rítmico. Ejemplo exacto del video: *"material interaction, air particles, textures, and rhythmic movement"*. Duración máxima: 6 segundos (no 10 como en otros).
- **Para imagen a video:** Sube solo la imagen inicial (no necesitas cuadro final). Prompt sugerido: descripción de la escena + acción (ej. "mujer sentada bebiendo café, momento pensativo"). Sin audio generado.
- **Para escenas con reflejos y cámara:** Usa prompts que especifiquen "reflejo en el vidrio", "paisaje rural en movimiento", "giro de cabeza lento". La cámara debe describirse como "comienza quieta, luego se acerca lentamente al perfil". Resultado: reflejo visible, paisaje natural, pero sin audio.
- **Look cinematográfico:** Combina iluminación natural cambiante (de brillante a sombría) y desenfoque de movimiento realista en el fondo. Especifica en el prompt: *"lighting shifting from bright to shadowy"* y *"realistic motion blur in the background"*.

## Reglas para el erudito de Higgsfield
- Para texto a video con partículas y texturas: usa preset **Hyo** (modelo por defecto) con prompt detallado de materiales y movimiento rítmico. Duración: 6 segundos.
- Para imagen a video sin cuadro final: usa **Hyo** con solo imagen inicial y prompt descriptivo de la acción. No requiere end frame.
- Para escenas con reflejos y cámara en movimiento: usa **Hyo** con prompt que incluya "reflection in the glass", "rural landscape", "camera starts still, then slowly moves closer". Resultado: reflejo visible, cámara sigue al sujeto.
- Para evitar alucinaciones en manos: especifica "hands realistic" y evita movimientos complejos de dedos. Usa planos medios o generales.

## Errores comunes / que evitar
- **No usar Higgsfield para manos y movimientos complejos:** Produce manos irreales y movimientos torpes. Evita primeros planos de manos o gestos finos.
- **No esperar audio:** Higgsfield no genera sonido en la mayoría de casos. Planifica añadir audio externo.
- **No exceder 6 segundos:** La duración máxima es 6 segundos; prompts más largos no mejoran el resultado.
- **No usar cuadro final en imagen a video:** Higgsfield solo necesita imagen inicial; forzar un end frame puede generar transiciones forzadas.
- **No pedir partículas o efectos atmosféricos densos:** En la comparación, las partículas de flores se vieron bien, pero el humo o vapor pueden salir poco naturales.