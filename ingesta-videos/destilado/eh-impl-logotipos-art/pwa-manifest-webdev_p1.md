# pwa-manifest-webdev
**Fuente:** impl-logotipos | https://web.dev/articles/add-manifest

## Qué enseña
Cómo declarar correctamente los iconos de una Progressive Web App (PWA) mediante el manifiesto web, especificando tamaños obligatorios, campos de color y el propósito de los iconos para garantizar una correcta visualización en distintos dispositivos y navegadores.

## Lecciones accionables
- **Tamaños obligatorios para Chromium:** Proveer al menos un icono de **192×192 px** y otro de **512×512 px**. Chrome escala estos iconos según sea necesario.
- **Para pixel-perfect en todos los dispositivos:** Proveer iconos en incrementos de **48dp**.
- **Estructura JSON exacta para declarar iconos:**
  ```json
  {
    "icons": [
      {
        "src": "/images/icons-192.png",
        "type": "image/png",
        "sizes": "192x192"
      },
      {
        "src": "/images/icons-512.png",
        "type": "image/png",
        "sizes": "512x512"
      }
    ]
  }
  ```
- **Campo `purpose`:**
  - `"any"` — uso estándar (valor por defecto).
  - `"maskable"` — iconos adaptativos en Android; se declara como `"purpose": "any maskable"`.
  - `"monochrome"` — mencionado en la especificación del Web App Manifest.
- **Campos de color:**
  - `theme_color` — color de la barra de herramientas y vista previa del task switcher. Debe coincidir con el `<meta>` `theme-color` en el `<head>` del documento.
  - `background_color` — se muestra en la pantalla de inicio (splash screen) durante el arranque inicial de la app.
- **Iconos SVG:** Escalan sin pixelarse pero quedan estáticos post-instalación. Siempre proveer fallbacks rasterizados para navegadores sin soporte SVG.

## Reglas para agentes
- Usa al menos un icono de **192×192 px** y uno de **512×512 px** cuando generes el manifiesto para Chromium.
- Declara `"purpose": "any maskable"` cuando el icono deba ser adaptativo en Android.
- Haz coincidir el valor de `theme_color` en el manifiesto con el `<meta name="theme-color">` del documento HTML.
- Nunca uses solo iconos SVG sin proporcionar fallbacks rasterizados (PNG) para navegadores sin soporte SVG.
- Cuando busques pixel-perfect, provee iconos en incrementos de **48dp**.

## Errores comunes que evita o menciona
- Proveer solo un tamaño de icono (por ejemplo, solo 192×192) sin el de 512×512, lo que causa escalado deficiente en Chromium.
- No declarar el campo `purpose` cuando se usan iconos maskable, resultando en una visualización incorrecta en Android.
- Usar un `theme_color` en el manifiesto que no coincide con el `<meta>` `theme-color` del documento, generando inconsistencias visuales.
- Depender exclusivamente de iconos SVG, que quedan estáticos post-instalación y no son soportados por todos los navegadores.