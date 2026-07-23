# Camera Basics - Aperture
**Fuente:** esc_expo | https://youtu.be/YojL7UQTVhc

## Que ensena (2-3 lineas)
Este video desglosa los ajustes de cámara esenciales para video: resolución, frame rate, shutter speed, picture profile, white balance, ISO, bit rate y herramientas de display. Explica cómo cada parámetro afecta la imagen final y cómo configurarlos correctamente para evitar errores que arruinen el metraje, con énfasis en la regla del obturador de 180° y el uso de perfiles planos/log para postproducción.

## Lecciones accionables
- **Aspect Ratio:** Usa 16:9 para YouTube, 9:16 para TikTok, open gate para ambos formatos. En prompts IA: `aspect ratio 16:9`, `9:16 vertical`.
- **Frame Rate & Shutter Speed (180° Rule):**
  - 24fps → shutter 1/50s (motion blur natural, cinematic feel).
  - 30fps → shutter 1/60s (ligeramente soñado).
  - 60fps → shutter 1/120s.
  - 120fps → shutter 1/240s (slow motion dramático).
  - *Prompt:* `24fps, 180-degree shutter, natural motion blur`.
- **Picture Profile:** Usa flat o log profile (minimal contrast/saturation) para mayor rango dinámico en post. Evita standard o vivid. *Prompt:* `flat color profile, log gamma, wide dynamic range`.
- **White Balance:** Siempre manual, nunca automático. Ejemplo: `white balance: 5600K` para luz día, `3200K` para tungsteno. *Prompt:* `manual white balance, consistent color temperature`.
- **ISO:** Mantén native ISO del sensor (ej. 640). Subir o bajar de ahí introduce ruido y reduce rango dinámico. *Prompt:* `native ISO, low noise, accurate colors`.
- **Bit Rate / Bit Depth:** Prioriza 10-bit o 12-bit sobre 8-bit para mayor flexibilidad en color grading. *Prompt:* `10-bit color depth, high bit rate, robust image for grading`.
- **Display Tools (no aparecen en output final pero guían la toma):**
  - Zebras: alertan de highlights quemados (configurar al 70-80%).
  - Focus peaking: indica áreas en foco.
  - False color: mapa de exposición.
  - Histogram: control de exposición global.
- **Autofocus:** Usa continuous autofocus + tracking autofocus para sujetos en movimiento. *Prompt:* `continuous autofocus, subject tracking, shallow depth of field`.
- **IBIS (In-Body Image Stabilization):** Desactivar en lentes gran angular para evitar wobble en bordes. *Prompt:* `IBIS off, wide-angle lens, stable handheld shot`.

## Reglas para el director de fotografia IA
- **Usa 24fps + 1/50s shutter** cuando busques un look cinematográfico natural; para slow motion dramático, usa 60fps o 120fps con shutter duplicado.
- **Para no alucinar en video IA:** especifica siempre `flat color profile` o `log gamma` en prompts; los modelos tienden a saturar colores por defecto. Si no defines white balance manual, la IA puede generar dominantes de color inconsistentes entre clips.
- **Usa native ISO** en prompts para evitar ruido artificial; si necesitas oscuridad, prefiere `low light, native ISO, clean shadows` en lugar de subir ISO.
- **Activa continuous autofocus + tracking** cuando el sujeto se mueve; para planos fijos, usa `manual focus, deep depth of field` para evitar que la IA genere micro-desenfoques.
- **Desactiva IBIS en gran angular** (≤24mm) para evitar wobble; en teleobjetivos, actívalo para suavizar el pulso.
- **Incluye bit depth en prompts** cuando el resultado requiera grading agresivo: `10-bit color, high dynamic range, flexible for color grading`.

## Errores comunes que evita o menciona
- **Shutter speed incorrecto al cambiar frame rate:** Si grabas a 120fps con shutter 1/50s, el metraje se arruina (motion blur excesivo). Siempre duplica el shutter al frame rate.
- **White balance automático:** Genera inconsistencias de color entre tomas; usa manual y mide con un gris neutro.
- **ISO fuera del nativo:** Subir ISO introduce ruido; bajarlo también degrada la imagen (colores imprecisos, rango dinámico reducido).
- **Bit rate bajo (8-bit):** El video no soporta grading agresivo; se posteriza. Verifica siempre que estés en 10-bit o 12-bit al cambiar resolución/frame rate.
- **IBIS activado en gran angular:** Produce wobble en bordes del encuadre; desactivar para lentes ≤24mm.
- **Autofocus sin tracking:** La cámara salta de foco entre sujetos; usa tracking para mantener el sujeto principal nítido.
- **No usar flat/log profile:** Los perfiles estándar o vívidos limitan el rango dinámico y hacen imposible corregir color en post.