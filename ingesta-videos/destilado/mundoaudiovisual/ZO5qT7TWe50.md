# Curso de edición de video - Davinci Resolve - 🎬 Capítulo 3 - Añadir clips a la línea de tiempo.
**Fuente:** mundoaudiovisual | https://youtu.be/ZO5qT7TWe50

## Qué enseña (2-3 líneas)
Este capítulo explica las siete formas de insertar clips en la línea de tiempo de DaVinci Resolve: Insertar, Sobrescribir, Reemplazar, Superponer, Sobrescribir y Propagar, Insertar y Ajustar Duración, y Añadir al Final. También cubre cómo marcar puntos de entrada y salida en el monitor de origen, y atajos de teclado clave (F9, F10, F11, F12).

## Lecciones accionables
- **Marcar puntos de entrada/salida en el monitor de origen:** Haz doble clic en un clip del panel de medios para abrirlo en el monitor de origen. Usa la tecla de flecha izquierda (o el botón "Marcar entrada") para establecer el punto de entrada (In), y la tecla de flecha derecha (o el botón "Marcar salida") para el punto de salida (Out). También puedes hacer clic con el ratón en los botones de la interfaz.
- **Arrastrar clip directamente a la línea de tiempo:** Una vez marcados In y Out, arrastra el clip desde el monitor de origen hasta la línea de tiempo. Solo se añadirá el fragmento seleccionado.
- **Insertar clip (F9):** Coloca el cabezal de reproducción en la línea de tiempo donde quieras insertar. Presiona F9. El clip se inserta desplazando el contenido existente hacia la derecha, sin perder nada.
- **Sobrescribir clip (F10):** Coloca el cabezal donde quieras sobrescribir. Presiona F10. El clip reemplaza el contenido en esa posición, eliminando el material que ocupaba ese intervalo de tiempo.
- **Reemplazar clip (F11):** Coloca el cabezal sobre un clip existente en la línea de tiempo. Presiona F11. Reemplaza todo el clip seleccionado con el nuevo, ajustando la duración del nuevo clip para que coincida con la duración del clip original (toma fragmentos delante y detrás de los puntos In/Out para completar la duración).
- **Superponer clip (F12 o botón Overlay):** Coloca el cabezal donde quieras. Presiona F12 o usa el botón "Overlay" en el menú Editar. Añade el clip en una nueva pista de video encima de la existente.
- **Sobrescribir y Propagar (Shift+F10):** Coloca el cabezal sobre un clip. Presiona Shift+F10. Reemplaza todo el clip (incluso si es más largo que el fragmento insertado) y propaga el contenido restante del nuevo clip hacia la derecha, eliminando el clip original por completo.
- **Insertar y Ajustar Duración (Shift+F11):** Coloca el cabezal sobre un clip. Presiona Shift+F11 o usa "Insert and Adjust Duration" en el menú Editar. Ajusta la duración del nuevo clip para que coincida exactamente con la duración del clip que estás reemplazando.
- **Añadir al Final (F12 o botón "Add to End"):** Con In y Out marcados, presiona F12 (o usa la opción en el menú Editar). Añade el clip al final de la línea de tiempo.
- **Navegación precisa en el monitor de origen:** Usa el botón de avance/retroceso cuadro a cuadro (junto al botón de reproducción) para moverte con precisión. Mantén presionado Alt y mueve el ratón sobre la línea de tiempo para explorar y hacer zoom.
- **Zoom en la línea de tiempo:** Presiona Shift+Z para ajustar la línea de tiempo a la ventana. Usa Alt + rueda del ratón para hacer zoom horizontal.
- **Vista previa a pantalla completa:** En el monitor de origen o en el visor (canvas), presiona la tecla P para ver a pantalla completa.
- **Modo proxy para rendimiento:** Ve a "Playback" > "Proxy Mode" y selecciona "Half Resolution" o "Quarter Resolution" para que la reproducción sea más fluida si el video se entrecorta.

## Reglas para agentes
- Usa F9 (Insertar) cuando quieras añadir un clip sin perder ningún material existente en la línea de tiempo.
- Usa F10 (Sobrescribir) cuando quieras reemplazar exactamente el intervalo de tiempo donde colocas el cabezal, eliminando el contenido original en esa zona.
- Usa F11 (Reemplazar) cuando quieras sustituir un clip completo de la línea de tiempo por otro, manteniendo la duración original del clip reemplazado.
- Usa F12 (Superponer) cuando quieras añadir un clip en una nueva pista sin afectar las pistas existentes.
- Usa Shift+F10 (Sobrescribir y Propagar) cuando quieras reemplazar completamente un clip de la línea de tiempo y que el nuevo clip se extienda hacia la derecha eliminando el resto del clip original.
- Usa Shift+F11 (Insertar y Ajustar Duración) cuando quieras reemplazar un clip existente con otro, forzando que el nuevo clip tenga exactamente la misma duración que el original.
- Usa F12 (Añadir al Final) cuando quieras agregar un clip al final de la línea de tiempo sin preocuparte por la posición del cabezal.
- Siempre marca los puntos In y Out en el monitor de origen antes de usar cualquier método de inserción, excepto al arrastrar directamente.
- Nunca arrastres un clip completo a la línea de tiempo si solo necesitas un fragmento; siempre marca In y Out primero.

## Errores comunes que evita o menciona
- **Arrastrar el clip completo a la línea de tiempo sin marcar In/Out:** Esto añade todo el clip, incluyendo silencios o partes no deseadas. Siempre marca los puntos de entrada y salida para insertar solo el fragmento necesario.
- **Usar Sobrescribir (F10) sin querer:** Si no entiendes que sobrescribe, puedes perder material valioso. Asegúrate de que esa sea la intención antes de usarlo.
- **Confundir Reemplazar (F11) con Sobrescribir (F10):** Reemplazar ajusta la duración del nuevo clip al clip original; Sobrescribir solo reemplaza el intervalo donde está el cabezal. No son intercambiables.
- **No usar el modo proxy en proyectos pesados:** Si el video se entrecorta, activa el modo proxy (Half o Quarter Resolution) en Playback > Proxy Mode para una edición más fluida.