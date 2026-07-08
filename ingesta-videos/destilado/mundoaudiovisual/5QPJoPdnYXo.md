# Curso de After Effects en español - 🎬 Capítulo 14 - Desintegración
**Fuente:** mundoaudiovisual | https://youtu.be/5QPJoPdnYXo

## Qué enseña
Cómo crear un efecto de desintegración de un personaje con chroma key, sin plugins externos, usando herramientas nativas de After Effects. Incluye construcción de escenario 3D, iluminación, simulación de partículas, sombras, temblor de cámara y destellos de luz.

## Lecciones accionables
- Crear composición: 1920x1080, 24 fps (para menor procesamiento), duración 10-15 segundos, fondo negro, resolución Full (luego reducir a mitad o cuarto para trabajar)
- Importar clip con chroma key y limpiarlo: aplicar efecto "Keylight (1.2)" → seleccionar color verde con gotero → ajustar "Screen Gain" para blanco → "Clip Black" para negro → "Screen Softness" a 5 → "Screen Despill Bias" a 0.5
- Crear máscara manual en el fotograma donde las manos están abiertas para recortar artefactos
- Ajustar color: agregar efecto "Curves" para contraste y "Hue/Saturation" para saturación
- Truco de limpieza avanzada: duplicar capa → en capa inferior eliminar efectos y máscara → en capa superior activar "TrkMat" → elegir "Luminance Matte" → la capa inferior solo muestra donde hay información en la superior
- Construir escenario 3D: crear capa sólida para piso → activar "Capa 3D" → rotar eje X a 90° → mover posición Y a 1000 → aplicar efecto "Motion Tile" (Output Width para alargar, "Mirror Edges") → mismo proceso para pared
- Agregar cámara: Nueva → Cámara → 50mm → mover posición Z para encuadrar
- Colocar personaje: arrastrar clip limpio → activar "Capa 3D" → ajustar posición y escala → alinear con el piso moviendo cámara en eje Y
- Iluminación: Nueva → Luz → Ambiente (azul, intensidad 50%) → Nueva → Luz → Foco (amarillo cálido, intensidad 100%) → mover foco para iluminar personaje → ajustar "Cone Angle" y "Cone Feather"
- Texturizar pared: efecto "Noise" (50%) → efecto "Fast Box Blur" (20)
- Efecto desintegración: seleccionar capa personaje → Efecto → Simulación → "Shatter" → Shape: "Squares" → Repetitions: máximo → Force 1: keyframe Radio 0 al inicio → avanzar y keyframe Radio mayor → Force 2: keyframe Radio 0 al inicio → avanzar y keyframe Radio mayor → Physics: Gravedad 0 → "Mass Variance" máximo (30)
- Opacidad progresiva: keyframe Opacidad 100% al inicio → keyframe 0% al final de la desintegración
- Sombra: duplicar capa personaje → mover capa duplicada detrás → bajar posición Y (pegada al piso) → efecto "Fill" con negro → reducir Opacidad
- Efecto huracán: importar clip "hurricane" → activar "Capa 3D" → modo fusión "Screen" → crear máscara con pluma (feather) para bordes suaves → keyframe Opacidad 0 a 55
- Precomponer: seleccionar todo excepto cámara y luces → Precomposición → llamar "final" → activar "Capa 3D"
- Temblor de cámara: dividir capa "final" en dos (Ctrl+Shift+D) → en primera mitad, abrir expresión en Posición (Alt+clic en cronómetro) → escribir `wiggle(10, 10)` (frecuencia, amplitud)
- Parpadeo de luz: Nueva → Luz → Ambiente → intensidad 0 con keyframe → avanzar → keyframe 50 → en intensidad agregar expresión `wiggle(10, 50)` → dividir capa y eliminar expresión al final con keyframe descendente a 0
- Zoom de cámara: keyframe en Posición de cámara al inicio → avanzar → acercar (Z menor) y subir (Y mayor)

## Reglas para agentes
- Usa "Shatter" con Shape "Squares" y Repetitions al máximo para desintegración cuadriculada
- Aplica "Luminance Matte" en capa duplicada para eliminar artefactos de chroma key sin máscaras complejas
- Reduce resolución de vista a "Half" o "Quarter" cuando trabajes con Shatter para evitar ralentizaciones
- Nunca dejes "Gravity" activo en Shatter si quieres que las partículas floten; ponlo a 0
- Siempre precompón todo excepto luces y cámara antes de añadir efectos globales como wiggle
- Usa "Mirror Edges" en Motion Tile para que los bordes extendidos se vean naturales

## Errores comunes que evita o menciona
- No grabar con cámara apuntando hacia arriba al hacer chroma key (causa desajuste de perspectiva con el suelo)
- Olvidar desactivar el audio del clip de chroma key (bajar nivel de audio a -192)
- Dejar artefactos verdes en zapatos o bordes (se soluciona con Luminance Matte)
- Aplicar demasiado ruido en la pared (recomienda 50% como máximo)
- No ajustar "Screen Despill Bias" a 0.5 para eliminar rebordes verdes
- Olvidar que el efecto Shatter consume muchos recursos; trabajar siempre en resolución reducida