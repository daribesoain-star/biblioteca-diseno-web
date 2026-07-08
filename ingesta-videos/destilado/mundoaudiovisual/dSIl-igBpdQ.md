# 🔵 NUEVO CURSO 2 0 DE DAVINCI RESOLVE 18 🎬 Capítulo 12: LAS RAMPAS DE VELOCIDAD
**Fuente:** mundoaudiovisual | https://youtu.be/dSIl-igBpdQ

## Qué enseña
Cómo transformar clips de video monótonos (especialmente tomas de drones o time-lapses) en secuencias dinámicas y profesionales mediante la técnica de **speed ramps** (rampas de velocidad). Explica el proceso completo: añadir puntos de velocidad, ajustar la duración de los segmentos, suavizar las transiciones con curvas de velocidad y complementar el efecto con sonido.

## Lecciones accionables
- **Abrir panel de cambio de velocidad:** seleccionar el clip en la línea de tiempo (cuadrado rojo) y presionar `Control+R` (Windows) o `Command+R` (Mac).
- **Añadir puntos de velocidad:** hacer clic en el triángulo inferior del clip y seleccionar "Add speed point" para dividir el clip en segmentos.
- **Ajustar velocidad de un segmento:** arrastrar el vector superior del punto de velocidad hacia adentro (hacia el centro del clip) para aumentar la velocidad; arrastrar hacia afuera para disminuirla.
- **Suavizar transiciones abruptas:** presionar `Shift+C` para abrir el inspector de fotogramas clave. Activar "Processing Speed" en los parámetros. Seleccionar cada punto blanco (fotograma clave), cambiar de "Linear" a "Curve" y ajustar las manijas (beziers) para hacer la transición progresiva.
- **Añadir efecto de sonido (whoosh):** colocar el audio justo donde termina la rampa de velocidad. Ajustar la velocidad del sonido al 50% (o según preferencia) para que suene más grave y metálico. Usar `Propagate timeline` para que el clip de audio se estire o ajuste automáticamente.
- **Recortar clip antes de aplicar rampa:** eliminar partes no deseadas (ej. caminata inicial) usando la herramienta de corte antes de añadir puntos de velocidad.

## Reglas para agentes
- Usa `Control+R` / `Command+R` para abrir el panel de velocidad, no el ajuste rápido de velocidad desde el menú contextual.
- Siempre añade al menos dos puntos de velocidad: uno al inicio del segmento rápido y otro al final, para crear tres segmentos (normal → rápido → normal).
- Cuando arrastres el vector de velocidad, hazlo desde la **parte superior** del punto (no la inferior) para cambiar la velocidad; la parte inferior se usa para otros ajustes.
- Nunca dejes transiciones lineales de velocidad (100% → 1189%) sin curvar; usa `Shift+C` y cambia a "Curve" en ambos fotogramas clave para que el cambio sea orgánico.
- Coloca el efecto de sonido (whoosh) **casi al final** del segmento rápido, justo antes de que vuelva a velocidad normal.

## Errores comunes que evita o menciona
- **Transiciones abruptas de velocidad:** pasar de 100% a 1189% sin suavizar crea un corte brusco y poco profesional. Se corrige curviendo los fotogramas clave en el inspector (`Shift+C`).
- **No ajustar la duración del sonido:** al cambiar la velocidad del audio (ej. 50%), el clip se alarga; hay que propagar la línea de tiempo para que encaje correctamente.
- **Usar el ajuste automático de velocidad:** el video menciona que existe una opción de "automatic speed ramp" pero recomienda hacerlo manualmente para mayor control.
- **Dejar el clip original sin recortar:** si el clip tiene partes innecesarias al inicio o final, la rampa de velocidad se aplica sobre todo el clip, alargando el proceso. Se recomienda recortar primero.