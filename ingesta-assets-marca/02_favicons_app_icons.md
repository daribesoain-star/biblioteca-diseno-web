# Favicons y App Icons — Guía técnica de nivel mundial (2025)

> Documento accionable para producir el set completo de favicons e íconos de app (web + iOS + Android + PWA), aplicable a un proyecto SvelteKit (assets en `static/`, `<head>` en `src/app.html`).
> Cada dato técnico está respaldado por una fuente oficial o de referencia abierta y verificada (ver la sección **Fuentes verificadas** al final).
> Filosofía: el set MODERNO 2025 son **5 archivos + 1 manifest**, no los 20 tamaños viejos. Menos archivos, mejor cobertura.

---

## Set completo 2025 (checklist de archivos)

El navegador moderno solo necesita **SVG + ICO + apple-touch-icon**; la PWA añade el manifest con dos PNG (192 y 512) y opcionalmente un maskable. Esto reemplaza a las 20+ etiquetas y tamaños de la era 2014–2018.

| Archivo | Tamaño / formato | Para qué sirve | Por qué HOY |
|---|---|---|---|
| `favicon.svg` | SVG escalable (vector) | Ícono de pestaña en navegadores modernos; escala perfecto en cualquier densidad; puede llevar dark mode dentro | El navegador prefiere el SVG sobre cualquier otro formato cuando existe. Peso mínimo, nitidez infinita. |
| `favicon.ico` | ICO multi-res **16×16 + 32×32 + 48×48** | Fallback para navegadores viejos y documentos NO-HTML (PDF, feeds). Se sirve también en `/favicon.ico` por convención | El `.ico` permite mostrar favicon incluso en documentos no-HTML; sin él, el fallback se rompe en clientes viejos. |
| `apple-touch-icon.png` | **180×180 PNG, SIN transparencia, fondo opaco** | Ícono al "Añadir a pantalla de inicio" en iOS. Android lo usa como fallback si NO hay manifest | Desde iOS 8, **un solo 180×180 basta**; las decenas de tamaños Apple antiguos ya NO son necesarios. Apple aplica esquinas redondeadas y sombra por sí mismo. |
| `icon-192.png` | **192×192 PNG** | Ícono de instalación PWA en Android/Chromium (`purpose: any`) | Chromium exige AL MENOS un 192×192 y un 512×512 en el manifest. |
| `icon-512.png` | **512×512 PNG** | Ícono grande / splash de instalación PWA | Obligatorio para instalabilidad en Chromium. |
| `icon-maskable-512.png` | **512×512 PNG, contenido dentro de la safe-zone (radio 40%)** | Ícono adaptable de Android (`purpose: maskable`): el SO lo recorta en círculo/squircle/etc. | Sin `maskable`, Android puede recortar tu ícono y cortar el logo, o ponerle un feo fondo/relleno blanco. |
| `site.webmanifest` | JSON | Declara nombre, íconos, colores y modo de display para que la app sea **instalable** | Es el componente esencial de la PWA; sin él no hay instalación ni íconos adaptables. |
| `<meta name="theme-color">` | Etiqueta en `<head>` | Color de la barra del navegador / UI del SO (soporta dark/light con `media`) | Complementa la identidad visual; se puede duplicar por esquema de color. |

**OBSOLETO — ya NO se genera (era 2014–2018):**
- Los **~20 tamaños de `apple-touch-icon`** (57, 60, 72, 76, 114, 120, 144, 152…): desde iOS 8 basta el **180×180 único**.
- `apple-touch-icon-precomposed`: la estrategia "un touch icon para todos" no es buena porque Android maneja los íconos distinto.
- **Windows Tile** (`browserconfig.xml`, `msapplication-TileColor`, `mstile-*.png`): ya no se requiere.
- **`mask-icon` de Safari** (pinned tab, SVG monocromo): deprecado; Safari moderno usa el `favicon.svg` normal.
- **`rel="shortcut icon"`**: nunca fue válido; el tipo `shortcut` está obsoleto — usar solo `rel="icon"`.
- Íconos de **Opera Coast** (app descontinuada en 2017).

