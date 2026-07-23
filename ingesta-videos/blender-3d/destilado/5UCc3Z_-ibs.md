# How to Make Studio Lighting in Blender
**Fuente:** Blender Guru | https://youtu.be/5UCc3Z_-ibs

## Qué enseña (2-3 líneas)
Configuración de iluminación de estudio profesional en Blender para objetos 3D, usando luces puntuales, fondo infinito y técnicas de render. Cubre desde la colocación de cámara y luces hasta la composición final con denoising y ambient occlusion.

## Técnicas accionables
- **Cámara:** En vista frontal, presiona **Ctrl+Alt+Numpad 0** para alinear la cámara a la vista. Ajusta la distancia focal a **100 mm** para evitar distorsión de perspectiva en objetos como muebles.
- **Rotación de objeto:** Selecciona el objeto, presiona **R**, luego **Z** y rota **20 grados** para un ángulo lateral.
- **Ajuste de cámara sin distorsión:** Usa **Shift+Y** y **Shift+X** para simular un recorte de imagen grande sin barrel distortion.
- **Luz principal:** Agrega una lámpara puntual con **Shift+A > Light > Point**. Colócala para crear sombras que revelen la forma 3D del objeto (ej. sombra en la curva del respaldo).
- **Fondo infinito:** Añade un plano (**Shift+A > Mesh > Plane**). Selecciona un borde, presiona **E** y luego **Z** para extruir hacia arriba. Aplica el modificador **Bevel** (parámetros: **Segments** alto, ajusta **Offset** para suavizar la línea de unión). Haz clic derecho y selecciona **Shade Smooth**.
- **Iluminación uniforme del fondo:** Aleja la luz principal del objeto y aumenta su potencia (Energy) para reducir el falloff por la ley del inverso del cuadrado.
- **Color Management:** En propiedades de render, bajo **Color Management**, cambia **View Transform** a **Filmic** y **Look** a **High Contrast** para mejorar el contraste inmediatamente.
- **False Color:** Cambia **View Transform** a **False Color** para visualizar la exposición como un mapa de calor (gris = exposición correcta, verde = 1 stop sobreexpuesto, cian = 1 stop subexpuesto).
- **Luz de relleno:** Agrega una segunda lámpara puntual para iluminar áreas específicas (ej. lado de una pata). Oculta otras luces con **H** para aislar su efecto. Colócala detrás del fondo para evitar que ilumine el backdrop.
- **Suavidad de sombras:** Aumenta el parámetro **Size** de la lámpara puntual para sombras más suaves; disminúyelo para sombras más nítidas.
- **Color de luz:** Para un tono sutil, ajusta el color de la luz a un azul ligeramente frío (temperatura de color baja) en lugar de colores saturados.
- **Render:** Configura **Samples** a **200**. Activa **Denoising Data** en **Render Passes**. Renderiza con **F12**.
- **Denoising en Compositor:** Ve al editor de nodos de composición. Agrega nodo **Filter > Denoise**. Conecta: Image → Image, Denoising Normal → Normal, Denoising Albedo → Albedo.
- **Ambient Occlusion:** En propiedades del mundo, deja **Ambient Occlusion** desmarcado. Ajusta **Distance** a **0.2 m**. Activa **Ambient Occlusion** en **Render Passes**. Vuelve a renderizar.
- **Composición AO:** En el compositor, agrega nodo **Color > MixRGB**. Conecta la salida Render Layers (Image) al input superior, y el pase AO al input inferior. Cambia el modo a **Multiply**. Ajusta el **Factor** (ej. **0.3-0.4**) para controlar la intensidad de la sombra adicional.
- **Turntable animation:** Coloca el cursor 3D en el centro del objeto. Agrega un **Empty** con **Shift+A > Empty > Plain Axes**. Selecciona la cámara, luego el empty, presiona **Ctrl+P > Keep Transform**. Rota el empty con **R** y **Z**. En el timeline, en frame 1, presiona **I > Rotation**. En frame 100, rota el empty 360° y presiona **I > Rotation**. Selecciona ambos keyframes, haz clic derecho y elige **Interpolation Mode > Linear** para movimiento constante.

## Reglas para el erudito (imperativas, "usa X cuando Y")
- Usa **Filmic** como View Transform siempre para renders finales; nunca lo cambies para la salida definitiva.
- Usa **High Contrast** en Look para mejorar la imagen de forma inmediata en casi cualquier escena.
- Usa **False Color** para evaluar exposición de forma precisa: busca valores grises en el modelo como indicador de exposición correcta.
- Usa una luz puntual con **Size** grande cuando quieras sombras suaves (ej. iluminación favorecedora para formas orgánicas).
- Usa una luz puntual con **Size** pequeño cuando quieras sombras nítidas que enfaticen detalles (ej. mandíbula en modelos masculinos).
- Usa **Multiply** en el nodo MixRGB para combinar AO solo con valores oscuros, ignorando los blancos.
- Usa **Linear** en la interpolación de keyframes de rotación para turntable animation, evitando el easing por defecto de Bezier.

## Errores comunes / gotchas
- No temas a las sombras: son igual de importantes que la luz para revelar la forma tridimensional.
- No uses un plano enorme con sol para fondo infinito; es más simple extruir un borde y aplicar Bevel.
- No marques la casilla de Ambient Occlusion en el mundo; actívalo solo como render pass y combínalo manualmente en el compositor.
- No dejes el Distance de AO en 10 m por defecto; es excesivo para escenas de estudio, usa 0.2 m.
- No uses colores de luz saturados (rosas, azules intensos) a menos que busques un efecto estilizado muy específico; prefiere tonos cálidos o fríos naturales.
- No olvides que el denoising en el compositor requiere los pases Denoising Normal y Denoising Albedo activados en Render Passes.
- No uses el viewport denoising si no tienes una tarjeta RTX; solo funciona con esas GPUs.