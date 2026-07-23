# Stop Using Color Ramps For Toon Shaders
**Fuente:** TheSicklyWizard | https://youtu.be/7Pi5AUwyIJU

## Qué enseña (2-3 líneas)
Reemplaza el clásico nodo Color Ramp en toon shaders por nodos Color Curve o Separate/Combine Color en HSV para conservar la reacción a luces de colores. Muestra cómo el método tradicional (Diffuse → Shader to RGB → Color Ramp) pierde información cromática al convertir color a un valor flotante, y ofrece alternativas que mantienen la respuesta a iluminación coloreada.

## Técnicas accionables
- **Método con Color Curve (alternativa simple):** En el Editor de Shaders, añade un nodo **Shader to RGB** (Shift+A > Converter > Shader to RGB), conéctalo a un nodo **Color Curve** (Shift+A > Color > Color Curve), y luego a un nodo **Multiply** (Shift+A > Color > MixRGB, modo Multiply) con tu textura. Ajusta la curva en el panel del nodo Color Curve: haz clic para añadir puntos y arrastra para crear escalones que generen bandas discretas de sombra.
- **Método con HSV (recomendado):** Conecta el **Shader to RGB** a un nodo **Separate Color** (Shift+A > Converter > Separate Color). En sus propiedades, cambia **Mode** a **HSV**. Toma la salida **Value** (gris) y conéctala a un nodo **Color Ramp** o **Color Curve** para controlar las bandas de sombra. Luego conecta esa salida al canal **Value** de un nodo **Combine Color** (Shift+A > Converter > Combine Color, Mode: HSV). Conecta las salidas **Hue** y **Saturation** del Separate Color directamente a las entradas correspondientes del Combine Color. Finalmente, conecta el Combine Color a un nodo **Multiply** con tu textura.
- **Extensión con Principled BSDF:** Reemplaza el nodo **Diffuse BSDF** por un **Principled BSDF** (Shift+A > Shader > Principled BSDF). Conéctalo al **Shader to RGB** para que el toon shader herede roughness, metallic, specular y normal maps. Ajusta los parámetros del Principled BSDF (Roughness, Metallic, etc.) como desees; el efecto toon se aplicará sobre esas propiedades.
- **Ajuste de bandas de sombra:** En el nodo **Color Ramp** o **Color Curve** conectado al Value, mueve los puntos/controles para definir cuántas bandas de luz/sombra aparecen. Para un efecto de 2 tonos (sombra/luz), coloca un punto en el extremo izquierdo (negro) y otro en el derecho (blanco), ajustando la posición del punto de transición.

## Reglas para el erudito (imperativas, "usa X cuando Y")
- Usa **Color Curve** en lugar de **Color Ramp** cuando necesites que el toon shader reaccione a luces de colores sin artefactos de bandeo RGB.
- Usa **Separate Color en modo HSV** y manipula solo el canal **Value** cuando quieras sombras limpias sin que el color de la luz se distorsione en bandas cromáticas.
- Usa **Principled BSDF** como entrada del **Shader to RGB** cuando quieras que el toon shader respete roughness, metálicos, especulares y normales.
- Usa **Combine Color en modo HSV** para reconstruir el color después de modificar el Value, manteniendo el tono y saturación originales de la iluminación.

## Errores comunes / gotchas
- **Error común:** Usar **Color Ramp** directamente tras **Shader to RGB** — esto convierte el color en un valor flotante unidimensional, perdiendo la respuesta a luces de colores y forzando a gestionar la iluminación manualmente.
- **Error común:** Conectar el **Shader to RGB** a un **Color Ramp** y luego a un **Multiply** con la textura — funciona para luces blancas, pero falla con luces de colores (produce bandeo cromático no deseado).
- **Gotcha:** Al usar **Color Curve**, el efecto de bandas se logra creando escalones abruptos en la curva; curvas suaves generan degradados, no toon shading.
- **Gotcha:** En el método HSV, si conectas el **Separate Color** directamente al **Combine Color** sin modificar el Value, no obtendrás efecto toon; debes intercalar un nodo de control (Color Ramp o Color Curve) en el canal Value.