---

## El `<head>` canónico (bloque para pegar)

Bloque **mínimo y correcto 2025** para pegar en `src/app.html` de SvelteKit (dentro de `<head>`). Todos los archivos referenciados viven en `static/` (SvelteKit sirve `static/` desde la raíz `/`):

```html
<!-- Favicon SVG (moderno; el navegador lo prefiere si existe) -->
<link rel="icon" href="/favicon.svg" type="image/svg+xml" />

<!-- Fallback ICO multi-resolución (16/32/48) para navegadores viejos y docs no-HTML -->
<link rel="icon" href="/favicon.ico" sizes="48x48" />

<!-- iOS: un solo 180x180, PNG opaco sin transparencia -->
<link rel="apple-touch-icon" href="/apple-touch-icon.png" />

<!-- PWA: manifest con íconos 192/512 + maskable, nombre y colores -->
<link rel="manifest" href="/site.webmanifest" />

<!-- Color de la barra del navegador / UI del SO, por esquema claro/oscuro -->
<meta name="theme-color" content="#f7f8fb" media="(prefers-color-scheme: light)" />
<meta name="theme-color" content="#0b0f17" media="(prefers-color-scheme: dark)" />
```

Notas técnicas verificadas:
- Cuando hay **varios `<link rel="icon">`**, el navegador elige por `media`, `type` y `sizes`; si varios empatan, usa el ÚLTIMO. Poner el SVG primero y el ICO como fallback funciona porque el SVG gana por `type`.
- El `sizes="48x48"` en el ICO es una pista; el ICO físico contiene además 16 y 32.
- iOS **NO usa** `rel="icon"` ni el atributo `sizes`; por eso `apple-touch-icon` va aparte (es un valor no estándar, específico de Apple).
- `rel="manifest"` requiere CORS si el manifest es cross-origin; para manifests que necesitan autenticación se añade `crossorigin="use-credentials"`.
- Se pueden usar **múltiples `<meta name="theme-color">`** siempre que cada uno tenga un `media` único.

---

## Maskable / safe-zone (los números)

**Por qué el ícono se recorta en Android:** desde Android 8.0 (adaptive icons) el SO muestra los íconos en **muchas formas distintas** según el fabricante (círculo, squircle, cuadrado redondeado). En vez de poner tu PNG con fondo blanco, aplica una **máscara** que recorta. Si el logo llega al borde, se corta.

### Maskable icon (PWA / web) — safe-zone
- El contenido importante (logo) debe caber en un **círculo centrado con radio = 40% del ancho** del ícono.
- Es decir: **diámetro seguro = 80% del ícono**. El **10% exterior** de cada borde puede recortarse.
- Para un lienzo de **512×512**: el círculo seguro tiene radio ≈ **205 px** (40% de 512). Todo lo esencial adentro de ese círculo.
- En el manifest, se activa con `"purpose": "maskable"`.
- NO combinar `maskable` con `any` en el mismo archivo: usar `maskable` como `any` mete relleno innecesario y achica el contenido. Mejor un archivo por propósito.

### Adaptive icon (Android nativo) — en dp
- Lienzo total: **108×108 dp** (todas las capas: foreground, background, monochrome).
- **Safe-zone: 66×66 dp** centrada — garantizada de no recortarse por ninguna máscara de fabricante.
- Diámetro **siempre visible: 72×72 dp** (108 − 18 dp de margen por lado).
- Margen exterior reservado a máscara/efectos (parallax): **18 dp por lado**.
- Tamaño del logo: **mínimo 48×48 dp, máximo 66×66 dp**, centrado en la safe-zone.
- Regla dura: **todo lo importante dentro de los 66×66 dp centrales.**

### Grid de Apple (iOS) — esquinas y óptica
- Se entrega **un master cuadrado de 1024×1024**, PNG/JPEG **aplanado, sin canal alfa, sin transparencia**; el sistema genera el resto.
- **NO redondees las esquinas tú mismo:** si lo haces, aparecen bordes negros o blancos alrededor del "squircle" cuando Apple aplica su propia máscara.
- iOS aplica automáticamente esquinas redondeadas + sombra (y desde iOS 26, el efecto Liquid Glass).
- Para el **Google Play Store** el ícono de ficha es **512×512 PNG, sin sombras ni esquinas añadidas**, bajo 1 MB.

