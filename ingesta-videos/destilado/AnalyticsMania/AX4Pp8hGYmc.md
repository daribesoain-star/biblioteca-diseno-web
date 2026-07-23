# Custom dimensions in Google Analytics 4
**Fuente:** AnalyticsMania | https://youtu.be/AX4Pp8hGYmc

## Qué enseña
Cómo crear e implementar dimensiones personalizadas (custom dimensions) en Google Analytics 4 usando Google Tag Manager, cubriendo los tres alcances (user, event, item) y el registro en la interfaz de GA4. Incluye un caso práctico de seguimiento de formularios Contact Form 7 con parámetros adicionales como form ID.

## Lecciones accionables
- **Crear una variable de Data Layer en GTM para capturar el parámetro personalizado:**
  - Ir a `Variables` > `Nueva` > `Configuración de variable` > `Variable de la capa de datos`
  - En "Nombre de la variable de la capa de datos", ingresar exactamente el nombre del parámetro (ej: `formID`)
  - Guardar la variable (ej: "DLV - formID")

- **Configurar una etiqueta de evento GA4 con parámetros personalizados:**
  - Crear nueva etiqueta: `Etiqueta nueva` > `Configuración de etiqueta` > `Google Analytics: evento GA4`
  - En "ID de medición": usar una variable constante con el Measurement ID (ej: `G-XXXXXXXXXX`)
  - En "Nombre del evento": escribir el nombre del evento (ej: `form_submission`)
  - Desplegar "Parámetros del evento" > `Añadir parámetro`
    - Nombre del parámetro: `formID` (exactamente como se enviará)
    - Valor: seleccionar la variable de data layer creada (ej: `DLV - formID`)
  - En "Desencadenamiento": crear un disparador de tipo `Evento personalizado` con nombre del evento exacto (ej: `CF7 submission`)
  - Guardar la etiqueta

- **Registrar la dimensión personalizada en GA4:**
  - Ir a `Administrar` > `Definiciones personalizadas` > `Crear dimensión personalizada`
  - Nombre de la dimensión: (ej: "Form ID")
  - Ámbito: seleccionar `Evento` (para event-scoped), `Usuario` (para user-scoped) o `Elemento` (para item-scoped)
  - Parámetro del evento: escribir exactamente el nombre del parámetro enviado (ej: `formID`)
  - Guardar

- **Para dimensiones de ámbito "usuario" (user-scoped):**
  - Crear una variable de tipo `Configuración de eventos de Google` (Google Tag Event Settings)
  - En "Propiedades de usuario de Google Analytics", añadir:
    - Nombre de la propiedad: (ej: `pricing_plan`)
    - Valor: variable de data layer que contenga el valor (ej: `DLV - pricing_plan`)
  - Asignar esta variable de configuración a todas las etiquetas GA4 (configuración y eventos) en "Configuración de eventos compartida"
  - Registrar en GA4 como dimensión personalizada con ámbito `Usuario` y el mismo nombre de parámetro

- **Para dimensiones de ámbito "elemento" (item-scoped):**
  - Solo funcionan con eventos de e-commerce estándar (purchase, add_to_cart, begin_checkout, etc.)
  - El desarrollador debe incluir el parámetro personalizado dentro del array `items` en el data layer
  - Ejemplo de estructura en data layer: `items: [{ item_id: "123", item_name: "Camiseta", size: "M" }]`
  - Registrar en GA4 como dimensión personalizada con ámbito `Elemento` y el nombre exacto del parámetro (ej: `size`)

- **Verificar en DebugView de GA4:**
  - Ir a `Administrar` > `Vista de depuración` (Debug View)
  - Seleccionar el evento enviado y comprobar que el parámetro personalizado aparece en los detalles

- **Publicar cambios en GTM:**
  - Ir a `Enviar` (Submit) en GTM, completar los pasos y publicar el contenedor

- **Esperar 24 horas** para que los datos aparezcan en los informes estándar de GA4

- **Crear informe en Explorar (Explore):**
  - Ir a `Explorar` > `En blanco`
  - En "Dimensiones": añadir la dimensión personalizada (aparece en la sección "Personalizado")
  - En "Métricas": añadir `Recuento de eventos`
  - Aplicar filtro: `Nombre del evento` coincide exactamente con el nombre del evento personalizado (ej: `form_submission`)

## Reglas para agentes
- Usa el nombre exacto del parámetro (case-sensitive) tanto en GTM como al registrar la dimensión en GA4; cualquier discrepancia rompe el mapeo
- Siempre asigna la variable de configuración de eventos (event settings variable) a TODAS las etiquetas GA4, incluyendo la de configuración (Google Tag), cuando uses dimensiones de ámbito usuario
- Para dimensiones de ámbito evento, envía el parámetro solo con la etiqueta del evento específico, no con todos los eventos
- Nunca uses el mismo nombre de parámetro para dos dimensiones con distinto ámbito en la misma propiedad GA4
- Espera mínimo 24 horas después de registrar una dimensión personalizada antes de buscar los datos en informes estándar
- Usa DebugView para validar que el parámetro se envía correctamente antes de registrar la dimensión en GA4
- Para dimensiones de ámbito elemento, asegúrate de que el parámetro esté dentro del array `items` en el data layer, no fuera de él

## Errores comunes que evita o menciona
- **No registrar la dimensión en GA4:** Enviar el parámetro personalizado no es suficiente; hay que crearla en `Administrar > Definiciones personalizadas > Crear dimensión personalizada`
- **Error de ámbito incorrecto:** Usar ámbito "Evento" cuando se necesita "Usuario" o viceversa; el ámbito determina qué eventos heredan el valor
- **No incluir la variable de configuración en todas las etiquetas:** Para dimensiones de usuario, la variable de configuración de eventos debe asignarse a la etiqueta de configuración GA4 y a todas las etiquetas de evento
- **Confundir "Parámetro del evento" con "Nombre de la dimensión":** En el registro de GA4, el campo "Parámetro del evento" debe coincidir exactamente con el nombre del parámetro enviado desde GTM, no con el nombre visible de la dimensión
- **No esperar el tiempo de procesamiento:** Los datos de dimensiones personalizadas pueden tardar hasta 24 horas en aparecer en informes estándar
- **Usar enhanced measurement para formularios sin validación:** El autor menciona que los eventos de formulario de enhanced measurement son "poco fiables" porque pueden dispararse incluso con envíos incorrectos; recomienda usar código personalizado (custom HTML) para tracking de formularios exitosos
- **No filtrar por evento específico en informes:** Al crear informes en Explorar, si no se filtra por el nombre del evento que contiene la dimensión personalizada, aparecerán muchos valores "not set" de otros eventos que no incluyen ese parámetro