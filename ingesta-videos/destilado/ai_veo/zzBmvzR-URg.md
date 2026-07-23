# The ONLY 7 Prompts You Need to Create Any AI Video
**Fuente:** ai_veo | https://youtu.be/zzBmvzR-URg

## Que ensena (2-3 lineas)
Este video desglosa los 7 estilos de prompting esenciales para generar videos IA profesionales, desde control de cámara hasta manejo de consistencia visual. Enfatiza que los mejores resultados vienen de prompts simples, claros e intencionales, no de descripciones complejas. Cubre técnicas específicas para Veo 3, Kling y Runway, con énfasis en el flujo imagen-a-video.

## Lecciones accionables

### 1. Cinematic Prompts (Control de cámara)
- **Movimientos clave para prompts:**
  - `camera zooms in/out`
  - `camera rotates` / `camera orbits` (rotación circular alrededor del sujeto)
  - `panning left/right` (seguimiento lateral)
  - `tilting up/down` (inclinación vertical)
  - `shaky handheld camera` (caos, guerra, tensión)
  - `bird's eye view` (vista cenital, fría, distante)
  - `static shot` (sin movimiento, para momentos de contemplación)
- **Combinación:** Se pueden concatenar movimientos: "camera zooms in while rotating around the subject"
- **Técnica principal:** Usar imagen de referencia + prompt de acción. Ejemplo: imagen de soldado en trinchera + "he pulls a small wooden cross from underneath his jacket" (sin movimiento de cámara, solo acción del sujeto)

### 2. Timestamp Prompting (Control temporal)
- **Estructura:** Dividir el video en segmentos con marcas de tiempo
- **Formato:** `[0-3s]: camera zooms in towards him. [3-5s]: camera tilts down to show him looking at recording device. [5-8s]: camera tilts back up to see him looking at the sky`
- **Aplicación:** Organizar múltiples acciones y movimientos de cámara en secuencia
- **Ejemplo con corte:** "First 3 seconds: camera zooming to an over-the-shoulder shot of the astronaut. End: zooming in closely on the creature"

### 3. Cutscene Prompting (Multi-ángulo)
- **Sintaxis clave:** Usar "Cut to" para cambiar de plano
- **Prompt ejemplo:** "The astronaut turns and walks towards a spaceship. Cut to the boots of the astronaut walking along the terrain inside a cinematic film"
- **Combinación con timestamps:** Dividir en segmentos con diferentes ángulos y emociones
- **Advertencia:** Si el corte es muy diferente de la escena original, la IA puede alucinar cambios de estilo (ej: realista a 3D animado). Mantener coherencia visual entre cortes.

### 4. GPT Prompts (Asistente de prompting)
- **Método:** Crear un GPT personalizado subiendo el manual de prompting oficial del modelo (ej: Google Veo 3 documentation)
- **Configuración:** En ChatGPT > Explore > Create GPT > subir PDF con: fórmula de prompting, técnicas esenciales, ejemplos
- **Pro:** Reduce tiempo de escritura, genera prompts detallados con cinematografía, sonido, estilo, iluminación
- **Contra:** La documentación oficial NO incluye limitaciones del modelo. El GPT no sabe qué pide la IA (ej: multitudes, acciones simultáneas). Recomendado solo para usuarios avanzados que entienden las limitaciones.

### 5. Anchor Prompts (Anclaje de consistencia)
- **Propósito:** Recordar a la IA elementos visuales críticos que tiende a perder o transformar
- **Casos de uso:**
  - **Apariencia física:** "red embers and ash on him" (evita que la IA transforme la cara al pedir una sonrisa)
  - **Relaciones espaciales:** "the orc is on the back riding the direwolf" (evita que el orco se deslice del lobo)
  - **Detalles ocultos:** "the orc has no armor on the right shoulder. Dark blue geometric tribal tattoos on the orc's shoulder" (cuando el ángulo no muestra ese lado)
- **Regla:** Anclar lo que la IA no puede ver en el frame inicial pero debe mantener en frames posteriores

### 6. Image Prompting (Base visual)
- **Flujo:** Generar imagen con IA (ej: "pictorialism photo, a giant koi fish in the canals of Venice City") + animar con Veo 3/Kling/Runway
- **Prompt de acción simple:** "The fish floats forwards through the air" (directo, claro, fácil para la IA)
- **Para personajes consistentes:** Generar múltiples imágenes del mismo personaje desde diferentes ángulos (front view, side profile, watering plants, lunch break) usando herramientas como Nano Banana o Q1 Image Edit Camera Angle Control
- **Start and End Frame Prompting:** Usar imagen para primer frame + imagen para último frame. La IA renderiza la transición completa entre ambos.

### 7. Negative Prompting (Qué NO querer)
- **Formato directo:** "no windows" (en lugar de describir cómo debe verse la pared)
- **Caso complejo:** Para silenciar sonidos no deseados: "completely silent and quiet, no gunshots, no clicking, no trigger"
- **Efectividad:** Funciona mejor para eliminar elementos visuales/auditivos específicos que para describir lo que sí queremos

## Reglas para el director de fotografia IA

- **Usa cinematic prompts cuando** quieras controlar exclusivamente el movimiento de cámara, no la acción del sujeto.
- **Usa timestamp prompting cuando** necesites coreografiar múltiples movimientos de cámara y acciones en secuencia dentro de un mismo clip.
- **Usa cutscene prompting cuando** quieras cambiar de plano/ángulo dentro de un mismo video, pero asegúrate de que la escena de corte no sea radicalmente diferente en estilo visual.
- **Usa anchor prompts SIEMPRE** que el sujeto tenga elementos físicos críticos (tatuajes, cicatrices, objetos, relaciones espaciales) que la IA pueda perder al cambiar de ángulo o expresión.
- **Para no alucinar en video IA:** Mantén los prompts simples y directos. La IA entiende mejor "the fish floats forward" que descripciones poéticas complejas.
- **Para evitar multitudes deformes:** No pidas "crowd of angry townsfolk shouting and pointing". En su lugar, usa "she looks around nervously while people stare at her in silence" para transmitir la misma emoción sin animar masas.
- **Usa image prompting como base** para lograr consistencia de personaje entre tomas. Genera referencias desde múltiples ángulos antes de animar.
- **Aplica negative prompting** cuando un elemento no deseado persista (ventanas, sonidos, objetos) en lugar de reescribir todo el prompt.

## Errores comunes que evita o menciona

- **Prompts demasiado complejos:** La IA no responde bien a descripciones largas y elaboradas. Mejor simple, claro e intencional.
- **Ignorar las limitaciones del modelo:** La documentación oficial no dice lo que la IA hace mal. Multitudes, acciones simultáneas y cambios bruscos de escena son puntos débiles comunes.
- **No anclar elementos críticos:** La IA transforma caras, borra objetos y cambia relaciones espaciales si no se anclan explícitamente en el prompt.
- **Cortes muy diferentes en cutscene prompting:** Si el nuevo plano es muy distinto al original, la IA puede cambiar el estilo visual (realista → 3D animado).
- **Confiar ciegamente en GPT prompt helpers:** El asistente no conoce las limitaciones del modelo, por lo que puede generar prompts que la IA no puede ejecutar correctamente.
- **No usar imagen de referencia:** Los mejores resultados vienen de imagen + prompt de acción, no de texto solo.