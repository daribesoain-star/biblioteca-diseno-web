# NEW Higgsfield Canvas Tutorial — Create Consistent AI Images & Videos
**Fuente:** hf_ola2 | https://youtu.be/6zezcx-A86U

## Que ensena sobre Higgsfield (2-3 lineas)
El Canvas de Higgsfield es un constructor de flujos de trabajo (workflow builder) basado en nodos que permite crear pipelines repetibles de imagen y video usando múltiples modelos de IA en un solo lienzo. Permite conectar nodos de prompt → generación de imagen → generación de video, compartir workflows públicos y reutilizarlos cambiando solo el input inicial.

## Tips y flujos accionables

**Navegación del Canvas:**
- Zoom: `Command + scroll` (Mac) / `Control + scroll` (Windows)
- Desplazamiento lateral: scroll sin tecla modificadora
- Movimiento: trackpad con dos dedos

**Flujo básico imagen:**
1. Click derecho → "Prompt node" → escribe prompt
2. Arrastra línea de conexión desde el prompt node hacia un "AI Image Generation node"
3. En el nodo de imagen, haz clic en "Open settings" (engranaje)
4. Selecciona modelo: `GPT Image 2` (recomendado como "más realista y mejor modelo actual"), `Seed Dream 5.0 Light`, `Grock Imagine`
5. Ajusta: duración, resolución, aspect ratio (ej. `9:16` para TikTok/Instagram), `Generate audio` (activar)
6. Haz clic en "Run pipeline"

**Flujo imagen → video:**
1. Conecta la salida del nodo de imagen a un "Video Generation node"
2. En settings del nodo video: elige modelo (ej. `Stable Diffusion 2.0 fast` para ahorrar créditos)
3. Ajusta duración (ej. `5` segundos), resolución baja para pruebas, aspect ratio, `Generate audio` activado
4. Prompt de movimiento: "Make the cat stand up and jump off"
5. Haz clic en "Generate" o "Run pipeline"

**Flujo con LLM Assistant Node:**
1. Añade nodo "LLM Assistant"
2. Conecta entrada de imagen (arrastra imagen al canvas) y/o texto
3. Prompt ejemplo: "Describe the characteristics of this person"
4. Modelo recomendado: `Claude Sonnet 4.6`
5. Haz clic en "Run generate"
6. La salida del LLM se puede conectar a un nodo de imagen o video

**Flujo completo para anuncio UGC (User Generated Content):**
1. Sube imagen del producto al canvas
2. Prompt al LLM: "I'm creating a UGC AI video advertisement for this product. [incluir URL de landing page]. Attached a reference photo. Turn this into an AI UGC actor. Get a description of a person ideal to promote this product and place them in an environment that makes sense."
3. Conecta salida del LLM + imagen del producto → "Image Generation node"
4. Conecta imagen resultante + nuevo prompt al LLM: "Given the image from previous prompt, turn this into a short video script and audio instructions for the video generator"
5. Conecta salida del LLM + imagen → "Video Generation node" con modelo `Seed ants 2.0`
6. Ejecuta pipeline

**Compartir workflows:**
- Click en esquina superior derecha → "Go public"
- Permisos: "Anyone can join" como "viewer" (pueden ver prompts, clonar, no editar)
- Click "Copy link"

**Reutilización:**
- Selecciona todo el workflow → "Run pipeline" para ejecutar desde cero
- Cambia solo el input (ej. "gray cat" en lugar de "cat") y ejecuta de nuevo

## Reglas para el erudito de Higgsfield

- Para crear imágenes realistas usa el preset `GPT Image 2` con aspect ratio `9:16` y resolución media para pruebas
- Para ahorrar créditos en video usa el preset `Stable Diffusion 2.0 fast` con duración `5` segundos
- Para análisis de imágenes o generación de scripts usa el preset `Claude Sonnet 4.6` en el LLM Assistant node
- Para videos de producto con rotación 360 usa el flujo: imagen producto → prompt "create a 360 rotating animation of the shoe" → video generation node
- Para anuncios UGC usa el flujo completo: producto → LLM (descripción persona/entorno) → imagen → LLM (script/audio) → video con `Seed ants 2.0`
- Para pipelines repetibles (catálogos de 50+ items) crea un workflow con nodos conectados y solo cambia el input inicial
- Para compartir flujos de trabajo usa permisos "viewer" para que otros puedan clonar sin editar
- Para generar audio en videos activa SIEMPRE `Generate audio` en settings del nodo video

## Errores comunes / que evitar

- **No olvidar abrir "Open settings"** en cada nodo de imagen/video: ahí están los parámetros críticos (modelo, duración, resolución, aspect ratio, audio)
- **No usar Canvas para tareas simples** (una sola imagen o video): es más rápido usar la interfaz nativa de Higgsfield (Image → Create Image)
- **No dejar el audio desactivado**: genera video sin sonido y luego hay que recrearlo, desperdiciando créditos
- **No conectar nodos incorrectamente**: asegúrate de que la línea de conexión vaya del output correcto al input correcto
- **No ignorar el LLM Assistant node**: es la clave para automatizar descripciones, scripts y prompts complejos
- **No asumir que todos los modelos dan el mismo resultado**: prueba varios (GPT Image 2, Seed Dream 5.0 Light, Grock Imagine) y elige el mejor para tu caso
- **No ejecutar pipelines completos sin probar cada nodo individualmente**: primero genera la imagen, luego el video, para verificar calidad antes de automatizar