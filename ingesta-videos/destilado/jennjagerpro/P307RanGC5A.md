# The Game-Changing FCP 12 Tool We Don't Talk About Enough
**Fuente:** jennjagerpro | https://youtu.be/P307RanGC5A

## Qué enseña
Cómo usar la búsqueda por transcripción (Transcript Search) en Final Cut Pro 12 para reemplazar palabras mal dichas en entrevistas o tutoriales, extrayendo la palabra exacta desde el material original y colocándola quirúrgicamente en la línea de tiempo con ajuste de subfotogramas.

## Lecciones accionables
- **Activar búsqueda por transcripción:** En el buscador del navegador (Browser), selecciona "Transcript Search" y elige "includes". Escribe la palabra exacta que buscas (ej: "browser"). El sistema muestra todas las instancias donde se dice esa palabra, incluso si aparece múltiples veces en un mismo clip.
- **Aislar la palabra en el clip seleccionado:** Cambia a vista de lista (List View) en el navegador. Localiza la palabra exacta dentro del clip y aísla manualmente la porción de audio que la contiene.
- **Preparar la línea de tiempo:** Abre las pistas de audio. Oculta el índice (Index) y acerca el zoom en la sección del timeline donde está el error. Reproduce para identificar el inicio de la palabra incorrecta en la forma de onda.
- **Cortar y deshabilitar el error:** Presiona **B** para activar la herramienta de cuchilla (Blade Tool). Corta justo antes de la palabra incorrecta. Presiona **A** para volver a la herramienta de selección. Selecciona el clip cortado y presiona **V** para deshabilitarlo (disable).
- **Insertar la palabra correcta:** Arrastra el clip del navegador que contiene la palabra correcta al timeline, aproximadamente donde crees que encaja. En el inspector de audio, deshabilita los canales que no necesites (ej: desactivar video si solo usas audio). Ajusta el volumen del clip insertado para que coincida con el volumen del clip anterior.
- **Ajuste de subfotogramas:** Si el recorte de un fotograma es demasiado, haz clic derecho en el clip insertado y selecciona "Expand Audio". Esto separa el audio del video (no se mueven independientemente, pero permite recortar el audio en subfotogramas). Arrastra el borde final del audio para recortar en incrementos menores a un fotograma.
- **Cerrar el espacio y sincronizar:** Selecciona el clip original deshabilitado (el error) y presiona **Shift + Delete** para convertirlo en un gap clip. Extiende ese gap clip para dejar espacio de respiración entre las palabras. Cierra el gap en los clips conectados. Ajusta el clip de video para que tenga el ancho del gap clip. Haz clic derecho y selecciona "Overwrite to Primary Storyline" para subir el clip a la línea de tiempo principal manteniendo el recorte de audio.
- **Probar el resultado con loop:** Coloca el playhead justo en el punto de edición. Presiona **Shift + ?** para que el playhead retroceda unos segundos y reproduzca automáticamente. Si no se repite, presiona **Command + L** para activar loop playback. Escucha con los ojos cerrados para evitar distracciones visuales.

## Reglas para agentes
- Usa "Transcript Search" con el filtro "includes" cuando necesites encontrar una palabra exacta dicha en el material original, no solo para búsquedas generales.
- Siempre expande el audio (Expand Audio) antes de recortar en subfotogramas si un fotograma completo es demasiado brusco.
- Nunca uses esta técnica para hacer que alguien diga algo que no dijo intencionalmente; solo para corregir errores propios o de entrevistados (como reemplazar pronombres por nombres propios).
- Cuando insertes un clip de reemplazo, deshabilita los canales de video que no necesites en el inspector de audio para evitar duplicados visuales.
- Siempre ajusta el volumen del clip insertado para que coincida con el volumen del clip anterior antes de escuchar el resultado.

## Errores comunes que evita o menciona
- **Cortar un fotograma entero cuando se necesita precisión subfotograma:** La creadora muestra que un fotograma puede ser demasiado; la solución es expandir el audio para recortar en subfotogramas.
- **No verificar la coincidencia de volumen entre clips:** Ajustar el volumen del clip insertado al mismo nivel que el clip anterior es clave para que el reemplazo suene natural.
- **Distraerse con cortes visuales al evaluar el resultado:** Recomienda cerrar los ojos al hacer loop playback para concentrarse solo en el audio.
- **Usar la búsqueda por transcripción solo para entrevistas largas:** La creadora destaca que es igualmente útil para corregir errores propios en tutoriales o contenido personal.