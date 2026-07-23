# Track many forms with one Thank You page (with Google Tag Manager)
**Fuente:** AnalyticsMania | https://youtu.be/GTPQcaIPzds

## Qué enseña
Cómo distinguir en Google Analytics 4 qué formulario específico fue enviado cuando múltiples formularios redirigen a la misma página de agradecimiento. Explica tres métodos técnicos para capturar esa información usando Google Tag Manager: mediante el referrer, mediante un parámetro URL personalizado, y mediante un dataLayer push.

## Lecciones accionables
- **Método 1: Usar el referrer (URL de la página anterior)**
  - En GTM, ve a **Variables** → **Configurar** → habilita **Referrer**
  - Crea una variable de tipo **URL** → **Componente: Path** → en **Más ajustes** → **Origen de URL: Referrer**
  - Nombra la variable, ej: `url refer path`
  - En tu etiqueta de evento GA4, añade un parámetro de evento, ej: `form_url` → asigna la variable `url refer path`
  - En GA4: **Admin** → **Definiciones personalizadas** → **Crear dimensión personalizada** → Nombre: `form_url` → Ámbito: **Evento** → Parámetro de evento: `form_url` (exactamente como se envió)
  - Publica en GTM y espera 24-48 horas para que el dato aparezca en reportes

- **Método 2: Parámetro URL personalizado en la página de agradecimiento**
  - Pide al desarrollador que añada un parámetro a la URL de thank you, ej: `?form_name=demo_form_1`
  - En GTM, crea variable de tipo **URL** → **Componente: Parámetro de consulta** → **Clave de consulta: form_name**
  - Nombra la variable, ej: `query parameter form_name`
  - En la etiqueta de evento GA4, usa esta variable como valor del parámetro `form_url`
  - No necesitas registrar nueva dimensión personalizada si ya lo hiciste en el método 1

- **Método 3: DataLayer push desde el desarrollador**
  - El desarrollador debe implementar en la página de agradecimiento:
    ```javascript
    window.dataLayer.push({
      'event': 'form_submission',
      'form_name': 'demo_form_1'  // debe ser dinámico
    });
    ```
  - En GTM, crea variable de tipo **Variable de la capa de datos** → **Nombre de variable: form_name**
  - Crea un **disparador** nuevo → **Evento personalizado** → **Nombre del evento: form_submission**
  - En la etiqueta de evento GA4, cambia el disparador de "Page View" a este nuevo evento personalizado
  - Usa la variable `form_name` como valor del parámetro `form_url`

- **Configuración base del disparador de página de agradecimiento**
  - En GTM: **Disparadores** → **Nuevo** → **Configuración: Page View** → **La página contiene: /pages/thank-you** (ajusta según tu URL)
  - Nombra el disparador, ej: `thank you page`

- **Etiqueta de evento GA4**
  - Tipo: **Google Analytics: Evento GA4**
  - **ID de medición:** copiado desde GA4 → Admin → Flujos de datos → tu web → copiar ID
  - **Nombre del evento:** `form_submission`
  - **Parámetros de evento:** `form_url` → variable correspondiente
  - **Disparador:** el creado para la thank you page o el evento personalizado

## Reglas para agentes
- Usa el método del **referrer** solo si el desarrollador confirma que no hay restricciones de seguridad que lo bloqueen
- Cuando uses parámetros URL, el nombre del parámetro (query key) debe coincidir **exactamente** entre la URL y la variable de GTM
- Para dataLayer push, el nombre del evento en el código JavaScript debe coincidir **exactamente** con el nombre del evento personalizado en el disparador de GTM
- Nunca uses el mismo nombre de parámetro de evento (`form_url`) con diferentes valores sin antes registrar la dimensión personalizada en GA4
- Siempre prueba en **modo preview** de GTM antes de publicar: verifica que la variable devuelva el valor correcto en la pestaña **Variables**
- Después de publicar, espera **24-48 horas** antes de buscar la dimensión personalizada en reportes de GA4

## Errores comunes que evita o menciona
- **Referrer vacío o sin información útil:** debido a configuraciones de seguridad del sitio web, el referrer puede no contener datos; en ese caso, usa método 2 o 3
- **Referrer solo muestra la página inmediatamente anterior:** no sirve para rastrear formularios si el usuario navegó entre páginas antes de llegar al thank you
- **No registrar la dimensión personalizada en GA4:** sin esto, el parámetro `form_url` no aparecerá en los reportes, solo en Debug View
- **Copiar y pegar el código dataLayer sin hacerlo dinámico:** el desarrollador debe reemplazar `'demo_form_1'` con el nombre real del formulario; copiar el snippet tal cual no funciona
- **No coincidir exactamente los nombres de parámetros:** entre GTM, GA4 y el código del desarrollador, cualquier diferencia de mayúsculas/minúsculas o caracteres rompe el tracking