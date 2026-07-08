# Google Flow AI VIDEO Tools: Complete deep dive Guide
**Fuente:** nextmindrevolution | https://youtu.be/HVtcO0Rfo2Y

## Qué enseña (2-3 líneas)
Recorrido completo por las 10 herramientas de video de Google Flow: efectos, overlays, composición por capas, bocetos animados, transiciones, resize, secuencias y granulación experimental.  
Explica qué herramientas consumen créditos, cómo importar/exportar medios y qué controles conviene ajustar en cada flujo.

## Lecciones accionables
- **Shader Effects:** entra a `AI tools` > video tools > `Shader effects`; usa `Import content` para cargar un video. Abajo tienes player, restart y audio. En `Colorize`, selecciona un gradiente, edita puntos de color, agrega más puntos y activa `animate map` para animar los puntos del gradiente. En `Finishing`, ajusta `saturation`, `contrast`, `bloom` y `vignette`; `vignette` sirve para enfocar el centro. Usa `reset` para volver atrás, `replace` para cambiar el video, `capture frame` para imagen fija y `export to MP4` para renderizar el resultado. No consume créditos.
- **Shader Effects / filters:** los filtros están apagados por defecto; activa el toggle. Cada filtro puede exponer parámetros propios abajo. Ejemplo mencionado: `VHS`. Los ajustes de la derecha, como `bloom`, se aplican encima del filtro seleccionado. Flujo: elegir filtro, ajustar parámetros, ajustar controles globales, exportar.
- **Type Overlays:** usa `Import media`, selecciona un video y agrega capas desde `Text`. Texto de ejemplo verbatim: `hello there`. Cada texto es una layer en la timeline: puedes moverla, extenderla desde los bordes, posicionarla y borrarla con `delete layer`. En `Design`, controla `font family`, `weight`, `size`, `height`, color y `media opacity`, que afecta el video detrás del texto, no el texto. Puedes alinear capas a posiciones estáticas desde el panel derecho.
- **Type Overlays / animación:** en `Animate`, usa `transitions` y `kinetic`. Si eliges `none`, no hay opciones extra. Si eliges una animación, puedes animar por `characters`, `words` o `whole line`, más parámetros específicos al final del panel. Para finalizar usa `render video`; no consume créditos.
- **Pixel Bento:** importa un medio y activa efectos desde el stack de la derecha. Los efectos funcionan en serie: un efecto alimenta al siguiente. No se puede cambiar el orden. Haz clic en el nombre de cada efecto para abrir sus parámetros. Usa `reset` para volver valores por defecto. Arriba puedes apagar todo el stack o controlar `mix`, equivalente a un knob `dry/wet`, para reducir la intensidad global.
- **Pixel Bento / automation:** usa `record automation`, reproduce el video y modula parámetros de efectos en tiempo real. El video registra curvas como `intensity` de efectos mencionados como `Bloommy` y `GU`. Las automatizaciones aparecen debajo del player y se eliminan con `remove`. Usa `capture frame` o `export`. Es una de las herramientas favoritas del autor y no consume créditos.
- **Poster Designer:** funciona como composición por capas con texto, video y formas sólidas. Hay una `canvas layer` y una `text layer` inicial. Desde `+` agrega `text layer`, `media` o `solid shape`. Puedes bloquear u ocultar layers, reordenarlas en la timeline y controlar qué queda encima en el canvas. Las layers se recortan desde los bordes de la timeline.
- **Poster Designer / parámetros:** al seleccionar una layer, el panel derecho cambia. Para texto: `font`, `line height`, `size` y controles esperados de tipografía. Para sólidos: el tamaño no se estira libremente desde cualquier lado; para cambiar `width`, usa el panel derecho. Todas las layers pueden tener `opacity` y `blend mode`. Selecciona `canvas` para cambiar `canvas size` y background. Salidas: `upload media`, `export`, screenshot a `all media` e `I'm feeling lucky`, que randomiza solo parámetros de texto, no sólidos ni assets. No consume créditos.
- **Video Sketch:** importa un video y trabaja con una layer de sketch por defecto. Puedes agregar más sketches y también text layers. Controla la duración y posición desde la timeline. Para dibujar ajusta `color`, `width` y `opacity`; puedes usar `undo`, `clear` y `eraser`. En `type of effect`, elige efectos como `none` o `jitter`; al seleccionar un efecto aparecen parámetros específicos. Renderiza con `render video` y se guarda en media assets.
- **Transition Machine:** carga `clip number 1` y `clip number 2`. El agente lee ambos clips y propone un prompt para la transición. Recomendación explícita: leer el prompt porque puede crear transiciones “wild”. Opciones de duración: `4 seconds`, `6` y `8`; esa duración es del video nuevo completo, no solo de la transición. La generación combina parte del clip 1, transición y parte del clip 2. Consume créditos y guarda el resultado en `all media` automáticamente.
- **Weird Core:** parecido a Pixel Bento, pero permite reordenar el stack de efectos. Importa un video; aparece el efecto `fry` por defecto. Puedes eliminarlo, agregar otros efectos, reproducir y ajustar parámetros en vivo. El botón `random` descarta el stack actual y crea uno nuevo aleatorio. Renderizar no consume créditos.
- **Video Resizer:** importa media, arrastra y escala el video sobre el canvas. Cambia `canvas ratio` desde la derecha. Usa `fill` para llenar el canvas y `fit` para encajar el video. En `custom ratio`, define manualmente `width` y `height`.
- **String Out Creator:** importa varios medios y los reproduce en secuencia. Desde `Import` agrega clips como el ejemplo `walking` y luego `drinking`. Puedes insertar text layers al inicio, al final o entre clips, crear capas consecutivas y eliminarlas con `X`. En texto ajusta `text`, `font`, `size`, `color` y posición. En video solo hay controles básicos como `scaling` y `aspect ratio`.
- **String Out Creator / duración:** la `duration` es global. Si eliges `custom` y pones `1 second`, cada layer dura aproximadamente 1 segundo. Si eliges `full`, las capas de texto usan duración por defecto y los videos se reproducen completos. No hay trimming individual; solo se controla por duración global. `shuffle` cambia el orden de los elementos. Guarda con `save string out`; no consume créditos.
- **Video Granulator:** herramienta experimental basada en lógica de síntesis granular. Importa un video y el sistema analiza el archivo. Reproduce “grains” o pequeños fragmentos del video para crear un resultado glitch. Tiene tres etapas: `granulator`, `audio effects` y `visual effects`. En `granulator`, ajusta `play speed`, `grain speed`, `grain size` y `jitter`. Valores bajo cero pueden reproducir en reversa; cerca de cero producen más glitch; subir `grain speed` suaviza transiciones.
- **Video Granulator / audio:** requiere audio para aprovechar la sección sonora. `audio effects` incluye `reverb`, `room`, `delay` y `feedback`. El autor nota que parece pasar por un buffer completo y que al bajar ciertos controles puede quedar solo señal wet o incluso sin sonido. `visual effects` agrega efectos visuales adicionales. Es pesada para memoria y CPU.

