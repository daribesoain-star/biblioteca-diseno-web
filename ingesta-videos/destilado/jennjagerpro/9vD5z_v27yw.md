# Apple Motion Hacks
**Fuente:** jennjagerpro | https://youtu.be/9vD5z_v27yw

## Qué enseña (2-3 líneas)
Este video revela atajos y funciones ocultas de Apple Motion para acelerar el flujo de trabajo: desde reemplazar capas manteniendo comportamientos y filtros, hasta personalizar emisores, crear pinceles personalizados y navegar eficientemente en la línea de tiempo. Incluye trucos para importar archivos AI, PSD y PDF, y para manipular texto y formas.

## Lecciones accionables
- **Reemplazar capa manteniendo propiedades:** Arrastra un nuevo archivo desde Finder directamente sobre la capa existente en el panel de proyecto. Todos los comportamientos, filtros, escala y propiedades se conservan automáticamente.
- **Corregir borrosidad en archivos AI:** Selecciona el archivo en el panel de proyecto → ve a la pestaña "Media" en la parte superior del panel → en el inspector cambia a la pestaña "Media" → desmarca "Fixed Resolution". El canvas mostrará el logo nítido al escalar.
- **Eliminar borde blanco en imágenes:** Selecciona la capa → ve a Filters → Keying → "Matte Magic" → en el inspector, ajusta el valor "Shrink" hacia arriba hasta que desaparezca el borde.
- **Importar capas de PSD:** Arrastra el archivo PSD desde Finder sobre el panel de proyecto → cuando aparezca la ventana emergente, selecciona "Import All Layers". Cada capa será un elemento individual en Motion.
- **Seleccionar página específica de PDF:** Arrastra el PDF al panel de proyecto → selecciona la capa → ve a Properties → en el campo "Media" (nuevo campo para PDFs) ajusta "Page Number" al número deseado.
- **Texto en caja delimitadora:** Selecciona la herramienta de texto → en lugar de hacer clic en el canvas, mantén presionado el mouse y arrastra para dibujar un rectángulo. Al escribir, el texto se confinará dentro de esa caja.
- **Personalizar texto 3D con metales:** Selecciona el texto → inspector → Appearance → activa 3D y ajusta Weight → en "Substance" cambia de "Plastic" a "Metal" → en "Type" elige "Custom" → elimina los dos cuadrados pequeños del gradiente de reflexión → selecciona el cuadrado blanco restante → cambia su color (ej. rosa dorado) → ajusta "Shininess" para brillo → modifica "Depth" y "Lighting Style".
- **Modificar comportamiento Pirouette:** Aplica Behavior → Highlighter → Pirouette → en el inspector del comportamiento, despliega "Format Values" → cambia rotación en Y a 0 y en X a 360 → despliega "Controls" → cambia de "Each Letter" a "Each Word" para animar palabras completas.
- **Cambiar color de un movie file con Colorize:** Selecciona el clip → Filters → Color → "Colorize" → en el inspector, ajusta "Remap Blacks" a un tono rojizo y "Remap Whites" a un tono más oscuro para simular un color específico (ej. hoja marrón).
- **Reemplazar partículas en un emisor:** Selecciona el emisor (ej. Snow Blizzard) → en el inspector, pestaña "Emitter" → arrastra un elemento (ej. una hoja) desde el panel de proyecto al campo "Particle Source" → ajusta escala del nuevo elemento en el panel de proyecto → desactiva la capa original.
- **Convertir círculo a puntos editables:** Dibuja un círculo con la herramienta Shape → inspector → Geometry → haz clic en "Convert to Points" → ahora puedes manipular puntos individuales para formas no perfectas.
- **Redondear esquinas de formas:** En inspector → Geometry → ajusta "Roundness" para suavizar bordes de cualquier forma dibujada.
- **Crear pincel personalizado (ej. cuerda):** Dibuja un círculo pequeño → cambia su color a blanco → Properties → añade "Drop Shadow" → selecciona el Paint Stroke en el panel de proyecto → inspector → Shape → cambia "Brush Type" de "Solid" a "Image" → arrastra el círculo desde el panel de proyecto a "Brush Source" → cambia color del pincel a tono cuerda → ajusta "Width" y "Spacing" → selecciona el círculo → Properties → ajusta Drop Shadow para más realismo → vuelve a Paint Stroke → Shape → Geometry → redondea el trazo → Stroke → activa "Align Brush Angle" → desactiva la capa del círculo.
- **Gradiente radial rápido:** Arrastra "Color Solid" desde Generators al proyecto → luego arrastra "Soft Gradient" (desde Generators) encima del color sólido → en el inspector ajusta "Radius" y color → en Properties reposiciona y escala libremente.
- **Zoom automático a keyframes:** Selecciona el elemento con keyframes → haz clic en el botón de zoom automático (icono de lupa con líneas) en la línea de tiempo para centrar la vista en el rango de keyframes.
- **Navegar canvas con espacio:** Mantén presionada la barra espaciadora mientras arrastras el mouse sobre el canvas para desplazarte (mano). Al soltar la barra, vuelves a la herramienta de selección.
- **Ver formas de onda de audio:** Abre la línea de tiempo de audio (clic en ícono de altavoz) → coloca el cursor sobre el borde inferior del clip de audio hasta que aparezca una flecha doble → arrastra hacia abajo para expandir y ver las formas de onda.
- **Saltar a tiempo específico:** Haz doble clic en los números de la parte superior de la línea de tiempo → ingresa el tiempo deseado (ej. 00:05:00) → el cursor salta automáticamente a ese punto.

