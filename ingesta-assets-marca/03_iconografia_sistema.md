# Sistema de iconografía consistente y con carácter de marca

Cómo se construye un icon system (icon set) que se sienta de una sola familia y con la voz de la marca, aplicable a SvelteKit + tokens. Cada regla está respaldada por una fuente verificada (URL abierta durante la investigación). Al final: valores concretos para un set neubrutalism (trazo grueso).

Filosofía en una línea: un buen icon set no es una colección de dibujos, es **un sistema con reglas duras** (una grilla, un trazo, un estilo, un nivel de detalle) que hace que todos los íconos se vean hermanos y se lean sin manual.

---

## Grid y tamaño base

El **grid** (grilla) es el lienzo con reglas que todos los íconos comparten: define dimensiones, la grilla de píxeles subyacente y las líneas guía (keylines). Es lo que hace que un set completo se vea uniforme.

**Canvas estándar y áreas:**

| Sistema | Canvas | Padding / trim | Área viva (live area) |
|---|---|---|---|
| **Lucide** | 24×24 px | ≥ 1 px | 22×22 px |
| **Material Symbols** | 24 dp (base) | — | alineación de píxel perfecta solo en 20 px y 24 px |
| **IBM Carbon** | 32×32 px | 2 px | 28×28 px |
| Práctica general (Figma guide) | 24 px con grillas base de 8 | padding = grosor del trazo (o el doble si el trazo es de 1px) | resto del canvas |

- **24×24 es el estándar de facto** para íconos de interfaz. Regla clásica: 24 px de canvas con **2 px de padding** en el borde exterior y **20 px de área viva** para el dibujo. Fuente: designsystems.com / UX Planet.
- Escala de tamaños común en UI: **16, 24, 32** (PC) y también 12, 48. En apps, típicamente 16 y 24 son los pesos de trabajo. Fuente: 知乎 (ICON设计规范之图标尺寸).
- **Solo 20 px y 24 px de Material Symbols tienen alineación de píxel perfecta**; los tamaños intermedios pierden nitidez. Regla: diseña y verifica el ícono en el tamaño real en que se va a usar, no lo escales a ciegas. Fuente: Material Symbols guide.

**Keylines (líneas guía) — el secreto de la consistencia de peso visual:**

Las keylines son un conjunto de formas geométricas base sobre las que se apoya cada ícono para que todos tengan el mismo "peso óptico" (que un círculo y un cuadrado se vean del mismo tamaño aunque matemáticamente no lo sean). Las 4 formas base comunes:

1. **Círculo** (el más grande visualmente; una forma circular necesita ser mayor que un cuadrado para verse del mismo tamaño)
2. **Cuadrado**
3. **Rectángulo vertical (portrait)**
4. **Rectángulo horizontal (landscape)**

Ejemplo concreto de keylines (Phosphor, canvas 48×48, para ilustrar proporciones):
- Círculos: 28×28 px
- Cuadrados: 25×25 px
- Rectángulo horizontal: 28×22 px
- Rectángulo vertical: 22×28 px
- Trim area (margen de recorte): 6 px

Fuente: Icon Grids & Keylines Demystified (Helena Zhang).

Regla práctica: escala esas proporciones a tu canvas. En 24 px, un círculo llena casi toda el área viva (~20-22 px), mientras un cuadrado es un poco menor (~18-20 px) para verse del mismo peso. **Las keylines son guías, no reglas rígidas** — el ajuste óptico final manda.

---

## Trazo y personalidad

El **grosor del trazo (stroke width) es lo que define la personalidad del set**: fino = elegante/minimalista; grueso = bold/neubrutalism/con carácter.

**Números verificados por sistema:**

| Sistema | Trazo (a 24 px) | Terminaciones | Uniones | Radio de esquina |
|---|---|---|---|---|
| **Lucide** | **2 px** | round caps | round joins | 2 px (formas ≥8 px), 1 px (formas <8 px) |
| Práctica general | 1.5 px sirve para 16 y 24; grueso = 2 px, fino = 1–1.5 px | consistente en todo el set | consistente | consistente |
| **IBM Carbon** | trazos expandidos a valores de píxel completos (sin decimales) | — | — | **2 px** (multiplicable por 2 si el metáfora lo exige) |
| Norma china (知乎) | 1 px a 16 px; se engrosa proporcional a 24/32 | — | — | 2/4/6 px, múltiplos de 2 |

