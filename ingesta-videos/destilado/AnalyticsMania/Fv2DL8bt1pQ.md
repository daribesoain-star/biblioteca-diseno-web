# How to Preserve Ad Click IDs with Server-side Tagging (and UTM parameters)
**Fuente:** AnalyticsMania | https://youtu.be/Fv2DL8bt1pQ

## Qué enseña (2-3 líneas)
Este video enseña a preservar parámetros de clic de anuncios (como GCLID, FBCLID, WBRAID, GBRAID) y parámetros UTM frente a la eliminación por parte de navegadores (iOS 26, extensiones) mediante server-side tagging en Google Tag Manager. Explica cómo crear parámetros personalizados en las URLs de anuncios y restaurarlos a sus nombres originales en el servidor.

## Lecciones accionables
- **Configurar tracking template en Google Ads (cuenta → Admin → Configuración de cuenta → Seguimiento → Plantilla de seguimiento):**
  - Insertar: `{lpurl}?c_gclid={gclid}&c_wbraid={wbraid}&c_gbraid={gbraid}`
  - Los nombres personalizados (`c_gclid`, `c_wbraid`, `c_gbraid`) son definidos por el usuario; deben ser poco obvios para evitar detección.
- **Instalar variable "Query Replacer" de Stape en Server-side GTM:**
  - Ir a Plantillas → Galería de plantillas de variables → buscar "query replacer" → Añadir al espacio de trabajo.
- **Crear variable de restauración en Server-side GTM:**
  - Variables → Nueva → Configuración de variable → Query Replacer.
  - Configurar filas de reemplazo:
    - Parámetro original (personalizado) → Parámetro destino (original):
      - `c_gclid` → `gclid`
      - `c_wbraid` → `wbraid`
      - `c_gbraid` → `gbraid`
  - Nombrar la variable, ej: "page location with restored click ids".
- **Aplicar la variable mediante Transformación (más escalable que tag por tag):**
  - Transformaciones → Nueva → Augment event.
  - Configurar: "Replace page location with those custom parameters" → usar la variable creada.
  - Condición: "always apply" → "Affected tags: all".
  - Nombrar la transformación, ej: "page location with restored click ids".
- **Probar con preview:**
  - En web container preview, ingresar URL con parámetros mock: `?c_gclid=test123&c_wbraid=test456&c_gbraid=test789`
  - En server container preview, verificar que en "event data" modificado aparezcan `gclid`, `wbraid`, `gbraid` con los valores correctos.
- **Para UTM parameters (si se vuelven necesarios):**
  - Crear nombres personalizados en tracking template de Google Ads, ej: `cmed={utm_medium}&csrc={utm_source}&ccamp={campaignid}&ccont={adgroupid}&cterm={keyword}`
  - Auditar y reemplazar UTM clásicos en todas las plataformas (email marketing, redes sociales, etc.).
  - Agregar filas en Query Replacer: `cmed` → `utm_medium`, `csrc` → `utm_source`, etc.
- **Publicar cambios:** Hacer clic en "Submit" en server container tras pruebas exitosas.
- **Requisito adicional:** Tener un setup server-side funcional con custom loader (ej: Stape) para evitar bloqueos por ad blockers.

## Reglas para agentes
- Usa nombres de parámetros personalizados poco obvios (ej: `c_gclid`, no `gclid_custom`) cuando configures tracking templates en plataformas de anuncios.
- Aplica la transformación "Augment event" con condición "always apply" y "affected tags: all" para escalar a todos los tags del server container, no modifiques tags uno por uno.
- Nunca confíes solo en la implementación técnica; verifica que cada plataforma de anuncios soporte la modificación de URLs de destino con inserción dinámica de click IDs.
- Siempre prueba con preview usando URLs mock antes de publicar cambios en producción.
- Cuando preserves UTM, primero audita y actualiza TODAS las fuentes externas (email, social, ads) antes de modificar el server container.

## Errores comunes que evita o menciona
- **Asumir que todas las plataformas de anuncios tienen la función de modificar URLs:** Facebook (al momento de grabación) no permite insertar dinámicamente FBCLID en URLs personalizadas; hay que investigar si ya existe la funcionalidad.
- **No aplicar transformación a todos los tags:** Hacerlo tag por tag no es escalable; usar "Augment event" con "affected tags: all" es la forma correcta.
- **Olvidar el custom loader:** Sin un loader personalizado (ej: Stape), las solicitudes pueden ser bloqueadas por ad blockers, anulando la preservación de parámetros.
- **No auditar todas las fuentes de UTM:** Los UTM se usan en múltiples plataformas (email, social, CRM); si no se actualizan todas, la restauración en servidor no funcionará.
- **Confiar en que iOS 26 solo eliminará ciertos parámetros:** La lista final no está confirmada; es mejor prepararse para cualquier eliminación usando parámetros personalizados.