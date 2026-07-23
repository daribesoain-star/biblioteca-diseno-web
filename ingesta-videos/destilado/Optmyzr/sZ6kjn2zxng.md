# How to A/B Test RSAs - Responsive Search Ads
**Fuente:** Optmyzr | https://youtu.be/sZ6kjn2zxng

## Qué enseña (2-3 líneas)
Muestra dos métodos para hacer A/B testing real en Responsive Search Ads usando el framework de experimentos de Google Ads, evitando que Google mezcle assets entre control y variante. Explica cómo usar "Ad Variations" con find-and-replace y con pinning forzado para aislar el impacto de un cambio específico en headlines.

## Lecciones accionables
- Usa **Google Ads → Experimentos → Ad Variations** en lugar de crear un segundo RSA manual en el mismo grupo de anuncios.
- Para probar un cambio de texto: selecciona **"Find and replace"**, escribe el texto exacto a reemplazar (ej: "Award-winning PPC tools") y la variante (ej: "Award-winning PPC tools" → "Award-winning PPC tools" en plural). Nombra el experimento y asigna **50/50 split**.
- Para probar el efecto de **pinning**: elige **"Update text"** en lugar de find-and-replace. Allí puedes **fijar una headline específica a una posición** (ej: pin a posición 1) mientras que en el control esa headline no está fijada. Nombra el experimento (ej: "Pinning test 1") y asigna **50/50 split**.
- El método de pinning permite aislar si fijar un texto mejora el rendimiento vs dejarlo sin fijar, algo que no se puede lograr con un RSA adicional normal.
- La variación solo se activa cuando Google decide mostrar esa headline en el subasta; en ese momento se aplica el split 50/50 entre control y variante.

## Reglas para agentes
- **Usa "Ad Variations"** cuando quieras probar un cambio específico en un RSA; no crees un segundo RSA en el mismo grupo de anuncios.
- **Nunca** agregues una headline nueva a un RSA existente como método de testeo — no hay garantía de que compita directamente contra la original.
- **Nunca** crees un segundo RSA cambiando solo una headline y dejando las otras 14 iguales — Google puede mostrar las mismas headlines en ambos anuncios.
- **Siempre** asigna un **50/50 traffic split** en el experimento para obtener resultados estadísticamente válidos.
- **Siempre** nombra el experimento de forma descriptiva (ej: "Pinning test 1", "Plural test headline 3") para identificar el cambio después.

## Errores comunes que evita o menciona
- **Agregar una headline extra a un RSA existente** (si no está al máximo de 15): no garantiza que compita directamente contra la headline que quieres probar.
- **Crear un segundo RSA en el mismo grupo de anuncios** cambiando solo una headline: Google puede mostrar las mismas headlines en ambos, invalidando la comparación.
- **Asumir que el cambio se aplica siempre**: el split 50/50 solo ocurre cuando Google elige mostrar esa headline específica en la subasta; no es un split sobre todas las impresiones del anuncio.