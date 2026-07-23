# Veo 3 cinematic camera movement prompt tutorial
**Fuente:** ai_veo | https://youtu.be/Veo 3 cinematic camera movement prompt tutorial

## Que enseña (2-3 lineas)
Enseña a crear anuncios publicitarios de alto presupuesto (estilo $100,000) usando **JSON prompting** en Veo 3, en lugar de texto plano. Muestra cómo estructurar prompts en formato JSON para que la IA entienda exactamente los movimientos de cámara, iluminación y composición sin palabras de relleno. Incluye un workflow con ChatGPT/Gemini para generar prompts personalizados en segundos.

## Lecciones accionables

### JSON Prompting vs Text Prompting
- **JSON prompting**: estructura el prompt en formato JSON con roles e instrucciones claras. Ejemplo de estructura:
```json
{
  "role": "cinematographer",
  "camera": {
    "movement": "dolly in",
    "lens": "50mm",
    "aperture": "f/1.8",
    "depth_of_field": "shallow"
  },
  "lighting": "three-point",
  "mood": "cinematic"
}
```
- **Text prompting**: usa lenguaje natural con "fluff words" (and also, add, etc.) que diluyen la instrucción.

### Workflow paso a paso
1. **Crear un proyecto en ChatGPT o Gemini** con instrucciones personalizadas y un archivo de referencia con ejemplos JSON.
2. **Prompt base**: "Create a JSON prompt for a [brand/product] ad" + especificar movimiento de cámara deseado.
3. **Copiar el JSON generado** y pegarlo en **flow.google.com** (acceso a Veo 3).
4. **Configuración en Flow**:
   - Modelo: **V3 fast** (20 créditos, 720p) o **quality** (beta audio)
   - Output: 1-2 videos
   - Upscale posterior: descargar 720p → upscalar a 1080p o 4K con herramienta externa

### Movimientos de cámara para prompts (términos en inglés)
- **dolly in/out**: cámara se acerca/aleja en rieles
- **tracking shot**: cámara sigue al sujeto lateralmente
- **crane up/down**: cámara sube/baja en grúa
- **pan left/right**: cámara gira horizontalmente sobre su eje
- **tilt up/down**: cámara inclina verticalmente
- **handheld**: cámara al hombro, movimiento orgánico
- **steadycam**: movimiento suave y fluido
- **rack focus**: cambio de foco entre primer plano y fondo

### Parámetros técnicos clave
- **Focales**: 24mm (gran angular), 35mm (estándar), 50mm (retrato), 85mm (telefoto)
- **Apertura**: f/1.4 - f/2.8 para shallow depth of field
- **Iluminación**: three-point lighting, soft light, hard light, rim light
- **Composición**: rule of thirds, leading lines, symmetry

### Prompts VERBATIM (ejemplos del video)
- "Create a JSON prompt for a Tesla ad" → genera JSON completo con cámara, iluminación y movimiento
- "I want the shampoo bottle to start hovering in the bathroom" → prompt personalizado para producto específico

## Reglas para el director de fotografía IA

- **Usa JSON prompting** cuando necesites control preciso sobre cámara, iluminación y movimiento; evita texto plano para resultados cinematográficos.
- **Usa V3 fast** para ahorrar créditos (20 créditos por video) y upscala después; usa **quality** solo si necesitas audio sincronizado.
- **Define el movimiento de cámara primero** en el JSON: especifica si es dolly, tracking, crane, pan, tilt o handheld antes de describir la escena.
- **Para no alucinar en video IA**: sé específico con la profundidad de campo (shallow/ deep) y la iluminación (three-point, soft, hard) para evitar artefactos.
- **Incluye el producto como referencia**: si tienes una imagen del producto, súbela y di "this is my product image, create a JSON prompt for it".
- **Usa ChatGPT/Gemini Projects** con instrucciones predefinidas y archivo de ejemplos JSON para generar prompts en 5 segundos.
- **Maximiza créditos**: en Flow, cambia output a 1 y usa V3 fast; luego upscala externamente a 1080p/4K.

## Errores comunes que evita o menciona

- **Usar texto plano en lugar de JSON**: produce videos menos cinematográficos, con movimientos de cámara inconsistentes y falta de coherencia visual.
- **Usar V2 en lugar de V3**: V2 no genera audio; V3 sí lo hace (beta audio).
- **No configurar el modelo en Flow**: por defecto usa V2; hay que ir a Settings > Models > V3 fast o quality.
- **Gastar créditos en calidad innecesaria**: para pruebas usa V3 fast (720p) y upscala después; quality gasta más créditos.
- **No usar proyectos en ChatGPT**: sin instrucciones predefinidas, el JSON generado puede ser inconsistente o no adaptarse al producto.
- **Olvidar el archivo de ejemplos JSON**: sin referencias, ChatGPT puede generar estructuras incorrectas o incompletas.