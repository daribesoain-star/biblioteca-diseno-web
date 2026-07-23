# Veo3 카메라 앵글 연출 촬영 기법 영상 만들기 프롬프트 사용법
**Fuente:** ko_cine | https://youtu.be/OmJ7wRVQT3k

## Que ensena (2-3 lineas)
Este tutorial desglosa 18 técnicas de cámara aplicables directamente a Veo 3, desde movimientos básicos (zoom out, dolly, push) hasta planos complejos (POV, FPV, drone sweep, macro). Enseña cómo traducir cada técnica a prompts de video IA, incluyendo el truco de forzar formato vertical (9:16) añadiendo “Vertical 16” al inicio del prompt para que Veo 3 genere video vertical en lugar de horizontal.

## Lecciones accionables

- **Zoom Out:** Prompt debe incluir “camera zooming out” o “camera pulls backward”. Usar para revelar contexto.
- **Dolly Shot:** “Dolly shot, camera moving forward/backward on a track”. Especificar dirección y velocidad.
- **Push In / Pull Out:** “Camera pushes forward” (acercamiento) / “Camera pulls backward” (alejamiento). Combinar en un solo clip: primero push, luego pull.
- **POV (Point of View):** “POV shot, first-person perspective, viewer is directly participating”. Ideal para inmersión.
- **Tilt & Rotation:** “Camera tilting up/down with rotation, screen moves dynamically”. Para efecto de inestabilidad controlada.
- **Rotation Fixed Center:** “Camera fixed on subject, rotating around it”. El sujeto permanece centrado, el fondo gira.
- **Macro:** “Macro shot, extreme close-up, focus very close to subject”. Usar para texturas o detalles mínimos.
- **Static Shot:** “Static camera, fixed position, subject in focus”. Para planos contemplativos o de diálogo.
- **FPV (First Person View):** “FPV shot, first-person flying perspective”. Similar a POV pero con movimiento de vuelo libre.
- **Drone Shot:** “Drone shot, fast camera movement starting, then slow motion in latter part”. Especificar “fast then slow motion”.
- **Push Camera (interior):** “Camera rushing forward, entering interior of vehicle”. Para transiciones de exterior a interior.
- **Close-up then pull back:** “Close-up shot, then gradually camera moves backward”. Para revelar entorno desde detalle.
- **Wide Shot:** “Wide shot, emphasis on background, subject small in frame”. Usar para paisajes o planos generales.
- **Tracking Shot:** “Tracking shot, camera follows subject laterally”. Especificar “following” + sujeto.
- **Slow Motion:** “Slow motion, reduced speed”. Añadir “slow motion effect” al final del prompt.
- **Low Angle Shot:** “Low angle shot, camera on floor, looking up”. Para poder o dramatismo.
- **Sweeping Drone Shot:** “Drone sweeping left and right rapidly”. Movimiento rápido lateral.
- **Top-Down + Drone:** “Top-down view combined with drone movement, camera above subject”. Para planos cenitales en movimiento.
- **Time-lapse:** “Time-lapse, accelerated video”. Especificar “fast motion” o “speed up”.
- **Top-Down Shot:** “Top-down shot, subject below, camera directly above”. Plano cenital estático.
- **Miniature / 2D to 3D:** “Miniature effect” o “2D to 3D transition”. Para efectos visuales estilizados.

**Truco clave para vertical (9:16):** En Veo 3, añadir “Vertical 16” al inicio del prompt fuerza la generación en formato vertical. Ejemplo: “Vertical 16, close-up shot of a car, camera pulling back”.

## Reglas para el director de fotografia IA

- **Usa “Vertical 16” al inicio del prompt** cuando necesites video vertical (9:16). Veo 3 por defecto genera horizontal; este prefijo lo fuerza.
- **Para movimientos complejos (push + pull), describe la secuencia temporal:** “first camera pushes forward, then in latter part camera pulls backward”. La IA respeta la cronología si la especificas.
- **Para drone shots con cámara lenta, separa las fases:** “fast camera movement at start, slow motion in latter part”. No asumas que la IA lo infiere.
- **Para POV/FPV, usa siempre “first-person perspective”** en el prompt. Sin esa frase, la IA puede interpretarlo como un plano subjetivo genérico.
- **Para macro, especifica “extreme close-up” + “focus very close”** para evitar que la IA genere un close-up normal.
- **Para tilt + rotation, combina ambos términos:** “camera tilting up/down while rotating”. Si solo pones “tilt”, la IA omite la rotación.
- **Para evitar alucinaciones en video IA:** No uses términos contradictorios (ej. “static camera” + “dolly move”). La IA puede ignorar uno o generar un movimiento híbrido no deseado.
- **Para tracking shots, especifica el sujeto que la cámara sigue:** “tracking shot, camera follows [subject] laterally”. Sin sujeto, la IA puede generar un travelling sin referencia.

## Errores comunes que evita o menciona

- **No asumir que Veo 3 entiende “vertical” sin prefijo explícito.** El creador menciona que “Veo 3 only supports video recording and does not support new video recording” — pero añadiendo “Vertical 16” al inicio se fuerza el formato. Sin esto, obtienes horizontal aunque el prompt describa vertical.
- **No usar “POV” y “FPV” como sinónimos.** POV es punto de vista del sujeto (participación directa); FPV es primera persona con vuelo libre (dron/perspectiva aérea). Mezclarlos produce resultados genéricos.
- **No describir movimientos sin orden temporal.** Si quieres push seguido de pull, debes escribir “first… then…”. La IA no infiere secuencias no explícitas.
- **No olvidar especificar “slow motion” al final del prompt** para efectos de cámara lenta. Sin esa palabra, la IA genera velocidad normal.
- **No usar “macro” sin “extreme close-up”** — la IA puede interpretar macro como un plano detalle normal, no como enfoque extremadamente cercano.
- **No combinar “static” con cualquier movimiento** — la IA puede generar un plano fijo con movimiento de fondo no deseado.