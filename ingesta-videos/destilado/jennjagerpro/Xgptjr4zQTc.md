# Apple Motion Tricks 
**Fuente:** jennjagerpro | https://youtu.be/Xgptjr4zQTc
## Qué enseña (2-3 líneas)
20 trucos y funciones poco conocidas de Apple Motion para optimizar el flujo de trabajo en canvas, línea de tiempo, editor de fotogramas clave, inspector y panel de proyecto. Cubre desde ajustes de cuadrícula y calidad hasta duplicación, alineación, máscaras en texto, paletas de color personalizadas y animación de filtros.

## Lecciones accionables
- **Cambiar espaciado de cuadrícula:** Menú Motion > Preferencias > Canvas > Grid Spacing. Ajustar valor numérico.
- **Mejorar calidad de bordes en Z:** En canvas, esquina superior derecha, menú Render > Quality > seleccionar "Best".
- **Redimensionar manteniendo centro:** Seleccionar elemento, mantener presionadas las teclas **Shift + Option** mientras se arrastra el borde del wireframe.
- **Vista a pantalla completa (Player Mode):** Botón en la parte inferior derecha del canvas o atajo **Function + F8**.
- **Nudge frame a frame:** Seleccionar elemento en línea de tiempo, presionar **Command + Flecha izquierda/derecha**.
- **Ver formas de onda de audio:** En línea de tiempo de audio, arrastrar el borde inferior de la capa de audio hacia abajo para expandirla.
- **Dividir clip de audio:** Seleccionar clip en línea de tiempo de audio, menú Edit > Split (o atajo Command + B).
- **Filtrar propiedades en Keyframe Editor:** Hacer clic en los tres diamantes en la parte superior de la línea de tiempo para abrir el editor. Usar el menú desplegable para seleccionar solo una propiedad (ej: Position > X).
- **Sketch Keyframes Tool:** En Keyframe Editor, seleccionar solo un parámetro (ej: Position X, desmarcar Y y Z). Activar el ícono de lápiz (Sketch Keyframes Tool) y dibujar fotogramas clave a mano alzada.
- **Arrastrar color entre formas en Project Pane:** Arrastrar la forma con el color deseado sobre la otra forma en el panel de proyecto.
- **Duplicar capa con Option:** Mantener presionada la tecla **Option** mientras se arrastra un elemento en el panel de proyecto.
- **Deshabilitar múltiples capas:** Seleccionar varias capas en Project Pane, desmarcar la casilla de verificación de una sola capa; todas se desactivarán.
- **Reducir tamaño de iconos en Project Pane:** Hacer clic en el ícono de Zoom en la parte inferior del panel y usar el deslizador para achicar las miniaturas.
- **Personalizar columnas en Project Pane:** Menú View > Layers Columns, desmarcar Preview, Opacity, Blend Mode según se desee ocultar.
- **Máscara en texto:** Hacer clic derecho sobre el texto en Project Pane > Group (agruparlo solo). Luego el tool de máscara estará habilitado debajo del canvas.
- **Aplicar comportamiento a filtro:** En Inspector, sobre el valor de un filtro (ej: Twirl), hacer clic en el menú desplegable y elegir un Parameter Behavior (ej: Overshoot).
- **Crear paleta de colores personalizada:** Dibujar una forma, en Inspector > Shape > color swatch. Usar el cuentagotas para tomar un color de un logo. Hacer doble clic en el swatch > Color Palettes > menú de engranaje > New. Nombrar el color. Repetir para cada color, luego renombrar la paleta desde el mismo menú.
- **Arrastrar color en Inspector:** Aplicar filtro Colorize. En Inspector, arrastrar el swatch de color de "Blacks" sobre el swatch de "Whites" para unificar el tono.
- **Alinear y distribuir objetos:** Seleccionar múltiples capas en Project Pane. Menú Object > Alignment > Align Left Edges. Luego Object > Alignment > Distribute Tops.
- **Personalizar barra de herramientas:** Hacer clic derecho sobre cualquier botón en la barra de herramientas superior > Customize Toolbar. Arrastrar botones para reordenarlos o cerrar espacios.

## Reglas para agentes
- Usa **Shift + Option** al redimensionar desde el borde para escalar proporcionalmente desde el centro.
- Usa **Function + F8** para vista a pantalla completa del canvas.
- Usa **Command + flecha izquierda/derecha** para mover elementos un frame a la vez en la línea de tiempo.
- Usa **Option + arrastrar** para duplicar capas en el panel de proyecto.
- Usa **Group** (clic derecho) sobre texto antes de aplicar una máscara.
- Usa **menú Object > Alignment** para alinear y distribuir múltiples objetos seleccionados.
- Nunca arrastres el borde de un elemento sin Shift si quieres mantener proporciones.
- Nunca intentes aplicar máscara directamente a un texto sin agruparlo primero.
- Nunca uses la calidad "Better" si necesitas bordes perfectos en elementos en Z; siempre selecciona "Best".

## Errores comunes que evita o menciona
- **Distorsión al redimensionar:** Arrastrar el borde sin Shift puede deformar la figura; usar Shift para proporciones y Shift+Option para escalar desde el centro.
- **Bordes dentados en Z:** La calidad predeterminada "Better" produce bordes irregulares al mover texto o formas en el eje Z; cambiarla a "Best" los suaviza.
- **Máscara deshabilitada en texto:** El tool de máscara aparece gris si el texto no está agrupado; agruparlo primero lo habilita.
- **Dificultad para ver formas de onda:** No es necesario expandir todos los elementos; solo arrastrar el borde inferior de la capa de audio.
- **Desorden en Project Pane:** Si hay muchas capas, usar el deslizador de zoom para achicar iconos y desactivar columnas innecesarias desde View > Layers Columns.