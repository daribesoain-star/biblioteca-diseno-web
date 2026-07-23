# Understanding Anamorphic: 1.3x vs 1.5x vs 2x
**Fuente:** indepthcine | https://youtu.be/4vgEYL5LFbw
## Qué enseña (2-3 líneas)
Explica cómo los lentes anamórficos comprimen horizontalmente la imagen, cómo el desqueeze restaura sus proporciones y por qué el factor de squeeze cambia campo de visión, composición y carácter óptico.  
Compara 1.3x, 1.5x y 2x en sensores modernos, película, monitoreo, resolución, distorsión, bokeh, flares y usos prácticos.

## Lecciones accionables
- Un lente anamórfico no “hace widescreen” recortando arriba y abajo: comprime horizontalmente la imagen durante captura y exige un desqueeze equivalente en set y en postproducción.
- Diferencia base: un lente esférico renderiza 1:1 en eje horizontal y vertical; un anamórfico mantiene el campo de visión vertical de su focal declarada y amplía el campo horizontal según su squeeze factor.
- Ejemplo clave: un 50mm anamórfico 2x mantiene el campo vertical de un 50mm esférico, pero entrega un campo horizontal aproximado al de un 25mm esférico.
- Usa el squeeze factor como parámetro técnico principal: `1.3x`, `1.5x`, `2x`. El desqueeze debe coincidir exactamente: un lente `1.5x` requiere desqueeze `1.5x`.
- El formato clásico profesional es `2x`: produce bokeh ovalado más marcado, flares horizontales más fuertes, más distorsión de bordes y mayor “look anamórfico”.
- En rodajes con VFX y lentes `2x`, graba distortion charts durante gear check para cada focal usada; esas grillas permiten medir la distorsión y deformar CGI para que coincida con el lente.
- Ejemplos de lentes anamórficos `2x`: Cooke Anamorphics, Hawk V-Lites, Kowas, Panavision G-Series, C-Series y E-Series, Arri/Zeiss Master Anamorphics, Atlas Orion.
- El squeeze `1.5x` está pensado sobre todo para sensores digitales `16:9`: al desqueeze completo genera alrededor de `2.66:1`, normalmente con leve recorte lateral para entregar `2.39:1`.
- El `1.5x` reduce artefactos frente a `2x`: bokeh algo más redondo, menos distorsión y look anamórfico más moderado.
- Verifica compatibilidad de monitoreo: algunas cámaras cine profesionales desqueezan `2x` internamente, pero no siempre `1.5x`; en ese caso usa monitor externo que soporte desqueeze `1.5x`.
- Ejemplos de lentes `1.5x`: Blazar Remus, Laowa Nanomorphs, Technovision 1.5x, Atlas Mercury.
- Panavision Auto Panatar `1.44x` convierte el aspecto nativo `1.66:1` de 16mm en `2.39:1` tras desqueeze; fue usado en *Red Rocket*.
- Panavision Ultra Vista usa squeeze `1.6x`, cubre sensores full-frame modernos como Arri Alexa LF y busca ratio widescreen nativo con menos recorte lateral y menor pérdida de resolución.
- El squeeze `1.3x` es más sutil: conserva limpieza esférica con un toque de carácter anamórfico y mayor amplitud horizontal.
- `1.3x` fue usado históricamente en Ultra Panavision 70: aplicado a negativo 65mm 5-perf producía un aspecto proyectado de `2.76:1`.
- En digital, `1.3x` suele diseñarse para sensores `16:9` o `17:9`, generando `2.39:1` con recorte mínimo.
- Ejemplos `1.3x`: Ultra Panavision 70, Panavision Ultra Panatar I & II, Blazar Mantis full-frame, Hawk S16 V-Lites `1.3x`.
- En 35mm, el anamórfico nació por resolución: evitaba recortar la mitad superior e inferior del negativo para `2.39:1`, usando el frame `4:3` completo y mejorando resolución vertical y grano.
- En digital, anamórfico no siempre da más resolución: en Red Raptor 8K, esférico `2.40:1` usa `8192x3456`, mientras anamórfico en área `6:5` usa `5184x4320` antes del desqueeze y posibles recortes.
- Los elementos cilíndricos adicionales suelen reducir nitidez frente a lentes esféricos de alto rendimiento; hoy la elección anamórfica suele ser estética, no máxima resolución.
- Rasgos ópticos a evaluar: oval bokeh, horizontal lens flares, edge distortion, barrel distortion y focus falloff desde el centro hacia los bordes.
- Los anamórficos front-mounted suelen dar más carácter clásico; los rear-mounted suelen “anamorfizar” un lente esférico con adaptador trasero, estiran verticalmente, reducen apertura, aumentan focal efectiva como teleconverter y tienden a eliminar bokeh/flares característicos.
- Composición: en close-ups anamórficos espera más espacio negativo lateral y menos headroom; agregar altura puede aumentar la sensación de vacío horizontal.
- No aparecen prompts en la transcripción; las keywords técnicas relevantes son: `squeeze factor`, `desqueeze`, `field of view`, `2.39:1`, `2.40:1`, `2.66:1`, `2.76:1`, `4:3`, `6:5`, `16:9`, `17:9`, `oval bokeh`, `horizontal flares`, `distortion charts`.

