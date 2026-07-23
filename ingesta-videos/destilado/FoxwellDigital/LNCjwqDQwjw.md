# Shopify CAPI: Insights from Founders on Standard Integration vs. Third-Party Tools
**Fuente:** FoxwellDigital | https://youtu.be/LNCjwqDQwjw

## Qué enseña (2-3 líneas)
Compara la integración nativa de Shopify CAPI con herramientas de terceros (Blot Out, Edge Tag, Popsicle, Black Crow AI) para mejorar el event match quality. Explica que la integración estándar es suficiente para eventos de conversión (purchase), pero los eventos de embudo superior (view content, add to cart) tienen baja calidad de coincidencia. Recomienda evaluar si las herramientas externas realmente mueven el indicador antes de adoptarlas.

## Lecciones accionables
- **Event match quality esperado con integración nativa Shopify CAPI:** view content = 5, purchase = 7-8 promedio; otros eventos (add to cart, initiate checkout) suelen ser "terribles".
- **Para eventos de embudo superior (view content, add to cart):** la integración nativa no envía nombre, email ni parámetros de coincidencia avanzados; no es crítico porque esos eventos no requieren match perfecto.
- **Solución avanzada recomendada:** implementar CAPI personalizado con Google Tag Manager (GTM) + pixel manual para tener control total sobre los parámetros enviados.
- **Herramienta mencionada para mejorar match en embudo superior:** Black Crow AI — hace session matching: si un usuario entra, baja al embudo y vuelve después, empareja la sesión y asigna datos de etapas profundas a eventos de embudo superior.
- **Programa de referencia:** Facebook Technical Partners Program (ya no existe) — útil para conectar con ingenieros de soluciones de Meta y obtener información sobre herramientas emergentes.
- **Validación de terceros:** antes de adoptar Blot Out, Edge Tag o Popsicle, hacer prueba A/B; hay testimonios mixtos ("no movió el indicador" vs "funcionó").
- **Alternativa extrema:** si no se quiere mejorar match quality, enfocarse solo en offline conversions (conversiones offline) como métrica principal.

## Reglas para agentes
- Usa integración nativa Shopify CAPI como línea base mínima obligatoria; si no está instalada, las decisiones de optimización serán incorrectas.
- Nunca asumas que una herramienta de terceros (Blot Out, Edge Tag, Popsicle) mejorará el rendimiento sin hacer una prueba controlada con datos propios.
- Cuando implementes CAPI personalizado con GTM, prioriza el control manual de parámetros de match (name, email, phone) sobre la automatización de terceros.
- Si el event match quality de view content es bajo (ej. 5), no inviertas recursos en mejorarlo a menos que tengas una herramienta de session matching como Black Crow AI.
- Para evaluar herramientas nuevas, contacta a ex ingenieros de soluciones de Meta o revisa el blog Foxwell Founders Exclusive (artículo sobre third-party tools).

## Errores comunes que evita o menciona
- Pensar que la integración nativa de Shopify CAPI es "basura" y necesitar una herramienta externa sí o sí — el TL;DR del análisis es que no es necesariamente el caso.
- Gastar recursos en mejorar event match quality de eventos de embudo superior (view content, add to cart) cuando la integración estándar ya es aceptable para esos fines.
- Adoptar herramientas como Popsicle, Blot Out o Edge Tag sin validar si realmente mueven el indicador — hay testimonios contradictorios de founders.
- Ignorar la instalación básica de CAPI: sin ella, las decisiones basadas en datos de Meta son "malas decisiones" y la visión del rendimiento es irreal.