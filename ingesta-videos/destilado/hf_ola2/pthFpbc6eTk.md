# I Vibe Coded a Real App in 30 Minutes: Can It Hit $10K/Month?
**Fuente:** hf_ola2 | https://youtu.be/pthFpbc6eTk

## Que ensena sobre Higgsfield (2-3 lineas)
Higgsfield Supercomputer permite construir apps funcionales (con URL real, frontend y backend) describiendo la idea en lenguaje natural, sin código. Incluye generación de video integrada con modelos como Seedance (C-Dance) y Cinema Studio 4D para control de cámara 3D. El App Builder está dentro de la plataforma Higgsfield y las apps publicadas compiten por un premio de $100K basado en uso.

## Tips y flujos accionables

**Prompt inicial para App Builder:**
- Usa formato: "Build an app called [NOMBRE]. You upload [INPUT], pick [OPCIONES], and it generates a [DURACION]-second video that looks like [ESTILO]. Make it [ADJETIVOS: warm, grainy, quiet]."
- **NO** listes features técnicas (login, gallery, share button). El sistema infiere la base de datos y estructura necesaria automáticamente.
- Ejemplo exacto del video: *"Build an app called DV Diary. You upload one photo of yourself, pick a place and an outfit, and it generates a 15-second video that looks like an early 2000s camcorder tape. And make it warm, grainy, and quiet."*

**Refinamiento post-generación:**
- Para cambiar diseño: pide cambios específicos en lenguaje natural. Ejemplo: *"Make the whole app look like a real camcorder video with the location full screen in the background. Add a blurry glass menu floating on top, turn the list into a swipable carousel, and fix the sporty outfit to actually look athletic."*
- Supercomputer muestra el código en tiempo real mientras reescribe la interfaz.

**Modo de generación:**
- Por defecto usa **Effective Mode**: consume los menos créditos posibles, seleccionando automáticamente el mejor modelo para la tarea.

**Generación de video dentro de la app:**
- **Modelo recomendado:** Seedance (C-Dance) – "hands-down the absolute best video model" según el creador.
- **Resolución:** 1080p, relación 9:16 para Instagram.
- **Input foto:** Elegir foto con rostro claramente visible y buena iluminación frontal. "The better the initial lighting, the more accurate the final video will be."
- **Sin prompts de texto:** La app genera el video automáticamente según las opciones seleccionadas (outfit, locación). Ideal para principiantes.

**Cinema Studio 4D (control de cámara avanzado):**
- Entorno 3D en vivo dentro del navegador.
- Permite: mover personajes, volar la cámara, ajustar iluminación en tiempo real.
- Flujo: construyes el shot exacto → colocas personajes → animas cámara → pones keyframes → envías el motion directamente a Seedance (C-Dance) con un clic.
- Ventaja: control total sobre movimiento de cámara y personajes, sin depender de prompts de texto.

**Publicación y competencia:**
- Supercomputer busca dominio gratuito disponible, lo reserva y conecta la app automáticamente.
- Las apps aparecen en la sección "App" de Higgsfield (app library).
- El premio de $100K va a la app con más uso en la plataforma.

## Reglas para el erudito de Higgsfield

- **Para construir una app desde cero:** usa Supercomputer con un prompt de 1-2 oraciones describiendo el concepto y el vibe, sin mencionar features técnicas.
- **Para refinar diseño visual:** pide cambios específicos en lenguaje natural (colores, layout, estilo de menú, tipo de carrusel).
- **Para generar video dentro de la app:** usa el modelo **Seedance (C-Dance)** con resolución **1080p** y relación **9:16** para vertical.
- **Para control preciso de cámara y movimiento:** usa **Cinema Studio 4D** para construir la escena 3D, animar cámara con keyframes, y enviar el motion a Seedance.
- **Para optimizar créditos:** deja que Supercomputer opere en **Effective Mode** (selecciona automáticamente el modelo más eficiente).
- **Para subir foto de input:** elige una con rostro visible y buena iluminación frontal para mejor precisión en el video generado.

## Errores comunes / que evitar

- **No listar features técnicas** (login, gallery, share button) en el prompt inicial. El sistema infiere la estructura necesaria automáticamente.
- **No usar prompts largos** con especificaciones de backend. Una oración corta con el vibe deseado funciona mejor.
- **No esperar que el diseño inicial sea perfecto.** Es normal que la primera versión sea básica; hay que pedir refinamientos específicos.
- **No subir fotos con mala iluminación** para generar videos. La precisión del resultado depende directamente de la calidad de la foto de entrada.
- **No asumir que necesitas escribir prompts de texto** para la generación de video dentro de la app. Las opciones seleccionadas (outfit, locación) son suficientes.
- **No ignorar el modo Effective** – intentar forzar modelos específicos puede consumir más créditos sin mejorar resultados.