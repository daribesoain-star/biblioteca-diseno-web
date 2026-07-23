# Google Ads Conversion Tracking not working? Here are the solutions
**Fuente:** AnalyticsMania | https://youtu.be/EPTyinO6BUM

## Qué enseña (2-3 líneas)
Este video enseña a diagnosticar y solucionar problemas comunes por los que el seguimiento de conversiones de Google Ads no registra datos. Cubre desde la verificación del autoetiquetado y parámetros GCLID, hasta la configuración del Consent Mode, Content Security Policy (CSP), y el uso correcto de Google Tag Manager (GTM) con la etiqueta Conversion Linker.

## Lecciones accionables
- **Verificar Autoetiquetado (Auto-tagging):** En Google Ads, ve a **Admin > Configuración de la cuenta > Autoetiquetado**. Asegúrate de que esté en **"Sí"** (casilla marcada). Esto añade el parámetro `GCLID` a la URL de destino tras un clic.
- **Comprobar que el parámetro GCLID persiste en la URL:** Haz clic en tu propio anuncio en vivo (ej. búsqueda de Google) y verifica que la URL de la página de aterrizaje contenga `?gclid=...`. También puedes añadir manualmente `?gclid=test123` a la URL; si el parámetro desaparece al cargar la página, tu sitio web lo está eliminando. Contacta a tus desarrolladores para que conserven los parámetros URL.
- **Probar con un clic real antes de la conversión:** Para que Google Ads cuente una conversión, debe haber un clic en el anuncio antes de la conversión. Publica tus cambios, haz clic en tu propio anuncio, llega a la página, completa la conversión y espera al menos **24 horas** para ver los datos en los informes.
- **Configurar Consent Mode (para tráfico de UE, Reino Unido, Suiza):** En GTM, usa la etiqueta **"Consent Mode de Google"** para establecer estados por defecto (todos "denied"). Luego, conecta tu banner de cookies para que cuando el usuario haga clic en "Aceptar", los estados cambien a "granted". Los estados clave son: `ad_storage`, `ad_user_data`, `ad_personalization`. Si `ad_storage` está "denied" al enviar una conversión, esta no se contará en los informes de Google Ads.
- **Verificar estados de consentimiento en GTM Preview:** Activa el modo de vista previa en GTM. Ve a la pestaña **"Consent"** y confirma que los estados actuales coincidan con la acción del usuario (granted si aceptó, denied si rechazó).
- **Revisar Content Security Policy (CSP):** Abre las herramientas de desarrollador del navegador (Chrome: **Más herramientas > Herramientas para desarrolladores > Consola**). Busca errores que mencionen **"Content Security Policy"**. Si aparecen, comparte con tus desarrolladores la documentación de Google sobre CSP (enlace en la descripción del video) para que añadan las directivas necesarias para Google Ads, Google Analytics y GTM.
- **Verificar que la etiqueta de conversión de Google Ads se dispare en GTM:**
    1. En GTM, activa el modo **Preview**.
    2. Realiza la acción de conversión (ej. enviar formulario).
    3. En la vista previa, busca tu etiqueta de conversión de Google Ads en la sección **"Tags Fired"**.
    4. Si no aparece, haz clic en **"Tags Not Fired"** para ver la condición de activación que falló (ej. error tipográfico en la regla de URL).
- **Añadir la etiqueta Conversion Linker en GTM:** Si usas la etiqueta de conversión de Google Ads en GTM, crea una etiqueta **"Conversion Linker"** (tipo de etiqueta: **Google Ads > Conversion Linker**). En la mayoría de los casos, los ajustes por defecto son suficientes. Sin esta etiqueta, el seguimiento puede fallar.
- **Publicar los cambios en GTM:** Ve a **Google Tag Manager > Resumen del contenedor**. Si ves cambios en el espacio de trabajo (ej. "Se añadió etiqueta de conversión de Google Ads"), significa que no están en vivo. Haz clic en **"Enviar"** y completa los pasos para publicar.
- **Verificar migración de sitio web:** Si migraste a un nuevo sitio (mismo dominio, código diferente), asegúrate de que el snippet del contenedor de GTM esté instalado en todas las páginas del nuevo sitio. Usa el modo Preview de GTM para confirmar que se conecta y que las etiquetas se disparan correctamente.
- **Habilitar el uso compartido de datos en Google Analytics 4 (para importación de conversiones):** Ve a **Administrador > Transmisiones de datos > selecciona tu web > Configuración de consentimiento > Administrar datos entre servicios de Google**. Asegúrate de que esté seleccionado **"Todos los servicios de Google"** o, al menos, **"Servicios de Google Ads"**.

## Reglas para agentes
- **Usa siempre el modo Preview de GTM** antes de publicar cualquier cambio en etiquetas de conversión de Google Ads.
- **Nunca asumas que una conversión se está registrando** sin haber hecho un clic real en un anuncio antes de la conversión durante las pruebas.
- **Si el tráfico proviene de la UE, Reino Unido o Suiza, siempre verifica** que los estados de consentimiento (`ad_storage`, `ad_user_data`) estén "granted" al enviar el evento de conversión.
- **Cuando configures una etiqueta de conversión de Google Ads en GTM, crea siempre** una etiqueta **Conversion Linker** con los ajustes por defecto.
- **Ante errores de CSP en la consola del navegador, no intentes solucionarlo desde GTM**; involucra a los desarrolladores y proporciónales la documentación oficial de Google sobre CSP.
- **Después de cualquier cambio en GTM relacionado con conversiones, espera al menos 24 horas** antes de concluir que el seguimiento no funciona.

## Errores comunes que evita o menciona
- **Autoetiquetado desactivado:** Sin el parámetro `GCLID`, Google Ads no puede asociar clics con conversiones.
- **Parámetros URL eliminados por el sitio web:** El sitio elimina el `GCLID` durante redirecciones o por configuración del servidor, rompiendo la atribución.
- **Probar conversiones sin un clic de anuncio previo:** Google Ads ignora conversiones que no tengan un clic asociado en la misma sesión.
- **Consent Mode mal implementado:** El usuario da consentimiento pero los estados en GTM no se actualizan a "granted", por lo que las conversiones no se registran.
- **Olvidar publicar los cambios en GTM:** Las etiquetas nuevas o modificadas no están activas para los visitantes reales.
- **No incluir la etiqueta Conversion Linker en GTM:** Provoca que el seguimiento de conversiones de Google Ads falle, especialmente en navegadores que restringen cookies de terceros.
- **Migrar el sitio web sin migrar los códigos de seguimiento:** El nuevo sitio carece del snippet de GTM o de las etiquetas de conversión.
- **Content Security Policy (CSP) bloqueando scripts:** Los desarrolladores implementan CSP sin incluir los dominios de Google, impidiendo que las etiquetas se carguen.
- **Datos compartidos desactivados en GA4:** Si importas conversiones desde Google Analytics, la opción "Administrar datos entre servicios de Google" debe tener seleccionados los servicios de Google Ads.