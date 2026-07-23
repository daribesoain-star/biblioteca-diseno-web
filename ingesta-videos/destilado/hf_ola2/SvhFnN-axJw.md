# Stop Wasting Credits on Seedance 2.0, Do This Instead
**Fuente:** hf_ola2 | https://youtu.be/SvhFnN-axJw

## Que ensena sobre Higgsfield (2-3 lineas)
Seedance 2.0 es un modelo multi-shot que construye secuencias de cámara, movimiento y transiciones a partir del prompt. La calidad final depende más de la configuración previa y la estructura del prompt que de la creatividad. Usar referencias múltiples (imagen, video, audio) y un flujo de trabajo ordenado reduce drásticamente el gasto de créditos.

## Tips y flujos accionables

### Configuración obligatoria antes de generar
1. **Modelo:** Selecciona **Seedance 2.0** (NO Seedance 2.0 Fast). Fast es solo para previsualizaciones rápidas; da resultados notablemente más suaves.
2. **Duración:** Pon **15 segundos** siempre. Te da más material para editar y evita regenerar.
3. **Aspect Ratio:** 16:9 para YouTube/horizontal; 9:16 para Reels/TikTok.
4. **Resolución:** Siempre la más alta disponible.
5. **Upscaler post-generación:** Ve a la pestaña Video > **Video Upscale**. Selecciona **Topaz Video**, escala a **4K**. En ajustes avanzados, ajusta el frame rate para suavizar movimientos entrecortados.

### Estructura de prompt para Seedance 2.0 (multi-shot)
- **NO uses** una línea vaga como "un chef preparando comida en una cocina".
- **SÍ usa** un prompt multi-shot que describa: qué hace la cámara en cada parte del clip, qué hace el sujeto, cómo es el entorno y la iluminación.
- **Atajo:** Toma tu idea en lenguaje simple, pégala en Claude, ChatGPT o Gemini y pide: *"Expande esto en un prompt multi-shot cinematográfico detallado para Seedance 2.0, incluyendo tipos de plano, movimientos de cámara, transiciones y notas de iluminación"*. Copia el resultado directamente en Seedance.

### Consistencia de personaje: Character Reference Sheet
- **Crea una hoja de referencia** que muestre al personaje desde 4 ángulos en UNA sola imagen: frente, perfil, espalda y tres cuartos.
- **Herramienta:** Nano Banana Pro. Prompt exacto: *"Describe el personaje en detalle y pide los 4 ángulos en una imagen"*. Genera variaciones, elige la mejor.
- **Uso:** Sube esa imagen como referencia en cada generación donde aparezca el personaje. Sin esto, el modelo cambia rasgos entre clips.

### Flujo para secuencia multi-escena continua
1. Genera la escena 1.
2. Para la escena 2: sube tu **character sheet** y la **imagen clave** de la nueva escena como referencias de imagen.
3. En la sección **Video Reference**, sube el clip COMPLETO de la escena 1 (NO un screenshot). El modelo lee velocidad de cámara, dirección, trayectoria, cambios de luz.
4. Escribe el prompt para la escena 2 describiendo la nueva acción y ubicación.
5. Genera. Repite para cada escena, usando el clip anterior como video reference.

### Audio y voz con Seedance 2.0
- **Activa el toggle de audio** en el panel de generación ANTES de generar (viene desactivado por defecto para algunos usuarios).
- **Para narración:** Sube un clip de audio corto de la voz deseada como **audio reference**. Sube la imagen del personaje. En el prompt, escribe el diálogo, el estilo de entrega y añade *"match the reference voice"*. Mantén cada segmento dentro de 15 segundos de contenido hablado. Genera, luego repite para cada sección del guion con la misma referencia de audio.

### Referencias múltiples
- Seedance 2.0 permite hasta **9 imágenes, 3 videos y 3 audios** por generación.
- Usa la **imagen clave** de la escena como referencia principal + **character sheet** al lado. La imagen clave da el entorno; la hoja de personaje mantiene la consistencia.

### Verificación de elegibilidad
- Cada referencia (imagen, video, audio) se verifica automáticamente al subirla. Junto a cada referencia hay un botón **Check Eligibility**.
- Si una referencia falla, cámbiala antes de generar.
- Si el **prompt de texto** es rechazado por política de contenido, pásalo a ChatGPT/Claude con la instrucción: *"Reescribe esto cambiando solo el lenguaje específico que disparó el filtro, sin alterar la idea"*. Copia la nueva versión y genera.

## Reglas para el erudito de Higgsfield
- **Para resultados cinematográficos:** usa el preset **Seedance 2.0** (no Fast) con duración **15s**, resolución máxima, y upscale con **Topaz Video a 4K**.
- **Para consistencia de personaje en múltiples clips:** usa una **Character Reference Sheet** de 4 ángulos (creada con Nano Banana Pro) como referencia de imagen en cada generación.
- **Para secuencias continuas:** usa el **clip completo anterior** como **Video Reference** (no screenshot). Combínalo con la imagen clave de la nueva escena y la character sheet.
- **Para narración con voz consistente:** sube un **audio reference** corto de la voz deseada, activa el toggle de audio, y en el prompt incluye *"match the reference voice"*.
- **Para prompts efectivos:** usa estructura **multi-shot** con descripciones de cámara, sujeto, entorno e iluminación. Genera el prompt con Claude/ChatGPT/Gemini a partir de una idea simple.
- **Para evitar rechazos:** verifica la elegibilidad de cada referencia antes de generar. Si el prompt es rechazado, pide a una IA que lo reformule sin cambiar la idea.

## Errores comunes / que evitar
- **Usar Seedance 2.0 Fast** para resultados finales. Siempre usa Seedance 2.0 estándar.
- **No activar el toggle de audio** antes de generar si necesitas sonido. Si generas sin él, debes regenerar todo el clip.
- **Usar un screenshot del último frame** como referencia para la siguiente escena. El modelo no capta movimiento, cámara ni luz. Usa el clip completo como Video Reference.
- **Subir solo una imagen de referencia** cuando puedes usar hasta 9. Más referencias = menos alucinaciones.
- **Escribir prompts de una línea** ("un chef en una cocina"). Seedance necesita estructura multi-shot con dirección de cámara y acción.
- **No hacer upscale** con Topaz Video a 4K antes de editar. La diferencia de calidad es notable.
- **Ignorar la verificación de elegibilidad** de referencias. Si falla, no podrás generar hasta que la reemplaces.
- **Usar herramientas externas de voz** sin saber que Seedance ya genera audio con referencia de voz internamente.