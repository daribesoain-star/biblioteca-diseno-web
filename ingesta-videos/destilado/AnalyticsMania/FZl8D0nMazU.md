# 10 Google Tag Manager best practices
**Fuente:** AnalyticsMania | https://youtu.be/FZl8D0nMazU

## Qué enseña
Cómo estructurar cuentas y contenedores de GTM, nombrar tags/triggers/variables de forma consistente, gestionar permisos, usar variables constantes, optimizar velocidad de página con server-side tagging, y validar implementaciones con preview mode y network requests.

## Lecciones accionables
- **Estructura de cuenta:** 1 cuenta GTM = 1 negocio. El cliente debe ser propietario de la cuenta GTM, no el agencia. El contenedor puede ser para 1 sitio o varios (depende del caso).
- **Naming convention recomendada para tags:** `[VENDOR]_[TIPO]_[EVENTO/DESCRIPCIÓN]`  
  Ejemplo: `GA4 Event - form_submission` o `Google Ads - contact_form_submission`.  
  Para variables: empezar con el tipo de variable, ej: `Data Layer Variable - transaction_id`.
- **Uso de constant variables:** Crear una variable constante con el `measurement ID` de GA4 y referenciarla en todos los tags en lugar de escribir el ID manualmente.  
  Pasos: Variables > Nueva > Variable configuration > Constant > pegar ID > nombrar (ej: `Constant - GA4 Measurement ID`) > Guardar. Luego en cada tag, reemplazar el ID manual por `{{Constant - GA4 Measurement ID}}`.
- **Server-side tagging:** Enviar datos desde el navegador a tu propio servidor (server-side GTM) y desde ahí reenviar a múltiples vendors (GA4, Facebook, etc.). Reduce scripts en cliente, mejora page speed, evita ad blockers, controla datos PII. No recomendado para pequeños negocios sin anuncios.
- **Solicitar IDs a desarrolladores:** Pedir que agreguen `id` a elementos clave (formularios, botones CTA) para usar variables como `Form ID` o `Click ID`. Ejemplo: `<form id="contact_form">`.
- **Testing completo:**  
  1. Activar Preview & Debug mode en GTM.  
  2. Verificar que los tags se disparen correctamente y ver los datos en la interfaz de preview.  
  3. Abrir DevTools > Network > filtrar por `collect` (para GA4) y revisar payload: `event_name`, `document_location`, etc.  
  4. En GA4: ir a Debug View en Admin > confirmar que los eventos aparecen.  
  5. Esperar 24-48h y verificar reports estándar o Explorations.

## Reglas para agentes
- **Usa** 1 cuenta GTM por negocio, no por sitio web.
- **Nunca** permitas que una agencia sea propietaria de la cuenta GTM del cliente; el cliente debe tener admin rights.
- **Siempre** prueba en Preview & Debug mode antes de publicar cualquier cambio.
- **Nunca** agregues código JavaScript de fuentes desconocidas sin revisarlo primero con un desarrollador del sitio.
- **Usa** constant variables para IDs de medición (measurement ID, conversion ID, etc.) en lugar de valores hardcodeados.
- **Siempre** verifica el payload de network requests (filtrar por `collect` en GA4) y el Debug View en la herramienta final.
- **Nunca** otorgues permisos de publicación a usuarios sin suficiente conocimiento de GTM.

## Errores comunes que evita o menciona
- **Mala estructura de cuenta:** Agencia dueña de la cuenta GTM → cliente queda "secuestrado" si la relación termina.
- **Naming inconsistente:** Tags llamados "contact" sin especificar si es evento de formulario, listener de clics, etc. Dificulta la gestión cuando el contenedor crece (>50-100 tags).
- **Permisos excesivos:** 10-20 personas con admin access sin los conocimientos necesarios.
- **Ignorar page speed:** Agregar múltiples píxeles (LinkedIn, Facebook, GA4, Google Ads) sin medir impacto. Usar webpagetest.org antes y después de cambios.
- **Código JavaScript no revisado:** Insertar código de tutoriales desconocidos que rompe la interfaz del producto SaaS, causando pérdida de ingresos.
- **Publicar sin testear:** No usar preview mode ni verificar network requests y destino final (Debug View + reports).