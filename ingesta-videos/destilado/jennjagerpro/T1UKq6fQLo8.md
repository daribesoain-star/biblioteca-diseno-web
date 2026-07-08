# Liquid Glass Text Effect for Final Cut Pro!
**Fuente:** jennjagerpro | https://youtu.be/T1UKq6fQLo8

## Qué enseña
Construcción desde cero de un título animado estilo "liquid glass" en Apple Motion, con máscaras, vinculación de parámetros, filtros de distorsión y controles en pantalla publicados para Final Cut Pro. Incluye sincronización de formas animadas con efectos droplet y controles de posición/escala mediante filtro bulge.

## Lecciones accionables
- Crear proyecto en Apple Motion: 60 fps, duración 6 segundos, tipo "Final Cut title"
- Texto: tipografía Montserrat Medium, alineación centrada, layout tipo párrafo con márgenes al borde del frame, auto shrink en "all margins"
- Agregar comportamiento "Drift In" desde abajo y "Drift Out" hacia abajo al texto
- Dibujar rectángulo azul tipo iMessage (color a ojo), redondear esquinas a 130 en Geometry, agregar Fade In/Fade Out
- Vincular ancho del rectángulo al ancho del texto: seleccionar rectángulo → Shape > Size > Width → Add Parameter > Link → arrastrar texto a Source Object → Source Parameter: Object Attributes > Size > Width → ajustar X offset para margen lateral
- Crear "ghost rectangle": rectángulo blanco del tamaño del canvas (1920x1080), blend mode Stencil Luma (lo vuelve invisible) para que el grupo detecte el tamaño completo del canvas
- Aplicar filtro Droplet al grupo "text and shapes": Filters > Distortion > Droplet, recortar duración a ~2.5 segundos comenzando en ~0:20
- Animar centro del droplet: agregar Custom Behavior al grupo → Add Filters > Droplet > Center → modificar X center con keyframes: -0.5 al inicio, +0.5 al final
- Crear "pill outline": rectángulo con outline en modo Airbrush, stroke fino, stroke mode "Color Over Stroke", gradiente con blanco y azul (mismo color del rectángulo de fondo)
- Vincular color del outline al color del rectángulo: seleccionar cuadrado azul del gradiente → Add Parameter > Link → arrastrar rectángulo azul a Source → Source Parameter: Object > Shape > Fill > Fill Color > All
- Vincular posición X del pill outline al droplet: seleccionar pill outline → Properties > Position > X → Add Parameter > Link → arrastrar grupo "text and shapes" a Source → Source Parameter: Filters > Droplet > Center > X → ajustar X offset a 0.5
- Duplicar pill outline, cambiar a Fill, eliminar link de color y drop shadow, renombrar "pill shape mask"
- Activar Title Background (habilitado por defecto en Motion), arrastrar a grupo propio arriba del todo
- Seleccionar Title Background, presionar K para clonar, agregar Image Mask al clon, arrastrar "pill shape mask" al image well
- Al clon: aplicar Gaussian Blur (valor 28) y Prism Blur (valor 30)
- Recortar duración de grupos "pill shapes" y "video group" (clon) para que coincidan con la duración del droplet
- Agregar Fade In/Fade Out a grupos "pill shapes" y clon
- En el Custom Behavior del droplet, abrir Keyframe Editor y agregar curvatura al movimiento
- Agregar Color Solid (Library > Generators) arriba de todo, opacidad reducida, aplicar filtro Bulge (Distortion)
- Ajustar Bulge: Amount 500, reposicionar centro a (-1000, 300) para que no solape el texto
- Agrupar "text and shapes" + "pill shapes" en grupo "content"
- Vincular posición X e Y de "content" al centro del Bulge: Properties > Position > X/Y → Add Parameter > Link → Source: Color Solid → Source Parameter: Filters > Bulge > Center > X/Y → ajustar offsets (-0.24 en X, 0.64 en Y)
- Vincular escala X e Y de "content" al Amount del Bulge: Properties > Scale > X/Y → Add Parameter > Link → Source: Color Solid → Source Parameter: Filters > Bulge > Amount → ajustar offsets a 500 en ambos
- Publicar parámetros: en Bulge → check "Publish OSC", publicar Center y Amount; renombrar en Project tab: Center → "Position", Amount → "Scale"
- Publicar del rectángulo azul: Fill Color (renombrar "Shape Color"), Fill Opacity, Drop Shadow (Opacity, Blur, Distance); deshabilitar drop shadow por defecto
- Guardar proyecto (Cmd+S) y probar en Final Cut Pro

## Reglas para agentes
- Usa Stencil Luma en el ghost rectangle cuando necesites que un grupo detecte el tamaño completo del canvas
- Vincula siempre X e Y por separado cuando uses Link behavior en posición
- Usa el filtro Bulge con Amount como control de escala cuando quieras on-screen controls en Final Cut Pro
- Publica siempre "Publish OSC" en el filtro Bulge para que aparezcan los controles visuales en FCP
- Nombra los link behaviors para mantener el proyecto organizado cuando tengas múltiples vinculaciones
- Recorta la duración de los grupos de efectos (droplet, pill shapes, clon) para que coincidan exactamente

## Errores comunes que evita o menciona
- Olvidar guardar el proyecto frecuentemente durante el proceso
- No resetear los parámetros de posición después de crear formas (deben estar centradas)
- El ghost rectangle es necesario para que el grupo detecte el tamaño completo del canvas; sin él, los links de posición se desincronizan ("there's a lot of drift")
- No permitir que el centro del Bulge filter solape el texto (solo el perímetro puede solapar)
- Olvidar publicar los parámetros que se quieren controlar en Final Cut Pro (OSC, Center, Amount, colores, opacidades)