# Custom Logo Animation in Apple Motion
**Fuente:** jennjagerpro | https://youtu.be/rFDqYXn7Plw

## Qué enseña (2-3 líneas)
Proceso creativo y técnico para animar logos de clientes en Apple Motion, desde el análisis del diseño original hasta la ejecución con máscaras, keyframes, filtros y efectos de wipe. Cubre tres técnicas: separación de letras con máscaras Bezier, transiciones de color con crop y keyframes, y extracción de texto con Luma Keyer.

## Lecciones accionables

- **Analizar el logo antes de animar:** identificar elementos clave (ej: línea en la "O" de un logo de brújula) y pensar en movimientos rápidos (máx. 2-3 segundos) que reflejen la marca.
- **Conservar una copia original del logo sin modificar** como ancla de alineación final. Duplicar el logo en el panel de proyecto (seleccionar → `Cmd+D`).
- **Separar partes del logo con máscaras Bezier:**
  1. Duplicar el logo tantas veces como secciones necesites.
  2. Desactivar todos los duplicados excepto el que trabajarás.
  3. Ir a `Mask Tool` → `Bezier Mask`.
  4. Hacer clic para crear puntos alrededor de la sección deseada (ej: solo las partes superiores de las letras).
  5. Cerrar la máscara y renombrar el duplicado (ej: "top", "left", "bottom", "right").
- **Keyframing de posición para animar entrada:**
  1. Colocar el playhead en el fotograma donde quieres que termine el movimiento (ej: 1.5 segundos).
  2. Seleccionar cada grupo enmascarado y añadir keyframe en `Properties` → `Position` (icono de diamante).
  3. Retroceder 12 fotogramas (flecha izquierda 12 veces).
  4. Modificar valores X o Y para que la pieza comience fuera del encuadre (ej: `Y` negativo para que caiga desde arriba).
  5. Activar la copia original para verificar alineación final.
- **Agrupar elementos animados y aplicar fade in:** seleccionar todos los grupos enmascarados → clic derecho → `Group`. Luego `Behaviors` → `Basic Motion` → `Fade In/Fade Out`. Ajustar duración en el inspector (ej: 8 fotogramas).
- **Transición de color con Crop y keyframes:**
  1. Duplicar el logo varias veces.
  2. Aplicar `Filters` → `Color` → `Colorize` a cada duplicado para cambiar su color (remapear negros y blancos al color deseado).
  3. En `Properties` → `Crop`, ajustar el valor de `Bottom` para recortar desde abajo.
  4. Colocar playhead ~1 segundo, añadir keyframe en Crop.
  5. Avanzar 6-10 fotogramas, cambiar Crop a `0`.
  6. En `Keyframe Editor` (tres diamantes), clic derecho en keyframe → `Bezier` para interpolar con curva.
- **Extraer texto específico con Luma Keyer:**
  1. Duplicar el logo original.
  2. `Filters` → `Keying` → `Luma Keyer`.
  3. En inspector → `Filters`, arrastrar el control deslizante hasta que desaparezca el color de fondo y solo quede el texto blanco.
  4. En `Properties` → `Crop`, recortar para aislar la palabra deseada (ej: "Gift").
- **Enmascarar para ocultar bordes no deseados:**
  1. Clic derecho en el texto extraído → `Group`.
  2. Aplicar `Rectangle Mask` al grupo (no al texto individual).
  3. En inspector de máscara, marcar `Invert` para ocultar lo que sobresale.
- **Copiar y pegar Luma Keyer entre elementos:** seleccionar el filtro en el timeline → `Cmd+C` → clic derecho en el nuevo elemento en panel de proyecto → `Paste`.
- **Aislar un elemento pequeño (ej: ®):** aplicar `Circle Mask` al texto que lo contiene → marcar `Invert` para ocultarlo. Duplicar ese texto, arrastrar fuera del grupo, desmarcar `Invert` en la máscara del duplicado. Eliminar keyframes con `Reset Parameters`.

## Reglas para agentes

- Usa siempre una copia original del logo sin modificar como referencia de alineación final.
- Cuando separes un logo en partes con máscaras, duplica el logo original tantas veces como secciones necesites.
- Aplica el fade in a un grupo que contenga todos los elementos animados, no a cada elemento individualmente.
- Usa Luma Keyer para extraer texto blanco sobre fondo de color sin necesidad de conocer la fuente.
- Cuando apliques una máscara a un texto extraído, agrupa primero el texto y aplica la máscara al grupo, no al texto directamente.
- Para animaciones de color con Crop, usa interpolación Bezier en el Keyframe Editor para evitar movimiento lineal.
- Nunca muevas la copia original del logo; solo úsala como referencia visual de posición final.
- Nunca apliques keyframes de posición a un elemento sin antes haber creado el keyframe en el punto de destino.

## Errores comunes que evita o menciona

- **No verificar las restricciones de marca del cliente:** el logo de Compass no podía usarse porque la línea de la "O" siempre debe apuntar al noreste (hacia Nueva York). Siempre consultar las guías de marca antes de animar.
- **Que los elementos aparezcan de golpe ("pop on"):** solucionado agrupando todas las piezas y aplicando un fade in al grupo completo.
- **Máscaras que se mueven con el texto animado:** evitado aplicando la máscara al grupo contenedor, no al elemento individual.
- **Olvidar elementos pequeños como el símbolo ®:** se debe aislar por separado, eliminar sus keyframes y hacerlo aparecer después con un fade in.
- **Keyframes desalineados en el tiempo:** usar las flechas del inspector para saltar al keyframe anterior y mantener consistencia de 12 fotogramas entre inicio y fin.