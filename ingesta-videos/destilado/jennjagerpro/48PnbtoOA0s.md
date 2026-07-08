# Apple Motion Tips
**Fuente:** jennjagerpro | https://youtu.be/48PnbtoOA0s

## Qué enseña
Un método rápido para unificar múltiples imágenes de diferentes resoluciones, dimensiones y orientaciones en un mismo fotograma dentro de Apple Motion, usando máscaras rectangulares copiadas entre grupos para lograr un recorte uniforme sin tener que ajustar cada imagen manualmente.

## Lecciones accionables
- Arrastra todas las imágenes al panel de proyecto (Project pane) de Apple Motion.
- Haz clic derecho en cada imagen dentro del panel de proyecto y selecciona "Group" para agrupar cada imagen individualmente (una imagen por grupo).
- Selecciona el grupo que contiene la imagen con la orientación deseada (ej. la que quieras usar como referencia de recorte).
- Presiona **Ctrl + S** para aislar esa imagen y evaluar el recorte.
- Dibuja un **Rectangle Mask** sobre la imagen de referencia mientras tienes seleccionado el grupo (no la imagen).
- En la línea de tiempo (Timeline), selecciona la máscara recién creada, cópiala con **Apple + C**.
- Selecciona los otros grupos (no las imágenes dentro de ellos) y pega la máscara con **Apple + V**.
- Para ajustar el encuadre dentro de la máscara: selecciona la imagen dentro del grupo (no el grupo), ve al inspector (Inspector) > pestaña Properties, y modifica la escala (Scale) y posición (Position) para encuadrar correctamente.
- Para mover toda la imagen recortada (incluyendo máscara): selecciona el grupo y usa las herramientas de transformación.
- Para escalar todos los grupos de forma uniforme: selecciona todos los grupos en el panel de proyecto y ajusta el parámetro Scale en el inspector.
- Para alinear perfectamente: ve a View > Grid o presiona **Apple + '** (apóstrofe) para activar la cuadrícula y ajustar el espaciado manualmente; presiona nuevamente **Apple + '** para desactivarla.

## Reglas para agentes
- Siempre selecciona el grupo (no la imagen dentro del grupo) antes de dibujar o pegar una máscara.
- Copia y pega la máscara entre grupos, nunca dibujes una máscara nueva para cada imagen.
- Usa el grupo para mover o escalar el conjunto (imagen + máscara) y la imagen individual para reencuadrar dentro de la máscara.
- Activa la cuadrícula con **Apple + '** solo después de haber ajustado escalas y posiciones básicas, para el alineado final.
- Nunca intentes recortar imágenes directamente sin agruparlas primero, o perderás la capacidad de copiar máscaras entre grupos.

## Errores comunes que evita o menciona
- No seleccionar el grupo antes de dibujar la máscara (en lugar de seleccionar la imagen), lo que impide copiar la máscara a otros grupos.
- Olvidar que al pegar la máscara en otros grupos, el encuadre inicial será incorrecto (imágenes recortadas en lugares equivocados) y debe ajustarse desde la imagen dentro del grupo, no desde el grupo.
- No escalar todos los grupos simultáneamente seleccionándolos en el panel de proyecto, perdiendo uniformidad en el tamaño final.