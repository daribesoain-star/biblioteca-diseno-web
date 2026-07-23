# What's the Point of Shooting Anamorphic?
**Fuente:** filmriot | https://youtu.be/1nkUNAx9xbc

## Qué enseña (2-3 líneas)
Explica por qué el anamorphic no es solo un recorte panorámico: el squeeze cambia el campo de visión horizontal, el bokeh, las distorsiones, los flares y la separación del sujeto.  
Compara lentes spherical vs anamorphic usando DZO Arcona 1.5x squeeze para mostrar qué elementos visuales no se pueden replicar con un crop 16:9.

## Lecciones accionables
- Un lente anamorphic comprime una imagen más ancha dentro del sensor; en post hay que hacer **de-squeeze / unsqueeze**. En Premiere: **right click > Modify > Interpret Footage > Pixel Aspect Ratio > Conform to 1.5** si el lente es **1.5x squeeze**.
- No confundas **wide aspect ratio** con look anamorphic: puedes recortar un plano spherical 16:9 a **2.35:1**, pero no obtienes **oval bokeh**, **horizontal lens flares**, **edge distortion**, **vignetting**, ni la sensación de profundidad del anamorphic.
- Set usado en el video: **DZO Arcona anamorphic lenses**, focales **32mm, 45mm, 75mm**, **1.5x squeeze**, con **1.33 elliptical aperture design** para producir un efecto similar a **2x anamorphic**, sobre todo en el bokeh.
- En una cámara **open gate** como la **Blackmagic Pixis 12K**, con sensor cercano a **3:2**, un lente **1.5x squeeze** entrega aproximadamente **2.29:1 / 2.25:1** después del de-squeeze.
- Equivalencias prácticas de campo de visión: un **45mm anamorphic 1.5x** conserva una sensación vertical de 45mm, pero horizontalmente se comporta cerca de un **30mm spherical**. Un **32mm anamorphic 1.5x** da un campo horizontal cercano a **21mm spherical**.
- Para acercarte al sujeto sin perder mundo alrededor, usa un **45mm anamorphic 1.5x**: mantiene compresión vertical más natural, pero abre los laterales del encuadre como un angular moderado.
- El anamorphic separa más al sujeto por una mezcla de **vignetting**, **edge distortion**, **warping** y renderizado del desenfoque. Úsalo cuando quieras que el espacio se sienta más tridimensional y menos “fotográfico”.
- La distorsión es más fuerte en focales anchas: en el **32mm anamorphic** las líneas en bordes, cercas, paredes o marcos empiezan a curvarse hacia afuera; en **45mm** baja bastante; en **75mm** es leve.
- El bokeh anamorphic transforma puntos de luz circulares en **oval bokeh** y genera un desenfoque más **streaking / whirly blur**. En hojas, ramas y fondos con textura, el borde del frame adquiere más carácter.
- El **rack focus** puede mostrar **lens breathing**, que el video asocia con una sensación de cine clásico. Úsalo como rasgo expresivo, no como defecto automático.
- Los **lens flares** dependen del coating, la fuente y la posición. Los Arcona tienen **white coating design**, por lo que el flare toma el color de la fuente de luz en vez de imponer siempre un flare azul.
- Para controlar flares: cambia el tamaño de la fuente, muévela dentro del encuadre, ajústala cerca del borde, modifica el **T-stop**, o haz **ping the lens from outside the frame** para provocar flares laterales sin mostrar la luz.
- Aspect ratios con **1.5x squeeze**: **3:2** termina cerca de **2.2:1 / 2.25:1**; **16:9** termina cerca de **2.66:1**; **17:9** cerca de **2.8:1**; **6:5** cerca de **1.8:1**, casi 16:9.
- Puedes usar anamorphic incluso para **talking head shots** si grabas en **6:5** y haces de-squeeze a un frame cercano a **16:9**: mantienes el carácter anamorphic sin quedar excesivamente panorámico.
- Prompt técnico útil para video IA: **“shot on anamorphic lens, 1.5x squeeze, de-squeezed 2.35:1 frame, oval bokeh, horizontal lens flares, edge distortion, subtle vignetting, cinematic rack focus, 45mm anamorphic lens, natural colored flares”**.
- Prompt para plano amplio con distorsión: **“32mm anamorphic lens, wide horizontal field of view, bowed edge distortion, oval background bokeh, cinematic widescreen composition, subject separated from background”**.
- Prompt para retrato narrativo: **“45mm anamorphic close medium shot, wide cinematic frame, shallow depth of field, oval bokeh, subtle lens breathing during rack focus, soft natural flare from frame edge”**.

## Reglas para el director de fotografía IA
- Usa **anamorphic lens** cuando quieras que el plano se sienta narrativo, caro, estilizado o “de otro mundo”; usa **spherical lens** cuando quieras una imagen más limpia, directa y naturalista.
- Usa **45mm anamorphic 1.5x** para planos medios o retratos donde el sujeto debe sentirse cerca, pero el mundo lateral debe seguir presente.
- Usa **32mm anamorphic** cuando quieras amplitud, deformación en bordes y energía espacial; evita poner líneas arquitectónicas críticas en los extremos si no quieres curvatura visible.
- Usa **75mm anamorphic** cuando quieras menos distorsión y más retrato, conservando bokeh ovalado y separación.
- Para no alucinar en video IA, no pidas solo “cinematic widescreen”; especifica **anamorphic**, **squeeze ratio**, **aspect ratio**, **oval bokeh**, **horizontal flare**, **edge distortion** y **vignetting**.
- Si quieres flare realista, define fuente y posición: “small warm practical light near frame edge”, “cool flashlight sweeping across lens”, “light source outside frame pinging the lens”.
- Si quieres un frame ancho auténtico, pide **de-squeezed anamorphic frame** en vez de “cropped black bars”.
- Para talking heads estilizados, usa **6:5 capture with 1.5x anamorphic de-squeeze to 1.8:1 / near 16:9**, no un 2.8:1 extremo que deje demasiado aire lateral.
- Ajusta el look con el **T-stop**: abierto para más bokeh, separación y suavidad; cerrado para flares y fondos más controlados.
- Cuando el fondo tenga luces puntuales, hojas, ramas o textura fina, usa anamorphic para que el desenfoque revele carácter visible.
- En prompts, combina lente y composición: **“medium close-up, eye-level angle, 45mm anamorphic, shallow depth of field, oval bokeh, soft horizontal flare”**.
- No uses anamorphic solo por el flare; verifica que el plano también aproveche campo horizontal, profundidad, distorsión y bokeh.

## Errores comunes que evita o menciona
- Creer que recortar un 16:9 spherical a **2.35:1** equivale a rodar anamorphic.
- Olvidar hacer **de-squeeze / unsqueeze** en post y dejar la imagen estirada verticalmente.
- Pedir “anamorphic” sin indicar **1.5x**, **2x**, **aspect ratio** o rasgos ópticos concretos.
- Usar lentes anamorphic demasiado limpios si se busca carácter: sin distorsión, sin vignetting y sin bokeh ovalado, el look pierde parte de su identidad.
- Asociar anamorphic únicamente con flares tipo J.J. Abrams; el video recalca que el bokeh, la distorsión y el campo horizontal son igual o más importantes.
- Ignorar que cada focal distorsiona distinto: el 32mm no se comporta como el 75mm.
- Usar un aspect ratio ultra ancho para todo, incluso cuando un **1.8:1 / near 16:9 anamorphic** sería mejor para entrevistas o talking heads.
- No controlar la fuente de luz del flare: el color, tamaño, posición en frame y **T-stop** cambian el resultado.