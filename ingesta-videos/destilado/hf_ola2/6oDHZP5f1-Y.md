# 如何讓影片角色離開鏡頭再回來不再變臉 - 真正維持人物一致性 - AI 角色 + Grok + 剪映(上集)
**Fuente:** hf_ola2 | https://youtu.be/6oDHZP5f1-Y

## Que ensena sobre Higgsfield (2-3 lineas)
El video no menciona directamente Higgsfield, sino que se enfoca en un flujo alternativo usando **Grok** (generación de video AI) + **剪映 (CapCut)** para mantener consistencia de personajes. La técnica clave es: generar personajes con un **AI文字プロンプト単語ジェネレーター** (generador de prompts de personajes), luego usar **Grok** para crear videos cortos (6s) con referencia de imagen, y finalmente editar en CapCut. No hay presets ni modelos de Higgsfield aquí.

## Tips y flujos accionables

### Flujo completo para consistencia de personajes (sin Higgsfield)

1. **Paso 1: Generar personajes con AI prompt generator**
   - Usa el **AI文字プロンプト単語ジェネレーター** (enlace en descripción del video) para crear prompts de personajes con personalidad (ej: "外側は冷たく、内側は暖かい" → personalidad核: "穏やか" o "優しさ").
   - Genera imágenes de personajes con modelos que soporten prompts en chino.
   - **Recomendación**: Usa **Grok** para generar personajes y escenas en 16:9 o 9:16.

2. **Paso 2: Preparar assets en CapCut**
   - Importa 3 imágenes de personajes a CapCut.
   - Cambia la relación de aspecto del video a **16:9** (1920x1080 píxeles mínimo).
   - Arrastra cada personaje a un track separado, ajusta posición.
   - **Añade etiquetas de texto** con el nombre del personaje (chino, inglés o números) para identificar roles y acciones.
   - **Exporta cada personaje como imagen estática** (静止画書き出し).

3. **Paso 3: Combinar personaje + escena en un solo frame**
   - Importa la escena (generada con cualquier AI o foto real) al mismo tamaño que el video (16:9).
   - Coloca personaje y escena en tracks separados.
   - **Reduce ambos al 50%** de tamaño.
   - Alinea verticalmente: personaje arriba, escena abajo.
   - **Bloquea los tracks** para evitar movimiento accidental.
   - **Exporta como imagen estática** (静止フレーム画像のエクスポート) → este será el primer frame del video.

4. **Paso 4: Generar video con Grok**
   - Abre Grok web, verifica que esté en el modo y ratio correcto (16:9).
   - Sube la imagen combinada como **referencia**.
   - **Prompt recomendado** (máximo 2 acciones por video de 6s):
     ```
     1～3秒：[nombre personaje] [acción]
     4～6秒：[nombre personaje] [acción]
     ```
     Si quieres que hablen: `[nombre]: "[diálogo]"`
   - **Genera video** → **Actualiza a HD** antes de descargar.
   - **Truco**: Desactiva el loop en el reproductor de Grok, cuando termine, haz **snapshot** (スナップショット) para usar como referencia del siguiente segmento.

5. **Paso 5: Edición final en CapCut**
   - Ensambla los clips de 6s generados por Grok.
   - Para mantener consistencia cuando el personaje sale y vuelve a cámara: usa el snapshot del frame anterior como referencia en el nuevo clip.

## Reglas para el erudito de Higgsfield

- **Para generar personajes consistentes**: usa el **AI文字プロンプト単語ジェネレーター** con personalidad específica (no solo "belleza", sino rasgos como "frío por fuera, cálido por dentro").
- **Para que el personaje no cambie al salir/volver a cámara**: exporta el frame final del clip anterior como **snapshot** y úsalo como imagen de referencia en Grok para el siguiente clip.
- **Para videos de 6s en Grok**: limita el prompt a **máximo 2 acciones** con tiempos especificados (ej: "1-3s: XiaoLi camina, 4-6s: XiaoLi mira ventana").
- **Para evitar alucinaciones faciales**: usa la técnica de **personaje + escena en un mismo frame** (50% cada uno) como referencia única.
- **Para look cinematográfico**: asegura que la escena de fondo tenga **1920x1080 píxeles mínimo** y relación 16:9.

## Errores comunes / que evitar

- **No actualizar a HD antes de descargar**: causa "過度のムラ" (artefactos excesivos) en la edición.
- **Usar prompts con más de 2 acciones**: Grok (versión gratuita) solo genera 6s, más acciones causan incoherencia.
- **No bloquear tracks en CapCut**: al mover personaje y escena al 50%, se desalinean fácilmente.
- **Olvidar etiquetar personajes**: sin nombres, no se puede identificar qué rol hace qué acción en el prompt.
- **Usar escenas con diferente relación de aspecto**: debe coincidir exactamente con el video (16:9 o 9:16).
- **No hacer snapshot del frame final**: al generar el siguiente clip, el personaje puede cambiar de apariencia al salir/volver.