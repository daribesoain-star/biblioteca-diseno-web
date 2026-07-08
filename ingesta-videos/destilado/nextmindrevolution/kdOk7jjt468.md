# FLOW Text-to-Video Tutorial: Step-by-Step Guide
**Fuente:** nextmindrevolution | https://youtu.be/kdOk7jjt468
## Qué enseña (2-3 líneas)
Enseña a generar videos en Google Flow con texto, ajustar parámetros antes de ejecutar y usar las acciones posteriores como editar, descargar, escalar, marcar o borrar.  
La lección central es que Flow funciona mejor con prompts precisos: estilo, encuadre, acción, contexto, dirección artística, cámara, audio y diálogo.

## Lecciones accionables
- No empieces con prompts vagos como:
```text
A man walks over a surreal realistic landscape.
```
  Ese prompt deja huecos importantes: tono, ropa del personaje, hora del día, calle, fondo y ambiente. Si no los defines, el modelo los inventa.

- Antes de generar, revisa siempre los settings:
  - `aspect ratio`: puede ser `portrait` o `landscape`.
  - `outputs`: puedes pedir hasta `4`; el ejemplo usa `1` y luego `2`.
  - `model`: el video menciona `3.1` como el más reciente.
  - modo: `fast` o `quality`.
  - `quality`: mejor calidad, cuesta `100 credits` y tarda más.
  - ejemplo usado: `3.1 fast`.

- Para ejecutar un prompt en Flow, pega el texto y haz clic en la flecha. La interfaz avisa que está generando y luego muestra los outputs en pantalla.

- Si generas varios outputs con el mismo prompt, no serán idénticos: pueden ser parecidos, pero distintos. Incluso con instrucciones claras, Flow puede producir resultados raros o inesperados.

- Al pasar el cursor sobre un video generado, aparecen acciones:
  - `favorite video`
  - `edit`
  - `full screen`
  - `download`

- Opciones de descarga mencionadas:
  - descargar video.
  - descargar versión `GIF`.
  - descargar `original size`, que es `720p`.
  - usar `upscale`; el upscale tarda unos minutos y no cuesta créditos extra.

- En el menú de tres puntos:
  - `flag`: reporta a Flow/Google que el output no es bueno.
  - `delete`: borra el clip definitivamente. No se recupera y no devuelve créditos.

- La opción `edit` abre el video en otra vista donde puedes usar prompts para:
  - insertar elementos.
  - remover elementos.
  - cambiar posición de cámara.
  - cambiar movimiento de cámara.

- Para insertar un elemento:
  - entra en `edit`.
  - elige `insert`.
  - pasa el cursor sobre el video hasta ver una cruz pequeña.
  - selecciona el punto exacto donde quieres insertar.
  - escribe el prompt de inserción.
  - ejemplo verbatim:
```text
a dog looking for something to eat
```
  Flow usa el punto seleccionado y el área alrededor para colocar el objeto ahí.

- Las ediciones son nuevas generaciones y usan los settings actuales del video. El video muestra el aviso: cada generación usa `20 credits` según los settings actuales.

- Plantilla recomendada para prompts:
  - `style`
  - `composition and framing of the subject and the action`
  - `context and setting`
  - dirección artística: `ambience`, `lighting`, `camera motion`
  - `audio and dialogue`

- Prompt completo de ejemplo:
```text
Ultra realistic cinematic super close-up overhead shot of a woman in her bed waking up from sleep. She slowly opens her eyes. It's the first light in the morning around 8:00 a.m. The ambiencece is soft and natural. As she slowly opens her eyes, the camera smoothly and slowly zooms out, revealing her face. The audio is the classic sound of morning in a suburban green neighborhood. Calm and relaxing. No music, no subtitles.
```

- Puedes usar Gemini para mejorar prompts. Prompt usado:
```text
Please enhance this text prompt for a scene created on Google Flow.
```

- Si falta detalle, pídele a Gemini algo específico como:
```text
add a detailed description of the woman
```

- Si Gemini intenta generar una imagen con `Nano Banana`, corrígelo con una instrucción explícita:
```text
avoid using Nano Banana. Do not provide an image, just a text prompt.
```

- Antes de copiar un prompt mejorado desde Gemini a Flow, léelo completo. Gemini puede añadir detalles no pedidos y esos detalles aparecerán en el video, consumiendo `20 credits`.

## Reglas para agentes
- Usa una plantilla de prompt cuando el usuario pida video: estilo, encuadre, sujeto, acción, contexto, setting, ambiente, iluminación, movimiento de cámara, audio y diálogo.
- Pregunta o completa detalles críticos antes de generar: tono, ropa, hora del día, fondo, ubicación, acción exacta y audio.
- Usa `3.1 fast` para iteraciones rápidas y baratas; usa `quality` solo cuando el usuario priorice calidad y acepte `100 credits`.
- Configura `portrait` o `landscape` antes de generar; nunca asumas el aspect ratio.
- Define el número de `outputs` antes de ejecutar; usa varios outputs cuando el usuario quiera explorar variaciones.
- Usa `edit > insert` cuando el usuario quiera añadir un objeto en una zona específica del video.
- Selecciona el punto visual exacto antes de usar `insert`; no insertes elementos sin ubicación.
- Usa prompts de edición para `insert`, `remove`, `camera position` y `camera motion`.
- Usa `upscale` cuando el usuario necesite más que `720p`; informa que puede tardar minutos.
- Nunca borres un clip sin confirmación explícita, porque `delete` es irreversible y no devuelve créditos.
- Nunca ejecutes en Flow un prompt expandido por Gemini sin revisarlo completo.
- Cuando uses Gemini para expandir prompts, añade “Do not provide an image, just a text prompt” si existe riesgo de que active `Nano Banana`.
- Incluye instrucciones de audio como `No music, no subtitles` cuando el usuario no quiera música ni subtítulos.

## Errores comunes que evita o menciona
- Usar prompts demasiado genéricos y dejar que el modelo rellene los huecos.
- No revisar aspect ratio, número de outputs, modelo y modo antes de generar.
- Confundir `fast` con `quality` y gastar `100 credits` sin necesidad.
- Esperar outputs idénticos al generar más de una variante.
- Creer que un prompt claro garantiza resultados perfectos.
- Borrar videos pensando que se pueden recuperar o que devuelven créditos.
- Descargar solo `original size` sin notar que es `720p`.
- No usar `upscale` cuando se necesita más resolución.
- Pedir a Gemini una expansión y aceptar detalles añadidos que no eran deseados.
- Activar `Nano Banana` en Gemini cuando solo se quería texto.
- Olvidar especificar cámara, iluminación, ambiente, audio o subtítulos.