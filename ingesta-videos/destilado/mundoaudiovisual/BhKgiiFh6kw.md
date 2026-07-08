# 🔵 NUEVO CURSO 2 0 DE DAVINCI RESOLVE 18 🎬 Capítulo 3:  ¿QUÉ ES EL VIDEO? FPS Y RESOLUCIONES
**Fuente:** mundoaudiovisual | https://youtu.be/BhKgiiFh6kw

## Qué enseña (2-3 líneas)
Explica qué es el video (secuencia de imágenes fijas), la diferencia entre FPS (fotogramas por segundo) y resolución, y cómo configurar correctamente la línea de tiempo en DaVinci Resolve 18 según el metraje grabado. Enseña a elegir FPS para evitar saltos y a usar altos FPS exclusivamente para cámara lenta.

## Lecciones accionables
- **Configurar la línea de tiempo al FPS más bajo del metraje:** Si tienes clips a 24 FPS, configura el timeline a 24 FPS. Si usas 25 FPS en el timeline y metes un clip a 24 FPS, faltará un fotograma y se verá saltos.
- **Insertar clips con FPS mayor al del timeline es seguro:** Un clip a 30 FPS en un timeline a 25 FPS se comprime sin saltos visibles (sobran fotogramas).
- **Usar altos FPS (100, 120, 240) solo para cámara lenta:** Si grabas a 100 FPS y el timeline está a 25 FPS, al estirar el clip tienes 100 fotogramas por segundo; tomas 25 para cada segundo del timeline, logrando cámara lenta suave.
- **Grabar en 4K para exportar a 1080p:** Al reducir resolución, sobran píxeles para hacer encuadres (upscaling) sin perder calidad. Si grabas en 1080p y escalas a 4K, pierdes calidad por falta de píxeles.
- **Usar Super Scale (solo Studio) para escalar:** DaVinci Resolve 18 Studio tiene IA que permite escalar un clip de 4K a resolución superior sin pérdida de nitidez.
- **Estándares regionales de FPS:** En Europa usa 25 FPS (PAL); en EE. UU. usa 30 FPS. Para cine, el estándar es 24 FPS.

## Reglas para agentes
- Configura siempre el timeline al FPS más bajo de todos los clips del proyecto para evitar saltos.
- Cuando insertes un clip con FPS mayor al del timeline, no apliques ningún ajuste; el software comprime automáticamente.
- Nunca uses altos FPS (100, 120, 240) para grabación normal; resérvalos exclusivamente para crear cámara lenta.
- Si exportas a 1080p, graba siempre en 4K para tener margen de reencuadre sin pérdida de calidad.
- Para escalar resoluciones sin pérdida, usa la herramienta Super Scale solo si tienes DaVinci Resolve Studio (versión de pago).

## Errores comunes que evita o menciona
- **Creer que más FPS = mejor calidad:** Los FPS no tienen relación con la calidad de imagen ni resolución; solo afectan la fluidez y la capacidad de cámara lenta.
- **Mezclar FPS sin ajustar el timeline:** Insertar un clip a 24 FPS en un timeline a 25 FPS causa saltos visibles por falta de un fotograma por segundo.
- **Grabar en 1080p pensando escalar a 4K:** No hay suficientes píxeles; se pierde calidad. La dirección correcta es grabar en 4K y exportar a 1080p.
- **Usar altos FPS para grabación normal:** Desperdicia espacio y recursos del ordenador sin beneficio; solo sirve para cámara lenta.