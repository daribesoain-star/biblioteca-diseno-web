# The Book of Shaders
**Materia:** programacion-creativa-graficos-realtime-web | **Fuente:** https://thebookofshaders.com/ (consultada 2026-07-07)
## Qué aporta
Guía paso a paso sobre el universo abstracto y complejo de los Fragment Shaders. Cubre desde fundamentos (uniformes, funciones de forma, color, matrices) hasta técnicas avanzadas (ruido, fractales, procesamiento de imágenes, simulación de fluidos, 3D con ray marching y mapas de normales). Incluye ejemplos ejecutables y traducciones a múltiples idiomas.

## Reglas candidatas para agentes
- Todo fragment shader debe declarar un `void main()` como punto de entrada.
- Las coordenadas normalizadas deben mapearse al rango [0.0, 1.0] usando `gl_FragCoord.xy / u_resolution`.
- Para centrar coordenadas, restar 0.5: `vec2 st = gl_FragCoord.xy / u_resolution - 0.5;`
- El uniforme `u_time` debe ser de tipo `float` y representar segundos transcurridos.
- El uniforme `u_resolution` debe ser de tipo `vec2` y contener el tamaño del viewport en píxeles.
- El uniforme `u_mouse` debe ser de tipo `vec2` y contener la posición del ratón en píxeles.
- Para dibujar formas, usar funciones de forma (step, smoothstep, sin, cos) con umbrales en el rango [0.0, 1.0].
- Para patrones repetitivos, escalar coordenadas con `st *= 3.0` y usar `fract(st)` para aislar celdas.
- Para ruido, usar funciones de ruido celular (Worley) o ruido de Perlin con valores en [0.0, 1.0].
- Para convoluciones de kernel, usar matrices 3x3 con pesos que sumen 1.0 (ej. kernel de desenfoque: 1/9 cada celda).
- Para ray marching, la distancia máxima de trazado debe definirse como constante (ej. `float MAX_DIST = 100.0`).
- Para mapas de normales, el rango de valores debe mapearse de [0,255] a [-1.0, 1.0].

## Errores comunes que documenta
- No declarar correctamente los uniformes (`u_time`, `u_resolution`, `u_mouse`) que el entorno proporciona.
- Olvidar normalizar coordenadas antes de operar con ellas.
- Usar valores absolutos de píxeles en lugar de coordenadas normalizadas, causando comportamientos dependientes de resolución.
- No entender que los fragment shaders se ejecutan en paralelo para cada píxel, sin estado compartido entre ejecuciones.
- Confundir el espacio de coordenadas de textura (0-1) con el espacio de pantalla.

## Datos/citas clave textuales
- "This is a gentle step-by-step guide through the abstract and complex universe of Fragment Shaders."
- "Patricio Gonzalez Vivo (1982, Buenos Aires, Argentina) is a New York based artist and developer."
- "Jen Lowe is an independent data scientist and data communicator at Datatelling."
- "Copyright (c) Patricio Gonzalez Vivo, 2015 - http://patriciogonzalezvivo.com/"
- "All rights reserved."