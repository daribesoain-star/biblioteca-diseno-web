# 5 FCP Text Hacks You Definitely Didn't Know.
**Fuente:** jennjagerpro | https://youtu.be/CWeE_E50EsY

## Qué enseña (2-3 líneas)
Cinco trucos avanzados para manipular plantillas de texto en Final Cut Pro: desde audicionar plantillas manteniendo el texto escrito, hasta sobrescribir el tamaño de las cajas de texto, eliminar fondos con clave cromática, modificar la velocidad de animaciones y usar plantillas en formatos verticales o cuadrados con Smart Conform.

## Lecciones accionables
- **Audicionar plantillas de texto conservando el contenido:** Arrastra una nueva plantilla desde el navegador sobre el texto existente en la línea de tiempo hasta que aparezca el signo verde "+". Suelta y selecciona "Reemplazar" en el menú contextual. El texto escrito se mantiene intacto. Funciona con plantillas nativas de FCP y de terceros (ej. Motion Array).
- **Sobrescribir el tamaño de caja de texto en plantillas dinámicas:** Haz doble clic en la caja de texto dentro de la plantilla en el visor. Aparecerán asas de control en el perímetro. Arrástralas para expandir la caja más allá de los límites originales. Activa la regla con el icono de regla para precisión. Navega entre cajas de texto con la flecha pequeña. Ajusta el tamaño de fuente sin restricciones. Presiona Escape para volver a la caja original y reposicionar libremente.
- **Eliminar el fondo de una plantilla de texto con clave cromática (Green Screen Key):**
    1. En el inspector de títulos, cambia el fondo a "Color sólido" y elige un color llamativo (ej. rosa neón).
    2. Vuelve a seleccionar "Fondo predeterminado".
    3. Aplica el efecto "Clave de pantalla verde" (Green Screen Key) desde el navegador de efectos a la plantilla.
    4. En el inspector de video, abre el engranaje de Green Screen Key, haz clic en "Muestra de color" y arrastra un cuadrado sobre el color de fondo en el visor.
    5. Reduce el nivel de "Derrame" (Spill Level) para evitar que la clave afecte los colores de los gráficos.
    6. Personaliza los colores de la plantilla desde el inspector de títulos.
    7. Opcional: duplica la plantilla (Opción + arrastrar hacia arriba), desactiva la copia con V, cambia el modo de fusión del original a "Superponer" (Overlay), activa la copia, usa la herramienta Recortar para recortar la parte inferior y lograr barras blancas transparentes con texto opaco.
- **Cambiar la velocidad de animación de plantillas de texto:**
    1. Selecciona la plantilla en la línea de tiempo.
    2. Presiona Opción + G para crear un clip compuesto.
    3. Coloca el cabezal donde termina la animación de entrada.
    4. Presiona Mayús + B para dividir la velocidad (Blade Speed).
    5. Selecciona la parte frontal y acelérala desde el menú de retiming (ahora disponible).
    6. Para ralentizar: dado que las plantillas se crean en Apple Motion a 60 fps, si trabajas en 24, 25 o 30 fps, puedes ralentizar suavemente usando el menú de retiming.
- **Usar plantillas de texto en formatos verticales o cuadrados:** Arrastra cualquier plantilla nativa de FCP a una línea de tiempo vertical. La animación se reorienta automáticamente. Para formato cuadrado: duplica el proyecto, cámbialo a cuadrado y activa Smart Conform. Las plantillas se adaptan. Nota: esto depende de cómo el desarrollador construyó la plantilla; las nativas funcionan, las de terceros pueden no hacerlo.

## Reglas para agentes
- Usa "Reemplazar" al arrastrar una nueva plantilla sobre texto existente para conservar el contenido escrito.
- Cuando quieras sobrescribir el tamaño de caja de texto, haz doble clic en la caja en el visor antes de ajustar fuente o dimensiones.
- Para eliminar fondos de plantillas, aplica siempre "Clave de pantalla verde" y usa "Muestra de color" sobre el color de fondo elegido.
- Antes de modificar la velocidad de animación de una plantilla, conviértela en clip compuesto con Opción + G para habilitar las herramientas de retiming.
- Nunca intentes cambiar la velocidad de una plantilla sin convertirla primero en clip compuesto; las opciones de retiming estarán deshabilitadas.
- Al ralentizar animaciones de plantillas, verifica que la línea de tiempo tenga una frecuencia de cuadros menor a 60 fps (24, 25 o 30) para garantizar fluidez.
- Para usar plantillas en formatos no 16:9, asegúrate de que sean nativas de FCP o verifica que el desarrollador haya incluido versiones para otras relaciones de aspecto.

## Errores comunes que evita o menciona
- **Texto que se encoge automáticamente al escribir:** Evita la frustración de no poder aumentar el tamaño de fuente más allá de un límite. La solución es sobrescribir la caja de texto haciendo doble clic y expandiendo las asas.
- **Fondo no deseado en plantillas:** No te limites a las opciones de fondo predeterminadas (ninguno, color sólido). Usa la clave cromática para aislar solo los gráficos y eliminar el fondo, manteniendo los elementos decorativos.
- **Velocidad de animación fija:** No asumas que no puedes cambiar la velocidad de las animaciones de las plantillas. Al convertirlas en clip compuesto, todas las herramientas de retiming se activan.
- **Plantillas solo para 16:9:** No evites usar plantillas nativas de FCP en proyectos verticales o cuadrados. Se reorientan automáticamente y funcionan con Smart Conform.