**Reglas duras del trazo:**

1. **Un solo grosor para todo el set.** Mezclar grosores es el error #1 que rompe la familia. "Todos los íconos deben tener el mismo tamaño al construirlos y el mismo grosor de trazo." Fuente: designsystems.com.
2. **El grosor define la voz:** fino (1–1.5 px) = elegante; grueso (2 px+) = bold/con carácter. Fuente: UX Planet / Practical Guide To Icon Design.
3. **Terminaciones y uniones consistentes:** Lucide usa `round` caps + `round` joins + trazo centrado en TODO el set. Elige una vez y aplícalo a todos. Fuente: Lucide Icon Design Guide.
4. **Trazo centrado, nunca al borde:** Carbon prohíbe "center borders" porque generan medios píxeles y borronean. Fuente: Carbon icons contribute.
5. **Prefiere valores pares (2 px, 4 px) para el trazo.** Los impares (1 px, 3 px) caen en medios píxeles y borronean por render sub-pixel — sobre todo en tamaños chicos. Fuente: 知乎.
6. **El espacio entre trazos no debe ser menor que el propio grosor del trazo** (si no, se empasta a tamaño chico). Fuente: designsystems.com.
7. **Espaciado entre elementos:** Lucide exige 2 px de separación entre elementos distintos del mismo ícono. Fuente: Lucide.

**Escalar el trazo con el tamaño — el concepto `absoluteStrokeWidth` (clave para tokens):**

Por defecto un SVG escala el trazo junto con el ícono: si agrandas de 24 a 48, un trazo de 2 se vuelve 4. Lucide ofrece `absoluteStrokeWidth` para **mantener el grosor en píxeles constante** sin importar el tamaño, con la fórmula:

```
strokeCalculado = (strokeWidth × 24) / size
```

Así un ícono a 48 px sigue mostrando 2 px de trazo real. Esto es lo que te permite tener una familia coherente en varios tamaños. Fuente: Lucide (stroke-width, React).

---

## Estilo y consistencia (+ cómo afinar un set)

**Los ejes de consistencia (todos deben ser idénticos en el set):** estilo (line / filled / duotone), grosor del trazo, tipo de terminación, radio de esquina, ángulo de biseles, paleta, parámetros de sombra, nivel de detalle. Fuente: 站酷 / woshipm (图标盒子).

**Line vs filled vs duotone:**
- Elige **UN estilo primario** para todo el sistema. "Nada molesta más que ver dos íconos lado a lado, uno relleno y otro de línea." Variantes (ej. filled para estado activo) se hacen como set aparte, coherente. Fuente: designsystems.com.
- Material Symbols formaliza esto con el eje **Fill (0 a 1)**: 0 = outline, 1 = relleno completo, usado para transiciones de estado (inactivo→activo). Fuente: Material Symbols guide.
- SF Symbols aporta **9 pesos** (ultralight→black) × **3 escalas** (small/medium/large), casando el peso del ícono con el peso de la tipografía San Francisco. Concepto útil: **el ícono debe tener el mismo peso óptico que el texto contiguo.** Fuente: Apple HIG / SF Symbols.

**La regla de la "familia" (todos hermanos):**
- Mismo nivel de detalle en todos. A tamaño chico simplifica progresivamente — quita lo no esencial. Fuente: designsystems.com.
- **Empieza por los íconos complejos primero**, define las reglas de estilo ahí (radio, terminaciones, metáfora), y luego aplícalas al resto. Fuente: designsystems.com.
- **Ajuste óptico sobre corrección matemática:** un ícono centrado matemáticamente puede verse descentrado. Corrige a ojo (padding intrínseco = grosor del trazo; círculos un poco más grandes que cuadrados). Fuente: designsystems.com.
- **Metáforas claras y estándar.** Si un ícono necesita tooltip para entenderse, está mal (regla del design system de la casa, Axioma 02).

