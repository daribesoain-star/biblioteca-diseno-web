# This Is How To Use Google Veo 3 Like A PRO: JSON Prompt (The Only Guide You Need)
**Fuente:** Sebastien Jefferies | https://youtu.be/6LhkvHfpjAY

## Qué enseña
El tutorial explica cómo crear anuncios publicitarios de alta calidad (estilo "producción de $100,000") usando Google Veo 3 mediante **JSON prompting**. Muestra el flujo completo: desde generar prompts estructurados en JSON con ChatGPT o Gemini, hasta renderizar en Google Flow (acceso a Veo) y escalar el resultado final.

## Técnicas accionables
- **Modelo usado:** Google Veo 3 (V3 fast para 720p a 20 créditos; V3 quality con beta audio para mayor resolución). No usa Veo 2 porque V2 no genera audio.
- **Plataforma de acceso:** https://flow.google.com (crear nuevo proyecto, pegar el JSON prompt, generar).
- **Estructura del JSON prompt (VERBATIM del ejemplo mostrado):**
  ```json
  {
    "prompt": "descripción de la escena",
    "camera": "movimiento de cámara",
    "lighting": "tipo de iluminación",
    "style": "estilo visual"
  }
  ```
  (El tutorial muestra que el JSON incluye claves como `prompt`, `camera`, `lighting`, `style`; se recomienda copiar ejemplos de la plantilla incluida en el recurso del video.)
- **Workflow para crear prompts:**
  1. Crear un **proyecto en ChatGPT** (o Gemini) con instrucciones personalizadas y un archivo de referencia con ejemplos JSON.
  2. Pedir: *"Create a JSON prompt for a [marca/producto] ad"*.
  3. Si se tiene una imagen del producto, subirla y decir: *"This is a product of my image. Can you go ahead and create a JSON prompt?"*
  4. Copiar el JSON generado y pegarlo en flow.google.
- **Configuración en flow.google:**
  - Ir a **Settings > Models** y seleccionar **V3 fast** (para ahorrar créditos) o **V3 quality (beta audio)**.
  - Ajustar **output** a 1 o 2 videos (2 cuesta 20 créditos en fast mode).
- **Upscaling:** Descargar el video en 720p (fast mode) y usar un upscaler externo para llevarlo a 1080p o 4K.
- **Recurso adicional:** El tutorial ofrece 10 prompts JSON listos para usar (enlace en descripción del video).
- **Créditos gratuitos:** Suscribirse a **Gemini AI Pro** (prueba gratuita de 1 mes) da 1,000 créditos en Flow, equivalentes a ~10 videos en alta calidad o ~100+ en modo lento 720p.

## Reglas para el erudito
- **Usa JSON prompting** cuando quieras resultados cinematográficos y consistentes con marcas/productos específicos; el prompting textual nativo da resultados inferiores.
- **Usa V3 fast** cuando priorices ahorrar créditos (20 créditos por video) y aceptes 720p; luego upscalea externamente.
- **Usa V3 quality con beta audio** cuando necesites máxima calidad y audio sincronizado (mayor costo de créditos).
- **Usa ChatGPT Projects o Gemini Gems** con instrucciones y archivo de ejemplos JSON para generar prompts en segundos; no los crees manualmente.
- **Ajusta output a 1** para maximizar créditos; usa 2 solo si tienes suficientes créditos (plan ultra).
- **Incluye imagen del producto** en el prompt si quieres que el JSON respete su apariencia exacta (image-to-video implícito).

## Errores comunes / limitaciones que menciona
- **No usar Veo 2** porque no genera audio; siempre usar V3 (fast o quality).
- **No confiar en el prompting textual simple** para anuncios profesionales; produce videos "buenos pero no cinematográficos".
- **El modo fast solo da 720p**; requiere upscaling externo para 1080p/4K.
- **Flow.google es una herramienta paga**; la prueba gratuita de Gemini AI Pro es limitada (1 mes, 1,000 créditos).
- **El JSON prompt debe copiarse exactamente** del generador; errores de sintaxis rompen la generación.