---

## SVG con dark mode (un solo favicon.svg que reacciona al tema del SO)

Un único `favicon.svg` puede cambiar de color según el tema del sistema operativo, incrustando CSS con `@media (prefers-color-scheme: dark)` **dentro** del propio SVG (en un bloque `<style>`). No requiere JavaScript ni archivos extra.

Ejemplo canónico (fill negro en claro, blanco en oscuro):

```svg
<svg width="128" height="128" xmlns="http://www.w3.org/2000/svg">
  <style>
    path { fill: #000000; }
    @media (prefers-color-scheme: dark) {
      path { fill: #ffffff; }
    }
  </style>
  <path d="M111.904 52.937a1.95 1.95 0 00-1.555-1.314l-30.835-4.502-13.786-28.136c-.653-1.313-2.803-1.313-3.456 0L48.486 47.121l-30.835 4.502a1.95 1.95 0 00-1.555 1.314 1.952 1.952 0 00.48 1.99l22.33 21.894-5.28 30.918c-.115.715.173 1.45.768 1.894a1.904 1.904 0 002.016.135L64 95.178l27.59 14.59c.269.155.576.232.883.232a1.98 1.98 0 001.133-.367 1.974 1.974 0 00.768-1.894l-5.28-30.918 22.33-21.893c.518-.522.71-1.276.48-1.99z" fill-rule="nonzero"/>
</svg>
```

Se enlaza con:
```html
<link rel="icon" href="/favicon.svg" type="image/svg+xml">
```

Adaptación al design system de Dari (tokens): en claro usar el acento sobre superficie clara; en oscuro, el acento sobre `#0b0f17`. El fill del path se maneja con las dos reglas CSS del ejemplo.

---

## PWA manifest (`site.webmanifest`) — campos para que sea instalable

Campos **mínimos obligatorios** (según web.dev / spec W3C): al menos `name` **o** `short_name`, el array `icons`, y `start_url`. Para una PWA completa y bien presentada se añaden `theme_color`, `background_color`, `display` y `scope`.

Cada objeto de `icons` requiere `src`, `sizes` y `type`. Chromium exige AL MENOS un **192×192** y un **512×512**. El ícono adaptable de Android lleva `"purpose": "maskable"` (o `"any maskable"` si el mismo archivo sirve a ambos, aunque se recomienda separarlos).

```json
{
  "name": "Nombre completo de la app",
  "short_name": "AppCorto",
  "start_url": "/",
  "scope": "/",
  "display": "standalone",
  "background_color": "#0b0f17",
  "theme_color": "#0b0f17",
  "icons": [
    { "src": "/icon-192.png",          "sizes": "192x192", "type": "image/png", "purpose": "any" },
    { "src": "/icon-512.png",          "sizes": "512x512", "type": "image/png", "purpose": "any" },
    { "src": "/icon-maskable-512.png", "sizes": "512x512", "type": "image/png", "purpose": "maskable" }
  ]
}
```

Modos de `display`:
- `standalone`: la app corre en su propia ventana, sin UI del navegador (el más usado para PWA).
- `minimal-ui`: agrega botones de atrás/recargar.
- `fullscreen`: usa toda la pantalla.
- `browser`: experiencia de navegador normal.

Detalle: `name` se muestra durante la instalación; `short_name` en la pantalla de inicio donde el espacio es limitado. `background_color` pinta el fondo del splash mientras carga. El navegador puede **anular** el `theme_color` del manifest para respetar un `prefers-color-scheme` definido en tu CSS.

---

## Errores comunes (y cómo evitarlos)

