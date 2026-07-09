# GPT Image 1.5 Full Beginner Tutorial – Interface, Editor & Tricks [gptimage]
**Fuente:** ola4-herramientas | https://youtu.be/6H-Y-aOqVns

## Qué enseña (2-3 líneas)
Tutorial completo del nuevo modelo de generación de imágenes GPT Image 1.5 integrado en ChatGPT. Cubre desde la interfaz nativa y el editor de imágenes hasta trucos avanzados como transferencia de estilo, edición selectiva por áreas, y uso via API. Incluye comparativas con Google Gemini 2.0 (Nano Banana Pro) y guías prácticas para prompts.

## Lecciones accionables
- **Aspect ratio primero:** Siempre inicia el prompt con la relación de aspecto exacta, ej: `aspect ratio 16 to 9` antes de cualquier otra instrucción. Los formatos landscape/portrait de la API no son 16:9 ni 9:16 exactos.
- **Un chat por imagen:** Usa un nuevo chat para cada generación nueva. Si acumulas prompts en el mismo hilo, el modelo arrastra contexto de generaciones previas e introduce detalles no deseados.
- **Transferencia de estilo entre imágenes:**
    1. Crea una imagen de referencia con el estilo deseado (ej: en Midjourney).
    2. Súbela a ChatGPT y pide: `describe this in detail`.
    3. Usa esa descripción detallada como prompt base en GPT Image 1.5.
- **Edición básica nativa:** En la homepage de ChatGPT, haz clic en el ícono `+` a la izquierda del input bar → activa `create image` → escribe prompt → flecha derecha para generar.
- **Editar imagen existente:** Arrastra y suelta la imagen en el chat, o haz clic en el tile `edit an image` en la parte inferior izquierda. También puedes usar la interfaz dedicada: `Images` en la barra de navegación izquierda.
- **Editor integrado (select area):** Haz clic en una imagen generada previamente → en la esquina superior derecha usa `select area` para marcar una zona específica (resaltada en azul). Solo esa área se modificará. El prompt va en el cuadro debajo de la imagen.
- **Edición sin selección:** En la vista por defecto, escribe el prompt abajo, sube imagen de referencia si deseas, y presiona `generate` a la derecha.
- **Estilos predefinidos:** En la interfaz de edición hay opciones de estilo precargadas. Selecciona una, sube imagen, y la generación comienza automáticamente.
- **Uso via API:** Plataformas como FAL ofrecen acceso a GPT Image 1.5 via API. La interfaz varía según el proveedor y puede tener costo.
- **Cookbook de OpenAI:** Recurso oficial con tips de prompting, transferencia de estilo, referencia multi-imagen y compositing. Enlaces en la descripción del video.

## Reglas para agentes
- Usa `aspect ratio 16 to 9` (o la relación deseada) como primera línea del prompt cuando generes imágenes, para fijar la estructura visual desde el inicio.
- Nunca reutilices el mismo chat para múltiples generaciones de imágenes; abre un nuevo chat por cada imagen para evitar contaminación de contexto.
- Cuando edites solo una parte de la imagen, activa `select area` y delimita exactamente la zona azul que debe modificarse; el resto permanece intacto.
- Para transferir un estilo visual, primero pide a ChatGPT que describa en detalle la imagen de referencia, luego usa esa descripción como prompt en GPT Image 1.5.
- Si usas la API, verifica que el proveedor ofrezca los formatos exactos que necesitas (1K, 2K, 4K) y ten en cuenta que los modos landscape/portrait pueden no ser 16:9 o 9:16.

## Errores comunes que evita o menciona
- **Baja resolución por defecto:** El modelo genera imágenes con resolución sorprendentemente baja; el mercado se mueve hacia mayor fidelidad pero esto no se ha priorizado.
- **Tiempo de generación lento:** Aunque OpenAI afirma que es 4 veces más rápido, en pruebas reales toma ~58 segundos por imagen, independientemente del método.
- **Falta de precisión histórica en prompts temporales:** Al pedir fotos tipo smartphone de épocas pasadas (ej: "Londres en el año 43 d.C."), GPT Image 1.5 tiende a generar selfies estilo redes sociales en lugar de imágenes tipo paparazzi auténticas.
- **Sobrecarga visual en tipografía fluida:** En prompts como "tipografía líquida con palabras formadas por gotas que refractan una ciudad invertida", GPT Image 1.5 suele saturar el encuadre.
- **Problemas con texto multilingüe:** En prompts que requieren 5 idiomas (incluyendo árabe y hebreo) impresos en una servilleta de papel, el modelo no maneja bien la sangría de tinta, distorsión de fibras y texto ultrafino simultáneamente.
- **Interpretación literal del tono visual:** El modelo puede interpretar el tono del texto basándose en la apariencia del personaje (ej: un vikingo genera automáticamente un estilo de cómic o propaganda según su aspecto).