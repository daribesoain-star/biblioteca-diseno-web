# Google Analytics 4 click tracking - 4 methods
**Fuente:** AnalyticsMania | https://youtu.be/XanyDjEthbc

## Qué enseña
Cuatro métodos para rastrear clics en Google Analytics 4: medición mejorada automática, Google Tag Manager con triggers de clic, código personalizado con gtag, y creación de eventos directamente en la interfaz de GA4. Explica configuración técnica, parámetros y validación con Debug View.

## Lecciones accionables
- **Método 1: Medición mejorada (Enhanced Measurement)**
  - Actívala en: Admin → Data Streams → seleccionar stream web → Enhanced Measurement → ícono de engranaje.
  - Rastrea automáticamente `outbound_click` (clics a dominios externos) y `file_download` (archivos .doc, .pdf, .xls, etc.).
  - Configuración disponible: habilitar/deshabilitar outbound clicks y file downloads. No hay personalización de parámetros.
  - Los dominios listados en "Configure your domains" no se tratan como outbound.
  - Parámetros automáticos incluidos: `file_name`, `link_url`, `link_domain`, `outbound` (true/false), `page_location`.

- **Método 2: Google Tag Manager (GTM)**
  - Deshabilitar Enhanced Measurement link click features para evitar conflictos.
  - Crear trigger: Triggers → New → "Just Links" → nombrarlo (ej. "Link Click Trigger").
  - Activar Preview Mode en GTM para ver eventos `gtm.linkClick`.
  - Habilitar variables de clic: Variables → Configure → activar todas las relacionadas con clic (Click Classes, Click URL, Click Text, Click Target, Click ID).
  - Para afinar el trigger: cambiar a "Some Link Clicks" y usar condición, ej. `Click Classes` contiene `menu-link`.
  - Crear tag GA4 Event: Tags → New → Tag Configuration → Google Analytics → GA4 Event.
    - Pegar Measurement ID desde Admin → Data Streams → stream web.
    - Event name: `menu_link_click` (o el que corresponda).
    - Event Parameters: añadir `link_url` = `{{Click URL}}` y `link_text` = `{{Click Text}}` (son parámetros conocidos por GA4, no requieren configuración adicional).
    - Triggering: seleccionar el trigger de clic creado.
  - Publicar: Submit y publicar cambios; esperar 24-48 horas para ver datos en reportes.

- **Método 3: Código personalizado con gtag (sin GTM)**
  - Requiere que GA4 esté instalado con el código nativo (Google tag / gtag.js).
  - El desarrollador debe escribir un listener de clics en JavaScript que detecte clics en enlaces (`<a>` tags).
  - Comando gtag para enviar evento: `gtag('event', 'link_click', { 'link_url': ..., 'link_text': ..., 'link_classes': ... })`.
  - El listener puede capturar: `link_url`, `link_text`, `link_id`, `link_classes` (si existen en el HTML).
  - Validar con Google Analytics Debugger extension activada y Debug View en GA4.

- **Método 4: Crear eventos directamente en la interfaz de GA4**
  - Basado en eventos existentes (ej. `click` de Enhanced Measurement).
  - Ir a Admin → Events → Create event → Create.
  - Nombre del nuevo evento: ej. `social_link_click`.
  - Matching conditions:
    - `event_name` equals `click`
    - `link_domain` matches regex `linkedin\.com|facebook\.com` (usar regex simple, evitar expresiones largas/complejas que afecten rendimiento).
  - Copiar parámetros del evento original: marcar "Copy parameters from the source event".
  - El evento se activa inmediatamente para visitantes; datos visibles en reportes tras 24-48 horas.

## Reglas para agentes
- Usa Enhanced Measurement solo para rastreo básico de outbound clicks y file downloads; no intentes personalizar parámetros desde allí.
- Cuando uses GTM, deshabilita siempre las funciones de clic de Enhanced Measurement para evitar eventos duplicados o conflictos.
- En GTM, activa todas las variables de clic en Variables → Configure antes de crear triggers; si no ves valores, pide al desarrollador que añada clases o IDs a los elementos.
- Para triggers de clic en GTM, usa condiciones específicas (ej. `Click Classes contains menu-link`) en lugar de "All Link Clicks" para evitar disparos no deseados.
- En eventos creados desde interfaz GA4, nunca uses expresiones regulares largas o complejas en matching conditions; prioriza condiciones simples para no degradar el rendimiento de la página.
- Siempre valida cualquier configuración de clic con Debug View de GA4 y la extensión Google Analytics Debugger activada antes de publicar.

## Errores comunes que evita o menciona
- **No asumir que GTM rastrea clics por defecto**: los link clicks no están habilitados automáticamente; hay que crear un trigger "Just Links" explícitamente.
- **No usar variables de clic sin configurarlas**: si no ves `Click URL`, `Click Text`, etc. en GTM Preview, es porque no se habilitaron en Variables → Configure.
- **No confiar solo en Enhanced Measurement para tracking avanzado**: no permite personalizar parámetros ni filtrar por clases/IDs; para eso se necesita GTM o código personalizado.
- **No crear eventos en interfaz GA4 con condiciones demasiado complejas**: regex largas o múltiples condiciones pueden ralentizar la página; mantenerlas simples.
- **No olvidar esperar 24-48 horas** después de publicar cambios en GTM o crear eventos en interfaz para que los datos aparezcan en reportes de GA4.
- **No mezclar Enhanced Measurement con GTM sin deshabilitar funciones duplicadas**: si usas GTM para clics, desactiva outbound clicks y file downloads en Enhanced Measurement.