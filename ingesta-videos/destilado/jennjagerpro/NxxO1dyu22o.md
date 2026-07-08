# Final Cut Tricks Pt. 2
**Fuente:** jennjagerpro | https://youtu.be/NxxO1dyu22o

## Qué enseña
25 funciones y atajos poco conocidos de Final Cut Pro para acelerar el flujo de trabajo, organizar proyectos y resolver problemas comunes de edición. Cubre desde importación inteligente de carpetas hasta ajustes avanzados de retime, audio y exportación con canal alfa.

## Lecciones accionables
- **Importar carpeta como keyword collection:** Arrastra una carpeta completa directamente a un evento en Final Cut; automáticamente crea una colección de palabras clave con todos los archivos dentro.
- **Activar/desactivar skimming selectivo:** Presiona la tecla `S` para activar el skimming. Úsalo solo en el browser (no en la timeline) para previsualizar clips sin hacer selecciones de rango.
- **Convertir proyecto 16:9 a vertical con Smart Conform:** Modifica el formato de video del proyecto a vertical. Luego selecciona todos los clips en la timeline, ve a `Modify > Smart Conform`. Final Cut analiza cada clip y centra automáticamente el sujeto (generalmente rostros) en el encuadre vertical.
- **Find and Replace Title Text:** Ve a `Edit > Find and Replace Title Text`. Escribe la palabra mal escrita y la palabra correcta, luego presiona `Replace All`. Corrige todas las instancias de texto en títulos del proyecto.
- **Reemplazar todas las transiciones de un tipo por otro:** Abre el Index (índice) y busca el nombre de la transición actual. Selecciona todos los resultados. Ve al panel de transiciones, haz doble clic en la transición deseada (ej. Cross Dissolve) y todas se reemplazan al instante.
- **Exportar video con canal alfa (forma recortada):** Aplica una máscara (ej. círculo) al clip. Al exportar, en `Share > Settings`, elige el codec `Apple ProRes 4444` o `Apple ProRes 4444 XQ`. El archivo resultante mantiene la forma recortada con transparencia.
- **Grabar voiceover directamente:** Ve a `Window > Record Voiceover`. Conecta un micrófono, presiona el botón rojo de grabación y narra mientras se reproduce la timeline. El audio se inserta automáticamente como una pista de audio.
- **Range Check rápido:** En la esquina superior derecha del visor, selecciona `Range Check > Luma`, `Saturation` o `All`. Muestra advertencias visuales si los negros están aplastados, los blancos fuera de rango o los colores sobresaturados.
- **Restaurar ajustes de fábrica de Final Cut:** Al abrir Final Cut, mantén presionadas las teclas `Option + Command` hasta que aparezca el mensaje de restauración.
- **Replace with Retime to Fit:** Arrastra un clip del browser sobre un clip en la timeline. Suelta el mouse y elige `Replace with Retime to Fit`. Si el clip de origen es más largo, se acelera; si es más corto, se ralentiza para llenar la duración original.
- **Marcar favoritos y rechazos en el browser:** Selecciona un rango en un clip del browser. Presiona `F` para marcarlo como favorito (resalte verde). Presiona `Delete` para rechazarlo (resalte rojo/naranja). Luego filtra por `Favorites` o `Rejected` en el menú desplegable del browser.
- **Ajustar loudness en lugar de volume:** Selecciona un clip de audio, ve al Inspector > `Audio Analysis` > `Show`. Expande `Loudness`. Ajusta `Loudness Amount` y `Uniformity` para uniformizar el nivel percibido, en lugar de subir el volumen global.
- **Activar Event Viewer (doble visor):** Ve a `Window > Show in Workspace > Event Viewer`. Aparece un segundo visor que muestra el clip seleccionado en el browser, mientras el visor principal sigue mostrando la timeline.
- **Recortar animación de salida de un título (sin controles de build out):** Selecciona el título en la timeline, presiona `Option + G` para crear un compound clip. Dentro del compound clip, extiende la duración del título más allá del final del compound clip. Al salir, la animación de salida queda recortada y el texto permanece visible.
- **Ajustar pucks del color board con teclas de flecha:** Selecciona un puck en el color board y usa las teclas de flecha arriba/abajo para ajustar valores de forma incremental, en lugar de arrastrar con el mouse.
- **Split captions (dividir subtítulos):** Añade un caption largo. En el Inspector, inserta saltos de línea (`Return`) donde quieras dividir. Selecciona el caption, ve a `Edit Captions > Split Captions`. Cada segmento se convierte en un caption independiente que puedes reubicar y reajustar.
- **Cambiar color de gap clips:** Ve a `Final Cut Pro > Preferences > Playback`. En `Player Background`, elige `Black`, `White` o `Checkerboard`. Los gap clips (creados con `Option + W`) adoptan ese color de fondo.
- **Usar placeholder como storyboard:** En `Generators > Elements`, arrastra `Placeholder` a la timeline. En el Inspector del generador, ajusta: `Framing` (close-up, medium, long shot), `Number of People`, `Gender Mix`, `Scene` (interior/exterior con fondo seleccionable), y activa `View Notes` para escribir descripciones de lo que se espera grabar.
- **Optical Flow para cámara lenta suave:** Selecciona un clip ralentizado. Ve a `Modify > Retime > Video Quality` y cambia a `Optical Flow`. Si no funciona bien, prueba `Frame Blending` como alternativa.
- **Back-timing con overwrite edit (Shift + D):** Coloca el playhead después del clip que quieres reemplazar. Presiona `Shift + D` para que el overwrite (que normalmente avanza desde el playhead) trabaje hacia atrás en la timeline.
- **Slide edit con trim tool:** Presiona `T` para la herramienta Trim. Mantén presionada `Option` (el cursor cambia) y arrastra el clip horizontalmente. Se mueve sin crear gap clips y sin cambiar su duración, ajustando los clips adyacentes.
- **Play Around (reproducción con pre-roll y post-roll):** Coloca el playhead en un punto. Presiona `Shift + ?` (signo de interrogación). La reproducción comienza 2 segundos antes (por defecto) y continúa después del punto. Para cambiar la duración: `Final Cut Pro > Preferences > Pre-roll Duration` y `Post-roll Duration`.
- **To-Do Markers:** Presiona `M` para crear un marcador. Haz doble clic en él. Selecciona `To Do`, escribe una tarea (ej. "Add text"). El marcador se vuelve rojo. Al completarlo, ábrelo y marca `Completed`; se vuelve verde.
- **Merge events (fusionar eventos):** Arrastra un evento sobre otro en el panel de eventos, o selecciona varios eventos y ve a `File > Merge Events`. Todo el contenido se unifica en un solo evento.
- **Fade in/out en connected clip con opacidad:** Selecciona el connected clip. Presiona `Control + V` para abrir las opciones de animación. En `Compositing > Opacity`, usa los "teardrops" (puntos de control) para crear fundidos con más control que un cross dissolve.