## Reglas para agentes
- Usa `Shader Effects` cuando necesites aplicar colorización, gradientes animados, filtros tipo `VHS`, `bloom`, `contrast`, `saturation` o `vignette` sin abrir un editor externo.
- Usa `Type Overlays` cuando el objetivo sea poner texto animado sobre un video existente con control de timeline, fuente, color y animación por caracteres, palabras o línea completa.
- Usa `Pixel Bento` cuando quieras un stack de efectos visuales en serie y automatización de parámetros en tiempo real.
- No uses `Pixel Bento` si necesitas cambiar el orden de los efectos; usa `Weird Core` para stacks reordenables.
- Usa `Poster Designer` cuando necesites una composición por capas con texto, video, formas sólidas, opacidad, blend modes y tamaño de canvas.
- Usa `Video Sketch` cuando quieras dibujar anotaciones o marcas animadas encima de un video y controlar varias layers de sketch en una timeline.
- Usa `Transition Machine` solo cuando aceptes gastar créditos y generar un video nuevo completo de `4`, `6` u `8` segundos.
- Siempre revisa y edita el prompt propuesto por `Transition Machine` antes de generar.
- Nunca asumas que la duración de `Transition Machine` es solo la transición; es la duración total del video generado.
- No uses `Transition Machine` cuando necesites decidir exactamente en qué frame ocurre la transición.
- Usa `Video Resizer` para cambiar formato, ratio, `fill`, `fit` o dimensiones custom `width`/`height`.
- Usa `String Out Creator` para unir varios medios en una secuencia rápida sin descargar ni editar externamente.
- No uses `String Out Creator` si necesitas trimming individual preciso por clip; su duración es global.
- Usa `Video Granulator` solo para resultados glitch, experimentales o inspirados en síntesis granular.
- No hagas clic en `random` de `Weird Core` si quieres conservar el stack actual; lo reemplaza por completo.
- Verifica si la herramienta consume créditos antes de generar: `Transition Machine` sí consume; varias herramientas de render/export mencionadas no consumen.

## Errores comunes que evita o menciona
- Confundir `media opacity` en `Type Overlays` con opacidad del texto: afecta el video detrás del texto.
- Tapar una layer de texto con otra y luego no poder seleccionarla fácilmente en el canvas.
- Pensar que los filtros de `Shader Effects` se activan solos: están apagados por defecto.
- Olvidar que los ajustes globales de `Shader Effects` se aplican encima del filtro seleccionado.
- Intentar reordenar efectos en `Pixel Bento`: el orden es fijo.
- Hacer clic por accidente en `random` dentro de `Weird Core` y perder el stack anterior.
- Usar `Transition Machine` sin leer el prompt generado por el agente.
- Esperar que `Transition Machine` produzca transiciones simples y precisas como un fade controlado; el autor dice que muchas veces no salen tan bien.
- Creer que `Transition Machine` permite elegir exactamente dónde ocurre la transición.
- Intentar cambiar el ancho de una forma sólida en `Poster Designer` solo arrastrando desde el canvas; debe hacerse desde el panel derecho.
- Esperar trimming individual en `String Out Creator`; solo permite duración global.
- Usar `Video Granulator` esperando control convencional de edición; es experimental, pesado y puede exigir mucha memoria/CPU.