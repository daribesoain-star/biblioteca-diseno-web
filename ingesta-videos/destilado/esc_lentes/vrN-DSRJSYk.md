# Higgsfield Cinema Studio "Cameras and Lenses" Explained
**Fuente:** esc_lentes | https://youtu.be/vrN-DSRJSYk

## Que enseña (2-3 lineas)
Cómo seleccionar cuerpos de cámara y lentes en Higgsfield Cinema Studio basado en principios reales de cinematografía: tamaño de sensor (más grande = profundidad de campo más reducida), tipo de cámara (film vs digital) y características ópticas de lentes (flare, bokeh, aberraciones). Traduce términos de cine físico a parámetros útiles para prompting de video IA.

## Lecciones accionables

### Cámaras (ordenadas por tamaño de sensor, de mayor a menor profundidad de campo)

| Cámara | Sensor | Tipo | Uso en prompt |
|--------|--------|------|---------------|
| **IMAX** | 52x70mm (70mm) | Film | Máxima profundidad de campo reducida. Usar para planos con fondo muy desenfocado. |
| **Red Raptor** | 40x21mm (Vista Vision) | Digital | Sensor grande digital. Look limpio y moderno. |
| **Sony Venice** | 36x24mm (open gate) | Digital | Estándar Netflix. Look digital limpio, color neutro. |
| **ARRI Alexa 35** | Super 35mm (36x24) | Digital | Look cinematográfico moderno. Muy común. |
| **Panovision Millennium XL2** | 35mm (36x24) | Film | Look fílmico 35mm con grano. |
| **ARRI SR** (Super 16mm) | 12x7mm | Film | Sensor pequeño. Más profundidad de campo. Look retro, sombras elevadas, grano visible. |

**Prompt directo:** "shot on IMAX film camera, shallow depth of field, anamorphic bokeh"

### Lentes y sus efectos visuales en IA

| Lente | Tipo | Efecto visual en IA | Prompt sugerido |
|-------|------|---------------------|-----------------|
| **Zeiss Ultra Prime** | Moderno limpio | Imagen limpia, sin aberraciones, color preciso | "Zeiss Ultra Prime 24mm, clean image, no chromatic aberration" |
| **JDC XL Express** | Retro | Flare arcoíris, artefactos vintage | "JDC XL Express lens, rainbow lens flare, vintage look" |
| **Helios** | Retro | Bokeh en espiral, flare distintivo, negros elevados | "Helios lens, swirly bokeh, lifted blacks, retro flare" |
| **Petzval** | Retro | Aberración esférica, desenfoque circular, look onírico | "Petzval lens, circular out-of-focus, dreamy spherical aberration" |
| **Cook S4** | Clásico | Ligeramente cálido, sin distorsión, workhorse | "Cook S4 lens, warm skin tones, classic cinema look" |
| **ARRI Signature Prime** | Moderno | Nitidez máxima, sin aberración cromática | "ARRI Signature Prime, sharp, modern, clean" |
| **Canon K35** | Vintage | Flare intenso con contraluz, aberración deseada | "Canon K35 vintage lens, backlight flare, dreamy" |
| **LA Macro (probe)** | Especial | Viñeteo, punto de vista extremadamente cercano | "LA Macro probe lens, extreme close-up, vignette" |
| **Hawk V-Lights** | Anamórfico moderno | Flare horizontal tipo Transformers/Star Trek, bokeh ovalado | "Hawk V-Lights anamorphic, horizontal blue flare, oval bokeh" |
| **Lensbaby (tilt-shift)** | Especial | Hiper-enfoque selectivo, plano focal inclinado | "Lensbaby tilt-shift, hyper shallow focus, selective plane" |
| **Panavision C Series** | Anamórfico vintage | Bokeh ovalado, flare azul horizontal suave, look Star Wars/Rogue One | "Panavision C Series anamorphic, oval bokeh, soft vintage flare" |

### Combinaciones favoritas del experto

