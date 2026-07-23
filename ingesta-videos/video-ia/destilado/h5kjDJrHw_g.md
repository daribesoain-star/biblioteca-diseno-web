# How to Actually Make 100% Consistent AI Characters
**Fuente:** Youri van Hofwegen | https://youtu.be/h5kjDJrHw_g

## Qué enseña
El tutorial explica cómo crear personajes de IA consistentes usando OpenArt, desde la generación inicial hasta la animación en video. Cubre la creación de personajes por descripción o imágenes, el uso de múltiples personajes en una misma escena, control de poses con editor 3D, posicionamiento preciso en composiciones, y la conversión de imágenes a video con fotogramas de inicio y fin.

## Técnicas accionables

- **Crear personaje desde descripción:** En OpenArt, ve a "Character" → "Create Character" → "Start with a description". Escribe prompt como: *"A natural portrait shot of an Asian woman in her 20s. She looks like a 20-year-old Gen Z influencer, beautiful, natural looking with professional studio lighting"*. Selecciona modelo (ej. NanoBanana Pro) y estilo (ej. "photorealistic"). Genera, elige la mejor variante, haz clic en "Build my character". Revisa las 4 vistas generadas (frontal, primer plano, cuerpo completo, espalda) y regenera las que no te gusten. Pon nombre y backstory opcional (ej. *"Robin is a 20-year-old influencer. She is very interested in sports and skiing..."*).

- **Crear personaje desde imágenes:** Sube entre 1 y 4 fotos (una obligatoria, 3 adicionales para diferentes ángulos: izquierda, derecha, espalda). Nombra el personaje y añade backstory.

- **Generar imagen con personajes:** Dentro del personaje, haz clic en "Create". En el prompt, etiqueta personajes con "@" (ej. *"@Robin and @Leila at the ski center standing on the top of the ski mountain at image number one"*). Sube imágenes de referencia y etiquétalas como "image number X" en el prompt. Para outfits: *"@Robin is wearing this ski outfit at image two"*. Selecciona resolución (hasta 4K) y modelo (Auto o NanoBanana Pro). Genera.

- **Control de pose con editor 3D:** En el campo de imagen de referencia, haz clic en "3D editor". Selecciona animación de la librería (ej. "sprinting animation"). Ajusta cámara, piernas y brazos para la pose deseada (ej. posición de crouch para esquiar). Posiciona la cámara exacta para el ángulo final. Haz clic en "Update pose". Etiqueta la imagen 3D en el prompt.

- **Posicionamiento preciso en escena:** En el prompt, describe la escena. Sube una imagen de fondo y haz clic en "position". Aparecerá un cuadrado que puedes mover y redimensionar para indicar dónde debe aparecer el personaje. Haz clic en "Save placement". Etiqueta la imagen de posición en el prompt.

- **Crear video consistente:** Genera un fotograma inicial (ej. Robin bajando la montaña) y un fotograma final (ej. Robin parada al fondo). Para el final, usa prompt como: *"Robin is standing at the bottom of the ski tracks after she just got off the mountain at image number one. Super happy. Wearing these exact clothes at image two"*. Descarga ambos fotogramas. Ve a "Video mode" → "Image to video". Selecciona modelo con etiqueta "end frame" (recomendados: Google Veo 3.1, Kling 2.6, Pixverse). Configura duración a 10 segundos y calidad máxima. Sube el fotograma inicial como "starting frame" y el final como "end frame". Haz clic en "Create".

- **Uso alternativo:** Usa el personaje como imagen de referencia en "element to video" para generar videos sin necesidad de fotograma inicial, o en la función "story" para videos más largos.

## Reglas para el erudito

- Usa **NanoBanana Pro** cuando quieras la máxima calidad y realismo en imágenes y videos.
- Usa **modelo Auto** cuando no tengas preferencia y quieras que la IA decida el mejor modelo para el prompt.
- Usa **Kling 2.6** para videos con fotograma de inicio y fin cuando necesites duración de 10 segundos y alta consistencia.
- Usa **Google Veo 3.1** o **Pixverse** como alternativas a Kling 2.6 para videos con end frame.
- Usa **4K resolution** cuando crees contenido para plataformas que requieran alta calidad visual.
- Usa **backstory** siempre que tengas tiempo, para dar contexto al personaje y mejorar la coherencia en las generaciones.
- Usa **etiquetas "@"** en el prompt para referenciar directamente a personajes guardados, sin reexplicar quiénes son.
- Usa **"image number X"** en el prompt para referenciar imágenes de outfit, pose o fondo subidas como referencia.
- Usa **3D editor** cuando necesites una pose específica que no encuentres en imágenes de referencia online.
- Usa **position feature** cuando quieras controlar exactamente dónde aparece el personaje dentro de la composición de la escena.
- Usa **4 imágenes de referencia** (frontal, izquierda, derecha, espalda) al crear un personaje desde imágenes para mejor entrenamiento del modelo.
- Usa **NanoBanana** o **SeaDream** como modelos alternativos si NanoBanana Pro no está disponible o no se ajusta al estilo deseado.

## Errores comunes / limitaciones que menciona

- **Problema con métodos tradicionales:** Estar atascado buscando la imagen de referencia perfecta y tener que reexplicar qué imagen usar cada vez que cambias pose, ropa o entorno.
- **Dificultad con múltiples personajes:** Poner varios personajes en la misma escena es "toda otra pesadilla" con métodos convencionales.
- **Inconsistencia al cambiar elementos:** Al modificar pose, vestimenta o ambiente, los métodos antiguos obligan a regenerar y reexplicar referencias constantemente.
- **Limitación de poses:** Sin el editor 3D, estás limitado a las poses que encuentres online; el editor 3D resuelve esto permitiendo crear poses personalizadas.
- **Riesgo de inconsistencia en vestimenta:** Si no se referencia explícitamente la ropa en el prompt del fotograma final, la IA puede cambiar la vestimenta en el video.