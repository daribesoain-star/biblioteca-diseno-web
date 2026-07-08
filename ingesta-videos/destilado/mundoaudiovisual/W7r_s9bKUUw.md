# Curso de After Effects en español - 🎬 Capítulo 2 - Las herramientas y las máscaras.
**Fuente:** mundoaudiovisual | https://youtu.be/W7r_s9bKUUw

## Qué enseña (2-3 líneas)
Explica en detalle las herramientas de forma (rectángulo, elipse, polígono, estrella) y la pluma para crear máscaras sobre capas seleccionadas, así como formas independientes cuando no hay capas activas. Cubre parámetros clave como desvanecimiento de máscara, opacidad y extensión, y muestra el flujo básico de rotoscopia con la pluma.

## Lecciones accionables
- **Crear una máscara con forma predefinida:** selecciona una capa en la línea de tiempo, elige la herramienta Rectángulo, Rectángulo redondeado, Elipse, Polígono o Estrella, y dibuja sobre el área deseada. La máscara aparece automáticamente en las propiedades de la capa.
- **Ajustar desvanecimiento de máscara (Mask Feather):** en las propiedades de la máscara, aumenta el valor de "Mask Feather" para difuminar los bordes y lograr transiciones suaves entre capas o clips.
- **Modificar opacidad de máscara:** cambia el parámetro "Mask Opacity" para controlar la transparencia de la máscara (0 = completamente transparente, 100 = completamente opaca).
- **Extender o contraer bordes de máscara:** usa "Mask Expansion" con valores positivos para expandir los bordes hacia afuera o negativos para contraerlos hacia adentro.
- **Invertir máscara:** en las propiedades de la máscara, cambia el modo de "Add" a "Subtract" para invertir la selección.
- **Eliminar una máscara:** selecciona la máscara en la línea de tiempo y presiona la tecla Suprimir (Delete).
- **Rotoscopiar con la pluma (Pen Tool):** selecciona la capa, elige la pluma y haz clic para crear puntos de ancla. Para curvas, mantén presionado el botón del mouse al crear un punto y arrastra para ajustar las manijas de dirección.
- **Cerrar una máscara con pluma:** el último punto debe conectarse al primero; haz clic sobre el punto inicial para cerrar la forma.
- **Crear un sólido de fondo:** haz clic derecho en la línea de tiempo, selecciona "Nuevo" > "Sólido", elige un color y colócalo debajo de la capa con máscara para visualizar el recorte.
- **Ajustar curvas con pluma:** al crear un punto curvo, arrastra la manija en la dirección donde continuará la máscara para evitar que el trazo se desvíe.

## Reglas para agentes
- Usa "Mask Feather" siempre que necesites suavizar bordes entre dos clips o capas superpuestas.
- Selecciona siempre una capa antes de usar herramientas de forma o pluma si deseas crear una máscara; si no hay capa seleccionada, se creará una forma independiente (shape layer).
- Nunca dejes puntos de ancla sin cerrar al finalizar una máscara con pluma; el último punto debe conectarse al primero para que la máscara sea válida.
- Cuando crees curvas con la pluma, ajusta la manija de dirección en la dirección hacia donde continuará el trazo para mantener la fluidez.
- Para visualizar correctamente una máscara recortada, coloca un sólido de color debajo de la capa enmascarada.

## Errores comunes que evita o menciona
- No seleccionar una capa antes de dibujar: si no hay capa activa, las herramientas crean formas (shape layers) en lugar de máscaras.
- Olvidar cerrar la máscara al finalizar el trazado con pluma: la máscara queda abierta y no funciona correctamente.
- No ajustar las manijas de dirección al crear curvas con pluma: el trazo puede salir torcido o no seguir la forma deseada.
- No animar la máscara junto con el clip: si el clip se mueve y la máscara no está animada, el recorte se desplaza y se ve incorrecto.