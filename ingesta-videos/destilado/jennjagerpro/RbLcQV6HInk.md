# Using the Magnetic Mask as a Green Screen Keyer in FCP
**Fuente:** jennjagerpro | https://youtu.be/RbLcQV6HInk

## Qué enseña
Cómo reemplazar el uso de un croma verde con la máscara magnética (Magnetic Mask) de Final Cut Pro para aislar un objeto en movimiento (botella y brazo) sobre un fondo blanco simple, combinándolo con máscaras dibujadas (Draw Mask) para revelar texto detrás del objeto y lograr un efecto profesional para publicidad en vallas digitales.

## Lecciones accionables
- Configurar proyecto con dimensiones personalizadas: **2176 x 608** a **29.97 fps** (formato de valla digital)
- Aplicar **retiming** (cambios de velocidad) **antes** de aplicar la máscara magnética, porque una vez aplicada, cambiar la velocidad la interrumpe
- Para extender duración: colocar el playhead donde el objeto está en reposo, agregar **hold frames** y extender hasta la duración deseada (15 segundos)
- Aplicar corrección de color antes de la máscara magnética: usar **Color Board** + **Color Mask** para iluminar áreas específicas (ej: etiqueta del producto)
- Para aplicar la máscara magnética: seleccionar clip → **Magnetic Mask** → pintar sobre el objeto a aislar (botella + brazo) → usar **Brush Tool** para refinar bordes y limpiar espacios entre dedos → presionar **Analyze** → **Done**
- Para limpiar artefactos: habilitar la máscara magnética, usar **Brush Tool** para borrar sombras o áreas problemáticas, avanzar **frame por frame** con las flechas del teclado
- Agregar **Custom Solid** como fondo debajo del clip para evaluar la calidad del recorte
- Usar **Draw Mask** en el texto: arrastrar y soltar sobre el título → dibujar puntos de control alrededor del objeto → ajustar puntos manualmente en el inspector (Video Inspector → twirl down **Control Points**)
- Para animar la máscara de texto: crear **keyframe en Position** (no en control points) → avanzar frame por frame → reposicionar la máscara para que el texto se revele detrás del objeto
- Para hacer transparente la parte superior del objeto: aplicar **Draw Mask** al clip de video → dibujar la forma interior → **Invert Mask** → bajar **Fill Opacity** → ajustar **Feather** y **Fall Off**
- Agregar **Drop Shadow** al clip de video: arrastrar y soltar → ajustar ángulo y compresión para dar sensación de profundidad
- Para ocultar texto hasta que comience el movimiento: recortar inicio del título y agregar **Cross Dissolve** rápido

## Reglas para agentes
- Usa **Magnetic Mask** solo cuando el fondo sea simple y la iluminación sea controlable; no es reemplazo oficial del croma verde
- Aplica **retiming** (cambios de velocidad) **siempre antes** de aplicar la máscara magnética
- Crea **keyframes en Position** (no en Control Points) al animar máscaras dibujadas para no deshacer los ajustes de forma
- Mantén todos los elementos dentro de las guías **Title/Action Safe** cuando el destino sea pantallas públicas (vallas digitales)
- Escala el clip de video para maximizar el tamaño del objeto principal, recortando áreas no deseadas (hombro, cabeza)
- Usa **frame-by-frame** para refinar máscaras en movimientos rápidos donde el análisis automático falla

## Errores comunes que evita o menciona
- No aplicar retiming después de la máscara magnética porque la interrumpe
- No dejar espacios entre dedos sin limpiar con el pincel (Brush Tool) porque se ven en el recorte final
- No confiar ciegamente en el análisis automático; revisar y limpiar sombras y artefactos frame por frame
- No keyframear los Control Points directamente; keyframear solo Position para no perder la forma de la máscara
- No olvidar que el texto puede quedar recortado por los bordes de la máscara; ajustar control points sin keyframes para corregir