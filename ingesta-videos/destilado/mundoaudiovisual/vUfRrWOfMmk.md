# 🎬 DaVinci Resolve 20 Course: Adjustment Clips
**Fuente:** mundoaudiovisual | https://youtu.be/vUfRrWOfMmk

## Qué enseña (2-3 líneas)
Este video explica qué son los Adjustment Clips en DaVinci Resolve 20, cómo funcionan como capas de efectos que afectan a todos los clips subyacentes, y muestra tres usos prácticos: corrección de color masiva, creación de barras negras cinemáticas y aplicación de transiciones con desenfoque dinámico.

## Lecciones accionables
- **Insertar un Adjustment Clip:** Ve al módulo Editing, abre la pestaña **Effects** (o **Toolbox**), busca la categoría **Effects**, haz clic en **Adjustment Clip** y arrástralo a la línea de tiempo sobre los clips que deseas afectar.
- **Aplicar corrección de color a múltiples clips con un solo Adjustment Clip:**
    1. Inserta un Adjustment Clip sobre todos los clips que quieras corregir.
    2. Ve al módulo **Color**.
    3. Selecciona el nodo del Adjustment Clip (aparece como clip en la línea de tiempo de nodos).
    4. Realiza los ajustes deseados: aplica un **LUT** (ej. "Ji's"), ajusta **Gain**, baja **Shadows**, modifica **White Balance** usando un punto neutro (ej. camiseta blanca o mesa gris neutra).
    5. Todos los clips debajo del Adjustment Clip heredarán la corrección automáticamente.
- **Crear barras negras cinemáticas (letterbox) con Adjustment Clip:**
    1. Inserta un Adjustment Clip sobre toda la secuencia.
    2. En el inspector, ve a **Transform** → **Crop**.
    3. Ajusta **Top Crop** a **148** y **Bottom Crop** a **148**.
    4. Para animar la aparición de las barras: activa keyframes en Crop al inicio del clip (valor 0) y más adelante (valor 148).
    5. Ahora puedes reposicionar los clips subyacentes (con **Position Y**) sin mover las barras negras.
- **Aplicar desenfoque en transiciones:**
    1. Inserta un Adjustment Clip justo encima de una transición entre dos clips.
    2. En el inspector, ve a **Effects** → **Open FX** → busca **Gaussian Blur** (o **Gaussian Motion Blur**).
    3. Ajusta el valor de blur deseado.
    4. Copia el Adjustment Clip y pégalo sobre otras transiciones para reutilizar el efecto.
- **Crear presets de efectos reutilizables:**
    1. Aplica un efecto a un Adjustment Clip (ej. **Dynamic Zoom** desde el inspector).
    2. Ajusta los parámetros (zoom, posición, keyframes).
    3. Copia el Adjustment Clip (Ctrl+C / Cmd+C) y pégalo (Ctrl+V / Cmd+V) en cualquier otro punto de la línea de tiempo para aplicar el mismo efecto instantáneamente.
- **Recortar un Adjustment Clip:** Usa la herramienta **Blade** (cuchilla) o **Ctrl+B** para cortar el Adjustment Clip y aplicarlo solo a una sección específica de la línea de tiempo.

## Reglas para agentes
- Usa Adjustment Clips cuando necesites aplicar el mismo efecto (color, crop, blur, zoom) a múltiples clips consecutivos.
- Nunca apliques correcciones de color directamente a cada clip individual si todos provienen de la misma cámara y condiciones de luz; usa un solo Adjustment Clip.
- Cuando uses barras negras, siempre coloca el Crop en un Adjustment Clip, nunca en los clips de video, para poder reposicionar el contenido sin mover las barras.
- Para animar la aparición de barras negras, usa keyframes en el Adjustment Clip, no en los clips subyacentes.
- Al aplicar transiciones con desenfoque, coloca el Adjustment Clip exactamente sobre la transición, no sobre los clips completos.
- Si un clip no necesita el efecto del Adjustment Clip, recorta el Adjustment Clip con la herramienta Blade para excluir esa sección.

## Errores comunes que evita o menciona
- **No aplicar corrección de color clip por clip manualmente:** El video muestra que copiar y pegar nodos entre múltiples clips es "bastante engorroso"; el Adjustment Clip evita este trabajo repetitivo.
- **No recortar directamente los clips de video para crear barras negras:** Si recortas el clip de video, al mover la posición del contenido también se mueven las barras; con Adjustment Clip las barras permanecen fijas.
- **No aplicar efectos directamente a los clips de video cuando se necesita un efecto temporal o masivo:** El Adjustment Clip permite aplicar efectos sin modificar el clip original y reutilizarlos fácilmente.