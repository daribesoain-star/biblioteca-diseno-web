# Toon shading and line art for characters/Blender tutorial
**Fuente:** Arrietty 3D | https://youtu.be/aDA-BCOaqFY

## Qué enseña
Cómo crear un sombreado tipo toon 2D en Blender usando nodos (Diffuse BSDF + Shader to RGB + Color Ramp) y cómo añadir line art con Grease Pencil para personajes animados. También cubre trucos para sombras duras, transiciones de color en animación y control del color del mundo sin afectar la iluminación del modelo.

## Técnicas accionables
- En **Render Properties**, cambia **Color Management** a **Standard** (no Filmic) para control total del look toon.
- En **Shading tab**, agrega un nuevo material: borra **Principled BSDF**, añade **Diffuse BSDF** → **Shader to RGB** → **Color Ramp**. Conecta en ese orden.
- En la **Color Ramp**, cambia el tipo de interpolación a **Constant** para obtener colores planos sin degradado.
- Para duplicar materiales sin afectar el original: selecciona objetos, pulsa **Ctrl+L** → **Link Materials**, luego pulsa el icono de duplicar (dos cuadrados superpuestos) junto al nombre del material.
- Para asignar múltiples materiales a un objeto: pulsa **+** en el panel de materiales, entra en **Edit Mode** (Tab), selecciona caras con **A** (todo) o clic derecho, elige el segundo material y pulsa **Assign**.
- Para animar transición de color: añade dos cadenas **Diffuse BSDF → Shader to RGB → Color Ramp**, conéctalas a un **Mix Shader**. En **Material Properties**, sitúa el cursor sobre **Factor** del Mix Shader, pulsa **I** para keyframe, avanza fotogramas, cambia el valor y pulsa **I** de nuevo.
- Para controlar el color del mundo sin afectar el sombreado del modelo: en **World** shader, añade **Light Path**, duplica el nodo **Background**, conéctalos con un **Mix Shader** usando el output **Is Camera Ray** del Light Path como factor.
- Para sombras duras tipo 2D: selecciona la luz, en **Light Properties** fija **Radius**, **Filter** y **Resolution Limit** a **0**.
- Para line art: pulsa **Shift+A** → **Grease Pencil** → **Collection Line Art**. En **Modifiers** selecciona la colección deseada.
- Para evitar líneas en objetos fuera de la colección: en el modificador Line Art, activa **Intersection with Contour** bajo **Chaining**, luego en **Intersections** marca la primera casilla para añadir un **Collection Mask**.
- Para duplicar line art: selecciona el objeto Grease Pencil y pulsa **Shift+D**.
- Para añadir líneas manuales: entra en **Edit Mode**, selecciona una arista, ve al menú superior y pulsa **Mark Sharp**.
- Para line art de silueta en cabello: en el modificador Line Art, cambia de **Contour** a **Silhouette** (requiere que el objeto tenga sombreado **Smooth**). Desactiva **Intersections**.

## Reglas para el erudito
- Usa **Color Management = Standard** cuando busques un look toon 2D plano; reserva Filmic para renders realistas.
- Usa **Constant** en la Color Ramp cuando quieras bandas de color nítidas sin transiciones suaves.
- Usa **Ctrl+L** para enlazar materiales entre objetos y luego duplica el material si necesitas variantes de color sin perder el original.
- Usa **Radius, Filter y Resolution Limit = 0** en las luces cuando necesites sombras perfectamente duras y nítidas.
- Usa **Light Path + Mix Shader** en el World cuando quieras cambiar el color de fondo sin alterar la iluminación del modelo.
- Usa **Silhouette** en el line art del cabello cuando solo quieras líneas en el contorno exterior, no en pliegues internos.
- Usa **Mark Sharp** en aristas cuando necesites líneas adicionales que el line art automático no genera.

## Errores comunes / gotchas
- Si el line art afecta objetos fuera de la colección deseada, activa **Intersection with Contour** y añade un **Collection Mask** en las intersecciones.
- El sombreado con **Diffuse BSDF + Shader to RGB** puede mezclar sombras y luces en cabello curvo; solución: separa manualmente las geometrías en dos materiales (luz/sombra) o usa transición animada con Mix Shader.
- La transición animada de color (keyframes en Factor del Mix Shader) es estática por ángulo de cámara; no se actualiza dinámicamente con el movimiento del personaje, solo con keyframes manuales.
- El line art en modo **Silhouette** solo funciona correctamente si el objeto tiene sombreado **Smooth**; de lo contrario, aparecen líneas no deseadas.
- Al cambiar el color del mundo directamente, afecta el sombreado del modelo; usa siempre **Light Path** para aislar el fondo.