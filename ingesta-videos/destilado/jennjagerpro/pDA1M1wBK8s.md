# Final Cut Pro VS Third Party Plugins 
**Fuente:** jennjagerpro | https://youtu.be/pDA1M1wBK8s

## Qué enseña (2-3 líneas)
Compara herramientas nativas de Final Cut Pro (escena removal mask, flow transition, color adjustments, noise reduction) con plugins de terceros (Keeper, Morph Cut, White Balance Plugin 2, Neat Video) para determinar si vale la pena pagar por los plugins. Evalúa resultados visuales, rango de ajustes y facilidad de uso en escenarios reales.

## Lecciones accionables
- **Scene Removal Mask vs Keeper (FX Factory):** Para eliminar sujetos que salen de cuadro, usa Keeper en lugar del nativo. Aplica Keeper desde el inspector de video, ajusta la referencia al último fotograma si el sujeto sale al final. Keeper ofrece más opciones de ajuste fino (parámetros: referencia de fotograma, máscara de borde, suavizado).
- **Flow Transition vs Morph Cut (MotionVFX):** Para eliminar jump cuts en entrevistas, usa Flow Transition (categoría Dissolve) con duración de 6 fotogramas (por defecto 12). Espera a que renderice para ver resultados. Morph Cut (5 fotogramas por defecto) produce artefactos como ondas o rizos en movimiento de brazos. Flow Transition funciona mejor cuando el sujeto apenas se mueve (ej. "fig leaf pose").
- **Color Adjustments (FCP 10.6.6) vs White Balance Plugin 2 (FCP Effects):** Para corrección básica de color, usa Color Adjustments con sliders que llegan hasta 200 (mantén clic en el valor y desliza hacia adelante en el trackpad). White Balance Plugin 2 ($20 aprox.) ofrece rango completo hasta negro (slider Blacks a 100), selector de balance de blancos y vive en el inspector de video (no requiere abrir Color Inspector). Aplica con atajo Option+E si lo guardas como efecto por defecto.
- **Noise Reduction (FCP) vs Neat Video:** Para reducción de ruido en condiciones de baja luz, usa Neat Video ($70 aprox.) cuando necesites máxima calidad. En Neat Video: selecciona un área verde en el fotograma (ej. cielo), presiona "Build Profile", ve a "Adjust & Preview", activa "Quality Mode" en High, luego "Apply". FCP Noise Reduction: ajusta Amount a Maximum y Sharpness a Medium (evita High para prevenir distorsión en líneas rectas). Neat Video produce bordes más suaves y menos vibración en detalles finos.

## Reglas para agentes
- Usa Keeper cuando el sujeto sale completamente del encuadre y necesitas eliminarlo; no uses Scene Removal Mask en ese caso.
- Usa Flow Transition con duración de 6 fotogramas para unir tomas de entrevistas donde el sujeto apenas se mueve; nunca uses Morph Cut si hay movimiento de brazos o cambios de postura.
- Usa White Balance Plugin 2 cuando necesites rango completo de negros o balance de blancos preciso; usa Color Adjustments solo para correcciones básicas sin necesidad de esos extremos.
- Usa Neat Video cuando el proyecto requiera calidad prístina (clientes exigentes, proyectos premium); usa Noise Reduction nativo solo para trabajos rápidos donde la suavidad sea aceptable.
- Nunca apliques Noise Reduction nativo con Sharpness en High si hay líneas rectas o bordes definidos (ej. pintura en carretera) porque produce distorsión vibratoria.
- Nunca uses Morph Cut con duración mayor a 5 fotogramas; el plugin es antiguo (7+ años) y puede generar artefactos inesperados.

## Errores comunes que evita o menciona
- **Error:** Usar Scene Removal Mask sin verificar el fotograma de referencia (primero vs último). La creadora inicialmente usó el primer fotograma cuando necesitaba el último, obteniendo resultados pobres.
- **Error:** Esperar que Morph Cut funcione bien en tomas con movimiento de brazos o cambios de postura. Produce un "efecto de onda" o "ripple" que arruina la transición.
- **Error:** Confiar en que los sliders de Color Adjustments llegan solo a 100. La creadora muestra que se puede llegar a 200 manteniendo clic y deslizando en el trackpad.
- **Error:** Usar Noise Reduction nativo con Sharpness en High en tomas con detalles finos (líneas de carretera, bordes de instrumentos). Causa "wiggly lines" o distorsión vibratoria.
- **Error:** Asumir que Neat Video es innecesario porque FCP tiene reducción de ruido nativa. En tomas de baja luz con clientes exigentes, Neat Video es superior en suavidad de bordes y eliminación de artefactos.