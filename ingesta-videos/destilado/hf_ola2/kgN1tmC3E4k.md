# Seedance 2.5-提示词神器！长镜工坊赠送给大家！
**Fuente:** hf_ola2 | https://youtu.be/kgN1tmC3E4k

## Que ensena sobre Higgsfield (2-3 lineas)
Enseña a usar Higgsfield integrado en el sitio web "AI Chasing Light" para generar videos con consistencia de personajes, control de cámara y voz. Muestra el flujo completo: crear personajes (con tallado facial 3D o vistas de tres cuartos), escenas, props, y luego ensamblar tomas con plantillas narrativas para generar prompts de video largos (hasta 30s en Seedance 2.5). También revela cómo obtener 100 créditos gratis en Higgsfield mediante la función MCP.

## Tips y flujos accionables

### Flujo completo para generar video consistente (15s ejemplo)

1. **Acceso:** Ir a `aichasinglight.tech` → Registrar cuenta → Usar el "Long Shot Workshop" (长镜工坊).

2. **Configuración global del video:**
   - **Modelo:** Seleccionar "CDS2.5" (aunque no disponible, usar como placeholder; para ahora usar Seedance 2.0).
   - **Duración:** 15 segundos (o 5/10/30/custom). Si usas 15s, no se puede distribuir uniformemente; activa "Infinite margin and tail shot" para colores normales.
   - **Modo:** "Storyboard mode" (自动分镜) → divide el prompt general en 4 tomas automáticamente. Alternativa: "One-shot mode" para una sola toma.
   - **Calidad:** "Live-action/Movie quality"
   - **Paleta de color:** "Warm sunlight", "Cool neon", "Black and gold", "Soft natural light", "Black and white film"
   - **Aspect ratio:** 21:9, 16:9, 9:16, 4:3, 1:1
   - **Iluminación:** "Cinematic lighting", "Soft natural light", "Twilight backlight", "Neon night scene light", "Soft warm light", "Hard light high contrast"
   - **Audio tone:** "Dialogue + ambient sound effects" (o "Pure environmental narration", "No dialogue/silence", "Music added later")

3. **Creación de personajes (dos métodos):**

   **Método A: Character Creation & Face Shaping Workshop (más detallado, reduce AI face collision)**
   - Click en "Appearance" → "Character Creation and Face Shaping Workshop"
   - Usar modelo 3D (girable con mouse) para editar:
     - **Cabello:** Largo, hairstyle (mohawk, messy, fluffy), color (reddish)
     - **Rostro:** Baby fat, warm white skin, deep large eyes, standard eye spacing, dark pupils, round ears, round earrings, big mouth, upturned corners, rose lips
     - **Cuello:** Thick neck
     - **Expresión:** Smiling
     - **Parte superior:** Punk rock striped shirt, V-neck, loose cashmere, sequined polka dot pattern, charcoal black
     - **Cuerpo:** Broad shoulders, slender arms, naturally drooping posture, long fingers
     - **Parte inferior:** Loose denim pants with logo pattern, turned-out pockets, light white
     - **Zapatos:** Large Roman feet, riding boots, cartoon socks, brown
   - **Aspect ratio:** 16:9 (landscape)
   - **Fondo:** Dark gradient background (recomendado para vistas de personaje)
   - **Vistas:** Seleccionar "Three views" → half-body, front, full-body, side full-body
   - Click "Complete" → luego "Return to scene workshop" (botón verde)
   - El prompt del personaje aparece automáticamente al lado del nombre.

   **Método B: Character Three-View One-Click Setting (rápido)**
   - Click en "Appearance" → "Character Three-View One-Click Setting"
   - Seleccionar 16:9 banner → elegir estilo (ej: "Modern urban street style")
   - Configurar: Gender (female), Age (young), Body type (slender), Temperament (gentle), Lighting (random)
   - Click "Copy" → "Return to common workshop"
   - El prompt se genera automáticamente.