## Reglas para agentes
- Usa anamórfico cuando la prioridad sea carácter óptico, amplitud horizontal y dimensionalidad, no máxima nitidez o máxima resolución digital.
- Usa `2x` cuando busques el look anamórfico más reconocible: bokeh ovalado fuerte, flares horizontales marcados y distorsión visible.
- Usa `1.5x` cuando trabajes con sensores `16:9` y quieras equilibrio entre look anamórfico, costo, cobertura y recorte moderado.
- Usa `1.3x` cuando quieras una imagen cercana a esférico, con carácter anamórfico leve y entrega `2.39:1` con recorte mínimo en sensores `16:9` o `17:9`.
- Aplica siempre desqueeze igual al squeeze del lente: `1.3x` con `1.3x`, `1.5x` con `1.5x`, `2x` con `2x`.
- Verifica antes del rodaje que cámara o monitor soporten el desqueeze requerido; nunca asumas que una cámara soporta `1.5x` solo porque soporta `2x`.
- Para VFX, registra distortion charts por cada focal anamórfica usada; no integres CGI sin modelar la distorsión del lente.
- Calcula campo de visión separando vertical y horizontal: nunca trates la focal anamórfica como equivalente directa a una focal esférica en ambos ejes.
- En close-ups anamórficos, compón considerando el exceso de ancho lateral; no corrijas el encuadre agregando headroom sin revisar el vacío horizontal.
- Elige front anamorphic si necesitas carácter clásico fuerte; evita rear anamorphic si el objetivo principal son bokeh ovalado y flares anamórficos pronunciados.
- Evalúa resolución con el área real del sensor y el aspect ratio final; nunca afirmes que anamórfico digital siempre usa más píxeles que esférico.
- Si la entrega es `2.39:1`, calcula cuánto recorte lateral exige cada squeeze y sensor antes de elegir lente.

## Errores comunes que evita o menciona
- Creer que anamórfico equivale solo a flares horizontales o nostalgia estética.
- Confundir squeeze con recorte: el anamórfico expande el encuadre lateral tras desqueeze, no crea widescreen cortando arriba y abajo.
- Pensar que un 50mm anamórfico se comporta igual que un 50mm esférico en ambos ejes.
- Olvidar aplicar el desqueeze correcto en set y en postproducción.
- Asumir que `2x`, `1.5x` y `1.3x` producen el mismo look.
- Elegir `2x` sin considerar distorsión de bordes, VFX y necesidad de distortion charts.
- Usar lentes anamórficos en digital esperando automáticamente más resolución.
- Ignorar que algunos sensores modernos widescreen pueden aprovechar más píxeles con lentes esféricos que con anamórficos.
- No revisar soporte de desqueeze en cámara o monitor, especialmente con `1.5x`.
- Componer retratos anamórficos como si fueran esféricos, generando demasiado espacio negativo lateral.
- Confundir rear-mounted anamorphic con el look clásico de front-mounted anamorphic.
- Elegir anamórfico por nitidez extrema cuando su valor principal está en imperfecciones ópticas controladas.