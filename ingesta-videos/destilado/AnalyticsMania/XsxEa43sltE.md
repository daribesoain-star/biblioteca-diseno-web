# Microsoft consent mode. How to configure it with Google Tag Manager?
**Fuente:** AnalyticsMania | https://youtu.be/XsxEa43sltE

## Qué enseña
Explica cómo implementar Microsoft Consent Mode en Google Tag Manager (GTM) para cumplir con requisitos legales en EEE, Reino Unido y Suiza. Cubre dos escenarios: con CMP que tiene integración nativa (Cookiebot) y sin integración nativa (CookieHub), incluyendo configuración de estado por defecto y comandos de actualización.

## Lecciones accionables
- **Verificar si tu CMP tiene integración nativa con Microsoft Consent Mode:** Cookiebot la tiene (envía automáticamente el comando `update`), CookieHub no la tiene al momento del video.
- **Configurar el estado por defecto "denied" para `ad_storage`:**
    1. En GTM, ve a **Templates** → **Tag Templates** → **Search Gallery**.
    2. Busca "Microsoft" e instala la plantilla **"Microsoft U Consent"**.
    3. Crea una nueva etiqueta: **Tag Configuration** → **Microsoft U Consent Mode Default**.
    4. En **Default Status of Ad Storage**, selecciona **"Denied"**.
    5. Disparador: **Consent Initialization - All Pages**.
    6. Nombra la etiqueta (ej. "Microsoft consent mode default").
- **Configurar el comando de actualización cuando se otorga consentimiento (si tu CMP no tiene integración nativa):**
    1. Crea un disparador **Custom Event** con el nombre del evento que tu CMP empuja al dataLayer cuando se actualiza el consentimiento (ej. `cookiehub consent update`).
    2. Crea una nueva etiqueta: **Tag Configuration** → **Microsoft U Consent Mode Update**.
    3. En **Ad Storage**, usa una variable que convierta el valor booleano del dataLayer a "granted"/"denied":
        - Crea una variable de tipo **Data Layer Variable** con el nombre exacto del campo (ej. `cookiehub_marketing`).
        - Crea una **variable personalizada** (tipo **Custom JavaScript** o similar) que transforme: si `true` → `"granted"`, si `false` o `undefined` → `"denied"`.
    4. Disparador: el custom event creado en el paso 1.
- **Opcional: restringir el disparo de la etiqueta Microsoft U solo cuando haya consentimiento de marketing:**
    1. Identifica el evento que tu CMP empuja cuando se otorga consentimiento de marketing (ej. `cookie consent marketing` en Cookiebot, `cookiehub marketing` en CookieHub).
    2. Crea un disparador **Custom Event** con ese nombre exacto.
    3. En la etiqueta **Microsoft U**, cambia el disparador de **Initialization** a este nuevo evento.
- **Verificar en red:** Abre DevTools → Network → filtra por "bing". Busca el parámetro `ASC`:
    - `ASC=d` = denied (estado por defecto o sin consentimiento).
    - `ASC=g` = granted (consentimiento otorgado).
- **Keywords exactas:** `ad_storage`, `ASC`, `Microsoft U Consent`, `Consent Initialization`, `cookie consent marketing`, `cookiehub consent update`, `cookiehub_marketing`.

## Reglas para agentes
- **Usa** la plantilla "Microsoft U Consent" del Gallery de GTM para configurar tanto el comando default como el update.
- **Nunca** asumas que tener Google Consent Mode implementado automáticamente cubre Microsoft Consent Mode; son sistemas independientes.
- **Siempre** verifica en la pestaña Network de DevTools que el parámetro `ASC` aparezca en las peticiones a Bing, tanto en estado denied como granted.
- **Si tu CMP tiene integración nativa** (ej. Cookiebot), solo necesitas configurar el comando default; el update lo maneja automáticamente la CMP.
- **Si tu CMP no tiene integración nativa** (ej. CookieHub), debes configurar tanto el comando default como el update, usando variables que conviertan booleanos a "granted"/"denied".
- **Para cumplimiento estricto** (solo enviar datos con consentimiento), cambia el disparador de la etiqueta Microsoft U de "Initialization" a un custom event que se active solo cuando el consentimiento de marketing sea granted.

## Errores comunes que evita o menciona
- **No verificar la presencia del parámetro `ASC`** en las peticiones de red; sin él, el consent mode no está funcionando aunque la CMP tenga integración.
- **Asumir que Google Consent Mode cubre Microsoft Consent Mode**; son modos de consentimiento separados y requieren configuración independiente.
- **No configurar el estado default "denied"** incluso con CMPs con integración nativa (Cookiebot no lo envía automáticamente, según prueba del autor).
- **Usar el disparador "Initialization" para la etiqueta Microsoft U** si se desea cumplimiento estricto; esto envía datos incluso sin consentimiento. En su lugar, usa un evento de consentimiento de marketing.
- **No transformar valores booleanos** del dataLayer a "granted"/"denied" en el comando update; el parámetro `ad_storage` solo acepta esos dos strings.