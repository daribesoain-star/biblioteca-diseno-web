# 04 — Generar logos y assets de marca con IA de forma PROFESIONAL

> Ingesta verificada (julio 2026). Cada capacidad/dato tiene URL abierta y confirmada (ver "Fuentes verificadas").
> Arsenal real de Dari: **Ideogram** (MCP), **Recraft** (MCP), **Gemini/Nano Banana**, **OpenAI gpt-image**, **Replicate**. `fal` PROHIBIDO por costo — no se usa ni se recomienda.
> Regla de oro que atraviesa todo el documento: **la IA es para EXPLORAR el concepto; el asset FINAL de marca casi siempre se termina/reconstruye en vectorial.** Ningún modelo generativo escribe SVG geométrico limpio de forma confiable (ver "IA vs SVG artesanal").

---

## Qué herramienta para qué

| Herramienta | Fortaleza real para LOGOS | Límite real | Salida | Cuándo usarla (arsenal Dari) |
|---|---|---|---|---|
| **Ideogram** (v3 / 4.0) | La mejor en **texto legible dentro de la imagen**: wordmarks, tipografía, letras correctas. Entiende kerning y peso tipográfico; ~95% de precisión de texto en frases cortas. | El texto se degrada con frases largas, fuentes decorativas (script/graffiti/curvo) o layouts recargados. Rankea bajo en jerarquía tipográfica compleja de marca. Salida **raster** (hay que vectorizar). | Raster (PNG) | **Logo CON texto**: wordmark, letras dentro del ícono, afiche con nombre legible. MCP `ideogram` (key propia). |
| **Recraft** (V4 / V4.1 Vector) | **Único que genera SVG nativo real** (paths vectoriales, no raster envuelto). Entiende convenciones de vector: flat, iconografía, estructura de logo, paletas de marca. **Brand style / brand kit** para consistencia entre assets. **Vectorize** de raster a SVG. | Funciona "mejor como punto de partida que como sistema de producción final"; la precisión geométrica pura (círculos perfectos, simetría) igual conviene rematarla en Illustrator/Figma. | **SVG nativo** editable (Figma/Illustrator/Sketch) + PNG | **Logo/ícono VECTORIAL editable**, sets de íconos consistentes, y **vectorizar** cualquier raster (venga de Ideogram/Gemini/OpenAI). MCP `recraft`. |
| **Gemini / Nano Banana** (Nano Banana 2 `gemini-3.1-flash-image`, Nano Banana Pro `gemini-3-pro-image`, Lite, y legacy `gemini-2.5-flash-image`) | Exploración rápida de conceptos, **variación visual**, mockups en contexto, sistemas de color, layout de prueba. Nano Banana Pro renderiza texto legible de alta fidelidad. **Edición con referencia**: hasta 14 imágenes de referencia, consistencia de personajes, inpainting/máscara semántica, transferencia de estilo. | Puede **deformar letras / inventar ortografía** (poco fiable para wordmark final). Sin control de kerning exacto. **NO produce SVG** (solo raster). Marca de agua SynthID por defecto. | Raster (PNG/JPG, hasta 4K) | **Conceptos rápidos y edición con referencia** (probar direcciones, mockup del logo en contexto, iterar sobre un boceto). MCP `gemini` / `openai analyze_media`. |
| **OpenAI gpt-image** (gpt-image-1.5 / 2) | Texto casi perfecto y el **control composicional más preciso** de los generalistas (lidera benchmarks de diseño 4.76). Sigue guías de marca custom, buena para packaging/UI copy. | "No produce logos" como sistema de marca: da una imagen bonita, no un archivo de marca. Raster; hay que llevar a Recraft para vectorizar. | Raster (PNG) | Alternativa/gemela de Gemini para **concepto + composición fina**. MCP `openai generate_image`. |
| **Replicate** (recraft-vectorize, modelos de imagen) | Pasarela para correr `recraft-ai/recraft-vectorize` y modelos de imagen por API sin usar `fal`. | Es infraestructura, no criterio: mismo límite de vectorización que la herramienta que corre. | Según modelo (SVG con recraft-vectorize) | **Vectorizar por API** o correr modelos puntuales cuando no se quiera usar el MCP directo. |

**Regla de ruteo de una línea:**
- Logo **con texto legible** → **Ideogram**.
- Logo/ícono **vectorial editable** o **vectorizar un raster** → **Recraft**.
- **Concepto rápido / edición con referencia** → **Gemini (Nano Banana)** o **OpenAI gpt-image**.
- **Nunca** entregar el raster de la IA como logo final: pasar por Recraft vectorize + limpieza.

---

## Cómo promptear un logo (estructura + palabras clave)

