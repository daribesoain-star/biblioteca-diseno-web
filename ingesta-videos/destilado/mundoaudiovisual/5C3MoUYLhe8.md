# ¿Cómo hacer un anuncio / Spot Publicitario con bajo presupuesto en Final Cut Pro X?
**Fuente:** mundoaudiovisual | https://youtu.be/5C3MoUYLhe8

## Qué enseña (2-3 líneas)
El tutorial muestra cómo crear un spot publicitario profesional para una marca (Coca-Cola) usando Final Cut Pro X con recursos caseros y mínima inversión. Explica técnicas de rodaje con trípode rotatorio, croma verde, y edición avanzada con máscaras, keyframes, desenfoques y composición multicapa para lograr un resultado pulido.

## Lecciones accionables
- **Rodaje casero con rotación:** Pegar la lata al trípode con silicona y girar el trípode manualmente para simular rotación; grabar con fondo verde separado para evitar sombras.
- **Eliminación de fondo verde:** En Final Cut, aplicar "Illustrator y pan" (Keyer + máscara de dibujo) para recortar la lata; ajustar máscara con keyframes para seguir el movimiento.
- **Ajuste de color inicial:** Ir a Color > Curvas de color > "Landslight" (Luma) y bajar el nivel; luego usar ruedas de color para refinar el tono.
- **Máscara de dibujo con keyframes:** Seleccionar "Draw Mask" (máscara de dibujo) y animar puntos con keyframes (ej. valor 400 en parámetros) para aislar la lata del fondo.
- **Fondo blanco temporal:** Añadir "White Matte" (mate blanco) como fondo para visualizar bordes y refinar la máscara.
- **Animación de escala y enfoque:** En el primer frame añadir keyframe de escala; agregar "Blur" > "Directional Blur" (desenfoque direccional) con keyframe 100 al inicio y keyframe 0 al final para efecto de enfoque progresivo.
- **Rotación animada:** Añadir keyframe de rotación en -35° al inicio y keyframe en 0° al final.
- **Congelado de frame:** Cortar el clip y aplicar "Freeze Frame" (fotograma congelado) para mantener la posición final.
- **Compuesto de clip:** Seleccionar todo el clip editado y crear "New Compound Clip" (nuevo clip compuesto) para tratarlo como una sola unidad.
- **Ajuste de velocidad:** Usar Shift + arrastrar para cambiar velocidad; cortar clip y aplicar 400% de velocidad rápida en la primera parte.
- **Fondo de playa:** Descargar video de playa en 4K, colocarlo debajo del clip compuesto, escalarlo y anidarlo ("Embed").
- **Máscara de superposición:** Duplicar el fondo (Cmd+C, Cmd+V), colocarlo sobre la lata, crear "Draw Mask" (máscara de dibujo) con opacidad reducida para alinear, y dibujar la máscara para que elementos (ej. conchas) aparezcan delante de la lata.
- **Desenfoque de fondo:** Añadir "Blur" > "Directional Blur" al fondo duplicado para dar profundidad de campo.
- **Animación de salida:** En el último frame congelado, añadir keyframe de posición para mover la lata hacia la izquierda; añadir keyframe de opacidad a 0 en el frame final para desvanecer.
- **Efectos de sonido:** Buscar en "Sound Effects" (efectos de sonido) música y sonidos ambientales (ej. pájaros) para la escena final.
- **Texto final:** Añadir texto en el último frame de posición para el mensaje publicitario.

## Reglas para agentes
- Usa "Draw Mask" con keyframes cuando el objeto tenga movimiento para mantener el recorte preciso.
- Aplica "Compound Clip" después de editar un objeto con múltiples efectos para simplificar la línea de tiempo.
- Usa "Freeze Frame" en el último frame de una animación para mantener la posición final sin movimiento.
- Ajusta la velocidad con Shift + arrastrar y valores como 400% para acelerar clips de relleno.
- Duplica el fondo y usa "Draw Mask" con opacidad reducida cuando necesites que elementos del fondo aparezcan delante del objeto principal.
- Nunca uses un fondo verde sin separación suficiente del objeto para evitar sombras no deseadas.
- Nunca dejes bordes visibles en la máscara sin usar "Smooth" (suavizado) para integrar el objeto con el fondo.

## Errores comunes que evita o menciona
- **Sombras en el croma:** Colocar el objeto lejos del fondo verde para evitar sombras que compliquen la eliminación del fondo.
- **Máscara estática con objeto en movimiento:** No ajustar la máscara con keyframes provoca que el recorte se desalinee; el tutorial muestra cómo animar los puntos de la máscara.
- **Falta de profundidad:** No usar desenfoque direccional en el fondo hace que la composición se vea plana; se añade blur para simular profundidad de campo.
- **Movimiento brusco al final:** No congelar el frame final causa cortes abruptos; se usa "Freeze Frame" para mantener la posición estable.
- **Fondo sin integración:** No duplicar el fondo y enmascarar elementos delante del objeto rompe la ilusión de que el objeto está en la escena; se corrige con la máscara de superposición.