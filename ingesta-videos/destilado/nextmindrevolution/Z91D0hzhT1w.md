# Google Flow Omni Tutorial: Stop-Motion Collage Animation
**Fuente:** nextmindrevolution | https://youtu.be/Z91D0hzhT1w
## Qué enseña (2-3 líneas)
Enseña un flujo para crear animaciones de transición tipo collage stop-motion en Google Flow Omni, usando imágenes de referencia claras como base.
El método combina composición visual previa, prompts precisos de entrada/salida y generación con Omni Flash; también muestra cómo pedirle a Gemini o al agente de Flow que redacten prompts más detallados.
## Lecciones accionables
- Parte de una buena imagen de referencia: el video insiste en que “none of this works if you don't provide a good reference”. Puedes crearla en Google Flow, Canva, Figma u otra herramienta de diseño.
- En Google Flow, arrastra la imagen al proyecto como **ingredient**. No la bloquees: “I'm not going to lock the image, just use it as a reference”.
- Estructura el prompt de video en este orden: primero el estilo, luego qué elementos entran, luego qué elementos salen.
- Keyword/prompt de estilo usado: “A stop motion type of collage animation”.
- Da instrucciones pieza por pieza. Ejemplos mencionados: el título del show “snap into place at the top secured by tape”; las guitarras de la izquierda “slide from the left”; los micrófonos “fly into frame”; el recorte del hombre en el taburete “drops into the middle”.
- Para la salida, usa instrucciones explícitas. Prompt mencionado: “The elements on the left peel off to the right side while the elements on the right peel off to the left side.”
- Configuración de video mencionada: ir a **Video**, usar la imagen como **ingredient**, seleccionar **Omni flash**, y generar una duración de **6 segundos**. El video comenta que **10 segundos** hace la animación demasiado lenta y que **6 o 4 segundos** suele ser suficiente.
- Si no quieres redactar el prompt manualmente, usa Gemini o el agente de Google Flow. Primero arrastra la imagen de referencia y pide un prompt textual para Google Flow Omni.
- Prompt operativo para Gemini/agente, según lo explicado: pedir “create a text prompt”; especificar que es “for Google flow Omni video generator”; pedir que incluya “transition in and transition out”; añadir instrucciones específicas de salida; cerrar con “provide a text response only”.
- Si Gemini responde con poco detalle, vuelve a pedir “be more detailed and creative”.
- Para collages complejos, genera varias veces o simplifica el collage si la animación no respeta suficientes detalles.
- Para crear imágenes base en Google Flow, usa **Image** y **Nano Banana Pro**.
- Define primero el estilo visual de imagen. Estilo mencionado: “magazine cut and paste collage, tape, marker”.
- Luego define los elementos específicos de cada imagen: sujeto, título del show, instrumentos, ubicación y composición.
- Para pedir imágenes al agente: usa el sujeto como **ingredient**, pide “create a text prompt to use on an image generator like Nano Banana”, entrega el estilo, añade instrucciones de contenido y termina con “provide a text response only”.
- Para generar tres imágenes de una vez, entrega los tres sujetos como ingredients: hombre, mujer y gato. Luego pide “create three different images with the following instructions”, añade el estilo global, instrucciones para la primera, segunda y tercera imagen, y especifica **16:9**.
- Si necesitas consistencia de sujeto, usa la referencia del sujeto y bloquéala cuando uses keywords como “man” o “woman”.
- Herramientas y modelos mencionados: **Google Flow**, **Google Flow Omni**, **Omni flash**, **Gemini**, **Nano Banana Pro**, **Canva**, **Figma**, **Niji Journey**.
## Reglas para agentes
- Usa una imagen de referencia clara antes de generar cualquier transición de collage.
- Usa la imagen como ingredient cuando el objetivo sea guiar composición, estilo y elementos.
- No bloquees la imagen si solo debe funcionar como referencia general.
- Empieza siempre el prompt con el estilo visual antes de describir la acción.
- Describe cada elemento visible con una acción concreta de entrada y una acción concreta de salida.
- Usa “transition in” y “transition out” cuando pidas prompts a Gemini o al agente.
- Termina las solicitudes a Gemini con “provide a text response only” cuando necesites texto y no imágenes.
- Pide más detalle si la respuesta del agente es demasiado corta.
- Usa Omni Flash para este flujo de video en Google Flow.
- Usa 4 o 6 segundos para animaciones rápidas de collage; evita 10 segundos si la transición se siente lenta.
- Simplifica el collage o regenera si el modelo no respeta la referencia.
- Usa Nano Banana Pro para crear las imágenes base si no vienen de Canva/Figma.
- Bloquea referencias de sujeto cuando la consistencia facial/corporal no sea suficiente.
- Nunca dejes que el modelo invente toda la transición si necesitas una coreografía específica.
## Errores comunes que evita o menciona
- Usar una referencia visual pobre o ambigua.
- No indicar qué entra y qué sale del cuadro.
- Escribir prompts vagos en lugar de asignar acciones a cada elemento.
- Esperar fidelidad del 100% a la imagen de referencia: el video aclara que habrá pequeñas diferencias.
- Usar collages demasiado complejos sin regenerar ni simplificar.
- Elegir 10 segundos para una animación que debería sentirse rápida.
- Pedirle a Gemini un prompt sin aclarar “provide a text response only”, lo que puede hacer que intente crear una imagen.
- Confiar en que el agente siempre obedecerá: en un caso pidió texto, pero el agente generó imágenes directamente.