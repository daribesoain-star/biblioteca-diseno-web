# How to Use Higgsfield Supercomputer Better than 99% of People
**Fuente:** hf_tips | https://youtu.be/LD7GPdMMjQA

## Que ensena sobre Higgsfield (2-3 lineas)
Higgsfield Supercomputer es un agente de IA que automatiza flujos completos de creación de video (desde guion hasta edición final) usando modelos como Claude Opus 4.7 o Sonnet 4.6. Incluye sistema de memoria (corto/largo plazo/episódica), skills predefinidos (UGC flow, cinematic flow, product photo shoot, brand analyzer, trend picker, storyboard generation, TV ad), y funciones avanzadas como scheduled tasks y goal mode para generación autónoma.

## Tips y flujos accionables

### Configuración inicial
- **Modo de ejecución:** Usa "auto run" (no "confirm before running") para evitar gastar créditos en confirmaciones innecesarias.
- **Modelo recomendado:** Para tareas complejas usa **Opus 4.7** (mejor calidad, más créditos). Para uso diario usa **Sonnet 4.6** (buen equilibrio calidad/créditos).

### Skills clave (usar con `/` en el prompt)

1. **`/UGC flow`** - Crea anuncios UGC completos:
   - Sube imagen de referencia del producto (icono +)
   - Prompt ejemplo: *"Create a UGC ad for Pro Up protein bar. {/UGC flow}"*
   - El skill genera: personaje, storyboard de 3 paneles, video de 15s con lip sync

2. **`/cinematic flow`** - Para videos tipo comercial de marca:
   - Prompt ejemplo: *"Create a cinematic ad for Obsidian dark chocolate. {/cinematic flow}"*
   - Resultado: shots premium con look de cámara de $20,000

3. **`/product photo shoot`** - Sesiones de producto:
   - Sube imagen de referencia del producto
   - Genera 5 shots diferentes automáticamente (ej: bosque, fondo blanco, mano sosteniendo producto)

4. **`/brand analyzer`** - Analiza marca de competidor:
   - Pega URL de la marca (ej: graza.co)
   - Devuelve: logo, paleta de colores con códigos hex, tipografía, identidad completa

5. **`/trend picker`** - Encuentra tendencias en TikTok/Instagram:
   - Prompt: *"Find trending content angles for protein supplements. {/trend picker}"*
   - Devuelve formatos ganadores + ángulos no explotados

6. **`/storyboard generation`** - Crea storyboard multi-panel:
   - Incluye: descripción de shot, setup de iluminación, dirección de cámara
   - Úsalo antes de `/TV ad` para ahorrar créditos

7. **`/TV ad`** - Anuncio cinematográfico de 15s:
   - Alimenta con storyboard + imagen de referencia
   - Resultado: video con transiciones, slow-motion, diseño de sonido

### Uso de personajes personalizados (Soul ID)
1. Crea personaje en **Soul ID**: sube 5 imágenes del mismo personaje desde diferentes ángulos
2. En Supercomputer: haz clic en `+` → `Elements` → selecciona tu personaje
3. Añade imagen de referencia del producto
4. Prompt: *"Create a UGC ad for Pro Up protein bar using my character David. {/UGC flow}"*
5. El sistema mantiene consistencia del personaje en todo el video

### Sistema de memoria
- **Memoria a largo plazo:** Ve a `Memory settings` → `Add memory`
- Ejemplo de entrada: *"Our videos are dark and cinematic. Always use 9:16 aspect ratio. Color palette: deep blue, black, gold."*
- **Memoria episódica:** Se aprende automáticamente de tus interacciones (shots, movimientos de cámara que usas frecuentemente)

### Scheduled tasks (tareas programadas)
- Sintaxis en chat: *"Every Monday at 9:00 AM, scan top 5 protein bar brands on TikTok/Instagram, pull best performing posts from past week, write one-page brief about formats and hooks working, send to my Telegram."*
- Otro ejemplo: *"Every day at 8:00 AM, create 3 different TikTok hook variations for our protein bar campaign, save all three in Google Drive folder called Daily Ads."*

### Goal mode (modo objetivo)
- Actívalo para generación autónoma hasta cumplir condición
- Ejemplo: *"Produce 10 approved ad variants for new shoe launch. Each must use my Soul ID character and score above 70 on virality predictor. Keep generating and testing until 10 pass."*
- Muestra Kanban board en tiempo real con estado de cada generación

### Virality predictor
- Para analizar video existente: pega el video en Supercomputer y pide análisis
- Evalúa: hook, pacing, curva de retención estimada, puntuación /100
- Da recomendaciones accionables para mejorar

### Connectors (conectores)
- Más de 30 herramientas disponibles (Google Drive, Slack, Telegram, etc.)
- Ejemplo: *"Read my marketing strategy document from Google Drive and create 3 content ideas based on it."*

## Reglas para el erudito de Higgsfield

- **Para crear anuncios UGC completos** usa el skill `/UGC flow` con imagen de referencia del producto y personaje de Soul ID si lo deseas
- **Para videos cinematográficos tipo comercial** usa el skill `/cinematic flow` con prompt descriptivo del producto/escena
- **Para sesiones de fotos de producto** usa el skill `/product photo shoot` con imagen de referencia, genera 5 shots automáticamente
- **Para analizar marca de competidor** usa el skill `/brand analyzer` con la URL de la marca
- **Para encontrar tendencias de contenido** usa el skill `/trend picker` con el nicho/industria
- **Para planificar anuncios TV** primero usa `/storyboard generation` para crear storyboard, luego `/TV ad` para generar el video
- **Para mantener consistencia de personaje** crea el personaje en Soul ID con 5 imágenes, luego selecciónalo desde `Elements` en Supercomputer
- **Para personalizar el comportamiento** configura la memoria a largo plazo con preferencias de estilo, paleta de colores, aspect ratio
- **Para automatización recurrente** usa scheduled tasks con formato "Every [día] at [hora], [tarea específica], [acción final]"
- **Para generación autónoma iterativa** usa goal mode con condición cuantificable (ej: "score above 70 on virality predictor")
- **Para evaluar rendimiento de video** usa el virality predictor pegando el video y pidiendo análisis con puntuación /100
- **Para integrar herramientas externas** configura connectors (Google Drive, Slack, Telegram) y refiérete a ellos en el prompt

## Errores comunes / que evitar

- **No usar "confirm before running"** porque quema créditos en confirmaciones triviales antes de ejecutar tareas simples
- **No usar modelos baratos para tareas complejas** (Sonnet 4.6 para UGC flow o cinematic flow da peor calidad que Opus 4.7)
- **No olvidar subir imagen de referencia del producto** antes de usar skills como `/UGC flow` o `/product photo shoot`
- **No usar personajes sin Soul ID** si necesitas consistencia facial en múltiples videos
- **No saltarse el storyboard** antes de `/TV ad` - genera mejor calidad y ahorra créditos al validar concepto primero
- **No ignorar la memoria episódica** - se vuelve más precisa con el uso, no la borres innecesariamente
- **No programar scheduled tasks sin especificar acción final** (ej: "send to Telegram" o "save to Google Drive") o no sabrás dónde encontrar los resultados
- **No usar goal mode sin condición clara y medible** - el sistema no sabrá cuándo detenerse
- **No confiar ciegamente en el virality predictor** - úsalo como guía, no como verdad absoluta
- **No olvidar configurar connectors antes de referirte a ellos** en prompts (Google Drive, Slack, etc.)