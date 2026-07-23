# Fotografia: movimentos de câmera
**Fuente:** pt_direcao | https://youtu.be/QSPODOX9kXw

## Que ensena (2-3 lineas)
Clasifica los movimientos de cámara en internos (zoom, rack focus) y externos (pan, tilt, dolly, truck, pedestal), explicando su efecto narrativo y cómo guían la atención del espectador. Enfatiza que cada movimiento debe tener intención dramática, no ser un error técnico.

## Lecciones accionables

- **Zoom (zoom in / zoom out):** Cámara estática, lente cambia la distancia focal. Usar para efecto diegético (cámaras de show, estilo Tarantino) o para revelar espacio (ej: zoom out en *El Padrino* abre de close a plano general). **Prompt:** `"slow zoom in on character's face, 50mm lens, subtle breathing"` o `"rapid zoom out revealing full set, 24mm wide angle"`.
- **Rack focus (passagem de foco / focus pull):** Cambiar el foco entre planos de profundidad. Guía la mirada del espectador. **Prompt:** `"rack focus from foreground character to background character, shallow depth of field, 85mm f/1.4"`. No usarlo como un "yo-yo" (excesivo ir y venir).
- **Pan (panorâmica horizontal):** Cámara gira sobre su eje horizontal. **Prompt:** `"slow pan right across landscape, 35mm, cinematic"`.
- **Tilt (panorâmica vertical):** Cámara gira sobre su eje vertical. **Prompt:** `"tilt up revealing towering building, 50mm, smooth"`.
- **Dolly (travelling de aproximación/alejamiento):** Cámara se desplaza físicamente hacia adelante/atrás. **Prompt:** `"dolly in on subject, 40mm, tracking shot, emotional intensity"`. Diferencia clave: dolly = movimiento físico del cuerpo de cámara; zoom = solo óptico.
- **Truck (travelling lateral):** Cámara se desplaza lateralmente (izquierda/derecha). **Prompt:** `"truck left following character walking, 35mm, steadicam"`.
- **Pedestal (movimiento vertical completo):** Cámara sube o baja físicamente. **Prompt:** `"pedestal down revealing hidden space beneath floor, 24mm, tension"`.
- **Dolly + Zoom (contra-zoom / efecto vértigo):** Dolly hacia atrás + zoom in (o viceversa). **Prompt:** `"dolly out while zooming in, vertigo effect, 50mm, disorientation"`.
- **Estabilización:** Cámara estable = inmersión natural (simula el ojo humano). Cámara inestable = desorientación o cámara diegética (celular, portátil). **Prompt:** `"stable handheld, slight organic movement, 35mm, documentary style"` o `"intentional shaky cam, diegetic phone footage, 28mm, chaotic"`.

## Reglas para el director de fotografia IA

- Usa **dolly** cuando necesites profundidad emocional y acercamiento físico al personaje; usa **zoom** cuando quieras que el espectador note la presencia de la cámara (efecto diegético o estilizado).
- Para **no alucinar en video IA**, especifica siempre la focal (24mm, 35mm, 50mm, 85mm) y el tipo de movimiento exacto (ej: `"slow dolly in"` no solo `"camera moves"`).
- En diálogos con **rack focus**, alterna con cortes a otra perspectiva (ej: parabrisas, asiento trasero) para evitar que el espectador se desconecte de la narrativa.
- Si usas **zoom**, indica si es rápido o lento: `"rapid zoom in"` para ritmo Tarantino; `"slow zoom out"` para revelación espacial.
- Para **contra-zoom (dolly + zoom)**, especifica direcciones opuestas: `"dolly back + zoom in, vertigo effect"`.
- La **estabilización** debe ser explícita: `"stable, gimbal, smooth"` para inmersión; `"intentional handheld, slight shake"` para realismo diegético.

## Errores comunes que evita o menciona

- **Confundir zoom con dolly:** El zoom es óptico (cámara quieta), el dolly es físico (cámara se mueve). En IA, si pides `"zoom in"` y esperas desplazamiento, alucinará.
- **Uso excesivo de rack focus (efecto yo-yo):** Distrae al espectador de la narrativa. Siempre rompe con otro plano.
- **Zoom sin contexto narrativo:** Puede parecer error de cámara o montaje (ej: *Ha Nacido una Estrella* lo usa como cámara diegética de show).
- **Cámara inestable sin intención:** La imagen temblorosa debe ser decisión estética (diegética o desorientación), no error técnico.
- **No especificar dirección del movimiento:** En prompts IA, `"truck"` sin `"left"` o `"right"` genera ambigüedad.