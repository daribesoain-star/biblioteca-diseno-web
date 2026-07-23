# La Guía de principiantes sobre Lentes de cámara
**Fuente:** esc_lentes_es | https://youtu.be/0m8QVRfqjqI

## Que ensena (2-3 lineas)
Explica la jerarquía lente vs cámara (invertir más en lentes), los tipos de lentes según distancia focal (gran angular, normal, macro, teleobjetivo), y la diferencia crítica entre lentes fotográficos y cinematográficos (números f vs T, anillos de enfoque, peso uniforme). También cubre el factor de recorte (crop factor) en cámaras APS-C vs full-frame.

## Lecciones accionables

### Compatibilidad y adaptadores
- **Verifica mount**: lente Canon no funciona en Sony sin adaptador (costo: $350-$500 USD).
- **Marcas third-party** (Sigma, Rokinon, Tamron): ofrecen versiones para múltiples mounts. Ej: Sigma 18-35mm f/1.8 en mount Canon, luego adaptador a Sony E-mount.
- **Prompt de cámara**: `"shot on Sony a7III with Sigma 18-35mm f/1.8 adapted to E-mount"`

### Distancias focales y su uso en IA
| Focal (mm) | Tipo | Uso en video IA |
|------------|------|-----------------|
| 10-24mm | Wide-angle | `"wide angle lens, 14mm, expansive landscape, architectural interior, exaggerated perspective"` |
| 28-50mm | Normal | `"50mm lens, normal field of view, cinematic portrait, human eye perspective"` |
| 60-105mm | Macro | `"macro lens, 85mm, shallow depth of field, food detail, subject compression against background"` |
| 105mm+ | Telephoto | `"telephoto lens, 200mm, compressed background, wildlife, sports action, distant subject"` |

### Apertura (f-number) para prompts
- **f/1.8**: `"shallow depth of field, bokeh background, low light scene, wide aperture f/1.8"`
- **f/2.8**: `"medium depth of field, sharp subject, f/2.8 aperture, balanced exposure"`
- **f/4-f/8**: `"deep focus, everything in sharp, landscape, group shot, f/8 aperture"`

### Lentes fijos vs zoom
- **Prime (fijo)**: `"prime lens, 35mm f/1.4, fixed focal length, cinematic look, sharp low light"`
- **Zoom**: `"zoom lens, 24-70mm f/2.8, versatile framing, variable focal length"`

### Factor de recorte (crop factor)
- **APS-C (Canon 1.6x)**: 50mm real = 80mm efectivo. Prompt: `"crop sensor camera, APS-C, 35mm lens equivalent to 56mm full frame"`
- **Full-frame**: focal real = focal efectiva. Prompt: `"full frame sensor, 50mm lens, true field of view"`
- **Regla prompt**: especifica `"full frame camera"` o `"APS-C camera"` para controlar campo visual en IA.

### Lentes cinematográficos vs fotográficos
- **Cinema lens**: `"cinema lens, T-stop aperture, T2.8, uniform light transmission, focus pull ring, matched lens set"`
- **Photo lens**: `"photographic lens, f-stop aperture, f/1.8, manual focus, photo lens on video shoot"`
- **Diferencia clave en prompts**: usa `"T-stop"` para precisión de luz entre tomas; `"f-stop"` para look más orgánico/amateur.

## Reglas para el director de fotografia IA

1. **Usa `"prime lens"` cuando quieras máxima nitidez y apertura amplia** en escenas con poca luz o bokeh dramático. Evita zoom si busco calidad óptica superior.

2. **Especifica `"full frame"` o `"APS-C"` en el prompt** para controlar el campo visual real. Si no lo haces, la IA puede alucinar una perspectiva incorrecta (ej: 50mm en APS-C se ve como 80mm).

3. **Para no alucinar en video IA, evita mezclar f-stops y T-stops en el mismo prompt**. Usa solo `"f/1.8"` para lentes fotográficos o solo `"T2.8"` para cinematográficos.

4. **Usa `"matched lens set"` cuando generes secuencias multi-toma** para mantener consistencia de peso, tamaño y transmisión de luz entre planos (evita que la IA cambie la exposición o el balance de blancos).

5. **Para escenas con movimiento de cámara, especifica `"gimbal balanced with cinema lens"`** si quieres transiciones suaves sin rebalanceo visual.

6. **Incluye `"crop factor 1.6x"` en prompts de cámaras APS-C** para que la IA entienda que el campo visual es más cerrado que la focal nominal.

7. **Usa `"macro lens 85mm f/2.8"` para detalles extremos** (comida, texturas, ojos) con compresión de fondo. No uses wide-angle para close-ups de detalle.

8. **Para escenas nocturnas o interiores oscuros, prioriza `"fast prime lens f/1.4"`** sobre zooms. La IA generará menos ruido y mejor iluminación.

## Errores comunes que evita o menciona

- **Comprar lente sin verificar el mount**: lente Canon no funciona en Sony sin adaptador costoso. Prompt incorrecto: `"Canon 50mm on Sony camera"` sin adaptador.
- **Ignorar el crop factor en APS-C**: usar 50mm en Canon 70D da 80mm efectivo (macro, no normal). Error: `"50mm normal lens"` en APS-C → en realidad es teleobjetivo.
- **Asumir que todos los lentes f/1.8 dan la misma luz**: los f-stops varían entre lentes; los T-stops son precisos. Prompt erróneo: `"f/1.8 consistent exposure across shots"` sin especificar T-stop.
- **Usar lentes de diferente peso en gimbal sin rebalancear**: la IA puede generar inestabilidad si no especificas `"cinema lens set, uniform weight"`.
- **Creer que lente caro = cine**: los lentes fotográficos de gama alta (Sigma 18-35mm f/1.8) dan calidad casi indistinguible de cine para principiantes. No necesitas `"cinema lens"` en prompts si buscas look profesional económico.
- **No considerar el factor de recorte al comprar**: si necesitas 50mm normal en APS-C, compra 35mm (56mm efectivo). Error: comprar 50mm pensando que es normal.