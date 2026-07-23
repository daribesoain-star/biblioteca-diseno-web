# Google Analytics Client ID vs User ID
**Fuente:** AnalyticsMania | https://youtu.be/0nGu1sHZDt4

## Qué enseña (2-3 líneas)
Explica la diferencia entre el Client ID (generado aleatoriamente por Google Analytics y almacenado en cookies) y el User ID (identificador propio del sitio, basado en login). Muestra cómo el Client ID se duplica por dispositivo/navegador, inflando métricas, y cómo el User ID resuelve esto solo si el sitio tiene sistema de autenticación.

## Lecciones accionables
- Para ver el Client ID en Chrome: clic en tres puntos → Más herramientas → Herramientas para desarrolladores → pestaña Application → expandir Cookies → seleccionar el dominio → filtrar por `_ga` → localizar cookie `_ga` → el valor contiene dos números grandes separados por un punto (ej: `123456789.987654321`), donde el primero es el Client ID y el segundo es el timestamp de creación.
- Para ver el Client ID en requests salientes: ir a Herramientas para desarrolladores → pestaña Network → filtrar por `collect` → recargar la página → buscar el parámetro `cid` en la URL de la request; ese valor es el Client ID.
- Para implementar User ID: requerir que el sitio tenga login; pedir al desarrollador que envíe el ID del usuario al dataLayer (ej: evento `login` o `user_id` con el valor). Luego en Google Tag Manager: crear una variable de dataLayer que capture ese valor → en la etiqueta de GA4, incluir el parámetro `user_id` usando esa variable.
- El User ID solo funciona si el mismo usuario está logueado en todos los dispositivos/navegadores que usa; de lo contrario, GA4 tratará cada dispositivo como un visitante diferente.
- Si se usa un CMS o plataforma de ecommerce con plugin/integración de GTM, puede que el User ID ya esté disponible en el dataLayer sin necesidad de desarrollo adicional.

## Reglas para agentes
- Usa el parámetro `cid` (Client ID) para identificar visitantes no autenticados; nunca lo trates como identificador único entre dispositivos.
- Usa el parámetro `user_id` solo cuando el usuario esté autenticado en el sitio; nunca lo envíes vacío o con valores genéricos.
- Nunca asumas que un mismo Client ID en diferentes dispositivos corresponde al mismo usuario; siempre verifica si hay un User ID disponible.
- Si el sitio no tiene sistema de login, nunca implementes User ID; usa solo Client ID y acepta la inflación de métricas.
- Para depurar, siempre revisa la cookie `_ga` y el parámetro `cid` en las requests de red antes de concluir que el Client ID es correcto.

## Errores comunes que evita o menciona
- **Métrica de usuarios inflada por defecto:** el mismo usuario con diferentes navegadores o dispositivos genera diferentes Client IDs, haciendo que GA4 cuente múltiples visitantes únicos en lugar de uno.
- **Asumir que User ID está disponible sin login:** el User ID solo funciona si el sitio tiene autenticación y el desarrollador lo envía al dataLayer; no está disponible por defecto en la mayoría de sitios.
- **Confundir Client ID con User ID:** el Client ID es aleatorio y generado por GA; el User ID es el identificador propio del sitio (ej: ID de base de datos). No son intercambiables.
- **Olvidar que eliminar cookies genera un nuevo Client ID:** si se borran las cookies del navegador, GA4 crea un nuevo Client ID, tratando al mismo usuario como un visitante nuevo.