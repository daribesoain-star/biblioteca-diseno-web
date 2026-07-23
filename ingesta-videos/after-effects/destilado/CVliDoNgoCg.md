# sourceRectAtTime(); 
**Fuente:** Jake In Motion | https://youtu.be/CVliDoNgoCg

## Qué enseña (2-3 líneas)
Explica a fondo la expresión `sourceRectAtTime()` en After Effects, que devuelve el ancho, alto, borde superior y borde izquierdo de cualquier capa. Muestra cómo usarla para crear cajas que se ajusten dinámicamente al tamaño de capas de texto, manejar justificación, animaciones, márgenes, y escalar correctamente.

## Técnicas accionables
- **Crear una caja que se ajuste al texto:**
  - En el shape layer, Alt+clic en el stopwatch de **Size** para añadir expresión.
  - Definir variables: `var s = thisComp.layer("Texto");` (usar pick whip para seleccionar la capa de texto).
  - `var w = s.sourceRectAtTime().width;`
  - `var h = s.sourceRectAtTime().height;`
  - Array final: `[w, h];`
- **Alinear la caja con texto justificado a la izquierda:**
  - En **Position** del shape layer, Alt+clic y expresión: `s.sourceRectAtTime().width / 2` (usando pick whip al Size).
  - Luego parentear la caja a la capa de texto.
- **Corregir el escalado al cambiar tamaño de fuente:**
  - En **Position**, añadir variables: `var l = s.sourceRectAtTime().left;` y `var t = s.sourceRectAtTime().top;`
  - Expresión: `[w + l, h + t];` (donde w y h son las variables de Size).
  - Luego con Cmd+clic arrastrar la caja para alinear al anchor point del texto.
- **Añadir margen con Offset Paths:**
  - En el shape layer: **Add > Offset Paths**. Ajustar el **Amount** para el margen deseado (ej. 10 píxeles).
- **Congelar el tamaño en un momento específico:**
  - En `sourceRectAtTime(1)` para fijar el tamaño a 1 segundo.
  - Usar `s.outPoint` en lugar de un número fijo: `sourceRectAtTime(s.outPoint)`.
- **Usar el punto medio de la capa para animaciones de entrada/salida:**
  - Variables: `var start = s.inPoint; var end = s.outPoint; var mid = (end - start) / 2;`
  - Reemplazar `s.outPoint` por `mid` en todas las expresiones de `sourceRectAtTime`.
- **Ajustar anchor point del shape layer para escalar desde la esquina:**
  - En **Anchor Point**, expresión: `[l - offset, t - offset]` donde `offset` es el Amount de Offset Paths (pick whip).
  - En **Position**, expresión: pick whip al Anchor Point.
- **Leer valores de sourceRectAtTime en un texto:**
  - En **Source Text** de una capa de texto vacía, expresión:
    ```
    var s = thisComp.layer("CapaOrigen");
    var w = s.sourceRectAtTime().width;
    var h = s.sourceRectAtTime().height;
    "width = " + Math.round(w) + "\nheight = " + Math.round(h);
    ```
- **Incluir extents (stroke) en shape layers:**
  - `sourceRectAtTime(time, true)` para que incluya el stroke en el cálculo del bounding box.
- **Ajustar por escala de la capa origen:**
  - Variable: `var xScale = s.transform.scale[0];`
  - En width/height: `s.sourceRectAtTime().width * xScale / 100`

## Reglas para el erudito (imperativas y verificables)
- Usa camelCase en expresiones: primera palabra en minúscula, siguientes en mayúscula (ej. `sourceRectAtTime`, no `sourcerectattime`).
- Para arrays, usa corchetes y coma: `[w, h];`
- Cuando uses `sourceRectAtTime()` sin parámetros, por defecto usa `time` y `false` (extents ignorados).
- Para que el shape layer siga al texto, **parentéalo** a la capa de texto después de ajustar posición y anchor point.
- En operaciones matemáticas con paréntesis, recuerda el orden: multiplicación/división antes que suma/resta. Usa paréntesis extra si es necesario: `(end - start) / 2`.
- Para redondear valores, usa `Math.round()` envolviendo la variable: `Math.round(w)`.
- `sourceRectAtTime()` **no** considera la escala de la capa; debes multiplicar por `scale/100` manualmente.

## Errores comunes que evita o menciona
- **Texto justificado a la izquierda:** La caja escala desde el centro si no se ajusta el anchor point con `left` y `top`.
- **Cambiar tamaño de fuente:** La caja se desalinea porque el anchor point del texto está en la línea base, no en la esquina superior izquierda. Solución: usar `left` y `top` en la expresión de posición.
- **Hardcodear números en `sourceRectAtTime()`:** Si la animación cambia de duración, el valor fijo queda obsoleto. Mejor usar `s.outPoint` o calcular un punto medio.
- **Animación de salida del texto:** Si el texto desaparece, `outPoint` devuelve 0 y la caja colapsa. Solución: usar el punto medio (`mid`) basado en `inPoint` y `outPoint`.
- **Stroke en shape layers:** Por defecto `sourceRectAtTime()` ignora el stroke. Usar `sourceRectAtTime(time, true)` para incluirlo.
- **Stroke en capas de texto:** El bounding box se expande de forma impredecible; no confiar en `extents=true` para texto.
- **Escalar la capa origen:** La expresión no se actualiza automáticamente. Multiplicar width/height por `scale/100`.