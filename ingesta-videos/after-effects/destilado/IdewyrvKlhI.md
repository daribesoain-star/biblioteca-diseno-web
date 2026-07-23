# Tutorial: Compositing 3D Renders in After Effects
**Fuente:** Amort Media | https://youtu.be/IdewyrvKlhI

## Qué enseña (2-3 líneas)
Cómo componer capas de render 3D (provenientes de Blender) en After Effects usando modos de fusión, máscaras, ajustes de color y efectos para integrar personajes, fondos, niebla y luces. También cubre técnicas para corregir problemas de contacto con el suelo y añadir elementos externos como texturas.

## Técnicas accionables
- Importar secuencias de imágenes: doble clic en el panel Proyecto, navegar al archivo, marcar "Image Sequence". Verificar que la velocidad de fotogramas sea correcta en el panel Proyecto; si no, clic derecho > Interpret Footage > Main > ajustar Frame Rate. También se puede configurar en Preferences > Import > Default Frame Rate.
- Renombrar cada secuencia de imágenes inmediatamente después de importarla para facilitar la organización.
- Crear una nueva composición arrastrando la capa de fondo al botón "New Composition".
- Colocar las capas de primer plano sobre el fondo; las que aparecen más tarde deben moverse en la línea de tiempo para alinearse con la escena.
- Capa de niebla (fog pass): colocar sobre las capas de primer plano y cambiar el modo de fusión a Screen. Duplicar la capa varias veces para aumentar la densidad.
- Añadir efecto Hue/Saturation a las capas de niebla: Efecto > Color Correction > Hue/Saturation. Ajustar el parámetro Master Saturation para controlar la saturación.
- Si las capas se renderizaron en 16 bits, cambiar la profundidad de bits del proyecto: clic en el botón de profundidad de bits en la parte inferior del panel de composición y seleccionar "16 bits per channel".
- Añadir capa de ajuste (Layer > New > Adjustment Layer) y aplicar efecto Curves (Effect > Color Correction > Curves). Ajustar la curva: subir el punto de altas luces y bajar el punto de sombras para aumentar el contraste.
- Capa de luz de borde del personaje (character edge light pass): colocar sobre los elementos de primer plano, modo Screen. Ajustar opacidad (tecla T) o duplicar para intensificar.
- Para simular bloom: duplicar la capa de luz de borde, aplicar Effect > Blur & Sharpen > Gaussian Blur. Ajustar opacidad con tecla T.
- Usar máscara del personaje (character mask): arrastrar la capa de máscara sobre la capa del personaje. Crear una nueva capa de ajuste debajo de la máscara. En la capa de ajuste, en el menú desplegable Track Matte, seleccionar "Luma Matte". Aplicar Curves a la capa de ajuste para modificar solo el personaje.
- Para oscurecer los pies: misma técnica de máscara + Curves, para desviar la atención del contacto imperfecto con el suelo.
- Pre-componer todo: seleccionar todas las capas, Layer > Pre-compose. Esto permite aplicar efectos globales que no son posibles con capas de ajuste.
- Efecto "pictórico" o HDR: duplicar el pre-comp, aumentar saturación (Hue/Saturation), aplicar Effect > Blur & Sharpen > Fast Blur, cambiar modo de fusión a Color.
- Añadir nitidez: en la composición original, aplicar Effect > Blur & Sharpen > Sharpen a la capa de ajuste.
- Efecto glow/bloom: en la composición que contiene los pre-comps duplicados, hacer otra duplicación. Aplicar Curves (para que solo brillen las partes claras), Fast Blur, modo Screen.
- Oscurecer fondo con máscara: importar máscara del fondo, colocar capa de ajuste debajo, en Track Matte seleccionar "Alpha Matte". Para suavizar el borde de la máscara, seleccionar la máscara y aplicar Effect > Blur & Sharpen > Fast Blur, marcar "Repeat Edge Pixels".
- Añadir humo: colocar la capa de humo debajo de las capas de niebla, modo Screen. Ajustar opacidad con tecla T. Para suavizar el borde inferior: seleccionar herramienta Rectangle Mask, dibujar máscara en la parte inferior, presionar F para ajustar Mask Feather, cambiar Mask Mode de Add a Subtract. Ajustar Mask Expansion si es necesario.
- Añadir edificio desde textura: arrastrar imagen a la composición, recortar si es necesario, escalar. Colocar debajo de las capas de niebla, modo Screen. Aplicar Curves para oscurecer los negros y Fast Blur para igualar la suavidad del fondo.
- Para que el edificio siga el movimiento de la cámara: crear un Null Object (Layer > New > Null Object). Presionar P para mostrar Position, hacer clic en el cronómetro para crear un keyframe al inicio. Mover el playhead al inicio de la animación, reposicionar el Null Object sobre un elemento de fondo prominente. Arrastrar el Pick Whip desde la capa del edificio al Null Object para parentearlo.
- Para evitar que el edificio se superponga a edificios del primer plano: colocar la capa de máscara sobre la capa del edificio, en Track Matte seleccionar "Alpha Matte".
- Para corregir el glow problemático alrededor del personaje: seleccionar la máscara del personaje, aplicar Fast Blur, luego Curves para oscurecer y "choke" (contraer) la máscara.
- Para arreglar pies que no tocan el suelo: crear un Solid (Layer > New > Solid) del color de la sombra. Enmascarar y animar con keyframes para que siga el movimiento del pie. Ajustar Mask Feather para que coincida con la suavidad de la sombra.

## Reglas para el erudito (imperativas y verificables)
- Usa Screen como modo de fusión para capas de niebla, luces de borde, humo y texturas de fondo.
- Cuando añadas una máscara para aislar un elemento, coloca la capa de ajuste debajo de la máscara y configura el Track Matte como Luma Matte o Alpha Matte según el tipo de máscara.
- Para suavizar bordes de máscaras, usa Fast Blur con "Repeat Edge Pixels" activado.
- Para que un elemento siga el movimiento de la cámara, parentéalo a un Null Object con keyframes de posición manuales o motion tracking.
- Si el proyecto usa capas de 16 bits, cambia la profundidad de bits del proyecto a 16 bits per channel antes de aplicar efectos.
- Para simular bloom, duplica la capa de luz, aplica Gaussian Blur y ajusta opacidad; no uses el efecto Glow nativo de AE.
- Nunca dejes el Frame Rate por defecto al importar secuencias de imágenes; verifícalo y ajústalo en Interpret Footage o Preferences.
- Para el efecto HDR/pictórico, pre-compón todo, duplica el pre-comp, aumenta saturación, aplica Fast Blur y usa modo Color.

## Errores comunes que evita o menciona
- No verificar la velocidad de fotogramas al importar secuencias de imágenes; puede causar desincronización.
- Olvidar renombrar las capas al importar, lo que dificulta encontrarlas después.
- Aplicar demasiada saturación a las capas de niebla, dejando la escena lavada; el video menciona que redujo la saturación después.
- No ajustar la opacidad de las capas de luz de borde o humo; usar la tecla T para revelar el control rápidamente.
- Tener bordes duros en las máscaras; aplicar Fast Blur con "Repeat Edge Pixels" para suavizar.
- Que el edificio añadido se superponga a edificios del primer plano; usar una máscara con Alpha Matte para recortarlo.
- Glow no deseado alrededor del personaje causado por la capa de ajuste de brillo; aplicar blur y Curves a la máscara para "chokearla" (contraerla).
- Pies que no contactan con el suelo; el video sugiere que hacer el sólido de la suela más grueso en 3D es más fácil que intentar igualar la suavidad de la sombra con keyframes.