**Cómo afinar un set genérico (ej. Lucide) para que se vea de tu marca — sin dibujar de cero:**

Lucide sale con `stroke-width="2"`, `linecap="round"`, `linejoin="round"`, `stroke="currentColor"`. Para darle carácter de marca cambias 3 palancas de forma global:

1. **Grosor del trazo** → sube a 2.5–3 para un look bold/neubrutalism, o baja a 1.5 para elegante. (Se hace por prop/CSS global, no editando cada SVG.)
2. **Terminaciones y uniones** → cambia `round` por `square`/`butt` + `miter` joins para un look duro/técnico/brutalist; deja `round` para un look amable.
3. **Radio de esquina** → 0 (esquinas vivas) para brutalism; 2 px para el default suave.

Como todos los íconos comparten esas 3 propiedades, cambiarlas de forma global **re-tematiza el set entero** manteniéndolo coherente — igual que re-tematizar color cambiando solo `--color-accent`. Fuente: Lucide Icon Design Guide + guía de estilos globales de Lucide.

---

## Tokens de ícono

El objetivo (Axioma 07 de la casa): **el ícono consume SOLO tokens semánticos**, igual que color y espaciado. Cero valores px sueltos en el componente. Los design tokens ya cubren stroke widths, border radii y tamaños como categorías nativas. Fuente: penpot.app / design tokens guide.

**Escala de tamaño de ícono como token** (ejemplo real de un set: xsm 10, sm 16, md 22, lg 30, xlg 36, xxlg 46 px). Fuente: penpot.app. Adaptado a la casa (base 4px):

```css
:root {
  /* tamaño del ícono (mapea a la escala tipográfica y de espaciado) */
  --icon-size-sm: 16px;   /* inline con texto pequeño */
  --icon-size-md: 20px;   /* default en botones/nav */
  --icon-size-lg: 24px;   /* acciones destacadas */
  --icon-size-xl: 32px;   /* estados vacíos, ilustrativo */

  /* trazo — la palanca de personalidad */
  --icon-stroke: 2;       /* default; sube a 2.75 para neubrutalism */
  --icon-stroke-bold: 3;  /* énfasis / hover */

  /* forma */
  --icon-radius: 2px;     /* esquinas; 0 para brutalism */
  --icon-linecap: round;  /* round | butt | square */
  --icon-linejoin: round; /* round | miter | bevel */

  /* color: hereda del texto, no se hardcodea */
  --icon-color: currentColor;
}
```

**Consumo en el componente (Svelte 5 + SVG inline tipo Lucide):**

```svelte
<script lang="ts">
  let { name, size = 'md', bold = false, label } = $props<{
    name: string; size?: 'sm'|'md'|'lg'|'xl'; bold?: boolean; label?: string;
  }>();
</script>

<svg
  width="var(--icon-size-{size})" height="var(--icon-size-{size})"
  viewBox="0 0 24 24" fill="none"
  stroke="currentColor"
  stroke-width={bold ? 'var(--icon-stroke-bold)' : 'var(--icon-stroke)'}
  stroke-linecap="var(--icon-linecap)" stroke-linejoin="var(--icon-linejoin)"
  aria-hidden={label ? undefined : 'true'}
  role={label ? 'img' : undefined}
  aria-label={label}
  focusable="false"
>
  {@html icons[name]}
</svg>
```

Con esto: re-tematizar la iconografía de una app = cambiar `--icon-stroke`, `--icon-radius`, `--icon-linecap/join` en el `:root` de esa app. Un solo lenguaje, cero px suelto (Axioma 07).

---

## Optimización SVG + a11y

**SVG limpio (verificado):**
- Corre **SVGO** para quitar metadata, comentarios y datos de editor, y simplificar paths → ~60% de reducción de peso. Fuente: dev.to / SVG icon optimization guide.
- **`viewBox` presente** (ej. `0 0 24 24`), sin `width`/`height` hardcodeados en el archivo (que el tamaño venga del token/CSS).
- **Coordenadas en píxeles enteros, sin decimales** (Carbon lo exige) → nitidez. Fuente: Carbon.
- **Trazos expandidos a valores de píxel completos** para producción (Carbon), aunque en el flujo Lucide el trazo se mantiene como `stroke` vivo para poder tematizarlo por token.

