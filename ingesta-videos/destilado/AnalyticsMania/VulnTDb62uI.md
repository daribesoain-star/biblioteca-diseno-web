# dataLayer.push: What is it? (with examples)
**Fuente:** AnalyticsMania | https://youtu.be/VulnTDb62uI

## Qué enseña (2-3 líneas)
Explica qué es el dataLayer en Google Tag Manager, cómo usar el método `dataLayer.push()` para añadir datos a esa capa virtual, y las mejores prácticas sobre dónde colocar el código (antes o después del snippet de GTM) para controlar cuándo los eventos están disponibles.

## Lecciones accionables
- **Sintaxis exacta de `dataLayer.push()`:** Escribir `dataLayer.push({...})` con el objeto entre llaves. **Importante:** `dataLayer` debe escribirse con "L" mayúscula (JavaScript es case-sensitive). Ejemplo:
  ```javascript
  dataLayer.push({
    event: 'login',
    userID: '12345'
  });
  ```
- **Mejor práctica con `window`:** Anteponer `window.` al comando: `window.dataLayer.push({...})`. Esto evita conflictos de ámbito.
- **Consistencia en comillas:** Usar siempre el mismo tipo de comillas (simples o dobles) en todo el objeto. Ejemplo válido:
  ```javascript
  window.dataLayer.push({
    'event': 'login',
    'userID': '12345'
  });
  ```
- **Para usar datos en tags:** Crear una **Data Layer Variable** en GTM para acceder a los valores (ej: `userID`).
- **Para implementar desde GTM:** Usar una **Custom HTML Tag** (no Custom JavaScript Variable). Encerrar el código entre etiquetas `<script>`:
  ```html
  <script>
    window.dataLayer.push({
      event: 'login',
      userID: '12345'
    });
  </script>
  ```
- **Para implementar desde el código del sitio:** Los desarrolladores deben reemplazar valores estáticos por valores dinámicos. Ejemplo genérico:
  ```javascript
  window.dataLayer.push({
    event: 'login',
    userID: user.getID()  // o similar según la web
  });
  ```
- **Línea de seguridad obligatoria antes del push:** Incluir siempre esta línea al inicio para evitar errores si el dataLayer no existe:
  ```javascript
  window.dataLayer = window.dataLayer || [];
  window.dataLayer.push({...});
  ```
- **Ubicación del código:**
  - **Después del snippet de GTM:** El evento aparece después de `Container Loaded`.
  - **Antes del snippet de GTM:** El evento aparece antes de `Container Loaded`.
  - **Antes del snippet SIN clave `event`:** El dato se añade como primer elemento (ej: `message` con `userID`), disponible antes de `Consent Initialization`.

## Reglas para agentes
- Usa `window.dataLayer.push()` en lugar de `dataLayer.push()` para mayor robustez.
- Nunca uses `dataLayer.push()` dentro de una **Custom JavaScript Variable** en GTM; GTM puede ejecutarla múltiples veces y duplicar los pushes.
- Siempre incluye `window.dataLayer = window.dataLayer || [];` antes de cualquier `push` cuando el código se coloque antes del snippet de GTM, para garantizar que el dataLayer exista.
- Cuando el push se coloca **antes** del snippet de GTM y necesitas que los datos estén disponibles antes de cualquier evento (ej: para consentimiento), omite la clave `event` en el objeto.
- Si usas comillas simples en un valor, úsalas en todos los valores del mismo objeto; no mezcles tipos de comillas.

## Errores comunes que evita o menciona
- **Escribir `datalayer` en minúscula:** JavaScript es case-sensitive, `dataLayer` debe tener "L" mayúscula.
- **Usar Custom JavaScript Variable para hacer push:** GTM no garantiza ejecución única; puede disparar múltiples pushes no deseados. Usar siempre Custom HTML Tag.
- **Colocar el push antes del snippet de GTM sin la línea de seguridad:** Si el dataLayer no existe, el push falla y se pierden los datos.
- **Usar valores estáticos entre comillas en producción:** Si el valor está entre comillas, es texto estático; los desarrolladores deben reemplazarlo con variables dinámicas (ej: `user.getID()`).
- **Mezclar comillas simples y dobles en el mismo objeto:** Aunque técnicamente funciona, rompe la consistencia y puede causar errores difíciles de depurar.