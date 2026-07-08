# 5 estilos IA: Glitch, Pixel Bits, 1-bit/Ditherpunk, ASCII y Voxel

**Fuente:** AI Mind Revolution | URL https://youtu.be/gzdumddhkqI | 10:13 | Prompts para estilos digitales/retro en Nano Banana Pro (via Google Flow)

---

## Qué enseña (2-3 líneas)

Explica con demostraciones en vivo (Nano Banana Pro vía Google Flow) que los estilos "digitales y de píxeles" no son un bloque monolítico: cada uno tiene su propio vocabulario técnico y reacciona diferente a los prompts. Sin keywords precisos, el modelo elige la variante genérica. El valor está en saber qué palabras clave activan cada sub-estilo y cuándo agregar "highly artistic and visual" para sacar al modelo de su modo realista por defecto.

---

## Lecciones accionables

### Estilo 1 — Glitch Art (dos sub-estilos opuestos)

**Analógico (VHS / CRT)** — lo que el modelo NO genera si no lo pides:
- Keywords obligatorios: `analog glitch art`, `vintage CRT television screen`, `magnetic tape tracking errors`, `heavy horizontal scanlines`, `rolling static snow`, `bleeding phosphor colors`, `VHS texture`, `distorted transmission signals`
- Colores característicos: magenta y cyan desaturados que "sangran"
- Prompt completo usado en video (frame f03):
  > "A cinematic, retro aesthetic photograph of an analog glitch art portrait displayed on a vintage CRT television screen. The subject's face is beautifully distorted by magnetic tape tracking errors, heavy horizontal scanlines, and rolling static snow. Bleeding phosphor colors of muted magenta and cyan pull apart through analog chromatic aberration. Gritty VHS texture, physical screen glare, and distorted transmission signals, moody and artistic glitch art."

**Digital (data corruption)** — lo que el modelo genera por defecto si solo pones "glitch art":
- Keywords: `digital pixel sorting`, `sharp macro blocking`, `data corruption`, `RGB channel splitting`
- Colores: obsidian, ultraviolet, neon green — mucho más saturados y geométricos
- Prompt completo usado en video (frame f05):
  > "A vast mountain range dissolving into digital pixel sorting and sharp macroblocking, aesthetic landscape glitch art. Features clean geometric data corruption, RGB channel splitting, and a color scheme of deep obsidian, ultraviolet, and neon green, high-contrast rendering, crisp and artistic landscape."

---

### Estilo 2 — Pixel Art de Bits (8-bit / 16-bit / 32-bit)

**Regla de bits:**
- `8-bit art style` → muy pocos detalles, bloques grandes, estética NES/Family Game
- `16-bit art style` → más detalles y colores, estética SNES/Sega
- `32-bit art style` → mayor fidelidad aún, más suavizado
- No existe "4-bit" como estilo funcional

**Trampa de Nano Banana:** si solo pones `8-bit art style` o `16-bit art style`, el modelo genera una interfaz de videojuego (plataformer con tiles, score, "GAME OVER"), NO una imagen artística. Para arte, combinar siempre con sujeto + paleta + cierre artístico.

Prompt artístico 8-bit (frame f10):
> "Minimalist 8-bit pixel art of a beach sunset. Features a silhouette palm tree against a low-resolution pink and cyan sky. Strict limited palette, iconic flat shapes, retro video game aesthetic."

Prompt pixel art avanzado con sujeto (frame f12):
> "A detailed pixel art portrait of an aesthetic woman with flowing violet hair, wearing a retro-futuristic jacket. She stands against a neon-lit cyberpunk city at night. Lofi color palette, soft dithered shading, highly artistic and visual."

Keyword de cierre imprescindible en Nano Banana: **`highly artistic and visual`** — sin esto el modelo devuelve una pantalla de consola o resultado híper-realista.

---

### Estilo 3 — 1-bit / Ditherpunk

Extremo minimalista: solo **dos colores** (negro/blanco o verde oscuro/verde claro). Inspirado en Macintosh temprano y Game Boy. El truco es el "dithering" — técnica de tramas de puntos para simular gradientes con dos tonos.