**Herencia de color con `currentColor`:**
- Define `fill="currentColor"` o `stroke="currentColor"`. El ícono adopta el color del texto del contenedor → funciona solo en dark/light mode y hereda el color de estado (hover, danger). Es la base para que el ícono consuma el token de color sin lógica extra. Fuente: iconvectors.io / CSS-Tricks Accessible SVGs.

**Sprite vs inline vs componente:**

| Método | Cuándo | Trade-off |
|---|---|---|
| **Inline SVG** (o componente Svelte) | Cuando necesitas estilar/animar por CSS y control total de a11y | Más flexible y el más accesible; suma peso al HTML |
| **SVG sprite** (`<use href="#id">`) | Muchos íconos repetidos, quieres 1 request y cachear | Reduce peticiones HTTP; menos flexible; el `aria-label` va en el `<svg>` externo, NO en el `<use>` |
| **SVG externo** (`<img src>`) | Íconos que no cambian de color/estado | Cachea bien, HTML liviano; no se puede estilar dinámico |

Fuente: SVG Genie (sprites 2026) / dev.to.

**Accesibilidad (verificado):**
- **Ícono decorativo** (junto a un texto que ya lo explica): `aria-hidden="true"` + `focusable="false"`.
- **Ícono con significado** (botón solo-ícono): `role="img"` + nombre accesible vía `aria-label` o `<title>`.
- En sprites: el `aria-label` va en el `<svg>` contenedor, no en `<use>`.

Fuente: iconvectors.io (Accessible SVG Icons) / A11Y Collective.

---

## Errores comunes

1. **Mezclar 2 sets distintos** (ej. la mitad Lucide y la mitad Material). Se nota al instante y rompe la familia. Regla: un solo set, afinado por tokens. Fuente: designsystems.com.
2. **Mezclar filled y stroked** en el mismo nivel. "Nada molesta más que dos íconos lado a lado, uno relleno y otro de línea." Fuente: designsystems.com.
3. **Grosores de trazo inconsistentes** → el sistema pierde coherencia visual. Un solo grosor para todos. Fuente: designsystems.com.
4. **Íconos que no se leen a 16 px** por exceso de detalle. No hagas íconos de línea a menos de ~10 px con trazo de 1-2 px; simplifica al bajar de tamaño. Fuente: designsystems.com.
5. **No alinear a la grilla de píxeles** (coordenadas con decimales, trazos al borde, líneas rotadas). Genera medios píxeles y borrones. Usa herramientas rotadas a mano en vez de rectángulos rotados; snap a píxel siempre. Fuentes: Carbon / designsystems.com.
6. **Trazo impar (1 px / 3 px) a tamaño chico** → render sub-pixel borroso. Prefiere pares. Fuente: 知乎.
7. **Ignorar el ajuste óptico** — centrar matemáticamente y no a ojo. Círculos deben ser un poco mayores que cuadrados para verse del mismo peso. Fuente: designsystems.com.
8. **Detalle desparejo entre íconos** — unos muy simples, otros muy cargados. El nivel de detalle es un eje de consistencia. Fuente: 站酷 / woshipm.

---

## Valores concretos para un set NEUBRUTALISM (trazo grueso)

Objetivo: look duro, con carácter, alto contraste — el trazo grueso ES la personalidad. Base: partir de Lucide (SVG inline, 24×24) y afinarlo por tokens.

```css
:root {
  --icon-size-sm: 18px;   /* neubrutalism no funciona bien muy chico; sube el mínimo */
  --icon-size-md: 24px;   /* default */
  --icon-size-lg: 32px;

  --icon-stroke: 2.75;    /* grueso — a 24px se ve macizo (rango 2.5–3) */
  --icon-stroke-bold: 3;  /* hover / énfasis */

  --icon-radius: 0px;     /* esquinas VIVAS (neubrutalism = cero redondeo) */
  --icon-linecap: butt;   /* terminación recta, no round */
  --icon-linejoin: miter; /* uniones en punta, duras */

  --icon-color: currentColor;
}
```