## Reglas para agentes
- Usa "Matte Magic" con valor "Shrink" cuando una imagen importada tenga bordes blancos no deseados.
- Usa "Fixed Resolution" desmarcado en la pestaña Media del inspector cuando un archivo AI se vea borroso al escalar.
- Usa "Import All Layers" al arrastrar un PSD al panel de proyecto para mantener todas las capas como elementos individuales editables.
- Usa la herramienta de texto con arrastre (dibujando un rectángulo) cuando necesites texto confinado a un área específica, como créditos.
- Usa "Convert to Points" en Geometry cuando necesites modificar la forma de un círculo u otra figura predefinida.
- Usa "Soft Gradient" sobre un "Color Solid" cuando necesites un gradiente radial rápido y reposicionable, en lugar del generador Gradient estándar.
- Nunca arrastres un archivo directamente al canvas si quieres reemplazar una capa manteniendo sus propiedades; arrástralo sobre la capa en el panel de proyecto.
- Nunca asumas que un emisor predefinido no puede cambiar su apariencia; siempre puedes reemplazar "Particle Source" con cualquier otro elemento.
- Nunca uses el generador Gradient para gradientes radiales si necesitas reposicionarlos y escalarlos rápidamente; prefiere "Soft Gradient".

## Errores comunes que evita o menciona
- **Logo AI borroso al escalar:** Ocurre porque "Fixed Resolution" está activado por defecto. Desmarcarlo en la pestaña Media del inspector restaura la nitidez.
- **Borde blanco en imágenes importadas:** Solucionable con el filtro "Matte Magic" ajustando el valor "Shrink".
- **No saber que los PSD pueden importarse con todas sus capas:** Arrastrar al panel de proyecto y elegir "Import All Layers" evita tener que aplanar el archivo.
- **No saber que los PDFs permiten seleccionar página:** Se puede elegir la página directamente en Properties > Media > Page Number, sin necesidad de extraerla previamente.
- **Texto desalineado o difícil de ajustar:** Usar la caja de texto dibujada con la herramienta de texto evita problemas de alineación manual.
- **Asumir que los behaviors tienen un solo comportamiento:** El pirouette puede personalizarse rotando en ejes diferentes (X en lugar de Y) y animando palabras en vez de letras.
- **No saber que los movie files pueden colorearse:** El filtro "Colorize" permite cambiar el color de cualquier clip, incluso animado.
- **No saber que los emisores pueden reutilizarse:** Arrastrar un elemento al campo "Particle Source" transforma completamente la apariencia del emisor sin perder sus parámetros.
- **No ver formas de onda en audio:** Arrastrar hacia abajo el borde del clip de audio en la línea de tiempo revela las ondas para sincronizar animaciones.
- **Perder tiempo navegando manualmente en la línea de tiempo:** Usar doble clic en los números de tiempo y escribir el valor exacto acelera el posicionamiento.