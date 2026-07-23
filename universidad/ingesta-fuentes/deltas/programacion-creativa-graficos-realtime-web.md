# Delta — programacion-creativa-graficos-realtime-web

## Reglas nuevas propuestas

- En fragment shaders, normaliza coordenadas con `gl_FragCoord.xy / u_resolution` al rango [0.0, 1.0] antes de cualquier operación; coordenadas sin normalizar producen comportamientos dependientes de resolución (fuente: thebookofshaders.com)
- Para patrones repetitivos en shaders, escala coordenadas con multiplicación entera y aísla celdas con `fract(st)`; sin esta técnica cada patrón debe codificarse manualmente (fuente: thebookofshaders.com)
- Redimensiona el canvas WebGL igualando `canvas.clientWidth` y `canvas.clientHeight` multiplicado por `devicePixelRatio` en cada resize; ignorar devicePixelRatio produce renderizado borroso en pantallas retina (fuente: webglfundamentals.org)
- Configura `gl.pixelStorei(gl.UNPACK_FLIP_Y_WEBGL, true)` al cargar texturas desde imágenes; omitirlo invierte verticalmente todas las texturas cargadas (fuente: webglfundamentals.org)
- Usa `gl.drawElements` para renderizado con vértices indexados; sin indexación se duplican vértices innecesariamente en geometrías compartidas (fuente: webglfundamentals.org)
- Para convoluciones de kernel en shaders, usa matrices 3x3 con pesos que sumen 1.0 (ej. desenfoque: 1/9 cada celda); pesos que no suman 1.0 alteran el brillo de la imagen (fuente: thebookofshaders.com)
- En ray marching, define la distancia máxima de trazado como constante (ej. `float MAX_DIST = 100.0`); sin límite máximo el shader puede ejecutarse indefinidamente por píxel (fuente: thebookofshaders.com)
- Para texturas con múltiples imágenes, usa `gl.activeTexture(gl.TEXTURE0 + n)` y `gl.uniform1i` para cada unidad de textura; sin activación explícita todas las texturas apuntan a la unidad 0 (fuente: webglfundamentals.org)

## Errores nuevos propuestos

- No declarar correctamente los uniformes `u_time`, `u_resolution`, `u_mouse` que el entorno proporciona — el shader compila pero recibe valores basura o cero (fuente: thebookofshaders.com)
- Confundir matrices de WebGL (column-major) con matrices matemáticas (row-major) — las transformaciones se aplican en orden inverso al esperado (fuente: webglfundamentals.org)
- No manejar el alpha del canvas (premultiplicado vs no premultiplicado) — los colores semitransparentes aparecen con bordes oscuros o artefactos de blending (fuente: webglfundamentals.org)
- Usar valores absolutos de píxeles en lugar de coordenadas normalizadas en shaders — el mismo shader produce resultados visualmente distintos en pantallas de diferente resolución (fuente: thebookofshaders.com)

## Contradicciones detectadas

Ninguna.