### Estructura canónica del prompt
Fórmula convergente entre las fuentes (ManyPixels, SVG Genie, DesignRush, ebaqdesign):

```
[tipo de logo] + [concepto/sujeto ÚNICO] + [estilo] + [forma/composición]
+ [colores (2–3, con hex si hay marca)] + [restricción de producción/vector]
+ [exclusiones negativas]
```

Desglose:
1. **Tipo de logo**: `wordmark`, `pictorial mark`, `emblem/badge`, `abstract mark`, `mascot`.
2. **Concepto ÚNICO** (una idea, no un cuadro): "a fox" ✅ — no "a fox holding a key in front of a mountain at sunrise" (eso se vuelve portada de libro infantil).
3. **Estilo**: `minimalist`, `geometric`, `flat vector`, `line art`, `outline`, `vintage badge`.
4. **Forma / negative space**: describe positivo Y negativo — "swan where the negative space between the wings forms a heart", "letter formed by negative space within an arrow".
5. **Colores**: 2–3 nombrados o hex — "deep navy and warm gold". Con marca, poner el hex exacto.
6. **Restricción técnica**: `isolated on a plain white background, centered, square 1:1, flat vector design`.
7. **Exclusiones**: `no photorealism, no 3D, no gradients, no shadows, no glow, no fine line details, no extra text`.

### Palabras que ayudan a que salga LIMPIO y escalable
`flat vector` · `geometric` · `simple shapes` · `clean lines` · `clean silhouette` · `solid colors` · `minimal` · `high contrast` · `two-color` / `monochrome` · `transparent background` · `one-color version` · `centered, 1:1` · `SVG-friendly shapes`.

### Palabras que ENSUCIAN el vector (evitar → reemplazo)
| Evitar | Problema | Usar en su lugar |
|---|---|---|
| `realistic` | fragmentos trazados, imposible de vectorizar | `flat vector` |
| `3D glossy` | degradados y sombras que no escalan | `solid geometric` |
| `vintage distressed` | cientos de paths de textura | `clean retro badge` |
| `detailed illustration` | ilegible en tamaño chico | `simple symbol mark` |
| `watercolor` | bordes tipo raster | `soft rounded flat shapes` |

### Bloque de cierre "producción" (pegar al final del prompt)
```
flat vector design, transparent background, clean silhouette, maximum three colors,
no photo texture, no 3D, no glow, no mockup shadow, no fine line details, no small text,
SVG-friendly shapes.
```

### Reglas de texto (Ideogram)
- Poner el texto exacto entre **comillas dobles rectas**: `wordmark logo "AGROCOMERCIAL" ...`.
- Texto **corto**: una o dos palabras rinden mucho mejor que frases.
- Evitar curvar texto largo (ahí es donde más se corrompen letras).
- **Separar el símbolo del wordmark**: genera el ícono por un lado y el texto por otro; los modelos generalistas fallan mezclando ambos.

### Cómo pedir variantes
- Generar **6–10 variaciones por prompt** para explorar el espacio de diseño (Recraft/generalistas).
- Cambiar un solo eje por tanda (forma, o paleta, o estilo) para comparar limpio.
- En Ideogram, tanda con free tier = 10 prompts/día; el resto ya es de pago.

### Ejemplos verbatim que funcionan (fuentes verificadas)
- **Pictorial coffee** (SocialSight/MarketPrompter): `"Flat vector logo mark for a coffee shop: a single coffee bean formed by two interlocking crescent shapes, simple geometric construction, deep espresso brown and cream, isolated on a plain white background, centered, no text, no gradients, no 3D effects, no shadows"`.
- **Wordmark** (ManyPixels): `"A futuristic wordmark for NEXUS. Heavy-weight sans-serif, letter X stylized as arrows. Electric blue and charcoal. Flat vector, white background, high readability."`
- **Recraft ícono** (MindStudio): `"Geometric fox head, minimal vector logo, clean lines, contained in a circular badge, no text, flat design, two-color."`
- **Wordmark Ideogram** (ebaqdesign): `'a wordmark logo "High-End" for a luxury clothing brand, serif font, on a white background'`.
- **Chino** (ai-bot.cn / Pixso): estilos usables como keywords — `扁平风` (flat), `极简` (minimal), `矢量` (vector), `几何线性` (geométrico lineal), `国潮` (estilo chino), `插画` (ilustración). Ej. Pixso: `logo设计，钻石，极简设计，矢量插图，扁平的，高质量`.

---

## IA vs SVG artesanal (regla de decisión)

