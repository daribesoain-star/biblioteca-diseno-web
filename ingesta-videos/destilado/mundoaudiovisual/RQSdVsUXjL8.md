# Video Effects Course - Fusion - DaVinci Resolve - 🎬 Chapter 12 - Chroma Key
**Fuente:** mundoaudiovisual | https://youtu.be/RQSdVsUXjL8

## Qué enseña
Cómo realizar un croma key (pantalla verde) en Fusion dentro de DaVinci Resolve, eliminando el fondo verde de un clip y reemplazándolo con cualquier otro fondo o imagen. Explica el uso del nodo Delta Keyer y el ajuste de sus parámetros para obtener un recorte limpio, incluyendo la corrección de bordes y el uso de máscaras para aislar áreas problemáticas.

## Lecciones accionables
- Abre el clip en el módulo de edición, luego ve a Fusion (pestaña Fusion) para acceder al editor de nodos.
- Presiona **Espacio** (o **Caps Lock + Espacio**) con el nodo MediaIn seleccionado, escribe **Delta Keyer** y presiona Enter para agregar el nodo.
- Conecta la salida del MediaIn a la entrada del Delta Keyer.
- En el inspector del Delta Keyer, en la sección **Chroma Key**, haz clic en el selector de color (cuentagotas) y elige el color verde del fondo del clip.
- Para visualizar la máscara, cambia la vista a **Alpha** (canal alfa) en el visor; lo negro será lo eliminado, lo blanco lo conservado.
- Ajusta los parámetros en la pestaña **Matte**:
  - Usa el control deslizante **Shadows** para oscurecer las áreas negras (eliminar más fondo).
  - Usa el control deslizante **Highlights** para aclarar las áreas blancas (conservar el sujeto).
- Para limpiar bordes con restos verdes, ve a la pestaña **Spill**:
  - Ajusta **Range** para reducir el derrame de color verde en los bordes.
  - Ajusta **Balance** y **Gain** para eliminar bordes rojizos o artefactos de color.
- Si partes del fondo no se eliminan completamente (por ejemplo, esquinas), añade un nodo **Rectangle Mask** (presiona Espacio, escribe "Rectangle Mask"):
  - Dibuja un rectángulo que cubra solo el área del sujeto.
  - Conecta la salida de la máscara a la entrada de efecto (efecto) del Delta Keyer.
  - Para el fondo, duplica la máscara (Ctrl+C, Ctrl+V) y conéctala a la entrada de efecto del nodo de fondo o usa un nodo **Merge** para combinar.
- Coloca un fondo (imagen o clip) debajo del nodo Delta Keyer en el flujo, o usa un nodo **Background** para ver el resultado final.

## Reglas para agentes
- Usa **Delta Keyer** como nodo principal para croma key en Fusion; no uses otros keyers a menos que sea necesario.
- Siempre visualiza en **Alpha** durante el ajuste para ver exactamente qué se elimina y qué se conserva.
- Ajusta primero **Shadows** y **Highlights** en la pestaña Matte antes de tocar Spill.
- Nunca selecciones un color de croma que esté presente en la ropa o piel del sujeto (ej. no uses verde si la persona viste verde).
- Cuando haya bordes con derrame de color, usa los controles **Range**, **Balance** y **Gain** en la pestaña Spill, no aumentes la agresividad del Matte.
- Si el fondo no se elimina por completo en los bordes del encuadre, añade una **máscara rectangular** para aislar al sujeto y evitar recortar áreas no deseadas.

## Errores comunes que evita o menciona
- No seleccionar el tono de verde exacto del fondo; el cuentagotas debe elegir el color dominante del croma.
- No visualizar en Alpha durante el ajuste, lo que impide ver recortes incorrectos o agujeros en la máscara.
- Ajustar solo un parámetro (ej. Shadows) sin equilibrar con Highlights, dejando bordes duros o transparencias no deseadas.
- Ignorar el derrame de color (spill) en los bordes del sujeto, lo que deja un halo verde o rojizo.
- No usar máscaras para aislar al sujeto cuando el fondo tiene elementos que no se eliminan bien (como esquinas del encuadre).