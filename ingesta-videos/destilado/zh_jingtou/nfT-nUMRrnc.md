# 【艺普】有趣易懂的镜头语言之4种叙事蒙太奇
**Fuente:** zh_jingtou | https://youtu.be/nfT-nUMRrnc

## Que ensena (2-3 lineas)
El video desglosa los 4 tipos de montaje narrativo clásico (paralelo, alterno, analepsis/flashback y montaje de atracciones) usando ejemplos de Hollywood. Enseña cómo la yuxtaposición de planos crea significado emocional o temporal, y cómo cada estructura de edición sirve a un propósito narrativo distinto en el cine publicitario.

## Lecciones accionables

### 1. Montaje Paralelo (Cross-cutting)
- **Técnica:** Cortar entre dos o más escenas que ocurren simultáneamente en diferentes ubicaciones.
- **Prompt de cámara IA:** `cross-cutting between two simultaneous scenes, split-screen composition, parallel action, wide shot of character A in a car, close-up of character B in a building, intercut rhythm, cinematic lighting`
- **Parámetros clave:** Usar `intercut` o `cross-cutting` en el prompt de movimiento. En Kling/Runway, generar cada escena por separado y luego editar en post. En Veo 3, especificar `parallel montage` en el estilo narrativo.
- **Focal recomendada:** 35mm para planos generales de contexto; 85mm para close-ups emocionales.

### 2. Montaje Alterno (Alternating Montage)
- **Técnica:** Similar al paralelo pero con acción que converge en un mismo punto (ej: persecución).
- **Prompt de cámara IA:** `alternating montage, character running towards camera, reverse shot of pursuer, increasing tension, handheld camera, 24fps, shallow depth of field, anamorphic lens flare`
- **Movimiento:** Dolly zoom inverso para aumentar la tensión. Prompt: `dolly zoom, character running, background stretching, tension building, 50mm lens`
- **Parámetros:** En Runway, usar `Camera Motion: Push In` para el perseguidor y `Camera Motion: Pull Out` para el perseguido.

### 3. Analepsis / Flashback
- **Técnica:** Salto temporal al pasado para revelar información.
- **Prompt de cámara IA:** `flashback transition, soft focus, desaturated colors, vignette, 16mm film grain, slow motion, character looking at old photograph, dissolve to memory, warm amber color grade`
- **Filtros visuales:** `desaturated color palette, film grain overlay, 4:3 aspect ratio, sepia tone, soft bloom`
- **Transición:** `dissolve transition, iris wipe, match cut on action`

### 4. Montaje de Atracciones / Temático
- **Técnica:** Yuxtaposición de imágenes no necesariamente conectadas en tiempo/espacio para crear un concepto abstracto (ej: felicidad = niño riendo + sol + flores).
- **Prompt de cámara IA:** `conceptual montage, rapid cuts, abstract imagery, symbolic objects, high contrast, macro shots, extreme close-ups, kinetic editing, 12fps staccato rhythm`
- **Estilo visual:** `graphic match, shape association, color theory montage, jump cuts, non-linear narrative`
- **Para publicidad:** Usar para spots de 15 segundos donde se necesita transmitir una emoción o concepto rápidamente.

## Reglas para el director de fotografia IA

- **Usa montaje paralelo** cuando necesites mostrar dos historias que ocurren al mismo tiempo (ej: producto en uso vs. consumidor feliz). Es el más efectivo para spots de 30s.
- **Usa montaje alterno** para crear tensión creciente en un comercial de acción o deporte extremo. La convergencia final debe coincidir con el clímax del producto.
- **Usa flashback** solo si el producto tiene una historia de origen (ej: artesanía, tradición familiar). En IA, marca el cambio temporal con un cambio de color grading (ej: de frío a cálido).
- **Usa montaje temático** para spots conceptuales de lujo o perfume. Cada plano debe ser una obra de arte visual independiente.
- **Para no alucinar en video IA:** Nunca pidas "flashback" sin especificar el cambio visual (color, textura, aspecto). La IA tiende a alucinar la continuidad temporal. Usa `dissolve to black` entre escenas temporales.
- **En Kling/Runway:** Genera cada plano del montaje por separado. No intentes que la IA haga el corte. La edición es tu responsabilidad en postproducción.
- **En Veo 3:** Usa `narrative structure: parallel montage` en el prompt de estilo. Especifica `shot list: [plano A], [plano B]` para que el modelo entienda la alternancia.

## Errores comunes que evita o menciona

- **No confundir montaje paralelo con alterno:** El paralelo muestra simultaneidad sin convergencia; el alterno converge. En publicidad, el alterno es más efectivo para CTAs (call to action) porque la convergencia dirige la atención al producto.
- **Evitar flashbacks sin señal visual clara:** La IA no entiende elipsis temporales implícitas. Siempre añade un marcador visual (desenfoque, cambio de color, grano) o textual en el prompt.
- **No saturar el montaje temático:** Más de 5-7 planos en 15 segundos confunde a la audiencia y a la IA. La IA tiende a repetir elementos visuales si el prompt es muy denso.
- **Error de ritmo en IA:** Los modelos generan planos de duración uniforme. Para montaje, debes editar manualmente los cortes. No esperes que la IA haga el ritmo de edición por ti.
- **Olvidar el anclaje narrativo:** En montaje paralelo, siempre mantén un elemento visual común (color, forma, movimiento) que conecte las líneas. Sin él, la IA genera dos videos inconexos.