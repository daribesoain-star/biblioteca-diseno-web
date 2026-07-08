# Build Better AI Stories: Google Flow Scene Builder Guide
**Fuente:** nextmindrevolution | https://youtu.be/69HPDPx5LVU
## Qué enseña (2-3 líneas)
Enseña cómo usar **Scene Builder** de Google Flow como editor integrado básico para ordenar, recortar, extender y descargar clips en una sola línea de tiempo.  
También explica la diferencia práctica entre **Jump to** y **Extend**, incluyendo costos, modelos requeridos y efectos narrativos.

## Lecciones accionables
- Entra a un proyecto de Flow y abre **Scene Builder** desde la parte superior de la interfaz; por defecto el proyecto abre en la pestaña **Creation**.
- Dentro de **Scene Builder** puedes usar métodos de creación como **text to video**, **frames to video** e **ingredients to video**.
- Una vez dentro de Scene Builder, **no puedes crear imágenes**; solo trabajar con clips de video y assets ya disponibles.
- Los clips creados aparecen en una **single timeline** dentro de Scene Builder.
- Para agregar clips ya creados anteriormente, vuelve a la pestaña **Creation** y usa el botón exacto **Add to scene**.
- Scene Builder permite reproducir toda la línea de tiempo: los clips se reproducen uno tras otro.
- En el lado derecho de la pantalla aparecen las opciones de **download** y la duración total de la timeline.
- Al descargar la timeline, Flow exporta todos los clips seguidos como **un solo video**.
- Usa **Arrange** para reordenar clips en la timeline mediante drag/rearrange.
- Para eliminar clips, selecciona el clip y usa la acción de remover; el video destaca que es posible remover, pero no agregar directamente desde Scene Builder.
- Selecciona un clip para mostrar los handles izquierdo y derecho; arrástralos para **crop**, refinar o ajustar el timing del clip.
- Usa el ícono **plus** en un frame específico para ejecutar **Save frame as asset**.
- **Save frame as asset** toma una captura del frame seleccionado y la agrega como asset/recurso en **images** o **uploads**.
- Ese frame guardado puede descargarse como imagen o usarse como referencia en modos de creación de video.
- La reproducción en navegador puede verse “jumpy” o poco fluida entre clips, pero al descargar la secuencia completa el resultado exportado se reproduce de forma suave.
- Al seleccionar un clip y hacer clic en **plus**, aparecen dos opciones clave: **Jump to** y **Extend**.
- **Jump to** toma el último frame del clip seleccionado, genera una nueva escena basada en esa imagen y funciona como un **hard cut**.
- **Jump to** sirve para saltar a una nueva ubicación, nuevo ambiente, nuevo mood, nuevos colores o una escena distinta.
- Prompt verbatim usado para Jump to: `the couple is walking and then they enter into a club`.
- **Jump to** requiere **3.1 Quality**; no funciona con **3.1 Fast**.
- Costo mencionado: **3.1 Quality = 100 credits**; **Fast = 20 credits**.
- Si intentas usar **Jump to** con **3.1 Fast**, Flow avisa que no se puede ejecutar y exige cambiar a **3.1 Quality**.
- Cuando usas **Jump to** sobre un clip de la timeline, el nuevo clip generado se agrega **al final de la timeline**, no necesariamente inmediatamente después del clip seleccionado.
- **Extend** toma el clip actual y lo extiende en el mismo lugar de la timeline.
- **Extend** usa el último frame del clip como punto de partida automático y genera lo que ocurre a continuación dentro de la misma escena.
- Prompt verbatim usado para Extend: `they start laughing with an evil style`.
- **Extend** intenta mantener el mismo plano, la misma acción y la continuidad visual.
- **Extend** funciona esencialmente como **frame to video**, pero usando automáticamente el último frame del clip como starting point.
- **Extend** puede ejecutarse con **V3.1 Fast**, con costo mencionado de **20 credits**.
- Diferencia operativa: **Jump to** define una escena nueva; **Extend** continúa la escena existente.

## Reglas para agentes
- Usa **Add to scene** desde la pestaña **Creation** cuando necesites agregar clips existentes a Scene Builder.
- Usa **Arrange** cuando el objetivo sea cambiar el orden de los clips en la timeline.
- Usa los handles laterales del clip cuando necesites recortar duración o ajustar timing.
- Usa **Save frame as asset** cuando un frame específico de un video deba reutilizarse como imagen, asset descargable o referencia visual.
- Usa **Jump to** cuando la historia deba saltar a una escena, ubicación, ambiente, color o mood diferente.
- Usa **Extend** cuando la historia deba continuar en el mismo plano, acción y escena.
- Usa **3.1 Quality** para **Jump to**; no intentes ejecutarlo con **3.1 Fast**.
- Usa **V3.1 Fast** para **Extend** cuando quieras reducir costo y mantener continuidad.
- Verifica el costo antes de generar: **Jump to cuesta 100 credits con Quality**; **Extend puede costar 20 credits con Fast**.
- Después de usar **Jump to**, revisa el final de la timeline, porque el clip generado puede agregarse ahí.
- No evalúes la suavidad final solo desde la reproducción del navegador; descarga la secuencia para validar el playback exportado.
- No trates Scene Builder como editor principal avanzado; úsalo como editor integrado simple para ordenar, recortar, extender, saltar escenas y descargar.

## Errores comunes que evita o menciona
- Intentar agregar clips directamente desde Scene Builder en vez de volver a **Creation** y usar **Add to scene**.
- Asumir que Scene Builder permite crear imágenes durante la edición.
- Usar **Jump to** esperando una extensión suave de la misma escena; en realidad produce un corte más agresivo.
- Usar **Extend** esperando un cambio fuerte de ubicación o ambiente; está pensado para continuidad dentro de la misma escena.
- Intentar ejecutar **Jump to** con **3.1 Fast**, aunque requiere **3.1 Quality**.
- No revisar créditos antes de generar: **Jump to** es mucho más caro que una generación normal con Fast.
- Confundir la reproducción “jumpy” del navegador con el resultado final exportado.
- No notar que **Jump to** puede colocar el clip generado al final de la timeline.