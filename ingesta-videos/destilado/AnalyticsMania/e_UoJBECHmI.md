# Conversion Linker in Google Tag Manager
**Fuente:** AnalyticsMania | https://youtu.be/e_UoJBECHmI

## Qué enseña (2-3 líneas)
Explica qué es el Conversion Linker de Google Ads en Google Tag Manager, cómo crea una cookie de primera parte con el valor del parámetro `GCLID` (Google Click ID) al hacer clic en un anuncio, y cómo configurarlo para tracking de conversiones estándar, persistencia entre páginas, cross-domain tracking y server-side tagging.

## Lecciones accionables
- **Crear la etiqueta Conversion Linker:** En GTM, ve a "Nueva etiqueta" → "Configuración de etiqueta" → "Google Ads" → "Conversion Linker". En "Activación", selecciona "Todas las páginas". Nombra la etiqueta (ej. "Conversion Linker - All Pages") y guarda.
- **Verificar funcionamiento en modo Preview:** Usa una URL de prueba que contenga el parámetro `?gclid=abc123`. En modo Preview, abre DevTools → Application → Cookies → selecciona tu dominio. Verás dos cookies que empiezan con `gcl_`; una contiene el valor `abc123`.
- **Habilitar "Enable linking on all page URLs":** Actívalo si el usuario llega desde un anuncio sin consentimiento en la primera página, pero da consentimiento en una página posterior. Requiere tener implementado Google Consent Mode.
- **Configurar cross-domain tracking:** Si el journey del usuario abarca dominios completamente diferentes (ej. `website1.com` y `website2.com`), en la etiqueta Conversion Linker, en "Cross-domain tracking", ingresa los dominios separados por coma (ej. `gtmplayground.com, gtmcoursemyshopify.com`). Asegúrate de que "Accept incoming clinker parameters" esté marcado.
- **Decoración de URL con fragment en lugar de query parameter:** Si el sitio web no acepta parámetros de URL con `?` (casos raros), cambia "URL decoration format" a "Fragment". Esto añadirá el parámetro con `#` en lugar de `?`.
- **Decorar formularios:** Si el usuario se mueve entre dominios mediante envío de formulario, activa "Decorate forms". Nota: no todos los formularios son compatibles.
- **Configuración avanzada de cookies:** En "Advanced Cookie Settings", puedes cambiar el prefijo de las cookies (por defecto `gcl_`), limitar el dominio de la cookie a un subdominio específico, restringir a rutas de página concretas (ej. solo versión en inglés), o añadir flags como `SameSite=None; Secure`.
- **Server-side tagging:** Si usas server-side GTM, coloca la etiqueta Conversion Linker en el contenedor server-side (no en el cliente). En el servidor, crea una etiqueta "Conversion Linker" con activación "All Pages". El servidor leerá el `GCLID` de la solicitud GA4 y creará la cookie de primera parte en el navegador del visitante. No necesitas Conversion Linker en el contenedor web si usas server-side.

## Reglas para agentes
- **Usa** la etiqueta Conversion Linker en GTM **siempre que** tengas etiquetas de Google Ads en el mismo contenedor y estés usando GTM.
- **Nunca** omitas la etiqueta Conversion Linker si respondiste "sí" a ambas preguntas: "¿Usas GTM?" y "¿Rastreas conversiones de Google Ads con GTM?".
- **Activa** "Enable linking on all page URLs" **solo si** tienes Consent Mode implementado; de lo contrario, déjalo desactivado.
- **Ingresa** dominios separados por coma en "Cross-domain tracking" **solo cuando** el journey del usuario cruce dominios completamente diferentes (no subdominios del mismo dominio).
- **Mantén** "Accept incoming clinker parameters" marcado **siempre que** uses cross-domain tracking.
- **Usa** "URL decoration format" = "Fragment" **solo si** el sitio web no acepta parámetros de URL con `?` (casos extremadamente raros).
- **No toques** la sección "Advanced Cookie Settings" a menos que tengas un requisito específico (99% de los casos no la necesitas).
- **Si usas server-side tagging**, coloca Conversion Linker **solo en el contenedor server-side**; no lo dupliques en el contenedor web.

## Errores comunes que evita o menciona
- **No instalar Conversion Linker cuando es necesario:** Si usas GTM y tienes etiquetas de Google Ads, es obligatorio crear la etiqueta Conversion Linker; de lo contrario, el `GCLID` no se persistirá en una cookie y las conversiones no se atribuirán correctamente.
- **Confundir subdominios con dominios diferentes:** `blog.website.com` y `www.website.com` son subdominios del mismo dominio; no necesitan cross-domain tracking. Solo se necesita para dominios completamente distintos (ej. `website1.com` y `website2.com`).
- **Perder el `GCLID` entre páginas si falta consentimiento:** Si el usuario llega sin consentimiento y luego lo otorga en otra página, sin "Enable linking on all page URLs" el `GCLID` se pierde. Esta opción solo funciona con Consent Mode.
- **Usar query parameters en sitios que no los soportan:** En casos raros, los parámetros con `?` rompen la funcionalidad del sitio; usar fragment (`#`) como alternativa.
- **Duplicar Conversion Linker en cliente y servidor:** Si usas server-side tagging, no necesitas Conversion Linker en el contenedor web; solo en el servidor.