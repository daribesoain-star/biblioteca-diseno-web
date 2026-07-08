# Course - Final Cut Pro X - 2020 - 🎬 * Chapter 10 - Appearance Effect
**Fuente:** mundoaudiovisual | https://youtu.be/7WqsRqgR0w8

## Qué enseña
Cómo crear un efecto de aparición/desaparición en Final Cut Pro X usando una explosión con fondo negro, combinando chroma key, compuestos de clips, máscaras de dibujo y el efecto de superposición. También cubre la sincronización de audio externo con palmada de slate y la creación de clips compuestos.

## Lecciones accionables
- **Crear un clip compuesto (Compound Clip):** Selecciona el clip principal + el clip de chroma key, presiona Shift para selección múltiple, haz clic derecho → "New Compound Clip" → OK. Esto fusiona ambos clips en uno solo para manipularlos como una unidad.
- **Sincronizar audio externo con palmada (slate):** Ubica el pico de audio de la palmada en la pista de video. Acerca el clip de audio externo alineando su pico de palmada con el del video. Usa la herramienta Zoom (Cmd +) para ajuste milimétrico. Corta y elimina el audio de cámara sobrante.
- **Ajustar nivel de audio del micrófono:** Selecciona el clip de audio externo, ve al inspector de audio, ajusta el volumen a 3 (sin picos en amarillo/rojo). Si ves colores rojos, reduce el nivel para evitar distorsión.
- **Crear segundo clip compuesto para audio:** Selecciona el clip de video compuesto + el clip de audio sincronizado, Shift + clic derecho → "New Compound Clip" → OK. Así el audio queda anidado dentro del video.
- **Preparar línea de tiempo para efecto de aparición:** Usa la herramienta Cuchilla (Blade Tool, B) para cortar el clip compuesto justo donde el presentador no está en cuadro. Coloca ese fragmento (sin persona) como base. Corta nuevamente donde el presentador comienza a aparecer.
- **Colocar clip de explosión:** Arrastra el clip de explosión (fondo negro) a una pista superior, sobre el punto exacto donde quieres que ocurra la aparición. Desactiva el imán magnético (N) para ajustar fotograma a fotograma.
- **Aplicar efecto de superposición (Overlay):** Selecciona el clip de explosión → en el inspector de efectos, busca "Overlay" (o "Screen" / "Exclusion") y aplícalo. Esto elimina el fondo negro y deja visible solo la explosión.
- **Ajustar color de superposición:** Si quedan residuos de color negro, usa el cuentagotas (Color Selector) en el inspector de efectos de superposición, haz clic en una zona negra del clip de explosión para que desaparezca por completo.
- **Crear máscara de dibujo (Draw Mask):** Selecciona el clip de explosión → en el inspector de efectos, busca "Draw Mask" y arrastra sobre el clip. Dibuja puntos alrededor de los objetos que deben ocultar la explosión (ej. computadora, caja GoPro). Cierra la máscara haciendo clic en el primer punto.
- **Invertir máscara:** En el inspector de la máscara de dibujo, activa la casilla "Invert" para que la explosión solo sea visible dentro del área enmascarada (detrás de los objetos).
- **Ajustar posición temporal de la explosión:** Reproduce y mueve el clip de explosión en la línea de tiempo hasta que coincida exactamente con el momento en que el presentador comienza a aparecer.

## Reglas para agentes
- Usa "New Compound Clip" siempre que necesites agrupar video + chroma key o video + audio sincronizado para tratarlos como un solo elemento.
- Aplica el efecto "Overlay" (o "Screen") sobre clips con fondo negro para hacerlos transparentes; nunca uses chroma key en fondos negros.
- Activa "Invert" en la máscara de dibujo cuando quieras que el efecto solo se vea dentro del área enmarcada (no fuera).
- Desactiva el imán magnético (N) cuando necesites ajustar la posición de un clip con precisión de fotogramas.
- Ajusta el volumen de audio externo a 3 como valor inicial; nunca permitas picos en zona roja en el medidor de audio.
- Usa la herramienta Zoom (Cmd +) para alinear picos de palmada con precisión submilimétrica.

## Errores comunes que evita o menciona
- **No sincronizar correctamente la palmada:** Si el pico de audio del micrófono no coincide exactamente con el del video, el audio quedará desfasado. Usa zoom extremo para alinearlos.
- **Dejar el imán magnético activado al ajustar explosiones:** Impide mover clips con libertad fotograma a fotograma. Desactívalo con N.
- **No invertir la máscara de dibujo:** Si no activas "Invert", la explosión se ocultará donde debería verse y viceversa.
- **Usar chroma key en lugar de Overlay para fondos negros:** El chroma key no funciona correctamente con negro; Overlay o Screen son los efectos adecuados.
- **No ajustar el selector de color en Overlay:** Si quedan restos de fondo negro, usa el cuentagotas para muestrear el negro y eliminarlo por completo.
- **Dejar picos de audio en rojo:** Indica distorsión; reduce el volumen hasta que solo se vean colores amarillos como máximo.