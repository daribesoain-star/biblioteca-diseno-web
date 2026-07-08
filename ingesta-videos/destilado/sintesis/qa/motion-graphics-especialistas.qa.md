Aquí están los problemas graves encontrados en la entrada JSON:

1. **Regla vaga y no accionable:** "Siempre pide de 3 a 5 variaciones de una toma problemática para elegir la mejor en lugar de regenerar una sola vez." -> **Corregir:** Especificar en qué herramienta o contexto se debe hacer esta petición (ej. "En el Art Director de OpenArt, usa el botón 'Generate Variations' para obtener 3-5 opciones").

2. **Afirmación sospechosa de alucinación:** "el agente Art Director de OpenArt (openart.ai)" y "el generador musical del Art Director de OpenArt" -> **Corregir:** Verificar si OpenArt realmente tiene un "Art Director" como agente específico con generador musical integrado. Si no existe, eliminar o renombrar la herramienta.

3. **Afirmación sospechosa de alucinación:** "Google Flow Omni" y "Omni Flash" -> **Corregir:** Verificar si Google tiene un producto llamado "Flow Omni" o "Omni Flash". Podría ser una confusión con "Google Flow" (herramienta de automatización) o un producto inexistente.

4. **Regla duplicada y contradictoria:** "Nunca generes el video completo sin antes bloquear el estilo visual con boards de prueba aprobados." vs "Genera las imágenes de un mismo proyecto en un solo batch para ahorrar tiempo y garantizar coherencia de estilo." -> **Corregir:** La primera sugiere aprobación por boards, la segunda sugiere generar todo de una vez. Unificar el flujo: "Genera boards de prueba para aprobación de estilo, luego genera el batch completo de imágenes".

5. **Regla vaga y no accionable:** "Siempre rediseña un board completo si un elemento específico sigue rompiéndose tras varios intentos de corrección." -> **Corregir:** Definir "varios intentos" (ej. "después de 3 intentos fallidos de corrección puntual").

6. **Prompt/receta sin contexto de uso:** "Prompt para estilo Vox en el agente Art Director de OpenArt (openart.ai): 'Un look de collage moderno...'" -> **Corregir:** Indicar si este prompt se usa en el generador de imágenes, en el de video, o en ambos, y en qué paso del flujo.

7. **Afirmación sospechosa de alucinación:** "Nano Banana Pro" y "Nano Banana" -> **Corregir:** Verificar si "Nano Banana" es una herramienta real de generación de imágenes/college. Podría ser una confusión con "Midjourney Niji" u otra herramienta.

8. **Regla vaga y no accionable:** "Para motion graphics en DaVinci Resolve/Fusion, usa la cadena 'Background → [elemento] → Displace1 → Merge' para efectos de distorsión y transiciones orgánicas." -> **Corregir:** Especificar qué tipo de nodo Displace usar (ej. "Displace con mapa de ruido") y qué parámetros ajustar (ej. "con valores de desplazamiento entre 0.1 y 0.5").

9. **Regla contradictoria:** "Nunca uses música con copyright; genera pistas originales dentro de la herramienta (p. ej. el generador musical del Art Director de OpenArt)" vs "Usa Gemini solo para texto: añade siempre 'Provide a text response only' cuando quieras un prompt de texto." -> **Corregir:** Si el generador musical está en OpenArt, no tiene relación con Gemini. La regla sobre Gemini está fuera de lugar en este contexto.

10. **Afirmación sospechosa de alucinación:** "Google Flow Omni Flash" con duración óptima de 6 segundos -> **Corregir:** Verificar si Google Flow tiene una función de animación llamada "Omni Flash" con esa limitación de duración. Si no existe, eliminar la referencia.