1. **Transparencia en `apple-touch-icon`** → iOS lo rellena con **negro** (o borde raro), se ve feo. El PNG de 180×180 debe ser **opaco, fondo sólido**, sin alfa. iOS ya pone esquinas y sombra solo.
2. **Ícono que no escala a 16 px** → un logo con demasiado detalle se convierte en un borrón en la pestaña. El `favicon.svg`/ICO deben leerse a 16×16; simplifica el símbolo (una silueta, no el logo completo con texto).
3. **Maskable sin safe-zone** → Android recorta el ícono en círculo/squircle y **corta el logo**. El contenido debe caber en el círculo de **radio 40%** (diámetro 80%); el 10% de cada borde es zona de recorte.
4. **Falta `favicon.ico`** → fallback **roto** en clientes viejos y en documentos no-HTML (que no leen SVG ni PNG del manifest). Incluir siempre el `.ico` multi-res (16/32/48).
5. **Redondear las esquinas del ícono de iOS a mano** → aparecen **bordes negros o blancos** alrededor del squircle cuando Apple aplica su máscara. Entregar cuadrado pleno; el sistema redondea.
6. **Solo PNG de 20 tamaños viejos, sin SVG ni manifest** → set pesado y desactualizado que igual no da instalabilidad PWA ni nitidez en alta densidad. El baseline moderno es **SVG + ICO + apple-touch (180) + manifest (192/512 + maskable)**.
7. **`rel="shortcut icon"`** → tipo obsoleto/no válido; usar `rel="icon"` a secas.

---

## Fuentes verificadas

Todas abiertas y leídas en esta investigación (2026-07-16):

- **Evil Martians — "How to Favicon" (set de archivos mínimo + HTML + SVG dark mode + safe zone 409/512)**: https://evilmartians.com/chronicles/how-to-favicon-in-2021-six-files-that-fit-most-needs
- **web.dev — Add a web app manifest (campos obligatorios, icons 192/512, purpose maskable, theme-color)**: https://web.dev/articles/add-manifest
- **web.dev — Maskable icons (safe-zone radio 40% / diámetro 80%, purpose maskable, recorte Android)**: https://web.dev/articles/maskable-icon
- **Apple Developer — Human Interface Guidelines, App icons (1024×1024, sin alfa/transparencia, no redondear esquinas)**: https://developer.apple.com/design/human-interface-guidelines/app-icons — (confirmado vía búsqueda: apple-touch-icon 180×180, opaco; iOS aplica esquinas y sombra)
- **Android Developers — Adaptive icons (108/66/72/18 dp, safe-zone)**: https://developer.android.com/develop/ui/views/launch/icon_design_adaptive
- **RealFaviconGenerator — Understanding favicon elements (favicon.ico para docs no-HTML, SVG preferido, apple-touch 180 único desde iOS 8, manifest 192/512, tamaños Apple viejos obsoletos)**: https://realfavicongenerator.net/favicon-guides/understanding-favicon-elements
- **CSS-Tricks — SVG favicons and all the fun things we can do with them (SVG con @media prefers-color-scheme dark dentro del SVG)**: https://css-tricks.com/svg-favicons-and-all-the-fun-things-we-can-do-with-them/
- **MDN — Link types / rel (icon, apple-touch-icon, manifest; selección por media/type/sizes; shortcut obsoleto)**: https://developer.mozilla.org/en-US/docs/Web/HTML/Attributes/rel
- **MDN — meta name="theme-color" (múltiples theme-color con media prefers-color-scheme)**: https://developer.mozilla.org/en-US/docs/Web/HTML/Reference/Elements/meta/name/theme-color
- **Fuente en chino / guías de diseño de app图标 (iOS 1024 sin alfa, no redondear; Android safe-zone 72dp; Google Play 512 sin sombra)**: agregadores de guías 2026 (MobileAction, SVG Genie) consultados vía búsqueda — coinciden con Apple/Android oficiales.

> Nota de verificación: la página de Apple HIG devolvió solo el título al fetch directo (contenido cargado por JS); sus specs (180×180, sin transparencia, no redondear esquinas, master 1024, iOS aplica máscara) se confirmaron cruzando la búsqueda oficial + guías de referencia coincidentes. Los datos de Android, web.dev, css-tricks, MDN y RealFaviconGenerator se leyeron directamente del cuerpo de cada página.
