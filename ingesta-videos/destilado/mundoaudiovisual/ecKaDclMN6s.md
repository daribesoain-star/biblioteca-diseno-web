# 🔵 NEW COURSE 2.0 OF DAVINCI SOLVES 18 🎬 Chapter 10: The Generators
**Fuente:** mundoaudiovisual | https://youtu.be/ecKaDclMN6s

## Qué enseña
Uso de los generadores de DaVinci Resolve 18 (sólido, barras, escala de grises, gradiente de ruido) para crear fondos texturizados, efectos visuales y títulos personalizados animados. Muestra cómo combinar generadores con recortes, sombras y animación de texto para construir gráficos desde cero.

## Lecciones accionables
- **Insertar un generador:** Ve a la pestaña "Títulos" → selecciona "Generadores" → elige entre: barras, escala de grises, gradiente de ruido, color sólido, etc.
- **Ajustar generador de color sólido:** Selecciona el generador en la línea de tiempo → en el inspector cambia el color (ej: azul claro, blanco, amarillo). Ajusta zoom y recorte (crop) desde el inspector.
- **Crear fondo blanco:** Añade un generador de color sólido → cambia color a blanco → colócalo debajo de otros elementos como capa de fondo.
- **Animar aparición con recorte:** Selecciona el generador → ve a Inspector → en "Recorte" (Crop), activa keyframes: frame inicial recorte al 100% (derecha o izquierda), frame final recorte a 0% para que aparezca progresivamente.
- **Añadir sombra a un generador:** No se puede directamente. Crea un clip compuesto (Compound Clip) con el generador → luego en Inspector → "Sombra" (Shadow) → ajusta distancia, desenfoque (blur) e intensidad.
- **Copiar sombra entre clips:** En el clip con sombra configurada → Ctrl+C → selecciona otro clip compuesto → Ctrl+V para pegar valores de sombra.
- **Crear título con generadores:** Usa generadores sólidos como fondos de texto → añade texto desde "Títulos" → color blanco → sombra con desenfoque reducido y distancia baja.
- **Animar texto con keyframes:** Selecciona texto → en Inspector → "Diseño de texto" (Text Layout) → keyframe en "Aparecer" (Appear) → keyframe en "Rotación en eje X" (Rotation X): frame 1 valor distinto de 0, frame 2 valor 0.
- **Animación con espaciado:** En texto → keyframe en "Espaciado" (Spacing) → frame inicial valor alto, frame final valor 0 para efecto de separación de caracteres.

## Reglas para agentes
- Usa "Generadores" → "Color sólido" cuando necesites fondos planos o texturas base.
- Crea siempre un "Clip compuesto" antes de intentar añadir sombras a generadores.
- Ajusta "Recorte" con keyframes para animar la entrada de elementos desde los bordes.
- Copia y pega valores de sombra entre clips compuestos para mantener consistencia visual.
- Nunca intentes añadir sombra directamente a un generador sin convertirlo a clip compuesto.
- Usa "Zoom" y "Recorte" en el inspector para posicionar generadores, no solo arrastrar en el visor.

## Errores comunes que evita o menciona
- Intentar añadir sombra directamente a un generador (no funciona; hay que crear clip compuesto primero).
- Cambiar zoom del texto en lugar de ajustar el tamaño de fuente (recomienda usar tamaño de texto en lugar de zoom).
- Olvidar que los generadores pueden combinarse con títulos para crear gráficos personalizados completos.
- No usar keyframes en recorte para animar la aparición de elementos (se queda estático).