Keywords centrales: `ditherpunk`, `1-bit`, `intricate 1-bit black and white dithering patterns creating texture and gradients`

Prompt completo usado en video (frame f15):
> "High-contrast moody cyberpunk alleyway, ditherpunk style. Intricate 1-bit black and white dithering patterns creating texture and gradients. Rain-slicked neon signs and a single figure, artistic and aesthetic visual composition."

Para mantener fidelidad al Game Boy original agregar el par de colores exacto (verde pálido / verde oscuro) en el prompt.

---

### Estilo 4 — ASCII Art

Imágenes construidas exclusivamente con caracteres tipográficos imprimibles. Técnica de los años 60-70 cuando las pantallas no podían renderizar gráficos.

**Regla de activación:** escribir `ASCII art style`, NO solo `ASCII` (resultado aburrido/sin forma).

**Nivel básico** — gato en ASCII (prompt: `ASCII art style`): el modelo usa `#`, `+`, `%`, `.`, `\` libremente.

**Con restricción de caracteres** — puedes limitar qué caracteres usa el modelo:
> "...only use @, #, . and forward slash" → el modelo lo respeta.

**Con colores** — multiplica el impacto visual:

Prompt ASCII mujer con texto verde brillante (frame f18/f19):
> "Detailed ASCII art portrait of an aesthetic woman, glowing green text on a black background. Complex character shading, dense character mapping, artistic visual and retro."
*(Resultado: cara de mujer en terminal verde tipo Matrix con texto inferior "AESTHETIC_PORTRAIT_V.1.0 - ASCII ART")*

Prompt ASCII con colores custom (frame f20):
> "ASCII art illustration of an aesthetic woman with flowing hair, rendered in pink and cyan text on a dark background. Dense character shading mapping shadows and light. Artistic visual."

---

### Estilo 5 — Voxel Art

Voxel = "volumetric pixel" = píxel 3D = cubo. El voxel art toma la grilla 2D del pixel art y la lleva a tres dimensiones. Resultado automático si solo pones `voxel art`: imágenes estilo Minecraft básico.

Para ir más allá del Minecraft genérico, agregar contexto diorama:

Prompt avanzado (frame f23):
> "A detailed voxel art diorama of a lush floating island at sunset. Complex cube geometry, soft volumetric lighting, miniature aesthetic, highly artistic."

Keywords clave para elevar voxel: `diorama`, `floating island`, `complex cube geometry`, `soft volume lighting`, `miniature aesthetic`

---

## Lo visual observado (estética por estilo según frames)

**Glitch analógico (f04):** cara de mujer dentro de un televisor CRT vintage marrón, scanlines horizontales visibles, colores que se disuelven en magenta/cyan, imagen temblorosa, habitación con libros y lámpara al fondo — muy cinematográfico y oscuro.

**Glitch digital (f05, f08):** montañas violetas/púrpuras con bloques rectangulares de corrupción en la base y la cima, estética de falla de archivo ZIP; también ciudad neón nocturna con aberraciones RGB en cada arista.

**8-bit vs 16-bit (f08):** comparación directa — el de 8-bit es un plataformer con tiles grandes y verdes, sprites gruesos; el de 16-bit tiene el mismo plataformer con texturas más suaves, más colores y más detalle en el fondo. Ambos son interfaces de juego (la trampa).

**Pixel art artístico (f23 arriba):** palmera en silueta negra sobre cielo bicolor magenta/cyan, completamente plano, solo 2-3 colores, aspecto de cartucho de Game Boy color.

**Ditherpunk (f16):** callejón Neo-Tokyo (letreros en japonés: ラーメン, 電気, CYBERNETICS) en blanco y negro puro, figura solitaria con paraguas reflejada en el asfalto mojado, sombreado construido con tramas de puntos — resultado de nivel ilustración editorial, muy diferente al pixel art.

**ASCII básico (f18):** gato formado con `#`, `+`, `.`, `%` sobre fondo gris/blanco, legible pero austero.

**ASCII con color verde (f19):** cara de mujer con texto verde brillante (`glowing green`) sobre fondo negro, estética de terminal hacker/Matrix, con "AESTHETIC_PORTRAIT_V.1.0 - ASCII ART" en la parte inferior.

