# iPhone Video in Final Cut Pro 
**Fuente:** jennjagerpro | https://youtu.be/UDcZ1r4UxUM

## Qué enseña (2-3 líneas)
Este tutorial explica el flujo de trabajo completo para editar videos grabados en modo Cinemático del iPhone dentro de Final Cut Pro. Muestra cómo transferir los clips correctamente, corregir la sobreexposición inicial, y acceder a funciones exclusivas como el ajuste de profundidad de campo con fotogramas clave que no están disponibles en el editor del iPhone.

## Lecciones accionables
- Para transferir el clip desde el iPhone a la Mac, usa AirDrop: pulsa el botón **Share**, luego **Options** en la parte superior de la pantalla y activa el slider **Include All Photos Data**. Esto es fundamental para conservar los metadatos del modo Cinemático.
- Al recibir el archivo por AirDrop, se descarga como una carpeta. Dentro de ella, elige el archivo **que NO tenga una "E" en el nombre** (el que tiene "E" pierde la opción Cinemática en Final Cut).
- Al arrastrar el clip correcto a la línea de tiempo, se verá sobreexpuesto ("blown out"). Para corregirlo: ve a **Effects** > **Color** > **HDR Tools**, aplícalo al clip, y en el inspector cambia el modo a **HLG to Rec. 709 SDR**.
- En el inspector, activa la casilla **Cinematic** para habilitar el control de profundidad de campo. Allí aparece un slider de **Depth of Field** con rango de **2.0** (desenfoque muy suave) a **16** (aspecto más natural).
- Para editar los puntos de enfoque: haz clic derecho sobre el clip en la línea de tiempo y selecciona **Show Cinematic Editor**. Aparecen marcadores amarillos que indican cambios de foco. Para agregar uno nuevo, coloca el playhead y haz clic en el objeto deseado en el visor. Para eliminar, selecciona el marcador y pulsa **Delete Focal Point**.
- Para ajustar la profundidad de campo dinámicamente a lo largo del clip (algo imposible en el iPhone): en el inspector, coloca el playhead antes de un marcador de foco, crea un **keyframe** en el slider de Depth of Field, luego avanza el playhead más allá del marcador, ajusta el slider a otro valor (ej. 2.8) y se genera automáticamente un segundo keyframe. Repite para crear transiciones suaves de profundidad.

## Reglas para agentes
- Usa **HDR Tools** > **HLG to Rec. 709 SDR** inmediatamente después de importar un clip Cinemático de iPhone para corregir la sobreexposición.
- Activa siempre la casilla **Cinematic** en el inspector para acceder al control de profundidad de campo.
- Nunca uses el archivo con "E" en el nombre; selecciona siempre el que no tiene "E" para conservar la opción Cinemática en Final Cut.
- Cuando transfieras por AirDrop, activa siempre **Include All Photos Data** en las opciones de compartir.
- Para cambios de profundidad de campo variables, usa keyframes en el slider de Depth of Field; no confíes en el slider estático del iPhone.

## Errores comunes que evita o menciona
- **No activar "Include All Photos Data"** al compartir: sin esto, los metadatos del modo Cinemático se pierden y no podrás editar foco ni profundidad en Final Cut.
- **Usar el archivo con "E" en el nombre**: este archivo no tiene la opción Cinematic en el inspector, por lo que no podrás ajustar la profundidad de campo ni editar puntos de foco.
- **Entrar en pánico al ver el clip sobreexpuesto**: es normal al importar video HDR del iPhone; la solución es aplicar HDR Tools con el ajuste HLG a Rec. 709 SDR.
- **Intentar cambiar la profundidad de campo dinámicamente en el iPhone**: el editor del iPhone solo permite un valor fijo para todo el clip; en Final Cut se puede variar con keyframes.