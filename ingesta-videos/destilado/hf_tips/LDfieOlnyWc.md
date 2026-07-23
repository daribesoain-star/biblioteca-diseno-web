# Higgsfield AI + Claude MCP: AI Video Workflow Game-Changer
**Fuente:** hf_tips | https://youtu.be/LDfieOlnyWc

## Que ensena sobre Higgsfield (2-3 lineas)
Enseña a conectar Higgsfield AI con Claude via MCP (Model Context Protocol) para generar videos e imágenes cinematográficas sin salir del chat. Muestra cómo Claude analiza videos de referencia, selecciona presets automáticamente (como C Dance 2.0, Seedance 2.0, Nano Banana 2) y ejecuta flujos completos: desde entrenar personajes "Soul" hasta crear marketing videos con movimientos de cámara específicos.

## Tips y flujos accionables

### Conexión MCP inicial
1. **Abrir Claude** → ícono de perfil (esquina inferior izquierda) → **Settings** → **Customize** (antes "Connections").
2. **Crear nuevo connector**: botón "+" → "Custom connector" → pegar URL que Higgsfield proporciona (incluida en descripción del video).
3. **Permisos**: autorizar acceso a créditos, media y uploads cuando Claude lo solicite.

### Flujo 1: Recrear video viral con análisis de referencia
- **Prompt exacto**: arrastrar video al chat + escribir: *"Analyze this video. I want to create something like that."*
- **Claude extrae frames**, analiza audio, arquitectura multi-view.
- **Claude sugiere presets**: si no hay preset exacto (ej. "clean overhead apartment glide"), construye uno personalizado.
- **Generación**: Claude elige modelo automáticamente (ej. Nano Banana 2 para imagen, luego Seedance 2.0 para video).
- **Override**: si quieres forzar modelo, escribe: *"Actually, I want you to use Seedance"* (o Cinema Studio, Kling, etc.).
- **Resultado**: video generado sin salir del chat, con historial de generaciones recientes visibles.

### Flujo 2: Entrenar personaje "Soul" desde fotos
- **Prompt exacto**: *"Train a soul character named Luna from these eight reference photos."*
- **Subir 8 fotos de referencia** (arrastrar al chat).
- **Claude pide permisos**: "Always allow" para acceder a media y créditos.
- **Proceso**: Claude sube las 8 imágenes, inicia entrenamiento "Luna Soul Train".
- **Resultado**: personaje aparece automáticamente en "My Soul Characters" en Higgsfield.

### Flujo 3: Marketing video desde URL de producto
- **Prompt exacto**: *"Use this product URL to create a polished marketing video for launch."*
- **Pegar URL directa** del producto (ej. bundle link).
- **Claude accede a media/uploads**, genera video promocional automáticamente.

### Flujo 4: Animación con preset específico
- **Prompt exacto**: *"Animate this product photo into a 6-second cinematic shot. Use the bullet time preset with a slow 360 camera move."*
- **Subir foto** del producto.
- **Claude aplica preset "bullet time"** con cámara 360 lenta.

### Tips para prompts cinematográficos
- **Especificar duración**: "6-second cinematic shot".
- **Especificar movimiento**: "slow 360 camera move", "continuous shots", "multi-shots".
- **Para C Dance 2.0**: usar prompts que describan "continuous shots, multi-shots" (Claude lo entiende automáticamente).
- **Para evitar gatekeeping**: arrastrar video viral → Claude extrae prompts exactos y los replica.

## Reglas para el erudito de Higgsfield

- **Para recrear videos virales complejos**: usa el flujo MCP con Claude, arrastra el video de referencia y escribe *"Analyze this video. I want to create something like that."* → Claude selecciona preset automático o construye uno personalizado.
- **Para forzar un modelo específico**: después del análisis, escribe *"Actually, I want you to use [Seedance 2.0 / Cinema Studio / Kling / C Dance 2.0]"*.
- **Para entrenar personajes "Soul"**: sube exactamente 8 fotos de referencia y usa el prompt *"Train a soul character named [nombre] from these eight reference photos."*.
- **Para marketing videos desde URL**: pega el enlace directo del producto y usa *"Use this product URL to create a polished marketing video for launch."*.
- **Para animación con preset específico**: sube foto + prompt *"Animate this product photo into a [duración]-second cinematic shot. Use the [nombre preset] preset with a [descripción movimiento]."*.
- **Para acceder a generaciones recientes**: Claude las muestra automáticamente en el chat cuando usa MCP.
- **Para evitar que alucine movimientos de cámara**: describe exactamente el movimiento (ej. "slow 360 camera move", "overhead apartment glide") o deja que Claude lo infiera del video de referencia.

## Errores comunes / que evitar

- **No arrastrar el video antes del prompt**: Claude necesita el archivo en el chat para analizarlo. Hazlo antes de escribir el prompt.
- **No especificar "Higgsfield" en el prompt**: si no mencionas Higgsfield, Claude no activará el workflow. Siempre incluye "use Higgsfield" o "with Higgsfield".
- **No autorizar permisos**: Claude pide "Always allow" para acceder a créditos, media y uploads. Si lo rechazas, el flujo se detiene.
- **Usar menos de 8 fotos para entrenar Soul**: el proceso requiere exactamente 8 referencias. Menos no funciona.
- **Confiar ciegamente en el preset automático**: si el resultado no es el esperado, overridea con un modelo específico (Seedance 2.0 para calidad, C Dance 2.0 para movimientos continuos).
- **No revisar el análisis de Claude**: a veces el preset sugerido no es óptimo. Revisa la descripción del movimiento que Claude infirió y corrígelo si es necesario.
- **Usar URLs rotas o no accesibles**: para marketing videos, la URL debe ser directa y pública.