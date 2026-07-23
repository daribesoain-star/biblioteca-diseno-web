# WebGL Fundamentals
**Materia:** programacion-creativa-graficos-realtime-web | **Fuente:** https://webglfundamentals.org/ (consultada 2026-07-07)

## Qué aporta
Conjunto de artículos que enseñan WebGL desde principios básicos, descartando conceptos obsoletos de OpenGL. Cubre desde fundamentos (shaders, GLSL, matrices) hasta técnicas avanzadas (mapeo de sombras, GPGPU, picking, skinning, fog, skyboxes) con ejemplos prácticos y diagramas de estado.

## Reglas candidatas para agentes
- Usar `gl.drawElements` para renderizado con vértices indexados (optimización).
- Implementar `gl.drawArraysInstanced` para dibujo instanciado.
- Configurar el canvas con `resize` que iguale `canvas.clientWidth` y `canvas.clientHeight` multiplicado por `devicePixelRatio`.
- Usar `gl.pixelStorei(gl.UNPACK_FLIP_Y_WEBGL, true)` al cargar texturas desde imágenes.
- Para texturas de datos, usar `gl.texImage2D` con `gl.RGBA`, `gl.UNSIGNED_BYTE` y un `Uint8Array`.
- En renderizado a textura, usar `gl.bindFramebuffer(gl.FRAMEBUFFER, framebuffer)` y `gl.framebufferTexture2D`.
- Para sombras, implementar depth texture con `gl.DEPTH_COMPONENT16` y `gl.COMPARE_REF_TO_TEXTURE`.
- En GPGPU, usar `gl.readPixels` con `gl.RGBA` y `gl.UNSIGNED_BYTE` para leer resultados.
- Para picking, usar `gl.readPixels` en coordenadas de clic con un framebuffer de 1x1 píxeles.
- En mapeo de cubos, usar `gl.TEXTURE_CUBE_MAP_POSITIVE_X` a `gl.TEXTURE_CUBE_MAP_NEGATIVE_Z`.
- Para texturas con múltiples imágenes, usar `gl.activeTexture(gl.TEXTURE0 + n)` y `gl.uniform1i` para cada unidad de textura.
- En animación, usar `requestAnimationFrame` para el bucle de renderizado.

## Errores comunes que documenta
- Reutilizar artículos obsoletos de OpenGL sin adaptarlos a WebGL.
- No entender que WebGL es una API de estado (state machine) y no orientada a objetos.
- Confundir matrices de WebGL (column-major) con matrices matemáticas (row-major).
- No manejar correctamente el alpha del canvas (premultiplicado vs no premultiplicado).
- Olvidar configurar `gl.pixelStorei` al cargar imágenes de textura.
- No limpiar el canvas entre frames con `gl.clear(gl.COLOR_BUFFER_BIT | gl.DEPTH_BUFFER_BIT)`.
- Usar `gl.UNPACK_FLIP_Y_WEBGL` incorrectamente para texturas de datos.
- No considerar problemas de precisión en shaders (highp vs mediump).
- Ignorar problemas de cross-origin al cargar texturas desde otros dominios.
- No redimensionar el canvas al cambiar el tamaño de la ventana.

## Datos/citas clave textuales
- "WebGL from the ground up. No magic."
- "These are a set of articles that teach WebGL from basic principles."
- "They are NOT old rehashed out of date OpenGL articles like many others on the net."
- "They are entirely new, discarding the old out of date ideas and bringing you to a full understanding of what WebGL really is and how it really works."
- "If you are interested in WebGL2 please see webgl2fundamentals.org"
- Secciones cubiertas: Fundamentals, Image Processing, 2D translation/rotation/scale/matrix math, 3D (Orthographic, Perspective, Cameras), Lighting (Directional, Point, Spot), Structure and Organization, Geometry (Lathe, .obj, .obj w .mtl), Textures (Data, Multiple, Cross Origin, Perspective Correct, Planar/Perspective Projection Mapping), Rendering To A Texture, Shadows, Techniques (2D DrawImage, Matrix Stack, Sprites, Cubemaps, Environment maps, Skyboxes, Skinning, Fog, Picking, Text, Ramp Textures), GPGPU, Tips (Smallest Programs, Drawing Without Data, Shadertoy, Pulling Vertices, Optimization, Indexed Vertices, Instanced Drawing), Misc (Setup, Boilerplate, Resizing, Animation, Points/Lines/Triangles, Multiple Views, WebGL and Alpha, 2D vs 3D libraries, Anti-Patterns, Matrices vs Math Matrices, Precision Issues, Screenshot, Prevent Canvas Clearing, Keyboard Input, WebGL as Background, Cross Platform Issues), Reference (Attributes, Texture Units, Framebuffers, readPixels, Helper API Docs, TWGL)