# How to get perfect exposures on film
**Fuente:** esc_expo | https://youtu.be/4csew1KKZ0w

## Que ensena (2-3 lineas)
El video explica cómo exponer correctamente película fotográfica, diferenciando entre sobreexponer (recomendado en cine) y subexponer. Enseña a medir la luz enfocándose en las sombras para obtener negativos densos y detallados, y cómo ajustar ISO, apertura y velocidad de obturación según la intención creativa. También aborda el concepto de "box speed" vs. sobreexposición deliberada.

## Lecciones accionables
- **Metering para sombras (expose for shadows):** Inclina el medidor de luz (app o externo) hacia las zonas más oscuras de la escena para obtener una lectura que garantice detalle en sombras. En prompting: `"metering for shadows"`, `"shadow detail priority"`.
- **Sobreexponer 1-2 stops en película:** Siempre redondear la velocidad de obturación hacia abajo (ej: si el medidor dice 1/160s, usar 1/125s). En prompts: `"overexposed by 1 stop"`, `"dense negative look"`.
- **Ajuste de apertura según intención:** Para fondo desenfocado usar `f/2.8` o `f/4`; para todo enfocado usar `f/5.6` o `f/8`. En prompts: `"shallow depth of field"`, `"deep focus"`.
- **ISO fijo en el medidor:** Mantener el ISO de la película (ej: ISO 200) y solo variar apertura/velocidad. En prompts: `"ISO 200 film stock"`, `"box speed"`.
- **Evaluar prioridad de luces vs. sombras:** Si el sujeto está en las sombras, sobreexponer el cielo; si el sujeto son las luces, subexponer sombras. En prompts: `"highlight detail priority"`, `"shadow detail priority"`.
- **Movimiento de cámara:** No se menciona movimiento específico, pero aplicar `"static shot"` o `"slow pan"` según la escena.

## Reglas para el director de fotografia IA
- **Usa "expose for shadows" cuando la escena tenga alto contraste** (cielo brillante + sujeto en sombra) para evitar negativos planos en video IA.
- **Para no alucinar en video IA, evita prompts que mezclen "underexposed" con "film look"**; la IA tiende a generar ruido o pérdida de detalle. Prefiere `"overexposed by 1 stop"` para textura fílmica.
- **Usa "dense negative" o "thick negative" en prompts** para indicar que la imagen base debe ser rica en información, no quemada ni subexpuesta.
- **Cuando generes movimiento de cámara, especifica "metering for shadows"** para que la IA mantenga consistencia de exposición en toda la secuencia.
- **No uses "auto exposure" en prompts de video IA**; la IA puede generar parpadeos o cambios bruscos de luminancia. Prefiere `"manual exposure"` + `"fixed aperture"`.

## Errores comunes que evita o menciona
- **Subexponer en película:** Error fatal porque no hay datos que recuperar en sombras (a diferencia de digital). En video IA, equivalente a prompts como `"underexposed"` que generan negros sin textura.
- **Confiar en medidores internos de cámaras viejas:** Muchas SLR tienen medidores rotos; usar app externa o medidor de mano. En IA, no asumir que la cámara virtual tiene metering preciso.
- **No redondear la velocidad hacia abajo:** Si el medidor da 1/160s, usar 1/125s (sobreexponer). En prompts, especificar `"shutter speed 1/125"` en lugar de valores exactos.
- **Olvidar que la prioridad cambia según el sujeto:** No siempre exponer para sombras; si el sujeto son las luces (ej: reflejos), subexponer sombras. En prompts, usar `"highlight detail priority"` cuando corresponda.
- **No ajustar ISO en el medidor:** Si usas ISO 800, cambiar la app a ISO 800; de lo contrario, las lecturas serán incorrectas. En prompts, siempre declarar `"ISO [valor]"`.