# [4K 알파 랜선 세미나] 영상 제작 & 컬러 보정 by 박인수 감독
**Fuente:** esc_ko | https://youtu.be/7iU8Myp54rE

## Que ensena (2-3 lineas)
Enseña el flujo completo de producción de video cinematográfico: desde la configuración de cámara (frame rate, shutter speed, apertura, distancia focal) hasta la gradación de color en postproducción, con énfasis en lograr un look cinematográfico. Cubre técnicas de rodaje para IA, planificación de secuencias (intro/outro, acción central, inserts) y corrección de piel.

## Lecciones accionables

### Configuración de cámara para look cinematográfico (prompts de video IA)
- **Frame rate:** Usa **24 fps** para motion blur natural y look de cine. Para slow motion, graba a **60 fps o 120 fps** y edita en timeline de 24 fps.
- **Shutter speed:** Siempre **2x el frame rate** (regla de 180°). Ej: 24 fps → 1/50s; 60 fps → 1/125s; 120 fps → 1/250s.
- **Apertura (f-stop):** Para fondo desenfocado (bokeh), usa **f/2.8 o menor**. Para todo nítido (deep focus), usa **f/9 o mayor**.
- **Distancia focal:** **50mm-85mm** es el rango más natural para retrato y narración. **24-70mm** es el zoom más versátil (cubre casi todo). **90mm macro** para producto/comida. **100-200mm** para compresión y planos lejanos.
- **S-Log:** Graba en **S-Log2 o S-Log3** para mayor rango dinámico y flexibilidad en color grading. Subexpón 1-2 stops para proteger altas luces.
- **ND Filter:** En cámaras sin ND interno (como Alpha 7C), usa **ND variable** para controlar exposición sin cambiar apertura/shutter.

### Técnicas de rodaje para prompts de video IA
- **Manual focus** para control preciso (usa peaking). Auto focus solo en gimbal o movimiento rápido.
- **Plan de rodaje:** Define un **título** claro para el video. Crea **intro y outro** (ej: amanecer → atardecer, salida → llegada). Identifica **2-3 acciones clave** (ej: hacer maleta, comer en avión, recoger equipaje) y rodéalas con **inserts** (close-ups detallados).
- **Sonido:** Usa **micrófono externo** (o incluso iPhone) para audio limpio. Añade **efectos de sonido** (SFX) en post para dar profundidad.
- **Composición:** Separa **sujeto del fondo** para mejor profundidad de campo. Controla el entorno (limpia el set, ajusta iluminación).

### Color grading (postproducción)
- **Herramientas:** Usa **waveform** para ajustar highlights (cerca de 100) y shadows (cerca de 0). Usa **vectorscope** para calibrar tono de piel (debe caer en la línea de referencia de piel).
- **Corrección de piel:** Aísla la piel con **máscara**, luego usa **Hue Saturation Curve** para desplazar el tono hacia la línea de piel en el vectorscope.
- **Presets:** Aplica un **LUT o preset** (ej: “Dramatic”) como base, luego ajusta contraste, saturación y curvas.
- **Reducción de ruido:** Si hay ruido en S-Log, usa **Neat Video** (plugin) al final del flujo de trabajo.

## Reglas para el director de fotografia IA

- **Usa 24 fps** cuando quieras motion blur cinematográfico; **60 fps o 120 fps** para slow motion (luego interpreta a 24 fps en timeline).
- **Duplica el frame rate para shutter speed** (180° rule) para evitar parpadeo o motion stutter en video IA.
- **Abre el diafragma (f/2.8 o menor)** para aislar sujeto con bokeh; **cierra (f/9+)** para escenas con todo enfocado.
- **Elige 50mm-85mm** para retratos naturales; **24-70mm** para versatilidad; **90mm macro** para detalles de producto.
- **Graba en S-Log2 o S-Log3** para maximizar rango dinámico y permitir color grading flexible en post.
- **Usa ND variable** en cámaras sin ND interno para controlar exposición sin alterar apertura/shutter.
- **Planifica intro y outro** (ej: amanecer/anochecer, salida/llegada) para dar estructura narrativa.
- **Define 2-3 acciones clave** y rodéalas con inserts (close-ups) para evitar alucinaciones en video IA (transiciones bruscas).
- **Usa micrófono externo** para audio limpio; añade SFX en post para realismo.
- **Para no alucinar en video IA:** Mantén la cámara estable (gimbal o trípode), evita movimientos erráticos, y usa planos bien definidos (close-up, medio, general) con transiciones suaves.
- **En color grading:** Ajusta highlights cerca de 100 y shadows cerca de 0 en waveform; calibra piel en vectorscope (línea de referencia). Usa máscara para corrección selectiva de piel.

## Errores comunes que evita o menciona

- **No duplicar shutter speed:** Si grabas a 24 fps con shutter 1/100s (en lugar de 1/50s), el motion blur se pierde y el video se ve entrecortado.
- **Ignorar la distancia sujeto-fondo:** Si el fondo está muy cerca del sujeto, no lograrás bokeh incluso con apertura abierta. Separa al menos 1-2 metros.
- **Usar solo auto focus:** En planos estáticos, el auto focus puede “respirar” (focus breathing). Usa manual focus con peaking para control preciso.
- **No planificar la estructura:** Rodar sin título, intro/outro o acciones clave lleva a material inconexo. Siempre define un esqueleto narrativo.
- **Grabar sin micrófono externo:** El audio de cámara interna es plano y capta ruido ambiente. Usa micrófono externo o incluso un smartphone como grabadora.
- **No usar S-Log:** Grabar en perfil de color estándar limita el rango dinámico y la flexibilidad en color grading. Usa S-Log2/3 para mayor control.
- **Aplicar LUT sin ajustar:** Un preset no es suficiente; siempre ajusta contraste, saturación y curvas después de aplicar el LUT.
- **No verificar piel en vectorscope:** El tono de piel debe caer en la línea de referencia; si no, usa Hue Saturation Curve para corregirlo.
- **Olvidar la reducción de ruido:** S-Log puede generar ruido en sombras; usa Neat Video al final del flujo para limpiar.
- **No sincronizar color entre cámaras:** Si usas dos cámaras (ej: FX9 y A7C), calibra por piel o blanco de referencia para evitar diferencias de tono.