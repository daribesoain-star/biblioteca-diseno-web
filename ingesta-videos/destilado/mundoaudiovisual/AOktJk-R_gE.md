# Curso - Final Cut pro X - 2020 - 🎬 * Cap. 12- Efecto intro cinematográfica -
**Fuente:** mundoaudiovisual | https://youtu.be/AOktJk-R_gE

## Qué enseña (2-3 líneas)
Cómo crear una intro cinematográfica en Final Cut Pro X con barras negras que se abren y cierran, efecto de desenfoque (blur) al inicio y final del clip, transición a blanco y negro, y texto con contorno. Incluye uso de generadores, keyframes, compound clips y rotación para duplicar efectos simétricamente.

## Lecciones accionables
- **Crear barras negras superior e inferior:** Usa Generators > Solids > Custom, color negro. Coloca el generador sobre el clip. En Inspector > Position, ajusta a -500 (mitad inferior). Crea keyframe en posición al inicio del clip, otro en segundo 3 (misma posición), otro en segundo 5 (posición -700), otro en segundo 8 (posición -900). Copia el clip (Ctrl+C), pégalo arriba, selecciona y crea Compound Clip. Rota 180° en Inspector > Transform > Rotation. Esto crea la barra superior simétrica.
- **Efecto blur al inicio:** Aplica Effects > Blur > Ring (o Wormhole). En el primer frame, añade keyframe en Amount (valor alto, ej. 100). Unos segundos después, añade otro keyframe con Amount en 0. El blur desaparece progresivamente.
- **Cierre de barras:** Corta el compound clip donde quieras que empiece el cierre. En el clip inferior, añade keyframe en posición al inicio del cierre (ej. -900), luego otro keyframe unos segundos después con posición -500. Copia, pega arriba, crea nuevo compound clip, rota 180°.
- **Transición a blanco y negro:** Aplica Color Wheels > Color Board. Antes de que empiece el cierre, añade keyframe en Saturation (valor normal). Unos segundos después, añade otro keyframe con Saturation a 0 (blanco y negro).
- **Texto con blur y contorno:** Usa Titles > Basic Title. Aplica Effects > Blur > Ring. Crea keyframes: al inicio Amount alto, luego Amount 0; al final Amount alto de nuevo. En Inspector de texto, activa Outline, color negro, añade Width y un poco de Blur. Usa fuente Open Sans (gratuita) en estilo Fine Italic o Regular.
- **Música:** Descarga de YouTube Library (sin copyright, sin atribución requerida). Filtra por "cinematic". Importa a la biblioteca. Ajusta con fade in/out usando Transitions > Dissolve.
- **Generador negro para fade de música:** Añade Generators > Solids > Custom (negro) al final. Aplica Dissolve para transición suave.

## Reglas para agentes
- Usa Compound Clip antes de rotar 180° para que los keyframes de posición no se pierdan al voltear.
- Cuando copies un clip de barra para crear la simétrica, pégalo en una pista superior y crea un nuevo Compound Clip, no reutilices el anterior.
- Añade keyframes de blur tanto al inicio como al final del texto para efecto de entrada y salida.
- Usa posición -500 como punto medio exacto de la pantalla para las barras.
- Cuando ajustes Outline en texto, activa primero la casilla Outline, luego configura color negro, Width y Blur.

## Errores comunes que evita o menciona
- No alargar un compound clip más allá de su duración original; si se necesita extender, hay que cortar y crear un nuevo compound clip con el movimiento inverso.
- No olvidar eliminar keyframes previos antes de rehacer un efecto en un clip copiado; usa el botón de eliminar keyframe (diamante) en cada parámetro.
- No dejar el texto sin contorno cuando el fondo es claro; añade Outline negro para legibilidad.
- No usar música con copyright; descarga de YouTube Library con filtro "no attribution required".
- No cortar la música abruptamente; usa Dissolve o generador negro con fade para transición suave.