4. **Generar imagen del personaje:**
   - Click "Creation table" (al lado del personaje) → el prompt aparece en el input box
   - Seleccionar: Model "PPT image two", 16:9, 2K, "Three integrals"
   - Click "Generate confirm"
   - Una vez generada: Click "Save as Asset Library" → ingresar nombre del personaje → click "Save"
   - Para enviar al Scene Workshop: Click "Send to Changjing Workshop" (o click en imagen → tres puntos → "Send to Changjing Workshop")

5. **Asignar voz al personaje:**
   - Click en "Voice" al lado del personaje
   - Elegir tipo (ej: "Deep nasal sound" para hombre, "Spoiled princess" para mujer)
   - Detalles: Head resonance, timbre (breathy/clear), speaking speed (fast), personality (proud yet innocent), accent (Taiwanese)
   - Click "Copy tag" → "Return to scene amplifier" → el tag de voz se asigna automáticamente

6. **Crear escena (opcional):**
   - Click "Create" en escena → "Create Everything" o "Image Hints"
   - Seleccionar 16:9 banner → elegir categoría (scene buildings, natural, city, indoor, ancient, sci-fi/fantasy)
   - Configurar: Time (Morning), Weather (Sunny), Light (Candlelight, Warm light lens), Wide-angle panorama
   - Elegir "Golden splendor" → click "Create" → se genera prompt
   - Seleccionar "Image two" de GPT, 3 points → "Generate confirm"
   - Guardar como "Scene card" en Asset Library → enviar al Scene Workshop

7. **Ensamblar tomas con plantilla narrativa:**
   - En "Narrative template", elegir: "Single shot", "Hook shots", "Three shots", "Miniature five shots", "Classic advertising structures", "Slow-motion scenes"
   - Ejemplo: "Three shots" → aparecen 3 tomas con timing predefinido
   - **Opciones de llenado:**
     - Manual: Shot size, camera movement, angle, scene, emotion, transition (hard cut/dissolve), editing
     - Assets: Seleccionar personajes y escenas creados
     - Scene actions: "Turning out of frame", "Running into frame", "Slowly approaching", "Quickly catching up", "Reaching out to catch"
     - Expressions: "Turning back and smiling", "Showing a smile", "Frowning", "Widening eyes"
     - Camera moves: "Slowly zooming in/out", "Panning to one side", "Following movement"
   - **Para diálogo:** Seleccionar "Assets" → personaje → cursor dentro de comillas → escribir diálogo directamente (sin dos puntos ni comillas)
   - **One-click generation:** Click para generar toda la línea de tiempo y prompts automáticamente. Si no gusta, click again para regenerar.
   - **Sound effects:** Footsteps, wind/rain, extreme noise, birdsong, insect sounds

8. **Generar prompts de video:**
   - Click "Generate prompts" → aparecen prompts continuos de 15s divididos en segmentos (0-5s, 5-9.5s, 9.5-15s)
   - Verificar que cada personaje tenga su tag image y voz vinculados
   - Si todo correcto: Click "Copy complete" → "Go to Creator"

9. **En el Creator de Higgsfield:**
   - Seleccionar: Video → "Seedance 2.0" (16:9, 5s por ahora; cuando salga CDS2.5 usarlo para 30s)
   - **Pixel settings:** 480P, 720P, o 1080P
   - **Modo:** "Standard" (Seedance 2.0, 45 puntos) o "Fast" (Seedance 2.0)
   - **Assets:** Click "Assets" → seleccionar escena (church), luego personajes (beautiful woman, handsome man) → se suben como reference images
   - **Tags:** Seleccionar todos los tag images → elegir "Church", "Handsome Guy", "Beauty" (hover mouse para ver imagen)
   - **Alternativa:** Click "Reference" → seleccionar personaje directamente (la voz se ignora en este paso)
   - Click "Generate confirm"

10. **Edición final:**
    - Video generado → Click scissors icon → "Go to Editing Table"
    - Left-click drag al video track → soltar → presionar spacebar para reproducir
    - Click "Export" → seleccionar parámetros → "Start Export"

