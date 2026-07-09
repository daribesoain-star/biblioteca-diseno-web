# Recraft Studio Full Walkthrough — V4, Video Tools, Exploration Mode & More [recraft]
**Fuente:** ola4-herramientas | https://youtu.be/TK3z16_Gn4c

## Qué enseña (2-3 líneas)
Recorrido completo por la interfaz de Recraft Studio tras su actualización mayor: generación de imágenes con el nuevo modelo V4 (estándar, pro, vector, vector pro), herramientas de video integradas (Grok, Kling, Veo), el nuevo Exploration Mode para descubrimiento visual rápido, y funciones de consistencia como estilos personalizados y mockups. Muestra cómo pasar de idea a imagen finalizada y luego a video sin salir del canvas.

## Lecciones accionables
- **Para generar imágenes en Manual Mode:** selecciona el modelo (ej. "V4 Pro"), elige aspect ratio (ej. 16:9, 1:1), número de imágenes, y paleta de colores si aplica. Escribe un prompt simple de una oración describiendo una escena. Presiona "Generate". V4 Pro entrega resultados editoriales con iluminación fuerte, color intencional y composición balanceada.
- **Para usar Exploration Mode:** escribe un prompt mínimo con sujeto y estado de ánimo (ej. "un lobo en un bosque nevado, atmósfera misteriosa"). Presiona "Generate" para obtener 8 interpretaciones visuales completamente diferentes (composiciones, estilos, iluminación distintas). Trata estos resultados como borradores conceptuales.
- **Para refinar en Exploration Mode:** selecciona una imagen que te guste. Aparece un slider con 5 niveles de similitud (desde variaciones creativas sueltas hasta refinamientos casi perfectos). Ajusta el slider y presiona "Generate" para obtener 8 nuevas interpretaciones de la imagen seleccionada. Baja similitud = explorar la dirección más; alta similitud = pulir lo que ya funciona. Puedes saltar entre niveles, seleccionar cualquier variación y generar de nuevo.
- **Para generar video desde una imagen:** haz clic en el botón "generation type" en el panel de prompts y cambia a "video mode". Selecciona cualquier imagen en el canvas, adjúntala como referencia. Escribe un motion prompt corto describiendo el movimiento deseado (ej. "el lobo camina lentamente hacia la cámara, nieve cayendo"). Elige un modelo de video: Grok, Kling, Veo. Presiona "Generate". En segundos obtienes un clip animado.
- **Para extraer prompts de cualquier imagen:** arrastra una imagen al canvas, haz clic en "extract prompt" en el panel de acción. Obtienes una descripción detallada que captura iluminación, composición, materiales, color grading, ángulo de cámara, estilo. Luego puedes recrear esa imagen con V4 usando el prompt extraído.
- **Para crear estilos personalizados (basados en V3):** abre el menú de estilos, haz clic en "create style". Sube una o más imágenes de referencia que capturen el look deseado. Añade una descripción corta. Genera una imagen de prueba. Si el resultado es correcto, guarda el estilo. Estará disponible en todos los proyectos futuros para mantener consistencia estética.
- **Para usar mockups:** presiona la tecla "M" en el teclado o selecciona la herramienta en la barra izquierda. También puedes usar "Mockup-ize" desde el panel de acción sobre una imagen existente para transformarla en una superficie editable donde colocar logos, diseños u otros activos visuales.
- **Para edición con referencia (cuando V4 no soporta):** cambia a un modelo externo como "Nano Banana 2". Adjunta una o más imágenes como referencia. Describe qué quieres cambiar. El modelo mantiene la esencia de la imagen original mientras aplica los cambios.
- **Para acceder a funciones rápidas desde el panel de acción:** haz clic en cualquier imagen. Desde ahí puedes ver el prompt exacto usado, exportar, o usar herramientas integradas: "Remove Background", "Vectorize", "Upscale", "Extract Prompt", "Mockup-ize". Todo con un solo clic.

## Reglas para agentes
- Usa "V4 Pro" cuando necesites imágenes de alta resolución y detalle fino listas para producción.
- Usa "V4 Standard" para iteración rápida y prototipado.
- Usa "Vector" o "Vector Pro" cuando necesites archivos SVG editables con rutas reales y capas estructuradas.
- Cambia a "Recraft V2" o "Recraft V3" cuando necesites aplicar estilos personalizados (V4 no soporta estilos).
- Cambia a un modelo externo como "Nano Banana 2" cuando necesites edición basada en referencia (V4 no soporta reference-based editing).
- En Exploration Mode, trata los primeros 8 resultados como borradores conceptuales, no como imágenes finales.
- Usa baja similitud en el slider de Exploration Mode para explorar direcciones creativas; usa alta similitud para pulir refinamientos.
- Para generar video, selecciona primero una imagen en el canvas y adjúntala como referencia antes de escribir el motion prompt.
- Usa "Extract Prompt" para capturar la lógica completa detrás de cualquier imagen (iluminación, composición, materiales, color grading, ángulo de cámara, estilo).
- Guarda estilos personalizados después de generar una imagen de prueba exitosa para reutilizarlos en todos los proyectos.
- Presiona "M" para crear un mockup desde cero; usa "Mockup-ize" desde el panel de acción para transformar una imagen existente en superficie editable.
- Nunca intentes usar estilos personalizados con V4; el sistema cambiará automáticamente a V2 o V3.

## Errores comunes que evita o menciona
- **No usar estilos con V4:** si seleccionas un estilo mientras usas V4, el sistema cambia automáticamente a Recraft V2 o V3. Para mantener V4, no selecciones estilos.
- **No usar edición basada en referencia con V4:** V4 no soporta reference-based editing. Para editar imágenes con referencias, cambia a un modelo externo como Nano Banana 2.
- **No tratar los primeros resultados de Exploration Mode como finales:** son borradores conceptuales para encontrar la dirección correcta, no imágenes terminadas.
- **No ignorar el slider de similitud en Exploration Mode:** controla si quieres variaciones creativas (baja similitud) o refinamientos precisos (alta similitud).
- **No olvidar adjuntar la imagen como referencia antes de generar video:** debes seleccionar la imagen en el canvas y adjuntarla explícitamente como referencia para que el video mode funcione.
- **No subestimar "Extract Prompt":** captura detalles técnicos como color grading, ángulo de cámara y materiales, no solo palabras clave superficiales.