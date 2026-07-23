# This Is How To Use Google Veo 3 Like A PRO: JSON Prompt (The Only Guide You Need)
**Fuente:** ai_veo | https://youtu.be/6LhkvHfpjAY

## Que enseña
El video explica cómo usar **JSON prompting** en Google Veo 3 para generar anuncios publicitarios con calidad cinematográfica (simulando producciones de $100,000). Muestra el flujo completo: desde estructurar prompts en formato JSON hasta generar videos en Flow (Google Veo), incluyendo un método para obtener acceso gratuito a créditos de Veo mediante Gemini AI Pro.

## Lecciones accionables

### 1. Estructura del JSON Prompt (formato exacto)
El JSON prompt reemplaza el texto plano con una estructura de **roles e instrucciones** que el modelo interpreta como tokens legibles. Ejemplo de estructura que aparece en el video:

```json
{
  "role": "cinematic_ad_director",
  "instructions": {
    "scene": "descripción de la escena",
    "camera": {
      "movement": "slow push-in",
      "lens": "35mm",
      "aperture": "f/1.8",
      "lighting": "golden hour backlight"
    },
    "product": {
      "name": "Tesla Cybertruck",
      "action": "driving through desert at sunset",
      "angle": "low angle tracking shot"
    },
    "mood": "epic, futuristic, premium"
  }
}
```

### 2. Parámetros técnicos de cámara para prompts
- **Movimientos:** slow push-in, tracking shot, low angle, dolly zoom, crane up, pan left/right
- **Lentes:** 35mm (estándar cinematográfico), 50mm (retrato), 24mm (gran angular), 85mm (comprimido)
- **Apertura:** f/1.4 - f/2.8 para fondo desenfocado (bokeh)
- **Iluminación:** golden hour, backlight, rim light, soft diffused, hard shadows
- **Estilo:** cinematic, VFX-grade, showroom quality, Super Bowl ad

### 3. Flujo de trabajo paso a paso
1. **Crear un "Project" en ChatGPT o Gemini** con instrucciones personalizadas + archivo de ejemplos JSON
2. **Prompt inicial:** "Create a JSON prompt for a [marca/producto] ad" + opcionalmente subir imagen del producto
3. **Copiar el JSON generado** y pegarlo en **flow.google.com**
4. **Configuración en Flow:**
   - Modelo: **Veo 3 Fast** (20 créditos, 720p) o **Quality** (más créditos, mayor resolución)
   - Output: 1-2 videos
   - Ajustes: Settings > Models > Veo 3 Fast (no V2, V2 no genera audio)
5. **Post-producción:** Descargar video 720p y upscalear a 1080p o 4K con upscaler externo

### 4. Acceso gratuito a Veo 3
- Ir a **Gemini AI Pro** > Subscriptions > **Google AI Pro** (1 mes gratis)
- Esto otorga **1,000 créditos** → ~10 videos en alta calidad o ~100+ en modo lento 720p
- Usar esos créditos en **flow.google.com**

## Reglas para el director de fotografía IA

1. **Usa JSON prompting SIEMPRE** para anuncios o contenido premium. El texto plano produce resultados genéricos; el JSON fuerza al modelo a interpretar instrucciones precisas sin "fluff words" (palabras de relleno como "and also add", "um", "do this but don't do that").

2. **Para no alucinar en video IA**, estructura el prompt con roles claros: define un "role" (cinematic_ad_director) y secciones separadas para cámara, producto, iluminación y mood. Esto evita que el modelo ignore detalles clave.

3. **Usa Veo 3 Fast (no V2)** cuando quieras audio sincronizado. V2 no genera audio; V3 Fast sí, aunque sea 720p.

4. **Para maximizar créditos**, genera 1 video por prompt en lugar de 2. Si usas el plan gratuito de 1,000 créditos, prioriza calidad sobre cantidad.

5. **Incluye la imagen del producto** en el prompt si quieres fidelidad visual (ej: Apple Watch, botella de perfume). El modelo puede replicar logos y formas exactas si recibe referencia visual.

6. **Para upscaling**, usa upscalers externos (no nativos de Veo) para llevar 720p → 1080p o 4K. El video base en Fast mode es 720p pero se puede mejorar.

## Errores comunes que evita o menciona

- **Usar texto plano en lugar de JSON:** El video muestra comparativa directa: el texto plano produce video "bueno pero no cinematográfico"; el JSON produce "calidad de anuncio real de $100,000".
- **Seleccionar Veo V2 en lugar de V3 Fast:** V2 no genera audio, lo que arruina anuncios con diálogo o música.
- **No definir roles en el JSON:** Si el prompt no tiene estructura de roles, el modelo ignora instrucciones específicas de cámara o iluminación.
- **Gastar créditos en modo Quality sin necesidad:** Para pruebas, usa Fast mode (20 créditos) y upscalea después. Quality mode consume muchos más créditos.
- **No usar el archivo de ejemplos JSON en ChatGPT/Gemini:** Sin ejemplos de referencia, el modelo genera JSONs inconsistentes o incompletos.