# 영상제작 기초 - 영상 잘 찍는 방법은? 촬영기법에 대해 알아봅니다.
**Fuente:** ko_cine | https://youtu.be/L4EsqrhPXmk

## Que ensena
Enseña la importancia del movimiento de cámara suave para lograr un look profesional, contrastando equipos tradicionales (dolly, ruedas) con modernos (slide cam). Explica que un trípode inestable arruina la fluidez del movimiento, incluso con un slider, y que la base sólida es clave para evitar vibraciones y desenfoques no deseados.

## Lecciones accionables
- **Usa un slider (slide cam) para movimientos laterales suaves:** Es el equivalente moderno de un dolly track. En prompts de IA, especifica `smooth lateral tracking shot` o `slider movement from left to right`.
- **Prioriza la estabilidad de la base:** Un slider montado en un trípode inestable genera micro-vibraciones. En IA, evita prompts que impliquen cámara en mano si buscas precisión; usa `tripod-mounted`, `locked-off base`, `stable platform`.
- **Controla el enfoque durante el movimiento:** El slider puede desplazar el plano focal. Para evitar alucinaciones de enfoque, en el prompt añade `deep focus`, `focus pull on subject`, o `rack focus` si es intencional.
- **Focales recomendadas para slider:** Usa focales de 24mm a 50mm (full frame) para mantener la estabilidad visual. En prompts: `24mm lens`, `35mm lens`, `wide angle tracking`.
- **Movimiento de cámara para IA:** Para Veo 3, Kling o Runway, escribe: `camera moves slowly on a slider, parallax effect, foreground and background separate smoothly`.

## Reglas para el director de fotografía IA
- **Usa un slider virtual cuando necesites movimientos laterales precisos:** En IA, simula el slider con `tracking shot, camera moves parallel to subject, no handheld shake`.
- **Para no alucinar en video IA, evita movimientos compuestos complejos:** No combines slider + tilt + zoom en un solo prompt. Separa en `first: lateral tracking, then: slow tilt up`.
- **Cuando el trípode sea inestable, fuerza un plano fijo:** Si la base es débil, usa `static shot, locked camera, no movement` para evitar vibraciones generadas por la IA.
- **Usa `cinematic dolly` en lugar de `slider` si buscas mayor fluidez:** La IA entiende mejor `dolly shot` como movimiento suave y profesional.
- **Para evitar desenfoque por movimiento no deseado:** Añade `motion blur off` o `sharp focus throughout` si el slider es rápido.

## Errores comunes que evita o menciona
- **Montar un slider en un trípode de fotografía general:** El trípode no está diseñado para soportar el peso + movimiento, generando vibraciones y micro-sacudidas que arruinan la toma.
- **Asumir que un slider elimina todo el shake:** El footage se ve suave en pantalla pequeña, pero en monitor grande se revelan vibraciones severas.
- **Mover el enfoque mientras el slider está en movimiento:** Cambiar el foco durante el desplazamiento del slider causa desenfoques no intencionales y pérdida de nitidez.
- **Usar un slider sin contrapeso o nivelación:** La falta de nivelación provoca movimientos diagonales no deseados; en IA, esto se traduce en `unstable horizon` o `tilted frame`.