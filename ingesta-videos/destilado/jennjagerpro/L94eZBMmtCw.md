# Game-changing New Tools for FCP Editors
**Fuente:** jennjagerpro | https://youtu.be/L94eZBMmtCw

## Qué enseña (2-3 líneas)
Este video presenta el pack "C Studio" de Motion VFX para Final Cut Pro, que incluye herramientas nuevas como Roto AI (rotoscopia manual), M Tracker 3D (con expansiones de partículas y glows) y M Tracker Surface (seguimiento de superficies). Muestra cómo apilar estos efectos para lograr composiciones fotorrealistas, desde gradación de color con Film Looks hasta tracking 3D y rotoscopia combinados.

## Lecciones accionables
- **Roto AI:** Antes de seleccionar, cambiar precisión de "Fast" a "Accurate" en el inspector (no se puede cambiar después). Usar la varita mágica (magic wand) como herramienta de selección: mantén presionado el botón del ratón y garabatea sobre el sujeto, luego suelta para que se seleccione automáticamente. Para corregir deriva en el tracking, coloca el playhead en el fotograma donde falla, usa la varita para pintar el área faltante y retrackea hacia adelante o atrás.
- **M Tracker 3D:** Después de trackear el clip base, usa el botón "Gizmo" en el inspector para anclar puntos fijos del fondo (ej. borde de teclado + soporte de micrófono) manteniendo Command para seleccionar múltiples puntos. Luego, en el inspector del clip base, copia el track (botón "Copy Track") y pégalo en el elemento de título/efecto (ej. "Line Wall" del Glow Pack) seleccionando "Paste Track".
- **M Tracker Surface:** Con la herramienta Bezier seleccionada por defecto, haz clic alrededor del área a seguir (ej. boca) para crear puntos, ciérralos y ajusta los tiradores para difuminar bordes. Presiona "Track" (adelante y atrás). Luego, en el inspector, selecciona "Source Image" y elige el archivo de reemplazo (ej. boca aterradora) desde el navegador, luego presiona "Apply Clip". Ajusta "Pan & Scale" y vuelve al Bezier si hay recortes.
- **Apilamiento de efectos:** Para separar sujeto del fondo, duplica el clip, aplica Roto AI al clip superior, ve a "Masked Video" en el inspector y desactiva el clip inferior para aislar el sujeto. Luego coloca elementos 3D (ej. "Sparks" o "Line Wall") entre los dos clips en la línea de tiempo, pégales el track copiado del clip base, y finalmente añade una capa de ajuste con "Letterbox" y el efecto "Flare" copiado del clip original para unificar todo.
- **Film Looks:** Usa los controles en pantalla (onscreen controls) para cambiar espacio de color, aplicar LUTs (presiona el icono de cuatro cuadrados para navegar), desactivar aberración/lente, activar grano, y ajustar letterbox manualmente desde el inspector. Coloca el playhead donde la cabeza del sujeto esté más alta para ajustar el offset del letterbox.

## Reglas para agentes
- Usa "Accurate" en Roto AI antes de cualquier selección; nunca cambies a "Fast" después de iniciar el recorte.
- Cuando uses M Tracker 3D, siempre ancla puntos fijos del fondo con el Gizmo (manteniendo Command para múltiples puntos) antes de copiar y pegar el track a los elementos.
- Para apilar efectos, coloca siempre los elementos de tracking (ej. Sparks, Line Wall) entre el clip con Roto AI (superior) y el clip de fondo (inferior) en la línea de tiempo.
- Aplica el letterbox solo en una capa de ajuste final, no en cada efecto individual, para evitar solapamientos.
- Nunca uses valores negativos en parámetros de gravedad de partículas (ej. Sparks) si el control está bloqueado en cero; en su lugar, ajusta otros parámetros como dirección o velocidad.

## Errores comunes que evita o menciona
- **No cambiar precisión después de seleccionar:** Si inicias Roto AI en "Fast" y luego cambias a "Accurate", la selección se pierde; debe decidirse antes.
- **Deriva en tracking de Roto AI:** El tracker puede fallar en áreas oscuras (ej. camiseta negra sobre fondo oscuro); se corrige pintando manualmente los fotogramas donde falla y retrackeando.
- **Letterbox inconsistente:** Los efectos de expansión (flares, partículas) no incluyen ajustes de letterbox como los Film Looks; hay que aplicar letterbox manualmente en una capa de ajuste para que todos los elementos se recorten uniformemente.
- **Escala del pincel en Roto AI:** No se puede cambiar el tamaño del pincel de la varita mágica; es una limitación actual de la herramienta.
- **Parámetros de gravedad invertidos:** En partículas como Sparks, aumentar la gravedad hace que floten hacia arriba en lugar de caer, y el valor no puede ser negativo; falta control fino desde Final Cut Pro en comparación con Apple Motion.