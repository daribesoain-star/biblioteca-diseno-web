# favicon-evilmartians
**Fuente:** impl-logotipos | https://evilmartians.com/chronicles/how-to-favicon-in-2021-six-files-that-fit-most-needs

## Qué enseña
Define un set mínimo de 6 archivos para un favicon moderno y universal (verificado 2026), reemplazando el enfoque obsoleto de 20+ PNGs. Explica el markup HTML exacto, la estructura del manifest.webmanifest y cómo implementar soporte para dark mode dentro del SVG.

## Lecciones accionables
- **Archivos requeridos (nombres y dimensiones exactas):**
  - `favicon.ico` (32×32 px, con fallback opcional 16×16)
  - `icon.svg` (cuadrado, formato vectorial)
  - `apple-touch-icon.png` (180×180 px)
  - `icon-192.png` (192×192 px)
  - `icon-512.png` (512×512 px)
  - `icon-mask.png` (512×512 px, maskable)
  - `manifest.webmanifest` (config JSON)
- **HTML HEAD (markup exacto):**
  ```html
  <link rel="icon" href="/favicon.ico" sizes="32x32">
  <link rel="icon" href="/icon.svg" type="image/svg+xml">
  <link rel="apple-touch-icon" href="/apple-touch-icon.png">
  <link rel="manifest" href="/manifest.webmanifest">
  ```
- **WEB MANIFEST (estructura JSON exacta):**
  ```json
  {
    "icons": [
      { "src": "/icon-192.png", "type": "image/png", "sizes": "192x192" },
      { "src": "/icon-mask.png", "type": "image/png", "sizes": "512x512", "purpose": "maskable" },
      { "src": "/icon-512.png", "type": "image/png", "sizes": "512x512" }
    ]
  }
  ```
- **APPLE TOUCH ICON:** El PNG 180×180 debe incluir **20px de padding alrededor del icono y algo de color de fondo** (breathing room en la home screen; sin transparencia).
- **SVG DARK MODE (CSS media query dentro del SVG):**
  ```svg
  <svg xmlns="http://www.w3.org/2000/svg" viewBox="0 0 500 500">
    <style>
      @media (prefers-color-scheme: dark) {
        .a { fill: #f0f0f0 }
      }
    </style>
    <path class="a" fill="#0f0f0f" d="…" />
  </svg>
  ```
- **Rendimiento:** Los navegadores descargan los favicons en segundo plano, así que un favicon más grande no afecta el rendimiento del sitio.
- **Compatibilidad:** Reemplaza Windows tiles, Safari pinned icons y specs de Opera Coast manteniendo compatibilidad universal.

## Reglas para agentes
- Usa siempre `favicon.ico` (32×32) como fallback universal para navegadores antiguos.
- Incluye `icon.svg` con `type="image/svg+xml"` para navegadores modernos; nunca uses PNGs redundantes.
- Agrega `apple-touch-icon.png` (180×180) con 20px de padding y fondo sólido; nunca uses transparencia.
- Define `icon-mask.png` (512×512) con `"purpose": "maskable"` en el manifest para adaptarse a formas de icono en Android.
- Incorpora la media query `@media (prefers-color-scheme: dark)` dentro del SVG para soporte de modo oscuro.
- Nunca generes más de 6 archivos de favicon; el enfoque de 20+ PNGs está obsoleto.

## Errores comunes que evita o menciona
- **Complejidad innecesaria:** El enfoque viejo de 20+ PNGs es obsoleto; los navegadores modernos soportan downscaling de SVG, eliminando formatos redundantes.
- **Falta de padding en apple-touch-icon:** Sin los 20px de padding y fondo, el icono se ve mal en la home screen de iOS.
- **Omisión de `purpose: maskable`:** Sin esta propiedad, el icono no se adapta correctamente a las formas recortadas de Android.
- **Transparencia en apple-touch-icon:** iOS no maneja bien la transparencia; debe tener fondo sólido.
- **Ignorar dark mode:** Sin la media query en el SVG, el favicon no cambia de color en modo oscuro.