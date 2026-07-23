# So we invented a way to cheat...
**Fuente:** corridorcrew | https://youtu.be/Z36LDna4nZg
## Qué enseña (2-3 líneas)
El video muestra un flujo de producción virtual para rodar cientos de planos en green screen sin rehacer iluminación, tracking y composición plano por plano. La idea central: filmar actores de forma uniforme, extraer máscaras y datos PBR, trackear cámara/profundidad con iPhone LiDAR/Jet Set, y terminar el plano dentro de Unreal Engine con iluminación del mundo 3D.

## Lecciones accionables
- Para escenas en green screen, separa el rodaje de la iluminación final: graba al actor con luz pareja y limpia, luego usa relighting con PBR maps para que el personaje reciba la luz del entorno 3D.
- Switch Light convierte metraje 2D en `PBR maps` / `Physically Based Rendering maps`, permitiendo iluminar al sujeto con luces virtuales como si fuera un modelo 3D.
- La referencia técnica usada para entrenar este tipo de relighting es un `light stage`: domo con unas 300 luces apuntando hacia dentro, capturando al sujeto con muchas direcciones de iluminación para aprender cómo responde su piel/ropa/materiales.
- En un plano nocturno simple, el esquema tradicional mencionado era: `warm fill from the torch` + `blue ambient backlight for the night sky`. Úsalo como prompt de luz: **warm torch fill, blue ambient night-sky backlight, moody edge light**.
- Evita iluminar físicamente cada toma si el fondo final será 3D: en el ejemplo, mover luces tomaba unos 5 minutos por plano; en 400 planos equivale a unas 33 horas solo ajustando stands.
- Para planos dinámicos, el video favorece tracking con `Jet Set` + iPhone LiDAR: permite filmar y trackear con el teléfono, o sincronizarlo con una cámara y lente existentes para obtener datos de cámara.
- El LiDAR se usa para calcular la profundidad del actor y ubicarlo correctamente dentro de la escena 3D, no solo para trackear la cámara.
- Quita tracking markers del green screen cuando sea posible: facilitan el tracking tradicional, pero complican el keying y obligan a más rotoscopía.
- Para prompts de cámara en video IA, los términos útiles que sí aparecen o se infieren del flujo son: `dynamic camera motion`, `moving camera`, `real-time preview`, `3D tracked camera`, `focus pull`, `edge light`, `moody lighting`, `warm fill`, `blue ambient backlight`, `lit by the 3D environment`, `Unreal Engine cinematic render`.
- No se mencionan focales exactas, aperturas, sensores ni valores de exposición; no inventarlos en prompts técnicos si buscas replicar fielmente el workflow.
- La integración ideal es renderizar el plano final dentro de Unreal: ya no hay `foreground/background` separados en After Effects, sino footage del actor viviendo dentro del mundo 3D y siendo iluminado por la escena.
- Resultado práctico citado: un plano simple pasó de unos 45 minutos con workflow tradicional a unos 12 minutos con el flujo Unreal + Switch Light + keying + tracking.

## Reglas para el director de fotografía IA
- Usa luz física uniforme y controlada cuando el personaje vaya a ser relit después; no intentes clavar en set toda la iluminación dramática del mundo 3D.
- Usa `warm torch fill` cuando la fuente narrativa sea fuego, antorcha o vela; acompáñalo con `blue ambient backlight` si el exterior o cielo nocturno debe separar la silueta.
- Usa `edge light` fuerte cuando necesites integrar al actor en fondos oscuros y separar rostro, pelo, hombros o vestuario del entorno.
- Para no alucinar en video IA, fija el origen de la luz en el prompt: “warm torch fill from camera-left”, “blue ambient backlight from night sky”, “moody edge light on face”.
- Para planos con movimiento, exige `3D tracked camera movement` o `dynamic camera motion`, y mantén consistencia de profundidad entre actor y fondo.
- Cuando el plano dependa de integración VFX, prioriza máscaras limpias, profundidad coherente y dirección de luz antes que una cámara excesivamente compleja.
- No uses marcadores visibles en green screen si luego necesitas un key limpio; usa tracking sin marcadores o tracking por LiDAR cuando el flujo lo permita.
- Si usas video IA, no pidas “cinematic lighting” de forma genérica; especifica esquema verificable: color, dirección, fuente, intensidad relativa y función dramática.
- Si el personaje debe parecer dentro de un entorno 3D, ilumínalo con luces del mundo virtual o replica exactamente esas luces en set.
- Para planos con foco dramático, usa `focus pull` solo cuando el cambio de atención esté motivado y pueda mantenerse estable entre actor, props y fondo.

## Errores comunes que evita o menciona
- Olvidar igualar la iluminación del actor con el fondo final.
- Rodar green screen con objetos reflectantes como espada o escudo sin prever spill, roto y pérdida de detalle.
- Añadir tracking markers que luego ensucian el key y aumentan la rotoscopía.
- Depender de rigs pesados de tracking con cables, PC, pucks y sensores que pierden sincronía o señal.
- Limitar el movimiento de cámara por culpa del sistema de tracking.
- Separar todo en foreground/background y recomponer manualmente cuando el plano puede vivir y renderizarse dentro de Unreal.
- Confiar en “cinematic” como estética automática: Unreal puede conservar una estética de videojuego si la luz, materiales y composición no se ajustan con intención.