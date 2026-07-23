# Google Ads Not Converting - Discover Why (and How to Fix It)
**Fuente:** GrowMyAds | https://youtu.be/1kN74gkvXbU

## Qué enseña (2-3 líneas)
Este video enseña un proceso de diagnóstico paso a paso para identificar por qué una campaña de Google Ads no genera conversiones, cubriendo desde problemas técnicos de tracking hasta fallos en la oferta. Proporciona una checklist accionable de 7 pasos más un bonus para auditar y solucionar la falta de conversiones.

## Lecciones accionables
- **Paso 1: Verificar el tag de conversión en Google Ads**
  - Ir a: `Objetivos > Resumen de conversiones` y confirmar que el tag esté activo y sin problemas activos.
  - Hacer clic en el tag específico, revisar `Configuración` y `Páginas web` para detectar errores de disparo.
  - Usar **Google Tag Assistant** (extensión de Chrome): ejecutarlo en la página de confirmación (thank you page o purchase page) para verificar que el tag se dispare correctamente.
- **Paso 2: Revisar la segmentación por palabras clave**
  - Ir a: `Información e informes > Términos de búsqueda` dentro de la campaña.
  - Analizar si los términos de búsqueda que activan los anuncios son relevantes para la oferta.
  - Si se usan palabras clave en **Broad Match**, revisar si están generando tráfico irrelevante (ejemplo del video: vender piezas de tractor pero recibir tráfico por "tractores verdes grandes" que no se venden).
- **Paso 3: Verificar que los anuncios funcionen correctamente**
  - Hacer clic en el anuncio directamente desde la cuenta de Google Ads.
  - Confirmar que la URL de destino (landing page) esté activa y no devuelva un error 404 (incluso si Google no lo reporta).
- **Paso 4: Auditar la landing page y el funnel de conversión**
  - Si es e-commerce: navegar hasta la página de producto y simular el proceso de compra completo.
  - Si es generación de leads: rellenar el formulario o llamar al número de teléfono.
  - Verificar que no haya errores técnicos en el flujo (botones rotos, formularios que no envían, etc.).
- **Paso 5: Revisar otros canales de tráfico en GA4**
  - Ir a Google Analytics 4 (GA4) y analizar el rendimiento de tráfico orgánico, directo, social y email.
  - Si otros canales también muestran caídas en conversiones, el problema es del sitio web, no solo de Google Ads.
  - Si otros canales están bien, el problema es específico de Google Ads.
- **Paso 6: Revisar la configuración de la campaña**
  - Verificar la segmentación geográfica (ejemplo del video: una campaña que apuntaba a todo el mundo en lugar de solo EE.UU.).
  - Revisar todas las configuraciones de campaña (redes, dispositivos, programación, etc.) para asegurar que estén alineadas con el objetivo.
- **Paso 7: Preguntar al equipo de desarrollo sobre cambios recientes en el sitio web**
  - Consultar: "¿Qué cambios se han hecho en el sitio web en el período X?" (desde que las conversiones se detuvieron).
  - Posibles causas: scripts de cookies mal implementados, cambios SEO que rompieron la atribución, modificaciones en URLs de tracking.
- **Paso 8 (último recurso): Evaluar honestamente la oferta**
  - Preguntarse: ¿Es mi oferta competitiva? ¿Es clara? ¿Tiene sentido para el usuario que busca esas palabras clave?
  - Comparar con la competencia: precio, propuesta de valor, call to action.
  - Si la oferta es mala, no se convertirá sin importar el volumen de tráfico.
- **Bonus: Probar el flujo completo haciendo una conversión real**
  - Buscar en Google una palabra clave que active tu anuncio, hacer clic en él y completar una compra o formulario.
  - Si eres agencia/freelancer: usar códigos de descuento del cliente o hacer la compra y solicitar reembolso inmediato (avisando al equipo de soporte).
  - Esperar 24 horas y verificar que la conversión aparezca en la cuenta de Google Ads.

## Reglas para agentes
- Usa **Google Tag Assistant** para verificar el disparo de tags de conversión en páginas de confirmación antes de asumir que el tracking funciona.
- Cuando revises términos de búsqueda, filtra por palabras clave irrelevantes y agrégalas como **palabras clave negativas** inmediatamente.
- Nunca asumas que un anuncio funciona solo porque Google no muestra error 404; haz clic manualmente en el anuncio desde la cuenta.
- Si otros canales de tráfico (orgánico, directo, social) muestran caídas de conversión, prioriza la auditoría del sitio web antes de modificar la campaña de Google Ads.
- Cuando audites campañas sin conversiones, verifica siempre la segmentación geográfica primero: un error común es apuntar a países no deseados.
- Antes de concluir que el problema es la oferta, descarta técnicamente los pasos 1 al 7 (tracking, keywords, anuncios, landing page, otros canales, configuración, cambios web).
- Si haces una conversión de prueba para verificar tracking, espera al menos 24 horas antes de revisar si el dato aparece en la cuenta.

## Errores comunes que evita o menciona
- **Error #1:** Asumir que el tag de conversión funciona sin verificarlo con Google Tag Assistant.
- **Error #2:** Usar palabras clave broad match sin revisar los términos de búsqueda reales, enviando tráfico irrelevante.
- **Error #3:** No hacer clic manual en los anuncios para confirmar que la landing page esté activa (Google no siempre detecta páginas caídas).
- **Error #4:** Ignorar problemas en el funnel de la landing page (formularios rotos, botones que no funcionan, procesos de pago fallidos).
- **Error #5:** No comparar con otros canales de tráfico; una caída general indica problema de sitio web, no solo de Google Ads.
- **Error #6:** Configurar mal la segmentación geográfica (ejemplo: apuntar a todo el mundo cuando solo se vende en un país).
- **Error #7:** No preguntar al equipo de desarrollo sobre cambios recientes en el sitio web que puedan haber roto la atribución.
- **Error #8:** Invertir en tráfico pagado cuando la oferta no es competitiva o no está clara; el video advierte: "no gastes dinero, primero arregla la oferta".