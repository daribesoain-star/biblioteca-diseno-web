1. **Problema:** `"Usa 'Explore' para inspiración y prompts reutilizables; copia 'use text' para solo el prompt o 'use' para preservar 'params'."`  
   **Corrección:** Esta regla es vaga y no accionable. No explica qué es `Explore`, `use text` o `use` en el contexto de Midjourney, ni cómo se accede a estas funciones. Se debe reemplazar con instrucciones concretas como "En la interfaz de Midjourney, haz clic en el botón 'Explore' en la barra lateral para ver galerías de prompts. Para copiar solo el texto del prompt, usa la opción 'Copy Prompt'; para copiar el prompt con sus parámetros (params), usa 'Copy Full Command'."

2. **Problema:** `"Revisa 'Settings' antes de generar: ratio, modelo, 'stylization', 'weird' y 'variety/chaos'; detalla más el prompt cuando no quieras que los sliders decidan demasiado."`  
   **Corrección:** La frase "detalla más el prompt cuando no quieras que los sliders decidan demasiado" es vaga. No especifica qué significa "detallar más" ni cómo contrarrestar los sliders. Se debe reemplazar con: "Si los sliders de 'stylization' o 'weird' están altos, aumenta la especificidad del prompt añadiendo adjetivos concretos (ej. 'photorealistic', 'sharp focus') y usando el parámetro `--stylize 0` para reducir la intervención del modelo."

3. **Problema:** `"Usa 'Mood boards' para transferir el estilo de un conjunto de imágenes; usa 'omni reference' para mantener un sujeto (solo versión 7)."`  
   **Corrección:** La regla no explica qué son 'Mood boards' ni 'omni reference' en el contexto de Midjourney, ni cómo se usan. Es una instrucción no accionable. Se debe reemplazar con: "En Midjourney, sube un conjunto de imágenes como 'Mood Board' usando el parámetro `--sref` seguido de las URLs. Para 'omni reference' (solo v7), usa `--cref` para mantener la coherencia del sujeto."

4. **Problema:** `"Usa 'image prompts' para transferir composición, iluminación, color y ambiente; usa 'style references' para transferir solo el estilo visual."`  
   **Corrección:** La regla no especifica cómo se usan estos tipos de referencia en el prompt. Es vaga. Se debe corregir a: "Para transferir composición e iluminación, usa `--iw` (image weight) con una URL de imagen. Para transferir solo estilo, usa `--sref` (style reference) con una URL de imagen."

5. **Problema:** `"Usa capturas del primer frame de cada escena cuando el video tenga cortes; usa 'Grab Still' en la página 'Color' de DaVinci Resolve."`  
   **Corrección:** La instrucción asume que el usuario conoce DaVinci Resolve y la función 'Grab Still'. No es accionable para alguien sin ese conocimiento. Se debe reemplazar con: "En DaVinci Resolve, ve a la página 'Color', pausa el video en el primer frame de la escena, haz clic derecho en el visor y selecciona 'Grab Still' para exportar la imagen."

6. **Problema:** `"Usa 'turn the motion and detail mouth movement of the video to the setting of the images' para transferir movimiento y sincronía facial en Kling/Cling."`  
   **Corrección:** Esta regla es sospechosa de ser una alucinación. No existe evidencia de que un prompt tan específico funcione en Kling/Cling. Además, la redacción es confusa. Se debe eliminar o reemplazar con instrucciones verificadas de la documentación oficial de Kling.

7. **Problema:** `"Divide cualquier video largo en segmentos de máximo 15 segundos cuando el modelo no acepte más duración; une los segmentos en un editor."`  
   **Corrección:** La regla no especifica qué modelo tiene esta limitación. Es vaga y no accionable sin contexto. Se debe corregir a: "En Kling AI, la duración máxima de video es de 15 segundos. Si tu video es más largo, divídelo en segmentos de 15 segundos usando un editor como FFmpeg o DaVinci Resolve, y luego únelos."

8. **Problema:** `"Usa aspect ratio 'auto' cuando edites imágenes existentes para que coincida con el input original."`  
   **Corrección:** La regla no especifica en qué herramienta o plataforma se usa 'auto'. Es vaga. Se debe reemplazar con: "En Midjourney, al editar una imagen existente con 'Vary (Region)' o 'Zoom Out', usa `--ar auto` para que el aspect ratio coincida con el de la imagen original."

9. **Problema:** `"Para personajes famosos, no subas imágenes de referencia; confía en la búsqueda automática de Nano Banana 2."`  
   **Corrección:** La regla es vaga y no accionable. No explica cómo funciona la "búsqueda automática" ni qué hacer si falla. Se debe corregir a: "En Nano Banana 2, escribe el nombre del personaje famoso en el prompt (ej. 'Albert Einstein'). El modelo lo identificará automáticamente sin necesidad de subir una imagen de referencia."

10. **Problema:** `"Usa '{}' con elementos separados por comas para ejecutar el mismo prompt con múltiples sujetos, objetos, estilos, ubicaciones o atributos en Midjourney."`  
    **Corrección:** La regla no explica que esto es una función de iteración (permutación) y que el número de elementos en cada lista se multiplica. Es vaga y puede llevar a malentendidos. Se debe corregir a: "En Midjourney, usa llaves `{}` para crear variaciones. Por ejemplo, `{cat, dog} wearing {hat, glasses}` generará 4 imágenes (cat+hat, cat+glasses, dog+hat, dog+glasses). Ten en cuenta que el número total de imágenes es el producto de los elementos de cada lista."