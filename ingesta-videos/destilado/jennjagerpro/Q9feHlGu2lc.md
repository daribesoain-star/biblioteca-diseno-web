# Rotoscoping in FCP with No Subscription! | RotoMatic Review
**Fuente:** jennjagerpro | https://youtu.be/Q9feHlGu2lc

## Qué enseña (2-3 líneas)
Cómo usar el plugin RotoMatic de FX Factory para rotoscopiar objetos en Final Cut Pro sin suscripción, comparándolo con M Roto AI de Motion VFX. Muestra el proceso de selección, refinamiento y aplicaciones creativas como texto animado detrás del sujeto.

## Lecciones accionables
- **Aplicar RotoMatic:** Abrir el navegador de efectos (Effects Browser) y arrastrar "RotoMatic" sobre el clip en la línea de tiempo.
- **Seleccionar objeto:** Hacer clic directamente sobre el objeto que se quiere aislar (la selección se vuelve roja). Seguir haciendo clic para expandir la selección.
- **Cambiar color de selección:** Usar el slider **"Mask Hue"** para cambiar el color de la máscara si el rojo interfiere con la imagen.
- **Deseleccionar áreas:** Mantener presionada la tecla **Option** y hacer clic sobre el área no deseada para eliminarla de la selección.
- **Procesar:** Pulsar el botón rojo **"Process"** en la parte inferior del visor (Viewer).
- **Refinar durante el procesamiento:** Si el tracking pierde partes del objeto (ej. tabla de surf contra agua), detener con **"Cancel"**, mover el playhead al punto donde falla, reseleccionar el área perdida (aparece un punto de refinamiento de color **teal** en la mini línea de tiempo inferior), y pulsar **"Process"** de nuevo.
- **Ver resultado:** Ir al menú desplegable **"Display Mode"** y seleccionar **"Cutout"** para ver el objeto aislado.
- **Crear efecto de texto detrás del sujeto:**
    1. Duplicar el clip: **Option + arrastrar** el clip hacia arriba en la línea de tiempo.
    2. En el clip original (línea de historia primaria), deshabilitar el efecto RotoMatic.
    3. Añadir un título básico (Basic Title) sobre la duración del clip. Hacer la fuente grande, gruesa y centrada, color azul pálido.
    4. Duplicar ese título: **Option + arrastrar** una copia entre los dos clips (entre el clip con RotoMatic y el clip original).
    5. En el título superior, deshabilitar el relleno (Face), habilitar el contorno (Outline) y hacer que el color del contorno coincida con el color del texto original.
- **Comparación con M Roto AI:**
    - En M Roto AI, en lugar de hacer clic, se **garabatea (scribble)** sobre el objeto.
    - Usar el **"Magic Selection Tool"** o el **"Brush"** (ajustar tamaño del pincel) para mayor precisión en detalles (ej. dedos).
    - Pulsar **"Tracker"** y luego **"Track Forward"**.
    - Refinar igual que RotoMatic: mover playhead al punto de fallo y re-seleccionar.

## Reglas para agentes
- Usa **RotoMatic** cuando necesites rotoscopiar sin suscripción en Final Cut Pro.
- Usa **M Roto AI** (del pack C Studio) cuando necesites mayor precisión con herramientas de pincel y estés dispuesto a pagar suscripción.
- Cuando el tracking pierda el objeto, **detén el proceso inmediatamente**, retrocede al punto de fallo y **refina la selección** antes de continuar.
- Para deseleccionar áreas no deseadas en RotoMatic, **nunca uses clic normal**; siempre mantén **Option + clic**.
- Cambia el **Mask Hue** si el color rojo de la selección se confunde con el color del objeto o fondo.
- Al crear el efecto de texto detrás del sujeto, **nunca olvides deshabilitar RotoMatic en el clip de la línea de historia primaria** y habilitar solo el contorno en el título superior.

## Errores comunes que evita o menciona
- **Perder tracking por texturas complejas:** El agua con textura puede hacer que RotoMatic pierda partes del objeto (ej. tabla de surf). Solución: detener, retroceder y reseleccionar.
- **Confundir selección con color rojo:** Si el objeto o fondo tiene mucho rojo, usar el slider **Mask Hue** para cambiar el color de la máscara.
- **Seleccionar áreas no deseadas:** Usar **Option + clic** para deseleccionar, no clic normal.
- **M Roto AI requiere más refinamientos:** El presentador nota que con M Roto AI hay que detener y refinar más veces que con RotoMatic, aunque ofrece herramientas de pincel más precisas.