**Por qué la IA falla en geometría (el "hidden geometry problem"):**
1. **Sin loop visual**: los modelos que "escriben SVG" predicen tokens de texto y nunca renderizan lo que producen; un SVG geométricamente roto pasa la validación si la sintaxis es correcta.
2. **Alucinación de coordenadas**: `120` vs `121` son solo tokens distintos sin significado espacial → polígonos "temblorosos" donde debería haber curvas limpias.
3. **Pérdida de intención geométrica**: la IA traza estadísticamente, no estructuralmente. Un círculo termina como "47 vértices" en vez de centro + radio. "Nunca vio un círculo".

**Test rápido de calidad:** *hacer zoom a 400% antes de aprobar. Si una forma simple tiene más de 8 anchor points, la IA adivinó.*

### Regla de decisión

| Caso | Gana | Por qué |
|---|---|---|
| **Estilos GEOMÉTRICOS simples** (neubrutalism, formas planas, ícono monocromo, símbolo de 2–3 formas) | **SVG a mano** (Figma/Illustrator, o incluso escribir el path) | Preciso, editable nodo a nodo, círculos/ángulos perfectos, escala perfecto, cero anchors basura. La IA casi siempre queda "un poco chueca". |
| **Wordmark / tipografía exacta** | **SVG a mano** (usar la fuente real, convertir a curvas) | El texto de la IA se corrompe y no controla kerning; se reconstruye con la tipografía verdadera. |
| **Exploración de concepto / dirección de marca** | **IA** (Gemini/OpenAI/Ideogram) | 10 conceptos en el tiempo de 1 a mano; variación visual, paletas, mockups en contexto. |
| **Ilustración, texturas, estilos complejos, mascota, escena** | **IA** | Aquí la difusión brilla; a mano sería carísimo. |
| **Ícono simple con formas audaces, un color, fondo limpio** | **IA vectoriza bien** (Recraft) — a veces mejor que Image Trace de Illustrator (paths más limpios) | Caso donde el auto-trace de IA sí rinde. |
| **Precisión de marca / print / bordado / brand guidelines** | **SVG a mano** | Requiere control de cada ancla, curva y hex. |

**Regla operativa (una línea):** para **formas geométricas simples y wordmarks → SVG artesanal** (más preciso, editable y escala perfecto). Para **conceptos, ilustración, texturas y estilos complejos → IA**, y luego **siempre** Recraft vectorize + limpieza. El flujo real es **híbrido**: IA hace la primera pasada, el humano/Illustrator hace el "último 20%" (reducción de nodos, curvas, reconstrucción de texto, consolidación de color).

---

## Del concepto al asset final (pipeline realista)

1. **Concepto (IA raster)** — Gemini/OpenAI/Ideogram. Explorar direcciones, generar 6–10 variantes, elegir 1 dirección + guardar 2–3 rechazadas (para justificar la elección).
2. **Proof / checklist** — validar la dirección elegida antes de invertir en vector:
   - ortografía correcta (si tiene texto),
   - funciona en **un solo color**,
   - legible a **16px / 32px** (favicon, avatar),
   - test de originalidad (que no clone una marca existente),
   - se ve bien en un mockup de contexto.
3. **Vectorizar** — llevar el raster a **Recraft Vectorize** (`Vectorize` en Studio, o `recraft-ai/recraft-vectorize` por Replicate/API). Input PNG/JPG/WEBP < 5 MB, < 16 MP, lado ≤ 4096 px. Salida **SVG editable**. Usar el **reductor de color** para simplificar y el ajuste de swatches/espectro para calzar la paleta de marca. (Alternativa: reconstruir a mano en Figma/Illustrator si es geométrico/wordmark — suele ser lo correcto.)
4. **Limpiar el SVG** — abrir en Figma/Illustrator: quitar fondo y fragmentos sueltos, **reducir nodos** (zoom 400%, >8 anchors en forma simple = rehacer), suavizar curvas, **reconstruir el texto** con la fuente real (nunca dejar texto trazado), consolidar a los hex exactos de los tokens de marca. Verificar `viewBox` correcto.
5. **Ajustar a la grilla** — alinear a la grilla base (4px del design system), forzar círculos/ángulos exactos, centrar, versión en caja y sin caja.
6. **Exportar el set** — SVG maestro primero; luego derivar **PNG** (varias resoluciones), **PDF**, versión **monocromo/una tinta**, versión sobre fondo oscuro, favicon, app-icon. El PNG se saca SOLO después de aprobar el SVG maestro.

> Nota de arsenal: en toda esta cadena `fal` NO se usa (prohibido por costo). Vectorización = Recraft (MCP) o `recraft-vectorize` vía Replicate. Concepto = Gemini/OpenAI/Ideogram (MCP). Verificar saldo antes de gastar donde aplique.

