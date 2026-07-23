# How Cinematographers Set Their Exposure
**Fuente:** esc_expo | https://youtu.be/f8Ame_LJDOU

## Que ensena
La exposición en cine no es solo "subir/bajar brillo"; es una decisión narrativa que define el tono de la historia. Se controla mediante seis variables (ISO, shutter, apertura, frame rate, ND filters, luz de la escena) y se mide con herramientas como false color y waveform para proteger highlights y evitar crushed shadows. La clave está en separar la exposición creativa (que puede romper reglas) de la exposición técnica (que debe mantener detalle en las zonas críticas).

## Lecciones accionables

### Variables de exposición para prompts de video IA
- **ISO / Sensitivity:** Afecta ruido/grano. En IA, usa `grain texture`, `film grain`, `low noise` para simular ISO bajo; `heavy grain`, `noisy image` para ISO alto.
- **Shutter Speed / Shutter Angle:** Controla motion blur. Prompt: `180-degree shutter`, `natural motion blur`, `sharp motion` (ángulo bajo), `stuttery motion` (ángulo alto).
- **Aperture / T-stop:** Controla profundidad de campo. Prompt: `shallow depth of field`, `T/2 aperture`, `background bokeh`, `wide open aperture` vs `deep focus`, `T/8 aperture`, `everything in focus`.
- **Frame Rate:** 24fps = cinematic motion; 60fps = video look. Prompt: `24fps cinematic motion`, `slow motion 60fps`.
- **ND Filters:** Reducen luz sin cambiar color. Prompt: `neutral density filter`, `ND 1.2`, `4-stop ND`, `internal ND`.
- **Lighting:** La variable más importante. Prompt: `key light`, `fill light`, `practical lamp`, `window light`, `dimmed practical`, `ND gel on window`.

### Herramientas de exposición para prompts
- **False Color:** Mapea IRE values (0-100). Prompt: `false color exposure`, `skin tones at 70 IRE`, `highlights at 90 IRE`, `shadows at 10 IRE`.
- **Waveform:** Mide exposición horizontalmente. Prompt: `waveform monitor`, `exposure spike at center`, `highlights below 100 IRE`.
- **Light Meter:** Medición física. Prompt: `incident light meter`, `spot meter reading`, `T-stop measurement`.

### Técnicas específicas
- **Expose for highlights / Protect highlights:** Bajar exposición hasta que los highlights conserven color, luego levantar sombras con luz artificial. Prompt: `exposed for highlights`, `highlight detail preserved`, `soft highlight rolloff`.
- **Contrast Ratio:** Diferencia entre key light y fill light. Prompt: `low contrast ratio`, `soft fill light`, `high contrast ratio`, `moody shadows`, `chiaroscuro lighting`.
- **Dynamic Range:** 15-17 stops en cámaras cinema; <14 en consumer. Prompt: `wide dynamic range`, `15 stops dynamic range`, `no blown highlights`, `no crushed blacks`.
- **LUT for exposure:** Usar LUT en monitor, no log image. Prompt: `exposure LUT`, `rec709 LUT`, `log to rec709`, `flat log image`.

### Focales y movimientos (inferidos del contexto)
- **Aperture y focal length:** T/2 para shallow depth of field; T/8 para deep focus. Prompt: `50mm lens at T/2`, `35mm at T/8`, `shallow depth of field with 85mm`.
- **ND calculation:** Diferencia en stops entre apertura medida y apertura deseada. Ej: T/8 a T/2 = 4 stops = ND 1.2. Prompt: `ND 1.2 filter`, `4-stop ND reduction`.

## Reglas para el director de fotografía IA

1. **Usa "exposed for highlights" cuando quieras mantener detalle en zonas brillantes** (ventanas, luces prácticas, cielos). En IA, esto evita que el modelo queme áreas blancas sin textura.

2. **Usa "low contrast ratio" para comedias y escenas diurnas**; "high contrast ratio" para noir, thriller, drama oscuro. La IA tiende a aplanar el contraste si no se especifica.

3. **Para no alucinar en video IA, especifica siempre el rango dinámico** con prompts como `wide dynamic range`, `15 stops dynamic range`, `no blown highlights, no crushed blacks`. Sin esto, la IA puede generar blancos puros o negros sin detalle.

4. **Usa "false color exposure" o "waveform monitor" como referencia visual** en prompts de estilo documental o making-of. No para el resultado final, sino para guiar la estética técnica.

5. **Cuando uses shallow depth of field, especifica la apertura** (T/2, T/1.4) y la focal (50mm, 85mm). La IA necesita ambos para calcular correctamente el desenfoque.

6. **Para motion blur natural, usa "180-degree shutter"** en el prompt. Sin esto, la IA puede generar motion blur excesivo o inexistente.

7. **Evita "log image" en el prompt final** a menos que busques un look flat para postproducción. La IA interpreta "log" como imagen desaturada y de bajo contraste, no como metadato técnico.

8. **Usa "ND filter" cuando necesites reducir luz sin cambiar apertura** (ej: exteriores brillantes con shallow depth of field). La IA entiende ND como un filtro físico que oscurece sin alterar color.

## Errores comunes que evita o menciona

- **Blown highlights a pure white:** El error más grave. La IA tiende a quemar ventanas, cielos y luces prácticas si no se especifica `highlight detail preserved`. En cine, se evita exponiendo para highlights y usando ND gels o dimmers en prácticas.
- **Crushed shadows a pure black:** Ocurre cuando el contraste excede el dynamic range. En IA, se evita con `shadow detail`, `no crushed blacks`, `soft shadow falloff`.
- **Exponer solo mirando el monitor:** Los monitores no calibrados engañan. En IA, no hay monitor físico, pero el error equivalente es no especificar IRE values o false color reference.
- **Usar log image sin LUT:** En postproducción, una imagen log puede parecer bien expuesta pero resultar sub/sobrexpuesta al aplicar LUT. En IA, evitar `flat log` a menos que se especifique `rec709 LUT applied`.
- **Confundir exposición creativa con exposición técnica:** The Batman usa exposición baja (moody); Palm Springs usa exposición alta (bright). Ambos son correctos si la intención narrativa es clara. En IA, especificar el tono: `moody low-key exposure` vs `bright high-key exposure`.
- **No calcular ND correctamente:** Si mides T/8 y quieres T/2, necesitas 4 stops de ND (ND 1.2). En IA, especificar `ND 1.2` o `4-stop ND` para exteriores brillantes con shallow depth of field.
- **Subexponer y subir ISO en post:** Mejor tener demasiada luz y usar ND que poca luz y subir ISO (introduce ruido). En IA, evitar `high ISO`, `noisy shadows`; preferir `low ISO`, `clean shadows`.