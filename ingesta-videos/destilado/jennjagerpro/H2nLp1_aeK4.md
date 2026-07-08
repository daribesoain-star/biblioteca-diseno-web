# Recreating the White Lotus Show Open in Apple Motion
**Fuente:** jennjagerpro | https://youtu.be/H2nLp1_aeK4

## Qué enseña (2-3 líneas)
Este tutorial enseña a recrear la secuencia de apertura de *The White Lotus* en Apple Motion, trabajando en espacio 3D con capas, máscaras de imagen, luces y cámara. También cubre cómo crear cortinas con bordes festoneados usando la herramienta Bézier, aplicar estilos de forma como "feathers" para simular textura de tapicería, y cómo hacer que ciertos elementos (como el texto) no sean afectados por la cámara 3D ni la iluminación.

## Lecciones accionables
- **Crear cortina superior con Bézier:** Usar la herramienta Bézier (en la parte inferior del lienzo) para dibujar un lado de la cortina con forma festoneada. Hacer clics para crear puntos rectos, luego hacer clic derecho en cada punto y seleccionar "Smooth" para curvar. Duplicar la forma, rotarla 180° en el eje Y (Inspector > Propiedades > Rotación > Y = 180°) y reposicionarla en X para crear simetría.
- **Aplicar máscara de imagen:** Agrupar las formas Bézier en un grupo (ej. "Top Curtain Bezier"). Arrastrar la imagen de la cortina (generada con Adobe Firefly) sobre el proyecto. Seleccionar el grupo de la imagen, hacer clic derecho > "Add Image Mask", y arrastrar el grupo Bézier al campo "Mask Source".
- **Crear borde de tapicería:** Duplicar el grupo Bézier, renombrarlo "Top Curtain Trim". En cada forma Bézier: deshabilitar "Fill", habilitar "Outline". En "Shape Style" > "Fauna" > seleccionar "Feathers". En "Stroke" > "Color Over Stroke", ajustar el gradiente a un tono dorado.
- **Ajustar color de imagen AI:** Aplicar filtro "Color Adjustments" (Filters > Color > Color Adjustments) para bajar "Blacks" y "Exposure". Usar "Hue/Saturation Curves" para añadir más azul si la imagen generada no coincide con el arte original.
- **Configurar proyecto 3D:** Crear una cámara (Add Object > Camera). Cambiar el grupo a 3D. Posicionar capas en el eje Z: fondo en Z=0, cortina inferior en Z=1000, cortina superior en Z=1500. Ajustar escala y posición Y según sea necesario.
- **Añadir movimiento de cámara:** Seleccionar la cámara, ir a Behaviors > Camera Behaviors > "Zoom In/Zoom Out". Ajustar "Zoom" a 0.2 (valor exacto usado en el tutorial) para un zoom lento.
- **Mover cortinas en dirección opuesta:** En la cortina superior, aplicar Behavior > Basic Motion > "Motion Path". En el inspector, bajo "Control Points", cambiar punto 2: X=0, Y=45 (para mover hacia arriba). Copiar el behavior y pegarlo en la cortina inferior, cambiar punto 2: Y a valor negativo (ej. -45) para mover hacia abajo.
- **Añadir luz y sombras:** Add Object > Light. Cambiar de "Point Light" a "Spotlight". En Propiedades, llevar Z a 3000 (más allá de la cortina superior). En el panel Light: ajustar "Falloff", "Cone Angle", "Soft Edge". Activar "Shadows", subir "Softness" y bajar "Opacity" para sombras suaves.
- **Aplicar profundidad de campo:** Seleccionar cámara, en Inspector > Camera > Depth of Field. Activar "Depth of Field" en el menú superior derecho (Render > Depth of Field). Ajustar "Focus Offset", "Near Focus" y "Far Focus" para mantener el primer plano nítido y el fondo borroso.
- **Texto no afectado por 3D:** Crear texto con la herramienta Text. Arrastrarlo fuera de cualquier grupo 3D. En Propiedades, poner Z=0. Hacer clic en el ícono de capa 3D (junto al grupo) para cambiarlo a 2D. Así el texto no se ve afectado por la cámara ni la luz.
- **Ajustar texto con Transform Glyph:** Usar la herramienta "Transform Glyph" (esquina inferior izquierda del lienzo) para seleccionar caracteres individuales (ej. la "L" de "Lotus") y cambiar tamaño y línea base. Ajustar tracking (espaciado entre caracteres) y line spacing (espaciado entre líneas) para igualar el diseño original.
- **Fade in/out del texto:** Recortar el grupo de texto en la línea de tiempo (I para inicio, O para final). Aplicar Behavior > "Fade In/Fade Out" (default 20 frames).

## Reglas para agentes
- Usa la herramienta Bézier con clics simples para puntos rectos, luego aplica "Smooth" a cada punto para curvar, en lugar de arrastrar para crear curvas directamente.
- Cuando dupliques formas simétricas, usa rotación en Y a 180° para reflejar, no intentes dibujar el lado opuesto manualmente.
- Para que el texto no sea afectado por la cámara 3D ni la luz, cambia el grupo de texto a 2D haciendo clic en el ícono de capa 3D.
- Activa "Depth of Field" manualmente en el menú Render (esquina superior derecha) después de configurar los parámetros en la cámara; de lo contrario no se aplica.
- Cuando uses "Motion Path" para mover cortinas verticalmente, pon X=0 en el segundo punto de control para evitar movimiento lateral.
- Para sombras suaves, activa "Shadows" en la luz, luego sube "Softness" y baja "Opacity" para evitar sombras duras.

## Errores comunes que evita o menciona
- **No usar "Depth of Field" sin activarlo en Render:** Ajustar los parámetros en la cámara no tiene efecto hasta que se marca "Depth of Field" en el menú Render superior derecho.
- **Texto borroso o con sombras no deseadas:** Ocurre cuando el texto está en un grupo 3D y es afectado por la cámara y la luz. La solución es cambiar el grupo a 2D.
- **Imagen AI demasiado brillante o saturada:** La imagen generada por Firefly puede no coincidir con el arte original; se corrige con filtros "Color Adjustments" y "Hue/Saturation Curves".
- **Cortina con un "divot" en el punto central:** Al duplicar y rotar la forma Bézier, puede quedar un pico en el centro. Se debe editar los puntos manualmente para redondearlo.
- **Movimiento lateral no deseado en cortinas:** Al usar "Motion Path", si no se pone X=0 en el segundo punto de control, la cortina se moverá de lado a lado en lugar de arriba/abajo.