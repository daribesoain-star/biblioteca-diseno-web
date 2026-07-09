# Recraft Product Walkthrough [recraft]
**Fuente:** ola4-herramientas | https://youtu.be/guVhkM9vAYc

## Qué enseña (2-3 líneas)
Este video es un recorrido completo por Recraft, una herramienta de diseño profesional para generar y editar imágenes en múltiples estilos (fotorrealistas, editoriales, ilustraciones 3D, vectoriales, etc.). Cubre desde la interfaz básica hasta funciones avanzadas como estilos personalizados, mockups, outpainting, inpainting, edición con IA y exportación vectorial.

## Lecciones accionables
- **Para generar una imagen:** haz clic en la primera opción del panel "Create new". Se creará una capa vacía y se abrirá un panel de prompt a la izquierda. Allí especifica: dimensiones, estilo, paleta o referencias, prompt (lo que quieres y no quieres ver), relación de aspecto, nivel artístico (influye en creatividad y composición) y número de variantes por generación.
- **Prompt de ejemplo simple:** escribe cualquier prompt descriptivo y haz clic en "Recraft". Las variantes aparecen como miniaturas en la parte inferior.
- **Para refinar una imagen generada:** usa "Fine-tune" (especifica qué tan similar quieres la nueva imagen y ajusta el prompt) o "Variant" (no usa el prompt, solo el contenido visual original para generar alternativas).
- **Para aplicar estilos predefinidos:** haz clic en el selector de estilo en el panel de prompt. Se abre la biblioteca de estilos. Puedes filtrar y elegir entre opciones genéricas o estilos especializados por categorías (ej. "motion blur", "risograph"). Haz clic en "Apply" para usarlo.
- **Para explorar más estilos:** ve a "Feed" (biblioteca infinita de estilos). Busca por colores, vibra y técnicas. Haz clic en "Apply" o "Save" para guardarlos. Los estilos guardados se acceden desde la navegación superior.
- **Para combinar estilos con paletas personalizadas:** genera imágenes con un estilo (ej. "natural light"), luego haz clic en el icono de paleta y crea una paleta personalizada. Esto funciona en todos los estilos y da control granular sobre los colores.
- **Para crear un estilo personalizado:** haz clic en "Style" en el panel "Create new". Sube de 1 a 5 imágenes de referencia (desde tu computadora o el canvas). Configura:
  - **Style prompt:** describe colores, texturas, geometría, composición. Se incrusta en el estilo para usar prompts más cortos después.
  - **Composición:** elige "Style and composition" si las referencias tienen perspectivas únicas (fisheye, ángulo bajo); elige "Style essentials" si tienen un look común para evitar layouts inesperados.
  - **Categoría:** normalmente la sugerida funciona, pero si buscas vectores, selecciona "Vector icon" (iconos minimalistas) o "Vector art" (formas vectoriales limpias).
  - **Pesos de imágenes:** si subes más de una, arrastra los controles entre imágenes para forzar una paleta de colores o hacer que domine el estilo de alguna.
- **Para probar un estilo personalizado:** usa el panel de prueba a la derecha. Escribe un prompt y haz clic en "Generate test image". Ajusta configuraciones y repite hasta validar.
- **Para generar vectores (ej. logotipos):** usa los estilos de la categoría "Logo type" en la biblioteca. Todos son vectoriales: puedes ajustar colores y exportar en SVG.
- **Para crear un mockup:** necesitas dos capas: la capa superior con el artwork (ej. logotipo) y la imagen base. Haz clic en "Make mockup" en la barra de herramientas. Espera a que analice la imagen. Luego arrastra el artwork dentro del contenedor de mockup. Opciones adicionales: selecciona "Tiling" para patrones, o "Add mask" para dibujar un área de enmascaramiento con herramientas de selección.
- **Para exportar:** selecciona el frame y haz clic en "Export". Elige formato de archivo y ajusta dimensiones antes de guardar.
- **Para outpainting (expandir imagen):** presiona F (atajo para frame) y dibuja un área más grande que la imagen original. Haz clic en "Recraft". El modelo fusiona los bordes. Útil también para añadir espacio blanco alrededor de ilustraciones.
- **Para fusionar objetos en una sola imagen:** coloca varias imágenes dentro de un frame y haz clic en "Recraft". El modelo las combina de forma seamless.
- **Para inpainting (modificar área específica):** haz clic en "Edit area" en la barra de herramientas, delinea el área con la herramienta de selección y escribe un prompt. Para eliminar elementos, dibuja una máscara y haz clic en "Erase".
- **Para upscaling:** usa "Crisp upscale" (aumenta resolución y nitidez sin alterar contenido) o "Creative upscale" (regenera contenido mejorando texturas, anatomía y detalles finos).
- **Para edición con IA (AI editing):** crea una nueva capa, haz clic en el icono de adjuntar y selecciona un modelo externo (GPT o Flux). Sube una imagen de referencia y escribe instrucciones en el prompt. El modelo toma en cuenta el prompt nuevo y el contenido de la imagen actual. Puedes iterar (ej. "añade una maleta al techo del coche", luego "cambia el coche completamente"). Cualquier imagen en el canvas puede usarse como referencia: selecciónala, haz clic en adjuntar, elige el modelo y se adjuntará automáticamente.

## Reglas para agentes
- Usa "Recraft V3" como modelo por defecto para generar una amplia gama de imágenes.
- Cuando crees un estilo personalizado, sube hasta 5 imágenes de referencia para refinar el estilo; con más referencias el modelo aprende mejor cómo deben verse diferentes objetos.
- Si las imágenes de referencia tienen perspectivas únicas (fisheye, ángulo bajo), selecciona "Style and composition" en los controles de composición.
- Si las imágenes de referencia tienen un look común, selecciona "Style essentials" para evitar layouts inesperados.
- Para generar vectores, asegúrate de seleccionar la categoría "Vector icon" (iconos minimalistas) o "Vector art" (formas vectoriales limpias) en la creación de estilos personalizados.
- Para preservar el look de un personaje original en edición con IA, usa el modelo Flux.
- Para transferir el estilo de una imagen a otra o hacer edición contextual, usa el modelo GPT high (soporta hasta 4 adjuntos).
- Nunca uses "Style and composition" si las referencias tienen un look común, porque puede generar layouts inesperados.
- Nunca uses el modelo GPT para preservar el look de un personaje original; usa Flux en su lugar.

## Errores comunes que evita o menciona
- **No usar estilos específicos:** el modelo Recraft V3 es versátil, pero aplicar un estilo más específico (de la biblioteca o personalizado) mejora enormemente los resultados sin necesidad de prompt engineering complejo.
- **No ajustar la composición al crear estilos:** si las referencias tienen perspectivas únicas y no seleccionas "Style and composition", el modelo no capturará bien esas características. Si las referencias son comunes y seleccionas esa opción, obtendrás layouts inesperados.
- **No probar estilos personalizados antes de guardarlos:** usa el panel de prueba para validar e iterar sobre el estilo antes de guardarlo.
- **No usar el peso de imágenes:** si subes varias referencias diversas, no ajustar los controles de peso puede hacer que el estilo no refleje la paleta o el look dominante que deseas.
- **No usar la categoría correcta para vectores:** si creas un estilo para vectores pero no seleccionas "Vector icon" o "Vector art", el resultado no será vectorial limpio.
- **No usar el modelo adecuado en AI editing:** usar Flux cuando quieres transferir estilo o GPT cuando quieres preservar un personaje lleva a resultados subóptimos.