### Cómo obtener 100 créditos gratis en Higgsfield (válido hasta 22 de julio)
1. Ir a Higgsfield website → Login con Google o email
2. Click en "MCP and CLI" → seleccionar "MCP"
3. Copiar link del paso 1 → click link del paso 2 → entrar a cloud interface
4. Ingresar nombre (ej: "HIGGS file") → pegar link en campo URL
5. Desactivar "Advanced options" → click "ADD HEX file" icon (esquina inferior derecha)
6. Click "Connection" button → permitir conexión → click icon en esquina inferior derecha
7. **NO cerrar la pantalla** (si se cierra, no aparecerá de nuevo a menos que uses otra cuenta)
8. Se activa "Three-day free plus version" (especial MCP, $0, 100 puntos por 3 días)
9. Se puede cancelar en cualquier momento dentro de 3 días (aunque pide tarjeta de crédito)

## Reglas para el erudito de Higgsfield

- **Para crear personajes con máxima consistencia y evitar AI face collision:** usa el método "Character Creation and Face Shaping Workshop" con modelo 3D, edita cada detalle (cabello, ojos, boca, ropa, accesorios) y genera en 16:9 con fondo gradient oscuro.
- **Para crear personajes rápidamente:** usa "Character Three-View One-Click Setting" con estilo predefinido (modern urban, etc.) y genera con un click.
- **Para asignar voz única a cada personaje:** usa el módulo de voz con parámetros específicos (head resonance, timbre, speaking speed, personality, accent) y copia el tag al personaje.
- **Para videos de hasta 30 segundos con referencias y redibujado parcial:** usa el modelo "CDS2.5" (cuando esté disponible) con 50 referencias.
- **Para estructura narrativa automática:** usa "Storyboard mode" con plantilla "Three shots" o "Slow-motion scenes" y activa "One-click generation" para llenar toda la línea de tiempo.
- **Para control de cámara preciso:** en las tomas, especifica camera movement (slow zoom in/out, pan, follow movement) y angle (wide-angle, close-up, etc.).
- **Para transiciones suaves:** usa "Dissolve" entre tomas en lugar de "Hard cut".
- **Para añadir assets al video final:** en el Creator, selecciona todos los assets (escena + personajes) como reference images y asigna tags manualmente.
- **Para exportar video editado:** usa el editor integrado (scissors icon) → drag al track → export con parámetros deseados.
- **Para obtener créditos gratis:** usa la función MCP antes del 22 de julio, sigue los 3 pasos exactos y no cierres la pantalla de conexión.

## Errores comunes / que evitar

- **No cerrar la pantalla de conexión MCP:** si se cierra, no se puede recuperar la oferta de 100 créditos gratis a menos que uses otra cuenta.
- **Usar dos puntos y comillas en diálogos:** en el narrative template, escribe el diálogo directamente dentro de las comillas sin formato adicional.
- **Olvidar asignar tag de voz al personaje:** después de generar la voz, siempre click "Copy tag" y luego "Return to scene amplifier" para que se vincule.
- **No guardar imágenes en Asset Library antes de enviar al Scene Workshop:** siempre click "Save as Asset Library" primero, luego "Send to Changjing Workshop".
- **Seleccionar duración que no permite distribución uniforme:** si usas 15s, activa "Infinite margin and tail shot" para que los colores se muestren correctamente.
- **Ignorar la configuración global de iluminación y paleta:** estos parámetros afectan todo el video; configúralos antes de crear personajes.
- **Usar fondo blanco/liso para vistas de personaje:** usa dark gradient background para mejores resultados en las tres vistas.
- **No verificar que cada personaje tenga su tag image y voz vinculados antes de generar prompts:** revisa en la interfaz de prompts que aparezcan correctamente.
- **Seleccionar "Fast" mode en Seedance 2.0 si necesitas calidad:** usa "Standard" para mejor resultado (45 puntos vs menos).