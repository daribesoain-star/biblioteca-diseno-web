# VFX Artists React to Bad & Great CGi 229
**Fuente:** corridorcrew | https://youtu.be/fGqF83ddhrM

## Qué enseña (2-3 líneas)
La cámara falsa se delata cuando su física no coincide con el tiempo del plano: un `camera shake` rápido sobre `slow motion` parece videojuego. También muestra cómo Fincher usa VFX para fabricar un `orbit shot` creíble desde una placa estática, y cómo una mala lectura de iluminación puede parecer maquillaje o CGI.

## Lecciones accionables
- En `slow motion`, el movimiento de cámara también debe sentirse ralentizado: evita `high-frequency vibration`, `post zoom`, `post pan`, `pan and scan` y `digital camera motion` rápido sobre material lento.
- Si agregas `camera shake` en post, sincroniza amplitud, frecuencia y `motion blur` con la velocidad del footage. Un golpe en cámara lenta debería tener shake pesado, breve y de baja frecuencia, no vibración tipo mando de videojuego.
- Un `tripod shot` puede volverse más dinámico en edición, pero si el `pan and scan` llama la atención hacia una cara rígida o un reemplazo facial, empeora el VFX.
- Para `face replacement`, la piel, pelo y ropa deben tener niveles coherentes de movimiento secundario. Si la ropa tiene `secondary motion` real pero el cabello es un mesh inmóvil, el rostro se percibe como máscara.
- En la escena de *Fight Club*, el efecto fuerte nace de una placa real: Edward Norton recibe aire comprimido en la cara, con deformación real de mejillas; el CG se usa para interior de mejilla, venas, match move e integración.
- El `orbit shot` de *Fight Club* no viene de una cámara orbitando al actor: la placa es estática y el fondo reemplazado genera la rotación aparente. Prompt útil: `static close-up plate, artificial orbit shot created by rotating background, matched perspective, photogrammetry head blend`.
- Saltar la línea de 180 grados después de un impacto puede ser intencionalmente desorientador. Úsalo como decisión narrativa, no como cobertura accidental.
- En iluminación de estudio, una combinación de `top down light` y luz inferior puede crear una falsa “línea de máscara” en el cuello: sombra suave bajo la barbilla + sombra dura del cuello/camisa.
- Para sombras duras de cuello o camisa, usa una fuente pequeña: `small point light`, `narrow beam spotlight`, `hard shadow`, `underlighting`, `bounce light from desk`.
- La estética de *Marathon* se describe como `hyper wide angle handheld camera`, `close handheld shaky camera`, `hyper wide field of view`. Traducción práctica: lente 14-20 mm full-frame equivalente, cámara cerca del sujeto, distorsión visible y movimiento humano imperfecto.
- El `wide handheld` ayuda a evitar depender de `shallow depth of field` falso: el realismo viene del movimiento físico de cámara y personajes, no solo de desenfoque.
- Para animación con movimiento físico creíble, filma referencia real con el ángulo, timing y cámara deseados; luego usa `rotoscope`, `witness cameras` y animación manual para conservar microgestos.
- Los `matte paintings` funcionan cuando no necesitas orbitar ni ver el fondo desde muchos ángulos. Prompt útil: `CG characters composited over projected matte painting, limited parallax, 3D camera move through painted environment`.
- Si necesitas océano, agua o elementos naturales y la cámara no exige interacción compleja, filma material real y compónlo: `real water plate`, `locked tripod shot`, `composited background element`.

## Reglas para el director de fotografía IA
- Usa `hyper wide angle handheld camera` cuando quieras energía física, cercanía y caos controlado; mantén la cámara cerca y el movimiento orgánico.
- Usa `tripod shot` cuando el VFX dependa de estabilidad, tracking limpio o reemplazo facial; añade movimiento en post solo si respeta la física del plano.
- Para impactos en cámara lenta, reduce la frecuencia del `camera shake` y aumenta la sensación de peso; no uses vibración rápida.
- Si creas un `orbit shot` en IA, especifica qué rota: cámara real, fondo, sujeto o entorno. Para evitar alucinación, pide `static subject plate with rotating background perspective`.
- Cuando uses `underlighting`, verifica sombras en cuello, barbilla y ropa; una luz inferior pequeña puede crear líneas duras que parecen prótesis.
- Para escenas animadas realistas, pide `filmed performance reference, handheld witness camera, hand-keyed rotoscope animation, preserved wrist and body weight details`.
- Usa `matte painting projection` solo en planos con parallax limitado; si la cámara orbita 180 grados o explora el set, pide entorno 3D completo.
- Mantén coherencia entre velocidad de acción, `motion blur`, shake y focal. Si uno de esos elementos no coincide, el plano se siente digital.

## Errores comunes que evita o menciona
- Aplicar `camera shake` rápido sobre `slow motion`.
- Usar `post zoom and pan` para “arreglar” un plano y terminar destacando el defecto.
- Olvidar `motion blur` o usarlo de forma incoherente con la velocidad del golpe.
- Reemplazar una cara sin animar pelo, expresión o micro-movimiento.
- Confundir sombras de iluminación con máscaras, prótesis o CGI.
- Usar simulaciones caras cuando una placa real de agua, cielo o fondo resolvería mejor el plano.
- Modelar fondos completos cuando un `matte painting` proyectado bastaría para un único ángulo.
- Depender solo de mocap cuando el plano necesita microdetalles manuales de actuación y cámara.