## Reglas para agentes
- Usa `S` para activar skimming solo cuando trabajes en el browser; desactívalo en la timeline si causa distracción.
- Usa `Smart Conform` (Modify > Smart Conform) cuando conviertas proyectos de 16:9 a vertical, pero revisa manualmente los textos que puedan quedar recortados.
- Usa `Find and Replace Title Text` (Edit > Find and Replace Title Text) para corregir errores ortográficos repetidos en títulos; nunca lo hagas manualmente uno por uno.
- Usa el Index para buscar y reemplazar todas las instancias de una transición por otra; nunca cambies transiciones una por una.
- Usa `Apple ProRes 4444` o `Apple ProRes 4444 XQ` al exportar clips con máscara si necesitas conservar el canal alfa.
- Usa `Option + G` para crear un compound clip cuando necesites recortar la animación de salida de un título sin controles de build out.
- Usa las teclas de flecha (no el mouse) para ajustar pucks en el color board cuando necesites cambios incrementales precisos.
- Usa `Shift + ?` para activar Play Around al revisar cortes; configura el pre-roll y post-roll en Preferencias según la necesidad.
- Usa `To Do` markers (presiona `M`, luego selecciona `To Do`) para tareas pendientes; nunca confíes solo en la memoria.
- Usa `Merge Events` (File > Merge Events) cuando varios eventos tengan contenido relacionado y quieras consolidarlos.

## Errores comunes que evita o menciona
- **Confundir loudness con volume:** Volume es un ajuste global; loudness uniformiza el nivel percibido. Usa loudness en Audio Analysis cuando necesites consistencia entre clips.
- **Text templates sin controles de build in/out:** Si un título de Motion Array no permite desactivar la animación de salida, no lo arrastres directamente; créale un compound clip y extiende su duración interna para recortar la animación no deseada.
- **Gap clips siempre negros:** Por defecto son negros, pero puedes cambiarlos a blanco o checkerboard en Preferencias > Playback > Player Background.
- **Overwrite edit siempre hacia adelante:** Si necesitas que el overwrite reemplace hacia atrás (back-timing), usa `Shift + D` en lugar de solo `D`.
- **Ajustar pucks del color board con el mouse:** El mouse puede hacer cambios demasiado bruscos; usa las teclas de flecha para ajustes finos.
- **No usar placeholders para proyectos incompletos:** En lugar de dejar pantallas negras con texto, usa el generador Placeholder con escena, framing y notas para que el cliente visualice el plan.