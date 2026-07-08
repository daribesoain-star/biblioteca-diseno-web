# STOP Wasting Credits & Master Seedance 2.0 in 10 Minutes
**Fuente:** imskaigenerated | https://youtu.be/BA3v1Z5Huqg

## Qué enseña (2-3 líneas)
Explica cómo usar SeaDance 2.0 dentro de Higgsfield AI para generar videos con control multimodal, audio nativo, extensiones, sincronización con música y prompts estructurados.  
El foco es evitar gastar créditos por prompts vagos, duraciones mal configuradas y referencias mal usadas.

## Lecciones accionables
- Accede a SeaDance 2.0 desde Higgsfield AI: entra a la plataforma, ve a la sección de generación de video y selecciona `SeaDance 2.0` como modelo.
- SeaDance 2.0 acepta en una sola generación hasta `9` imágenes, `3` videos y `1` archivo de audio.
- Referencia los insumos dentro del prompt con etiquetas exactas: `@image1`, `@image2`, `@video1`, `@audio1`.
- Usa imágenes como dirección visual, no solo como referencia. Ejemplo del video: subir dos imágenes de personajes como `@image1` y `@image2`, un video de referencia como `@video1` para estilo de cámara, y un audio atmosférico como `@audio1` para definir el mood.
- Para extensiones: genera un clip base, vuelve a cargar ese resultado como `@video1` y pide que SeaDance lo continúe.
- En extensiones, la duración configurada corresponde solo al tramo nuevo, no al total. Si el clip original dura `10` segundos y quieres agregar `5`, configura duración `5`, no `15`.
- El prompt de extensión debe describir “qué pasa después”, no reiniciar la escena.
- Para sincronización musical: sube un audio como `@audio1`, máximo `15` segundos. El modelo analiza beats, acumulación de energía y drops para coreografiar la imagen.
- Workflow para beat sync: recorta la pista al fragmento de `15` segundos, súbela como `@audio1`, referencia el audio en el prompt y describe qué debe pasar en momentos clave.
- Rango recomendado de prompt: más de `20` palabras y menos de `260`. Bajo `20` queda vago; sobre `260`, el modelo empieza a ignorar el final.
- Estructura de prompt recomendada, siempre en este orden: `subject`, `action`, `environment`, `camera`, `style`, `constraints`.
- Test de calidad del prompt: si una frase no aparecería en una lista de tomas real, elimínala.
- SeaDance responde mejor a instrucciones de cámara, acción, entorno, estilo y restricciones; no prioriza backstory, emociones internas ni motivación de personajes.
- Prompt mencionado para samurái gato: “a tiny samurai cat who does not care at all. Two guards shoot arrows at her. She catches both with her paws, looks bored, drops them, and licks her paw. The whole thing is shot like a 70s kung fu movie. Fake painted backgrounds, dramatic lighting, over-the-top colors, film grain, completely campy on purpose.”
- Usa timestamps con formato exacto: `0 seconds to 5 seconds`, `5 seconds to 10 seconds`.
- Los timestamps sirven para dividir la generación por segmentos y controlar qué ocurre en cada momento.
- Ejemplo mencionado de time prompting: un guerrero se transforma en un titán con brazos de lava; la lava abre grietas en el suelo, rocas vuelan y se fusionan con el cuerpo, la armadura encaja, y un casco se forma desde magma fluyendo.
- Casos de uso mostrados: AI filmmaking, AI UGC, product commercials y music videos.
- Para comerciales de producto: sube el producto como `@image1`. Ejemplo: pack de Doritos como `@image1`, comercial de `15` segundos con chips rompiéndose en slow motion, bolsa golpeando una superficie negra, chips cayendo con luz de estudio y cierre en el logo con un haz de luz.
- Para video musical: sube música como `@audio1` y personaje como `@image1`. Ejemplo descrito: mujer con chaqueta puffer brillante bailando en un almacén neón, luces estroboscópicas, efectos glitch en cada golpe de bajo y cámara handheld shaky durante todo el clip.
- SeaDance 2.0 genera audio nativo: ambiente y efectos sincronizados con lo que ocurre en pantalla.
- En la comparación mencionada, el autor prueba el mismo prompt en `Kling 3.0` y afirma que SeaDance 2.0 se siente y suena mejor.

## Reglas para agentes
- Usa `SeaDance 2.0` en `Higgsfield AI` cuando necesites generación de video multimodal con imágenes, video de referencia y audio.
- Usa `@image1`, `@image2`, `@video1` y `@audio1` dentro del prompt siempre que cargues referencias.
- Define explícitamente qué función cumple cada input: personaje, locación, cámara, mood, música o producto.
- Escribe prompts entre `20` y `260` palabras.
- Ordena cada prompt como `subject`, `action`, `environment`, `camera`, `style`, `constraints`.
- Usa timestamps como `0 seconds to 5 seconds` cuando necesites control temporal preciso.
- Para extender video, carga el clip previo como `@video1` y describe solo la continuación.
- Configura la duración de una extensión como la duración del nuevo fragmento, nunca como la duración total acumulada.
- Usa `@audio1` con clips de hasta `15` segundos cuando necesites sincronización con beats, drops o cambios de energía.
- Describe acciones visibles, movimientos de cámara, ambiente, estilo visual y restricciones verificables.
- Nunca rellenes el prompt con historia de fondo, motivación emocional o información que no pueda filmar una cámara.
- Nunca reinicies una escena cuando el objetivo sea extenderla.
- Nunca uses prompts demasiado cortos si quieres control técnico.
- Nunca pongas instrucciones importantes al final de prompts muy largos.

## Errores comunes que evita o menciona
- Gastar créditos por prompts vagos de menos de `20` palabras.
- Escribir prompts de más de `260` palabras y perder instrucciones del final.
- Tratar imágenes, videos y audios como referencias pasivas en vez de direcciones explícitas.
- No etiquetar correctamente los archivos con `@image1`, `@video1` o `@audio1`.
- Configurar mal la duración al extender videos, por ejemplo poner `15` segundos cuando solo quieres agregar `5`.
- Reiniciar la escena en una extensión en lugar de continuar la acción.
- No describir eventos clave por timestamp cuando se necesita precisión temporal.
- Usar backstory o motivación interna en lugar de instrucciones visuales filmables.
- No sincronizar acciones visuales con momentos concretos del audio.
- Ignorar física, movimiento realista y morphing al evaluar un modelo de video.