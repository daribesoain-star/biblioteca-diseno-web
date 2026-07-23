# Make your color grading like a movie.
**Fuente:** esc_color | https://youtu.be/iwucr_bP3n8

## Que enseña (2-3 lineas)
Desglosa el proceso de recrear looks cinematográficos de películas como *Children of Men* y *Triangle of Sadness* mediante un análisis sistemático de luma, color y saturación usando scopes. Enseña a traducir referencias visuales en lenguaje de color y luego en correcciones accionables en Premiere, DaVinci Resolve y Final Cut Pro.

## Lecciones accionables

### 1. Evaluación de Luma y Contraste (Luma/Contrast Analysis)
- **Preguntas clave:** ¿Es una escena brillante u oscura? ¿High key o low key? ¿Hay detalle en sombras y altas luces?
- **Herramienta:** Waveform monitor (IRE scale)
- **Ejemplo *Children of Men*:** Trazo agrupado en sombras, contraste desde 0 IRE hasta 70-80 IRE. Look low-key.
- **Ejemplo *Triangle of Sadness*:** Pieles entre 40-70 IRE, altas luces y sombras con detalle. Look de alto contraste en día soleado.
- **Acción:** Usar Curves (S-curve) para empujar sombras abajo y ajustar altas luces hasta que el waveform coincida con la referencia.

### 2. Evaluación de Color (Color Analysis)
- **Preguntas clave:** ¿Color dominante? ¿Color scheme? ¿Color en altas luces? ¿Color en sombras?
- **Herramientas:** Waveform en RGB overlay + Vectorscope
- **Ejemplo *Children of Men*:** Tinte verde en altas luces (cielo), azul en sombras y medios tonos. Vectorscope apunta a azul/teal con picos en amarillo/rojo.
- **Ejemplo *Triangle of Sadness*:** Vectorscope muestra línea casi recta de naranja a teal. Look teal-orange.
- **Acción:** Color Wheels para inyectar color en sombras/medios/altas. Luego Hue vs Hue curves para rotar amarillos hacia naranja y azules hacia teal.

### 3. Evaluación de Saturación (Saturation Analysis)
- **Preguntas clave:** ¿Niveles de saturación general? ¿Algún color más saturado que otros?
- **Herramienta:** Vectorscope (extensión del trazo)
- **Ejemplo *Children of Men*:** Tinte azul general pero pieles menos saturadas.
- **Ejemplo *Triangle of Sadness*:** Saturación ligeramente menor que el clip original.
- **Acción:** Secondary correction (HSL Qualifier / Color Key / Color Mask) para aislar pieles, invertir selección y ajustar saturación selectivamente. Hue vs Sat curves para bajar saturación de rangos específicos.

### 4. Correcciones Secundarias (Secondaries)
- **Ejemplo *Triangle of Sadness*:** Aislar cielo con qualifier + shape mask, bajar brillo, añadir teal, subir saturación. Aislar tonos cálidos de piel, oscurecer y bajar saturación para efecto bronceado.

### Prompts de cámara para video IA (derivados de la lección)
- *"Low-key lighting, overcast day, deep shadows with detail, highlights at 70 IRE, green tint in sky, blue shadows, teal and orange color palette, desaturated skin tones, cinematic color grade, 35mm anamorphic, shallow depth of field, handheld camera movement"*
- *"Bright sunny day, high contrast, rich detail in highlights and shadows, teal-orange color scheme, warm skin tones with tan quality, blue sky with teal tint, saturated sky, cinematic grade, 50mm prime lens, slow pan right, golden hour light"*

## Reglas para el director de fotografía IA

1. **Usa el waveform en RGB overlay** cuando necesites igualar el balance de color de una referencia; no confíes solo en el ojo.
2. **Usa el vectorscope** para identificar el color scheme dominante (teal-orange, azul-verde, etc.) y ajusta la saturación por rango.
3. **Para no alucinar en video IA**, siempre empieza con un clip que tenga art direction similar al look que buscas; el color grading no puede inventar objetos o iluminación que no existen.
4. **Aplica la S-curve primero** (contraste) antes de tocar color; el ojo humano percibe el color diferente según el brillo.
5. **Usa secondary corrections** (qualifier/mask) para aislar pieles y cielo; en video IA, los tonos piel alucinan fácilmente si se saturan o desaturan sin máscara.
6. **Mantén la referencia en side-by-side** con scopes visibles en todo momento; en IA generativa, la coherencia de look entre frames depende de tener parámetros fijos de contraste y color.

## Errores comunes que evita o menciona

- **Saltarse el análisis de luma:** Intentar igualar color sin antes igualar contraste produce resultados falsos; el waveform es la base.
- **Ignorar la art direction del clip original:** No se puede recrear un look de día nublado si el footage fue grabado a pleno sol; el color grading tiene límites.
- **Saturar todo por igual:** En *Children of Men*, el azul domina pero las pieles se mantienen desaturadas; aplicar saturación global arruina el look.
- **No usar scopes en RGB overlay:** Confiar solo en la vista previa lleva a desbalances de color que en video IA se amplifican entre frames.
- **Olvidar la máscara para el cielo:** En *Triangle of Sadness*, el cielo lavado arruina el look; sin un qualifier + shape mask, el cielo nunca igualará la referencia.