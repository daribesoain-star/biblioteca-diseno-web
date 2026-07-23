# [영상 촬영 기초강좌] 1-5 카메라 무브먼트 / 180도 법칙과 30도 법칙
**Fuente:** ko_cine | https://youtu.be/J4xUS_pSyMk

## Que ensena (2-3 lineas)
Clasifica los movimientos de cámara en dos grandes grupos: **cámara fija con cabezal móvil** (pan, tilt, roll, zoom) y **cámara que se desplaza físicamente** (push in/out, slide, boom up/down, tracking, arc). Explica la **Regla de los 180°** para mantener la continuidad espacial en diálogos y la **Regla de los 30°** para evitar cortes visualmente incómodos entre tomas del mismo sujeto.

## Lecciones accionables

### Movimientos de cámara fija (solo cabezal)
- **Pan (Panorámica):** Cámara fija, giro horizontal. Usar para mostrar panoramas, interiores amplios o transiciones rápidas. El final del movimiento debe revelar el sujeto principal.
- **Tilt (Inclinación vertical):** Cámara fija, giro vertical. Ideal para revelar altura (edificio de arriba abajo) o presentar un personaje (de pies a rostro). El final debe contener el punto de interés.
- **Roll (Rotación sobre eje óptico):** Crea Dutch Angle. Requiere gimbal (no trípode). Usar para inestabilidad psicológica o giros de 360° vistosos.
- **Zoom In/Out:** Cambia la distancia focal (ej: 35mm → 50mm). Sirve para concentrar la atención en el sujeto (zoom in) o mostrar contexto (zoom out). **No confundir con push in/out.**

### Movimientos con desplazamiento físico de cámara
- **Push In / Push Out (Dolly In/Out):** La cámara se acerca/aleja físicamente, **sin cambiar la distancia focal**. La perspectiva y fondo permanecen estables. Más natural y cinematográfico que el zoom. Requiere gimbal o dolly.
- **Slide (Truck/Tracking lateral):** Cámara se mueve lateralmente, cabezal fijo. Sin distorsión de perspectiva (a diferencia del pan). Ideal para revelar un espacio detrás de un obstáculo (ej: pared que se abre a un interior).
- **Boom Up / Boom Down (Pedestal):** Cámara sube o baja verticalmente, cabezal fijo. Similar al tilt pero con desplazamiento físico. Requiere jib, grúa o slider vertical.
- **Tracking (Follow / Dolly):** Cámara sigue al sujeto (adelante, atrás, lateral). **Backtrack (seguir por detrás)** crea la sensación de caminar con el personaje. **Trucking** es tracking lateral (como desde un camión). Muestra el entorno mientras sigue al sujeto.
- **Arc (Circular tracking):** Cámara rodea al sujeto en círculo. Con **teleobjetivo (70-200mm)** el fondo cambia drásticamente, generando un look muy cinematográfico. Usar en bodas, publicidad, escenas de confusión.

### Reglas de continuidad
- **Regla de los 180°:** En un diálogo entre dos personas, traza una línea imaginaria entre ellas. La cámara **nunca debe cruzar esa línea**. El personaje de la izquierda debe permanecer siempre a la izquierda en el encuadre, y el de la derecha a la derecha. Si se rompe, usar un **bridge cut** (plano de otro objeto/personaje) para reorientar al espectador.
- **Regla de los 30°:** Entre dos cortes consecutivos del mismo sujeto (ej: entrevista), la cámara debe cambiar su ángulo al menos **30 grados**. Si el cambio es menor, el corte se siente "pegado" o incómodo (jump cut). Excepción: YouTube/vlogs donde se usa zoom digital.

## Reglas para el director de fotografia IA

- **Usa "push in" en lugar de "zoom in"** cuando quieras acercamiento sin distorsión de fondo. En prompts: `push in camera movement, dolly forward, focal length 35mm`.
- **Para revelar un espacio, usa "slide" o "truck"** con un obstáculo en primer plano. Prompt: `camera slides right, revealing interior behind wall, wide shot`.
- **Cuando quieras un fondo dramático, usa "arc" con teleobjetivo**. Prompt: `arc shot around subject, 85mm lens, cinematic background blur`.
- **Para mantener continuidad en diálogos, especifica el lado del personaje** en el prompt: `close-up of man, camera on 180-degree line, man on right side of frame`.
- **Para evitar alucinaciones en video IA (Veo 3 / Kling / Runway):** No combines movimientos opuestos en un solo prompt (ej: "pan left while tracking right"). La IA puede generar artefactos. Usa un solo movimiento dominante por clip.
- **Para transiciones suaves, usa "zoom in" como transición** (rápido, tipo whip pan) en lugar de corte directo. Prompt: `fast pan to the right, transition effect`.
- **Para escenas de diálogo, especifica "180-degree rule"** en el prompt para que la IA mantenga la coherencia espacial entre tomas.

## Errores comunes que evita o menciona

- **Movimiento sin intención:** El error más grave. Si no puedes explicar por qué mueves la cámara, no lo hagas. El movimiento debe tener un propósito narrativo (revelar, enfatizar, seguir).
- **Confundir zoom con push in/out:** El zoom cambia la distancia focal (y la compresión de fondo). El push in/out mueve la cámara físicamente, manteniendo la perspectiva. En video IA, especifica cuál quieres.
- **Romper la regla de 180° sin bridge cut:** Si cruzas la línea sin un plano de transición, el espectador se desorienta (los personajes "saltan" de lado). En IA, si generas dos tomas seguidas, asegúrate de que ambas respeten el mismo lado de la línea.
- **Usar zoom digital en lugar de cambio de ángulo (30° rule):** En entrevistas, si solo haces zoom in/out sin mover la cámara, el corte se siente artificial. La IA puede generar jump cuts si no especificas un cambio de ángulo.
- **Movimientos complejos sin equipo adecuado:** Roll solo con gimbal. Boom up/down requiere jib o grúa. Slide estable requiere slider o gimbal. En IA, puedes simular cualquier movimiento, pero el resultado será más realista si el prompt describe el equipo: `gimbal shot, smooth slide`.