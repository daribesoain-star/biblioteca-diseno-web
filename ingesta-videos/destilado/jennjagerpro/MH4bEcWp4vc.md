# Editing Hacks | 15 Hacks Every Editor Should Know
**Fuente:** jennjagerpro | https://youtu.be/MH4bEcWp4vc

## Qué enseña (2-3 líneas)
15 trucos prácticos de edición en Final Cut Pro y Apple Motion, que abarcan desde ajuste fino de audio, simulación de multicámara, retoque de logos y texto 3D, hasta técnicas para grabar voiceovers con iPhone y solucionar errores de exportación.

## Lecciones accionables

- **Ajuste fino de audio entre frames (Final Cut Pro):** Selecciona el clip → haz clic derecho → "Expandir componentes de audio". Arrastra el extremo del clip de audio para recortar en incrementos menores a un frame de video. Al terminar, haz clic derecho → "Contraer audio".
- **Balance música/voz con ecualización:** Selecciona la pista de música → Inspector de audio → activa "Equalization" → abre el mezclador. Reduce las frecuencias medias (mid-ranges) para que no compitan con la voz del narrador.
- **Fingir toma multicámara con una sola cámara:** En el navegador, haz clic derecho sobre el clip → "Nuevo clip multicámara". Dentro del clip multicámara, haz clic en la flecha hacia abajo junto a "Ángulo 1" → "Agregar ángulo". Mantén presionada la tecla **Option** y arrastra el clip original al nuevo ángulo vacío. Selecciona el clip del nuevo ángulo y ajusta **Escala** y **Posición** en el visor. Arrastra el clip multicámara a la línea de tiempo y corta entre ángulos.
- **Sincronizar video con el ritmo de la música (Jump Cut at Markers):** Selecciona el clip de video (no el de audio). Mira las ondas de audio de la pista musical y agrega **marcadores estándar** (tecla M) en los picos. Con el clip de video seleccionado, ve al menú **Retime** → "Jump Cut at Markers" → elige **30 frames**. El clip se cortará automáticamente al ritmo.
- **Solucionar error de exportación en un frame específico:** Ve a **Final Cut Pro** → **Settings** → **General** → en "Time Display" selecciona **Frames**. Mueve el playhead por la línea de tiempo hasta que el contador en la parte inferior del visor coincida con el frame del error. Elimina el clip en esa posición y vuélvelo a insertar desde el navegador. Si persiste, reemplázalo con otro clip.
- **Simular escritura perfecta en screen recording:** Escribe todo el texto deseado. Inicia la grabación de pantalla. Mantén presionada la tecla **Delete** para borrar todo el texto hacia atrás. Detén la grabación. En Final Cut, invierte la velocidad del clip (Retime → Reverse Clip). Parecerá que se escribe perfectamente.
- **Reducir popping en voiceover grabado con iPhone:** Cubre el micrófono del iPhone con un calcetín ajustado antes de grabar. Si ya hay pops, aplica el efecto **Voice Isolation** en Final Cut y súbelo al máximo.
- **Convertir logo negro a blanco (sin Photoshop):** Selecciona el logo en la línea de tiempo → Effects browser → **Color** → **Colorize**. Remapea los negros a blancos, arrastra el color blanco sobre el swatch y sube la intensidad.
- **Quitar fondo sólido de un logo con blend modes:** Si el fondo es negro, cambia el **Blend Mode** a **Add**. Si el fondo es blanco, cambia el **Blend Mode** a **Multiply**.
- **Quitar fondo de logo con Luma Keyer:** Effects browser → **Masking & Keying** → **Luma Keyer**. Ajusta los controles deslizantes hasta que el fondo desaparezca. Activa **Invert**. Luego, en **Matte Tools**, baja los niveles y usa el slider **Shrink & Expand** para limpiar los bordes.
- **Hacer que el color del texto 3D sea vibrante (Final Cut Pro):** En el inspector de texto 3D, cambia **Substance** de "Plastic" a **Generic**. El color será exactamente el del swatch seleccionado.
- **Envolver texto 3D con patrón personalizado (Apple Motion):** En Apple Motion, selecciona el texto 3D → en **Substance** elige **Generic**. En **Surface**, la opción **Image** estará habilitada. Arrastra una imagen de patrón desde el Finder al panel de proyecto. Luego arrastra esa imagen al **image well** del texto. Desactiva la imagen en el panel de proyecto para que solo se vea en el texto.
- **Ajustar kerning entre letras (Apple Motion):** Acerca el zoom al máximo en el lienzo. Dibuja dos líneas de regla en el centro (una en X=10, otra en X=-10). En el inspector de texto, usa el slider **Offset** para alinear las reglas entre dos letras. Coloca el cursor después de la primera letra en el campo de texto del inspector y ajusta el slider **Kerning** hasta que el espacio sea uniforme. Repite para cada par de letras.

## Reglas para agentes

- Usa "Expandir componentes de audio" cuando necesites recortar audio en incrementos menores a un frame.
- Aplica ecualización reduciendo mid-ranges en la pista musical cuando haya voz narrando.
- Para simular multicámara, duplica el clip en un nuevo ángulo dentro de un clip multicámara y ajusta escala/posición.
- Al sincronizar video con música, agrega marcadores en los picos de onda y usa "Jump Cut at Markers" con 30 frames.
- Cuando aparezca un error de exportación en un frame específico, cambia la visualización a frames y localiza el clip problemático.
- Para screen recording de escritura, graba borrando el texto y luego invierte la velocidad.
- Para voiceover con iPhone, cubre el micrófono con un calcetín; si hay pops, aplica Voice Isolation al máximo.
- Para cambiar color de logo, usa el filtro Colorize; para quitar fondo sólido, usa blend modes (Add para fondo negro, Multiply para blanco).
- Para logos con fondo no sólido, usa Luma Keyer + Invert + ajustes en Matte Tools y Shrink & Expand.
- Para texto 3D vibrante, cambia Substance a Generic.
- Para envolver texto 3D con patrón, usa Apple Motion y arrastra la imagen al image well.
- Para kerning preciso, usa reglas en el lienzo y ajusta Offset y Kerning letra por letra.
- Nunca uses "Plastic" como Substance si quieres colores vibrantes en texto 3D.
- Nunca intentes descargar videos de YouTube directamente; usa métodos alternativos que no violen términos de servicio.

## Errores comunes que evita o menciona

- **Audio cortado al editar sound bites:** Recortar frame por frame puede dejar el audio con saltos; usar expansión de componentes de audio permite ajustes más finos.
- **Música compitiendo con la voz:** Bajar todo el volumen de la música empobrece la mezcla; ecualizar reduciendo mid-ranges es más efectivo.
- **Pensar que se necesita multicámara real:** Se puede simular con un solo clip duplicado y reescalado.
- **Screen recording con tipeo imperfecto:** Grabar borrando el texto y luego invertir la velocidad evita errores de tipeo.
- **Pops en voiceover con iPhone:** El micrófono del iPhone capta pops; cubrirlo con un calcetín y usar Voice Isolation los reduce.
- **Logo con fondo no transparente:** No es necesario usar Photoshop; blend modes o Luma Keyer resuelven el problema.
- **Colores apagados en texto 3D:** El material "Plastic" por defecto refleja y desatura; cambiarlo a "Generic" da colores exactos.
- **Mala separación entre letras (kerning):** No ajustar el espaciado entre caracteres hace que el texto se vea amateur; usar reglas y kerning manual lo profesionaliza.