---

## Errores comunes

1. **Entregar el raster de la IA como logo final** — no escala, no es editable, no hay una tinta. Siempre vectorizar + limpiar.
2. **Texto mal escrito / letras inventadas** — usar **Ideogram** para texto, comillas dobles, texto corto; y aun así reconstruir el wordmark con la fuente real. Nunca dejar texto trazado por la IA.
3. **Degradados y 3D que no escalan** — pedir `flat`, `solid`, `no gradient`, `no 3D`; los degradados se ven bien en pantalla y mueren en print / una tinta / tamaño chico.
4. **Detalle imposible de reproducir** — `detailed illustration` / `vintage distressed` generan cientos de paths y logos ilegibles a 16px. Pedir `simple symbol mark`.
5. **"Look IA" genérico** — prompt vago = salida genérica. Meter **un detalle propio y ownable** de la historia de marca; separar símbolo de wordmark; evitar el cliché (monedas, signos $, escudos, gradientes de relleno).
6. **Geometría chueca** — círculos/ángulos "casi perfectos" de la IA. Rematar a mano; test del zoom 400% / regla de los 8 anchors.
7. **No poder editar el resultado** — si el asset no queda en SVG con paths editables (o texto en curvas reconstruido), no sirve para brand guidelines. El objetivo final es un archivo de marca, no una imagen bonita.
8. **Pedirle SVG directo a un modelo que "escribe SVG"** — sale con coordenadas alucinadas. Mejor: raster de calidad → Recraft vectorize → limpieza; o directamente Recraft V4 Vector (SVG nativo) para íconos/logos simples.

---

## Fuentes verificadas

Todas abiertas y confirmadas en esta corrida (julio 2026):

- Ideogram — logo/wordmark, texto legible, límites, prompts: https://www.ebaqdesign.com/blog/ideogram-logo-design
- Ideogram — precisión de texto, comillas dobles, texto corto (guía prompt): https://www.imagetoprompt.dev/blog/ideogram-prompt-guide/ *(vía WebSearch, corroborado)*
- Recraft V4.1 brand design — SVG nativo, brand kit, edición nodo a nodo, ejemplos de prompt: https://www.mindstudio.ai/blog/recraft-v4-1-brand-design-logos-svg-assets
- Recraft — doc oficial de Vectorizing (raster→SVG, control de color, límites): https://www.recraft.ai/docs/recraft-studio/format-conversions-and-scaling/vectorizing
- Recraft Vectorize — API/límites (PNG/JPG/WEBP <5MB, <16MP, ≤4096px): https://www.recraft.ai/ai-image-vectorizer
- Recraft Vectorize por Replicate (alternativa a fal): https://replicate.com/recraft-ai/recraft-vectorize
- Gemini/Nano Banana — doc oficial (modelos, texto en imagen, edición con referencia, solo raster): https://ai.google.dev/gemini-api/docs/interactions/image-generation
- Nano Banana logo — concepto → archivo de marca, límites de texto, workflow de handoff: https://yingtu.ai/en/blog/nano-banana-logo-generator
- Prompt de logo — estructura, keywords, negativos, ejemplos verbatim: https://www.manypixels.co/blog/brand-design/best-ai-logo-prompts
- Prompt SVG-ready — keywords limpias, tabla de palabras a evitar, checklist 16px/viewBox: https://www.svggenie.com/blog/ai-logo-prompt-examples-svg
- Prompt de logo — fórmula subject+style+color+constraints, negative space: https://socialsight.ai/prompt-guides/ultimate-guide-ai-logo-generation *(vía WebSearch, corroborado)*
- IA vs SVG artesanal — cuándo cada uno, geometría, híbrido: https://www.svggenie.com/blog/svg-genie-vs-illustrator *(vía WebSearch, corroborado)*
- "Hidden geometry problem" — por qué la IA falla en SVG geométrico, regla del zoom 400% / 8 anchors: https://www.inkydesignworks.com/posts/ai-vectorization-clean-svg-2026
- Benchmark 2026 — gpt-image vs Ideogram vs Nano Banana vs Recraft, workflow recomendado: (vía WebSearch DesignLab / VibeDex) https://designlab.com/blog/top-best-ai-logo-generators-a-review
- OpenAI — modelo de generación de imagen en API (gpt-image, texto): https://openai.com/index/image-generation-api/
- Chino (ai-bot.cn) — 15 generadores AI logo, keywords 扁平/极简/矢量, export SVG: https://ai-bot.cn/best-ai-logo-makers/
- Chino (WebSearch) — prompts logo 矢量/极简, herramientas con salida vectorial: https://pixso.cn/designskills/ai-generated-logo-tutorial/
