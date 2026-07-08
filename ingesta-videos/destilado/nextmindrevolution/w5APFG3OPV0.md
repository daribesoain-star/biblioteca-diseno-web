# Kling AI Image Reference Feature Explained
**Fuente:** nextmindrevolution | https://youtu.be/w5APFG3OPV0

## Qué enseña (2-3 líneas)
Este video explica cómo usar la función de referencia de imagen estándar en Kling AI, cubriendo los modos Single Reference (sujeto, rostro, imagen completa) y Elements (hasta 4 sujetos + escena + estilo). También detalla cómo ajustar los sliders de fuerza para controlar qué tanto del sujeto o rostro se conserva en la generación.

## Lecciones accionables
- **Single Reference – Modo Subject:** sube una imagen y selecciona "Subject". El modelo (1.5) aísla el sujeto principal. Ajusta los sliders: sube "Face" al máximo y baja "Subject" al mínimo para conservar solo el rostro; haz lo opuesto para conservar cuerpo sin rostro; sube ambos para sujeto completo.
- **Single Reference – Modo Face:** selecciona "Face" (modelo 1.5). Si hay múltiples rostros, elige manualmente cuál usar. Sube el slider de fuerza al máximo para clonar el rostro exacto; bájalo para obtener variaciones.
- **Single Reference – Modo Entire Image:** usa "Entire Image" (modelo 1.0) para tomar toda la imagen como referencia (ej. una calle como escena). No soporta sujetos específicos.
- **Elements Mode:** sube hasta 4 imágenes de sujetos, recorta cada uno para que Kling identifique el sujeto. Luego sube una imagen de escena. Describe la escena con un prompt coherente (ej. "A woman goes for a walk in the forest"). Usa relación de aspecto 16:9.
- **Style Reference:** en Elements, sube una imagen de estilo (ej. anime, vintage). Opcional: refuerza el estilo en el prompt (ej. "anime style"). El modelo aplica el estilo a la nueva escena.
- **Parámetros clave:** modelo 1.5 para Subject y Face; modelo 1.0 para Entire Image; modelo 2.1 disponible solo en Text-to-Image estándar. Sliders de fuerza van de 0 a 100.

## Reglas para agentes
- Usa el modo "Subject" cuando la imagen de referencia tenga un sujeto grande y claramente definido; evítalo si hay múltiples sujetos.
- Usa el modo "Face" cuando quieras transferir solo el rostro de una persona a un nuevo contexto; selecciona manualmente el rostro si hay varios en la imagen.
- Usa el modo "Entire Image" solo cuando la referencia sea un paisaje, escena o estilo general, no un sujeto.
- Usa "Elements" cuando necesites combinar hasta 4 sujetos distintos en una escena específica; recorta cada sujeto antes de confirmar.
- Nunca uses un prompt que contradiga los elementos subidos (ej. "man walking on the street" si no subiste ni calle ni hombre).
- Siempre verifica que el modelo seleccionado sea 1.5 para Subject/Face y 1.0 para Entire Image; no uses 2.1 en estas funciones.

## Errores comunes que evita o menciona
- **Múltiples sujetos en modo Subject:** el modelo falla al identificar el sujeto principal si hay varios en la imagen.
- **Confusión entre sliders Face y Subject:** el slider "Face" controla solo el rostro; el slider "Subject" controla el cuerpo (ropa, pose) sin rostro. Subir ambos da el sujeto completo.
- **Relación de aspecto incorrecta:** el presentador usó 9:16 en lugar de 16:9 por error, lo que afecta la composición.
- **Prompt incoherente con elementos:** si el prompt describe algo que no coincide con los sujetos o escena subidos, la generación falla.
- **Usar Entire Image para sujetos:** el modo Entire Image no aísla sujetos; solo replica la composición general de la imagen.