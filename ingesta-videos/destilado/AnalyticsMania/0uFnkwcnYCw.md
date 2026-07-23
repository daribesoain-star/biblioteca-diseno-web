# LinkedIn Conversions API with Google Tag Manager (LinkedIn CAPI) in 2026
**Fuente:** AnalyticsMania | https://youtu.be/0uFnkwcnYCw

## Qué enseña
Configurar LinkedIn Conversions API (CAPI) usando Google Tag Manager (GTM) de servidor, con dos enfoques: solo servidor (opción 1) o híbrido servidor + navegador con LinkedIn Insight Tag (opción 2). Cubre desde la instalación de plantillas Stape, obtención de tokens y IDs, hasta la deduplicación de eventos mediante event_id.

## Lecciones accionables
- **Opción 1 (solo servidor):** Instala solo Google Analytics (GA4) en el contenedor web; el contenedor servidor envía datos a LinkedIn CAPI. Ideal para rendimiento de página.
- **Opción 2 (híbrida):** Agrega LinkedIn Insight Tag en el contenedor web + LinkedIn CAPI en el servidor. Requiere dos conversiones separadas en LinkedIn Campaign Manager y event_id coincidente para deduplicación.
- **Obtener Access Token:** Ve a LinkedIn Campaign Manager > Medición > Insights > Administrar fuentes > Google Tag Manager > Generar token. Copia el token.
- **Obtener Conversion ID (Rule ID):** Crea una conversión en LinkedIn Campaign Manager > Medición > Seguimiento de conversiones > Crear conversión. Selecciona "API directa". El ID está en la URL después de `/conversions/`.
- **Obtener Partner ID:** LinkedIn Campaign Manager > Medición > Insights > Administrar fuentes > Insight Tag > Opción Tag Manager > Copiar Partner ID.
- **Configurar plantilla Stape LinkedIn CAPI en servidor:** Ve a Plantillas > Buscar en galería "LinkedIn" > Seleccionar plantilla Stape > Agregar al espacio de trabajo.
- **Configurar tag Page View en servidor:** Tipo "Conversions API Tag" > Modo "Page View" > Disparador: client_name = "G4" AND event_name = "page_view".
- **Configurar tag Conversion en servidor:** Tipo "Conversions API Tag" > Modo "Conversion" > Access Token (usar variable constante) > Rule ID (ID de conversión) > Disparador: client_name = "G4" AND event_name = "purchase".
- **Enviar email del usuario (opcional):** En contenedor web, crea variable "User Provided Data" con email desde dataLayer (clave "user_email"). En el tag GA4 de compra, agrega parámetro "user_data" con esa variable. El tag Stape lo captura automáticamente.
- **Enviar email manualmente:** En tag servidor, en "User IDs Override" > "Add Property" > "email" > Insertar variable con email en texto plano (la plantilla lo hashea automáticamente).
- **Deduplicación con event_id (opción 2):**
  1. En contenedor web, instala plantilla "Unique Event ID" de Stape desde galería.
  2. En LinkedIn Insight Tag de compra, usa esa variable en campo "Event ID".
  3. En tag GA4 de compra, agrega parámetro "event_id" con la misma variable.
  4. En tag servidor LinkedIn CAPI, en "Event Data Override" > "event_id", usa variable tipo "Event Data" con clave "event_id".
- **Probar con LinkedIn click ID:** Para que funcione la atribución, la URL de prueba debe contener `?li_fat_id=VALOR_CUALQUIERA`. Esto permite que el tag Page View cree la cookie necesaria.
- **Verificar envío:** En vista previa del servidor, revisa la respuesta HTTP del tag LinkedIn: código 201 indica éxito.
- **Publicar cambios:** Una vez probado, publica tanto el contenedor web como el servidor.

## Reglas para agentes
- Usa la plantilla Stape para LinkedIn CAPI en el contenedor servidor; no uses la integración directa de LinkedIn Campaign Manager que crea tags automáticos.
- Cuando crees una conversión en LinkedIn para servidor, selecciona siempre "API directa" como método de instalación, no "Google Tag Manager".
- Nunca envíes el email del usuario hasheado en el campo "email" de "User IDs Override"; la plantilla Stape lo hashea automáticamente, así que envía texto plano.
- En opción 2, asegúrate de que el event_id sea idéntico entre el tag del navegador y el tag del servidor; LinkedIn descartará el evento servidor si coinciden.
- Siempre incluye el parámetro `li_fat_id` en la URL durante las pruebas para que se genere la cookie de atribución; sin ella, el tag de conversión puede fallar.
- No uses el mismo Conversion ID para el tag de navegador y el tag de servidor; crea dos conversiones separadas en LinkedIn Campaign Manager.

## Errores comunes que evita o menciona
- **Error 400/fallo en tag servidor:** Ocurre si no hay cookie de LinkedIn (li_fat_id) en la URL de prueba. Solución: agregar `?li_fat_id=test` al cargar la página.
- **Duplicación de eventos sin deduplicación:** Si usas opción 2 sin event_id coincidente, LinkedIn contará dos veces la misma conversión. Solución: usar event_id idéntico en ambos tags.
- **Conversion ID no visible en LinkedIn UI:** El ID de conversión para API directa no se muestra en la interfaz; está en la URL después de `/conversions/`. Cópialo de ahí.
- **Plantilla de variable no aparece después de instalar:** Si la plantilla "Unique Event ID" no aparece al crear variable, guarda el tag sin configurar, recarga la página y vuelve a intentar.
- **Tag de servidor no dispara:** Verifica que el disparador use correctamente `client_name` (de la variable integrada) y `event_name`; asegúrate de que la variable "Client Name" esté habilitada en Variables Integradas.