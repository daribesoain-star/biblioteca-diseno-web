# Curso - Final Cut pro X - 2020 - 🎬 * Cap. 21 - Corregir un error común del Chroma Key.
**Fuente:** mundoaudiovisual | https://youtu.be/G9m0JOhoK0s

## Qué enseña
Cómo corregir el error de que el chroma key elimine partes del sujeto que llevan ropa o accesorios del mismo color que el fondo verde. La solución consiste en duplicar el clip, aplicar una máscara de dibujo en la copia superior para aislar las áreas problemáticas, y animar los puntos de control con keyframes si el sujeto se mueve.

## Lecciones accionables
- Aplica el efecto **Inserción** (Chroma Key) al clip con fondo verde.
- Ajusta el color en el inspector del efecto para eliminar sombras y mejorar la selección (usa la vista **Alfa** para ver en blanco lo visible y en negro lo transparente).
- Agrega una **Máscara de dibujo** (Draw Mask) al clip con chroma key para recortar bordes no deseados (por ejemplo, luces o partes del fondo).
- Duplica el clip original (Cmd+C, Cmd+V) y arrastra la copia a la pista superior.
- En la copia superior, **elimina el efecto Inserción** y **elimina la máscara de dibujo** anterior.
- Crea una **nueva Máscara de dibujo** en la copia superior que cubra exclusivamente las áreas del sujeto que tienen tonos verdes (ej. la camiseta verde).
- Para animar la máscara cuando el sujeto se mueve: avanza fotograma a fotograma, y cuando el área verde salga de la máscara, añade **keyframes** en los puntos de control y ajústalos para que sigan el movimiento.
- Verifica que el chroma key no se vea a través de la máscara ajustando los puntos de control en cada keyframe.

## Reglas para agentes
- Usa **Máscara de dibujo** en la copia superior del clip para aislar áreas del mismo color que el fondo chroma key.
- Nunca elimines el efecto Inserción del clip original; solo elimínalo en la copia duplicada.
- Siempre activa la vista **Alfa** para verificar qué áreas se vuelven transparentes antes de aplicar máscaras.
- Añade **keyframes** a los puntos de control de la máscara si el sujeto se mueve; ajusta fotograma a fotograma para evitar que el chroma key se filtre.

## Errores comunes que evita o menciona
- Usar ropa o accesorios del mismo color que el fondo chroma key (verde en este caso) provoca que Final Cut elimine esas partes del sujeto.
- No ajustar el color en el inspector del efecto Inserción puede dejar sombras o áreas mal recortadas.
- Olvidar animar la máscara con keyframes cuando el sujeto se mueve hace que el área verde vuelva a desaparecer o que el chroma key se vea.