Reglas del set neo:
- **Canvas 24×24, área viva 20×20** (2 px de padding). A 18 px, verifica que el trazo grueso no empaste (el espacio entre trazos ≥ grosor del trazo).
- **Trazo 2.75–3 px a 24 px** (vs 2 px del Lucide default). Usa `absoluteStrokeWidth` para que a 32 px siga viéndose grueso pero proporcional: `stroke = (2.75 × 24) / size`.
- **Esquinas vivas (radius 0)**, `butt` caps, `miter` joins → el lenguaje duro y técnico del brutalism.
- **Un solo color plano** heredado por `currentColor` (nada de degradados dentro del ícono).
- **Coordenadas enteras, snap a píxel**, coherencia de grosor en TODO el set. El trazo grueso perdona menos: cualquier ícono con trazo distinto salta a la vista.

---

## Fuentes verificadas

Todas abiertas durante la investigación (WebFetch/WebSearch). Las páginas de Apple SF Symbols y Carbon usage se leyeron vía su versión indexada / v10 por truncamiento de la página principal.

- Lucide — Icon Design Guide (canvas 24×24, trazo 2px, round caps/joins, radios 2/1px, espaciado 2px): https://lucide.dev/contribute/icon-design-guide
- Lucide — Stroke width / `absoluteStrokeWidth` y fórmula `(strokeWidth × 24) / size`: https://lucide.dev/guide/react/basics/stroke-width · https://lucide.dev/guide/lucide/basics/stroke-width
- Google — Material Symbols guide (ejes weight 100–700, optical size 20–48 dp, fill 0–1, grade, alineación de píxel solo en 20/24): https://developers.google.com/fonts/docs/material_symbols
- designsystems.com — A complete guide to iconography (grilla, área viva, ajuste óptico, familia, errores comunes): https://www.designsystems.com/iconography-guide/
- IBM Carbon — Icons contribute (artboard 32×32, padding 2px, área viva 28×28, coordenadas enteras, sin center borders): https://v10.carbondesignsystem.com/guidelines/icons/contribute/
- IBM Carbon — Icons usage (radio 2px, alineación a píxel): https://carbondesignsystem.com/elements/icons/usage/
- Helena Zhang — Icon Grids & Keylines Demystified (4 keylines, ejemplo Phosphor 48px: círculo 28, cuadrado 25, rects 28×22/22×28, trim 6): https://minoraxis.medium.com/icon-grids-keylines-demystified-5a228fe08cfd
- Apple — SF Symbols (Human Interface Guidelines): 9 pesos × 3 escalas, peso óptico casado con el texto: https://developer.apple.com/design/human-interface-guidelines/sf-symbols
- UX Planet — Practical Guide To Icon Design (1.5px sirve 16/24; grueso=2px bold, fino=1–1.5px): https://uxplanet.org/practical-guide-to-icon-design-794baf5624c8
- 知乎 — ICON设计规范之图标尺寸 (tamaños 16/24/32/48, trazo par 2/4px, evitar impares por sub-pixel): https://zhuanlan.zhihu.com/p/368404760
- 站酷 / 人人都是产品经理 — 图标盒子 y ejes de consistencia (estilo, trazo, terminación, radio, bisel, color, sombra): https://www.woshipm.com/pd/1062181.html
- SVG optimization guide (SVGO, ~60% reducción, currentColor, sprite vs inline): https://dev.to/albert_nahas_cdc8469a6ae8/the-complete-guide-to-svg-icon-optimization-for-web-performance-2hng
- IconVectors — Accessible SVG Icons (aria-hidden+focusable=false decorativo; role=img+aria-label significativo): https://iconvectors.io/tutorials/accessible-svg-icons-aria-roles-labels.html
- SVG Genie — SVG Sprites in 2026 (aria-label en el svg, no en use): https://www.svggenie.com/blog/svg-sprite-modern-guide
- Penpot — Developer's guide to design tokens (tokens cubren stroke width, radii, tamaños; escala de tamaño de ícono): https://penpot.app/blog/the-developers-guide-to-design-tokens-and-css-variables/
