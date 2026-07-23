# Demystifying 35mm and 50mm Standard Lenses
**Fuente:** esc_lentes | https://youtu.be/Kufh7FORRBU

## Que enseña (2-3 lineas)
Define el lente estándar (normal lens) como aquel cuya distancia focal equivale aproximadamente a la diagonal del sensor (43mm en full-frame), produciendo un ángulo de visión de 50-55 grados similar al ojo humano. Explica que los 50mm y 35mm son los estándares más comunes en full-frame y sensores con crop factor 1.5x respectivamente, destacando su apertura amplia, calidad óptica superior y capacidad para generar imágenes naturales sin distorsión.

## Lecciones accionables
- **Focal length para full-frame (35mm sensor):** Usar 50mm como estándar; algunos fabricantes ofrecen 43mm más cercanos al cálculo teórico.
- **Focal length para APS-C (crop factor 1.5x):** Calcular dividiendo 50mm / 1.5 = ~33mm; los fabricantes suelen ofrecer 35mm como estándar.
- **Angle of view:** 50-55 grados en diagonal (similar a la visión cómoda del ojo humano).
- **Aperture:** Los estándar son prime lenses con wide aperture (ej. f/1.4, f/1.8, f/2), ideales para low-light e indoor shooting.
- **Uso principal:** Candid portraits con contexto ambiental (incluir surrounding scenery para situar al sujeto).
- **Prompt de cámara para video IA (Veo 3 / Kling / Runway):**
  - `"shot on 50mm prime lens, full-frame sensor, wide aperture f/1.8, shallow depth of field, natural perspective, candid portrait, subject in context with background, soft bokeh, cinematic lighting"`
  - `"35mm standard lens, APS-C crop sensor, angle of view 50 degrees, natural look, no distortion, indoor low-light, wide aperture f/1.4, realistic human eye perspective"`
  - `"standard lens, 43mm focal length, full-frame, prime lens, sharp optics, natural perspective, candid scene, environmental portrait, soft focus falloff"`
- **Movimientos de cámara:** Recomendar slow pans o static shots para mantener la naturalidad del lente estándar; evitar zooms (es prime lens).

## Reglas para el director de fotografía IA
- **Usa 50mm (full-frame) o 35mm (APS-C) cuando** necesites una perspectiva natural, sin distorsión de gran angular ni compresión de teleobjetivo.
- **Usa wide aperture (f/1.4-f/2.8) en prompts** para lograr shallow depth of field y bokeh suave, especialmente en retratos y escenas con poca luz.
- **Para no alucinar en video IA:** Especifica siempre el sensor size (full-frame, APS-C) y el crop factor si usas 35mm; de lo contrario, el modelo puede interpretar mal la focal.
- **Incluye "prime lens, fixed focal length" en prompts** para evitar que la IA genere zooms o cambios de encuadre no deseados.
- **Para escenas de grupo o paisajes con contexto:** Usa 35mm en APS-C o 50mm en full-frame; evita wide-angle lenses (distorsión) y telephoto (compresión excesiva).
- **En prompts de movimiento:** Prefiere "static shot" o "slow pan" para mantener la nitidez y naturalidad del lente estándar.

## Errores comunes que evita o menciona
- **Confundir "standard lens" con "kit zoom lens":** El video aclara que los estándar son prime lenses (focal fija), no zooms; los zooms sacrifican calidad óptica y apertura.
- **Usar 50mm en APS-C como si fuera full-frame:** El crop factor 1.5x convierte un 50mm en ~75mm (teleobjetivo), perdiendo el ángulo de visión natural; hay que usar 35mm en su lugar.
- **Ignorar el sensor size al elegir focal:** El video enfatiza que la definición técnica depende de la diagonal del sensor; no es universal.
- **Pensar que un lente estándar es "aburrido" por no tener zoom:** El video destaca que su superior optical quality y wide aperture lo hacen más versátil que un zoom en condiciones de poca luz.
- **No incluir contexto ambiental en retratos:** El lente estándar destaca por situar al sujeto en su entorno; prompts sin "environmental context" desperdician su ventaja.