**Voxel básico (f22):** isla flotante con castillo, árboles, cascadas y cubos de colores brillantes (Minecraft puro), muy saturado y plástico.

**Voxel diorama (referenciado en transcript):** isla flotante con iluminación volumétrica suave al atardecer, cubes con sombras definidas, aspecto de maqueta arquitectónica 3D.

---

## Reglas para agentes

1. **Antes de generar glitch, preguntar o inferir:** ¿analógico (VHS/CRT) o digital (data corruption)? Son opuestos visuales. Sin especificar, el modelo elige digital.
2. **En Nano Banana (y modelos realistas), cerrar siempre prompts artísticos con:** `highly artistic and visual` — sin eso el modelo vuelve a su modo fotorrealista.
3. **Para pixel art bits, especificar siempre la cantidad:** `8-bit`, `16-bit` o `32-bit`. Nunca solo `pixel art` si el cliente espera un resultado retro específico.
4. **Para ASCII, usar siempre `ASCII art style` como activador, nunca solo `ASCII`.** Si necesitas paleta de colores, especificarla (pink and cyan / glowing green on black).
5. **Para voxel que no sea Minecraft:** agregar `diorama` + `miniature aesthetic` + `soft volumetric lighting` al prompt.
6. **Para 1-bit/Ditherpunk:** el keyword doble es `ditherpunk` + `1-bit black and white dithering patterns` — usar ambos juntos asegura el resultado correcto.
7. **Comportamiento diferencial por modelo:** Midjourney con stylize alto interpreta estilos de forma artística automáticamente. Nano Banana necesita instrucción explícita de artisticidad. Adaptar prompts según el modelo destino.
8. **Para restringir caracteres en ASCII:** decirle al modelo qué caracteres PUEDE usar dentro del prompt (ej: "only use @, #, . and /") — el modelo lo respeta.

---

## Errores comunes que evita o menciona

- **"glitch art style" genérico** → siempre digital; si querías analógico, el resultado es incorrecto
- **"ASCII" sin "art style"** → resultado sin forma, aburrido
- **"8-bit art style" o "16-bit art style" sin sujeto artístico** → interfaz de videojuego plataformer, no imagen artística
- **"pixel art" sin bits específicos** → el modelo elige dirección aleatoria
- **"voxel art" sin contexto** → Minecraft básico con cubos planos sin artisticidad
- **Omitir "highly artistic and visual" en Nano Banana** → el modelo tira hacia fotorrealismo o interfaz de videojuego

---

## Aplicabilidad a nuestras skills

| Skill / Agente | Aplicación concreta |
|---|---|
| **estudio-sintetico** | Los 5 estilos son "estaciones" de producción para proyectos de identidad digital, merch retro o campañas con estética gaming. Voxel para renders 3D de producto; ditherpunk para comunicación editorial de alto contraste. |
| **banner-design** | Glitch digital (RGB channel splitting + obsidian/ultraviolet/neon green) es ideal para banners de gaming, crypto o festivales tech. Ditherpunk para banners editoriales de alto contraste blanco/negro. |
| **agro-catalogo-visual** | No aplica directo, pero ASCII art en verde/blanco puede usarse en materiales de tecnología agrícola (dashboard, UI screens). Voxel diorama para visualizaciones de campo en 3D estilizado. |
| **hyperframes / hyperframes-media** | Glitch analógico como efecto de transición entre escenas; pixel art como overlay de HUD o lower-thirds retro; voxel para intros de video. |
| **chiwi-escenografo / chiwi-animador** | 1-bit/Ditherpunk para variantes de episodios en blanco y negro estilo cómic; voxel para episodios en mundo tipo videojuego; pixel art 16-bit para estética SNES de la serie. |
| **estilo-mara (Agrocomercial RRSS)** | No aplica al estilo principal, pero glitch art analógico podría usarse para campañas de temporada o lanzamientos con estética retro nostálgica. |
| **general-video / faceless-explainer** | ASCII art animado (caracteres que forman figuras) como recurso visual de bajo costo; voxel diorama como imagen hero para videos explicativos de tecnología. |
