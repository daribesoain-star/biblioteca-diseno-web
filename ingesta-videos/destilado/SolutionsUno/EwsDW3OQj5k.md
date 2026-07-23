# ✅ Best Practices for Setting up Google Ads Conversion Actions for eCommerce and Lead Generation
**Fuente:** SolutionsUno | https://youtu.be/EwsDW3OQj5k

## Qué enseña
Cómo configurar acciones de conversión en Google Ads para cuentas de eCommerce y generación de leads, diferenciando entre eventos primarios y secundarios, implementando conversiones mejoradas (enhanced conversions), y usando múltiples acciones de conversión para el mismo evento como respaldo y validación de datos.

## Lecciones accionables
- **Diferenciar eventos primarios vs secundarios:** En cuentas de eCommerce, establece la acción de conversión de "purchase" como **primaria** y eventos como "add to cart" o "checkout" como **secundarios**. Para cambiar: ve a *Conversions* > haz clic en la acción de conversión > *Edit settings* > selecciona *Primary conversion action* o *Secondary conversion action* según corresponda.
- **Configurar Enhanced Conversions:** Dentro de la acción de conversión, ve a *Edit settings* > marca la casilla de *Enhanced conversions* > selecciona la fuente (Google Tag, Google Tag Manager o Google Ads API) > guarda. Esto envía datos de primera parte como *product ID*, *country*, *language* para mejorar el aprendizaje del algoritmo.
- **Implementar al menos dos acciones de conversión para el mismo evento:** Por ejemplo, para eCommerce: (1) código de seguimiento de Google Ads, (2) código de compra de Google Shopping desde Shopify, (3) código de GA4. Para lead gen: (1) formulario de lead, (2) código desde WordPress. Esto permite validar datos y tener respaldo si falla una.
- **Configurar una cuarta acción de conversión opcional:** Usa Google Tag Manager (GTM) como fuente adicional para el mismo evento de compra, ya que GTM y el código de compra de Shopify son los más confiables según la experiencia del ponente.
- **Ir a configuración de conversiones:** *Tools and settings* > *Conversions* > *Settings* para elegir la fuente de seguimiento (Google Tag, GTM o API).
- **Para lead generation:** Configura acciones separadas para *lead form submission* y *phone call leads*, cada una con al menos dos métodos de seguimiento (ej. formulario nativo + WordPress).

## Reglas para agentes
- Usa **solo la acción de "purchase" como primaria** cuando el objetivo principal de la cuenta sea rastrear compras; todos los demás eventos (add to cart, checkout) deben ser secundarios.
- **Nunca configures todas las acciones de conversión como primarias** si solo quieres optimizar para compras; esto envía señales incorrectas al algoritmo de Google.
- **Siempre implementa al menos dos acciones de conversión para el mismo evento** (ej. purchase) para tener respaldo y detectar fallos de seguimiento.
- **Activa Enhanced Conversions** en cada acción de conversión primaria para mejorar la precisión del targeting y la creación de audiencias similares.
- **Ignora las acciones de conversión creadas automáticamente** que no puedan cambiarse a secundarias; concéntrate en las que tú configures manualmente.

## Errores comunes que evita o menciona
- **Crear acciones de conversión para cada evento (purchase, add to cart, checkout) y dejarlas todas como primarias:** Esto confunde al algoritmo de Google, que no sabe por qué evento optimizar. Solo la compra debe ser primaria si ese es el objetivo.
- **Tener una sola acción de conversión para el evento principal:** Si falla (ej. código de seguimiento roto), se pierden todos los datos. Tener al menos dos (ej. Google Ads + Shopify + GA4) permite validar y tener respaldo.
- **No configurar Enhanced Conversions:** Se pierde la oportunidad de enviar datos de primera parte (product ID, país, idioma) que mejoran el aprendizaje del algoritmo y la calidad de las audiencias.
- **Ignorar la diferencia entre conversiones primarias y secundarias:** No ajustar esta configuración lleva a que el algoritmo optimice para eventos irrelevantes (como add to cart) en lugar de compras.
- **No usar Google Tag Manager como fuente adicional:** GTM es una de las opciones más confiables para seguimiento de conversiones, según la experiencia del ponente.