# Can Modern VFX Artists use 90s Software?
**Fuente:** corridorcrew | https://youtu.be/lxxC7oQbmJw
## Qué enseña (2-3 líneas)
Bryce 2 fuerza una cinematografía 3D basada en composición simple: horizonte, niebla, agua reflectante, terrenos fractales y cámara virtual limitada.  
El look noventero nace de aceptar el motor de ray tracing crudo, baja resolución, materiales directos y presets de cielo/fog en vez de buscar realismo moderno.  
Para video IA, la lección es definir cámara, escala, niebla, horizonte y textura antes que detalles complejos.

## Lecciones accionables
- Usa composiciones de paisaje con **wide shot / establishing shot**: plano general de océano reflectante, montañas fractales, cielo dominante y horizonte bajo o medio para vender “90s CGI / Bryce render”.
- Cámara virtual mencionada de forma literal: **"control camera"**, **"It orbits"**, **"rotate the camera"**, **"zoom in"**, **"bullet time it"**. Para prompts IA: `virtual camera orbit`, `slow bullet time orbit`, `wide establishing shot`, `camera zoom in`, `low-resolution 90s CGI render`.
- Si buscas formato de portada o binder, fija **aspect ratio vertical** desde el inicio. En el video intentan trabajar en proporción tipo Trapper Keeper y el software pelea contra el viewport **640 by 480**.
- Para el look Bryce: combina **terrain / mountain**, **water plane**, **sky preset**, **fog**, materiales reflectantes y geometría primitiva. Prompt útil: `raw ray-traced 90s CGI, Bryce 2 aesthetic, reflective ocean plane, fractal mountains, chrome horizon, foggy sky`.
- Para profundidad atmosférica, usa **fog** como caída de color: en el video preguntan si el color falloff viene de fog y confirman que sí. Prompt: `dense volumetric fog, color falloff into the distance, soft horizon fade`.
- Para caustics falsas, coloca una luz frontal: se menciona **"There's a light that I placed in the front here"** y que eso crea **"fake caustics"**. Prompt: `front light creating fake caustics on reflective water`.
- Para una escena abstracta, duplica geometrías y dispersa en 3D: usan **"3D disperse"** para scatter de múltiples eyeballs/geometrías. Prompt: `scattered repeated primitive objects, 3D disperse layout, surreal abstract 90s render`.
- Para terrenos tipo Utah/mesas, usa height maps con posterización: mencionan **"posterize option for making the height maps"** para crear **mesas**. Prompt: `posterized height map terrain, mesa canyon, hard stepped elevation`.
- Para volumen legible, aprovecha curvatura y luz rasante: la mano funciona porque la curvatura **"catches the light"** y da tridimensionalidad.
- Para nubes integradas, no dependas solo de planos: las nubes delante de la mano eran una **texture on the hand**, no un cloud plane separado.

## Reglas para el director de fotografía IA
- Usa **wide establishing shot** cuando la escena dependa de escala, horizonte, océano reflectante o montañas fractales.
- Usa **virtual camera orbit** cuando quieras enseñar una forma 3D simple sin cortes; verifica que el objeto principal siga centrado durante todo el movimiento.
- Usa **fog + color falloff** cuando el fondo se vea plano; la niebla debe separar primer plano, medio plano y fondo.
- Usa **front light** si necesitas caustics falsas o brillos gráficos sobre agua; no pidas caustics físicas si el look debe ser Bryce/90s.
- Mantén la geometría en primitivas, height maps, booleans y terrenos; para no alucinar en video IA, evita pedir mecanismos complejos, personajes detallados o props imposibles dentro del mismo plano.
- Define el encuadre antes de generar: `vertical aspect ratio` para portada, `4:3 640x480` para estética noventera, `wide landscape frame` para wallpaper.
- Si el prompt dice “90s CGI”, añade restricciones visuales verificables: `low resolution`, `raw ray tracing`, `simple primitives`, `reflective water plane`, `foggy sky`, `fractal terrain`.

## Errores comunes que evita o menciona
- Pelear contra la herramienta en vez de dejar que sus presets definan el look.
- Intentar modelado complejo cuando el software está optimizado para primitivas, terrenos, agua, cielo y fog.
- Cambiar el aspect ratio tarde: el render vertical terminó siendo difícil y hasta hubo cropping incorrecto.
- Confiar en renders largos sin pruebas rápidas; terminan bajando a **240p** para poder entregar.
- Agregar cloud layers sin testear: una nube nueva “looks really bad” y rompe la escena.
- Buscar realismo moderno: el valor está en el ray tracing crudo, reflejos simples, niebla evidente y composición gráfica.