- **IMAX + Panavision C Series:** Máxima profundidad de campo reducida + look anamórfico vintage. **Prompt:** "IMAX film camera, Panavision C Series anamorphic lens, oval bokeh, shallow depth of field, blue horizontal flare"
- **ARRI SR + Panavision C Series:** Look fílmico suave, sombras elevadas, grano. **Prompt:** "Super 16mm film camera, Panavision C Series lens, film grain, lifted blacks, soft shadows"
- **IMAX + Canon K35:** Flare intenso con contraluz. **Prompt:** "IMAX film camera, Canon K35 vintage lens, backlight flare, dreamy atmosphere"

### Focales mencionadas
- **8mm:** Ojo de pez / porthole look. Usar para planos ultra gran angular.
- **24mm:** Gran angular estándar. Fondo moderadamente desenfocado.
- **Telephoto:** Compresión de fondo, desenfoque extremo.

## Reglas para el director de fotografía IA

1. **Usa IMAX o Red Raptor cuando quieras máxima profundidad de campo reducida** (fondos muy borrosos, separación sujeto/fondo).
2. **Usa ARRI SR (Super 16mm) cuando quieras look fílmico auténtico** con sombras elevadas, grano visible y más profundidad de campo (todo más en foco).
3. **Usa lentes anamórficos (Panavision C Series, Hawk V-Lights) cuando quieras flares horizontales y bokeh ovalado** para ciencia ficción, épico o nostálgico.
4. **Usa lentes vintage (Canon K35, Helios, Petzval) cuando quieras imperfecciones estéticas** como flare, aberración esférica o bokeh swirly.
5. **Usa lentes modernos (Zeiss Ultra Prime, ARRI Signature Prime) cuando quieras imagen limpia y neutra** para producto o comercial sin distracciones.
6. **Para evitar alucinaciones en video IA:** No esperes que la profundidad de campo se mantenga consistente en movimiento. Los flares pueden aparecer/desaparecer. Usa lentes con características muy marcadas (anamórficos, vintage) para forzar al modelo a mantener el estilo.
7. **Para controlar el look final:** Elige cámara + lente como unidad. La cámara define sensor y tipo (film/digital), el lente define aberraciones y flare. No puedes cambiar el iris (apertura) en Higgsfield.
8. **Para look Star Wars / Rogue One:** IMAX + Panavision C Series + focal 8mm o telephoto.
9. **Para look Transformers / J.J. Abrams:** Cámara digital (Sony Venice o Red) + Hawk V-Lights para flare azul horizontal intenso.
10. **Para look documental retro / YouTube:** ARRI SR + lente vintage (Canon K35 o Helios).

## Errores comunes que evita o menciona

- **Error: Asumir que todas las cámaras digitales se ven igual.** El experto señala que Red, Sony y ARRI tienen diferente ciencia de color, pero en IA la diferencia es mínima y corregible en post.
- **Error: Usar lentes anamórficos sin entender el bokeh ovalado.** Si el prompt no genera bokeh ovalado, el lente no está funcionando como anamórfico en IA.
- **Error: Confundir Panovision Millennium DXL2 (digital) con XL2 (film).** Higgsfield muestra imagen incorrecta. El experto recomienda usar XL2 (film) para look fílmico 35mm.
- **Error: Esperar que Lensbaby haga tilt-shift real en IA.** En Higgsfield solo da hiper-enfoque superficial, no plano focal diagonal. Corregir en post.
- **Error: Usar flares en exceso.** El experto advierte que los flares de C Series pueden saturar si se usan en todas las tomas. Reservar para momentos dramáticos.
- **Error: Ignorar el tamaño de sensor.** Sensor más pequeño (ARRI SR) = más profundidad de campo. Sensor grande (IMAX) = menos profundidad. Elegir según necesidad narrativa.
- **Error: Pensar que "film camera" solo añade grano.** También eleva sombras, suaviza transiciones luz/sombra y da textura orgánica.