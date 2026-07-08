# Dripping Text Tutorial in Pixelmator Pro and Apple Motion
**Fuente:** jennjagerpro | https://youtu.be/JYOlQcTvb7o

## Qué enseña (2-3 líneas)
Cómo convertir texto en formas editables en Pixelmator Pro y animarlo como un efecto de goteo en Apple Motion usando keyframes manuales sobre puntos de control, máscaras Bezier y parámetros de geometría. Incluye aplicación de gradientes como máscara de imagen y animación de escala con anclaje corregido.

## Lecciones accionables
- **Convertir texto a forma en Pixelmator Pro:** capa de texto → clic derecho en panel Capas → "Convertir en forma" → cada letra se vuelve shape editable con puntos de control
- **Exportar a Motion:** Archivo > Exportar (Cmd+E) → Formato: "Proyecto de Motion" → nombrar archivo → se genera carpeta con proyecto .motion
- **Preservar forma original de letras:** en Motion, en línea de tiempo a 2 segundos → Inspector > Shape > Geometry > Control Points → añadir keyframe para TODOS los puntos de control de cada letra (incluyendo máscaras Bezier internas)
- **Animar goteo hacia atrás:** desde keyframe base (2s) → Shift+flecha atrás (10 frames) → mover puntos de control manualmente para alargar forma de gota → repetir cada 10 frames hacia atrás hasta que puntos queden dentro del PNG de goteo
- **Añadir redondez "gomosa":** al inicio de línea de tiempo → Shape > Geometry > Roundness = 50 → keyframe → en keyframe final (2s) → Roundness = 0
- **Ajustar timing de keyframes:** espaciar keyframes más separados al inicio (lento) y más juntos al final (rápido) → ejemplo: 10f, 5f, 5f, 4f, 4f entre keyframes
- **Escalonar letras:** Shift+clic para seleccionar múltiples keyframes → arrastrar grupo en línea de tiempo para que cada letra gotee en momentos distintos
- **Aplicar gradiente como máscara:** agrupar shapes + PNG de goteo → Library > Generators > Gradient → arrastrar sobre grupo → Inspector > Generator > seleccionar "rainbow gradient" → Object > Add Image Mask → arrastrar grupo al campo "mask source"
- **Corregir anclaje para animación descendente:** clic derecho sobre PNG de goteo → "Anchor Point Tool" → arrastrar anclaje (círculo azul) hasta alinearlo con los picos más altos de la imagen → Properties > Scale Y → keyframe → al final de línea de tiempo aumentar Scale Y

## Reglas para agentes
- Usa "Convertir en forma" en Pixelmator Pro ANTES de exportar a Motion, no después
- Siempre añade keyframe de Control Points en el frame final (2s) para CADA letra y su máscara Bezier antes de modificar puntos
- Cuando muevas puntos de control, hazlo SIEMPRE hacia atrás en la línea de tiempo desde el keyframe base
- Usa Shift+flecha atrás para saltos exactos de 10 frames
- Activa el icono de keyframes rojos en línea de tiempo principal, NUNCA el de "keyframe editor" (tres diamantes entrelazados)
- Para escalonar letras, selecciona keyframes con Shift y arrastra como grupo, nunca muevas keyframes individuales sueltos
- Al escalar el PNG de goteo en Y, ajusta SIEMPRE el anchor point alineado con los picos superiores antes de keyframear

## Errores comunes que evita o menciona
- No olvidar añadir keyframe de Control Points al inicio (2s) o las letras perderán su forma original al final de la animación
- No usar el "keyframe editor" (tres diamantes) para ajustar timing; usar solo los keyframes rojos en línea de tiempo principal
- No escalar el PNG de goteo sin ajustar el anchor point primero, o los picos superiores se moverán hacia arriba (antinatural)
- No modificar puntos de control hacia adelante en el tiempo; siempre trabajar hacia atrás desde el keyframe base