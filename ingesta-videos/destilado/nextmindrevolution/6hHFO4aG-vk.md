# 6-Steps to create High-End Ads with Gemini AI (2026)
**Fuente:** nextmindrevolution | https://youtu.be/6hHFO4aG-vk

## Qué enseña (2-3 líneas)
Cómo convertir una foto casera de producto en una campaña visual completa usando Gemini: product shots limpios, variantes comerciales, formatos por ratio, anuncios con texto, fotos con modelos y video UGC.  
El flujo parte de dar contexto de marca a Gemini y luego reutilizar la mejor imagen generada como referencia para mantener consistencia.

## Lecciones accionables
- Abre un chat nuevo en Gemini y usa modelo `thinking` o `pro`; evita `fast` si buscas mejor calidad visual. Mantén inicialmente `tools` en `all tools`.
- Primero entrega contexto de negocio: indica que usarás el chat para crear una campaña publicitaria de producto, describe el producto, nombre, audiencia objetivo, tono de marca y paleta de colores.
- Usa la primera foto casera solo como punto de partida. Aunque no tenga cámara profesional ni iluminación de estudio, puede servir para generar una versión limpia.
- Para crear el primer product shot, activa `create image`, sube la imagen casera y pide a Gemini actuar como fotógrafo profesional de producto.
- El prompt base debe especificar: imagen adjunta como referencia, ambiente, iluminación, textura, `grounding`, una pequeña reflexión debajo del producto, restricciones y formato de salida.
- Descarga la imagen limpia generada. Después usa esa imagen limpia como referencia, no la foto casera, porque Gemini, Nana Banana o Flow producen mejores resultados cuando reciben una buena imagen de entrada.
- Para una variante comercial más atractiva, vuelve a usar `create image` con `thinking mode` y arrastra explícitamente la versión limpia. No digas solo “usa la imagen recién generada”, porque Gemini puede confundirse y tomar la imagen incorrecta del historial.
- En el prompt de variante comercial pide actuar como fotógrafo comercial profesional y detalla fondo, superficie, elementos alrededor del producto, composición y salida final.
- Si no sabes describir el estilo, busca una imagen de referencia en la web con una composición parecida, aunque tenga otro producto. Borra o evita marcas si corresponde.
- Método con referencia visual: en `create image`, sube dos imágenes: `image number one` como producto limpio y `image number two` como referencia de estilo/composición.
- Prompt citado para composición: `replicate the composition of the image number two to use the white max gloss image from the image number one`.
- La referencia de estilo debe coincidir con la vibra o esquema de color del producto; si usas una referencia demasiado distinta, puedes obtener generaciones malas.
- Descarga todas las generaciones útiles. Gemini puede perder el historial si falla el servidor o muere el chat, y tendrías que repetir todo el proceso.
- Para adaptar ratios, sube el product shot final y usa el comando: `change the aspect ratio to 9:16`.
- Ratios mencionados: `9:16` para formato vertical, `1:1` para cuadrado y `16:9` para landscape.
- Al cambiar ratio, Gemini conserva estilo general pero inventa o inpainta partes nuevas porque la imagen original no contiene suficiente información para el nuevo encuadre.
- Si una generación de ratio no convence, usa `redo` o vuelve a ejecutar el mismo prompt hasta obtener una imagen aceptable.
- Para añadir texto al anuncio, sube la versión `16:9`, `9:16` o `1:1` y pide agregar headline y sub-headline.
- El prompt de texto debe incluir: headline, sub-headline, especificaciones tipográficas, color, posición del texto y restricción espacial.
- Restricción exacta mencionada: `the text must not occupy more than 25% of the total area`.
- Para imágenes tipo Amazon con persona usando el producto, sube el clean shot como referencia y pide una fotografía comercial de una mujer usando la crema.
- Ese prompt debe detallar expresión, producto, iluminación, ambiente y detalles técnicos de la toma.
- Para una foto más realista tipo UGC, cambia el prompt hacia una toma `candid` y `honest UGC style photo`, luego añade producto, apariencia, ambiente e iluminación.
- En imágenes con modelo, el producto debe mirar hacia la cámara: `the product always needs to face the camera lens`.
- Para video, cambia `tools` a `create video`; Gemini abrirá un chat nuevo porque no puede hacerlo en el mismo chat de imagen.
- Para video UGC, sube el clean product shot como referencia y pide un `realistic high-quality UGC style selfie video`.
- El prompt de video debe incluir edad aproximada de la mujer, que hable mirando directo a cámara, que sostenga la crema, diálogo, contexto, ambiente, iluminación, estilo y resolución final.
- Diálogo citado del video: `I've been using this cream for a week.`
- Inserta la instrucción exacta `slight pause` cuando quieras una pausa natural entre frases.
- Segunda línea citada: `And my skin feels better than ever.`
- Para video usa `thinking` o `pro`; Gemini Pro puede limitarte a dos generaciones de video al día.
- Si necesitas más generaciones o mejores herramientas de video, usa Google Flow; también menciona plataformas dedicadas como Hixfield y Fipik.

## Reglas para agentes
- Usa `thinking` o `pro` cuando la calidad visual importe; no uses `fast` como opción principal para anuncios finales.
- Siempre da contexto de marca antes de generar assets: producto, nombre, audiencia, tono y paleta.
- Usa la foto casera solo para crear un clean shot inicial; después usa el clean shot como referencia principal.
- Descarga cada generación útil inmediatamente después de crearla.
- Arrastra la imagen exacta que quieres usar como referencia; no dependas del historial del chat.
- Usa `create image` para product shots, variantes comerciales, ratios, texto y fotos con modelo.
- Usa `create video` para videos; asume que abrirá un chat nuevo.
- Usa referencias visuales externas cuando el estilo deseado sea difícil de explicar con texto.
- Verifica que la referencia externa tenga una vibra compatible con el color y categoría del producto.
- Para ratios, usa la fórmula `change the aspect ratio to [ratio]`.
- Repite o usa `redo` cuando el encuadre, manos, reflejos, texto o producto salgan defectuosos.
- En prompts con texto, limita el copy a máximo `25%` del área total de la imagen.
- En fotos con personas, exige que el producto mire hacia la lente.
- En videos UGC, incluye diálogo literal y `slight pause` entre frases para evitar una entrega robótica.
- Usa Google Flow cuando necesites más volumen de video que el permitido por Gemini.

## Errores comunes que evita o menciona
- Empezar a generar imágenes sin dar contexto de negocio a Gemini.
- Usar `fast mode` para resultados que deberían verse premium.
- Reutilizar la foto casera como referencia para todas las piezas en vez de generar primero una versión limpia.
- Pedir “usa la imagen anterior” y dejar que Gemini elija mal entre varias imágenes del historial.
- Quedarse solo con una imagen limpia de estudio: se ve profesional, pero “no vende” tan bien como una toma comercial con textura, contexto y composición.
- Usar referencias visuales con paletas o estilos incompatibles con el producto.
- No descargar las generaciones y perderlas si el chat falla o muere.
- Esperar que el cambio de ratio sea idéntico al original: Gemini puede inventar partes nuevas.
- Aceptar generaciones con detalles raros sin revisarlas: manos, producto, reflejos y espejos pueden salir mal.
- Poner demasiado texto sobre el anuncio y ocupar más del `25%` del área visual.
- Crear video UGC sin pausas; sin `slight pause`, la persona puede decir todo seguido y sonar poco realista.
- Depender solo de Gemini para video cuando hay límite de generaciones diarias.