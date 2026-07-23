# Higgsfield AI Ultimate Tutorial (2026)
**Fuente:** hf_tutorial | https://youtu.be/cksEVv1tArI

## Que ensena sobre Higgsfield (2-3 lineas)

Higgsfield es un agregador de modelos de IA que unifica acceso a Kling, Google Veo 3.1, Sora 2, Minimax, Seedance, y su propio modelo Higgsfield Soul. Enseña a generar imágenes y videos desde texto o imagen inicial, crear avatares personalizados, y usar apps integradas (Shots, Skin Enhancer, Popcorn) para controlar ángulos, iluminación y realismo sin cambiar de plataforma.

## Tips y flujos accionables

### Creación de Avatar (flujo exacto)
1. **Toma 22-31 fotos** con celular: frente, perfil izquierdo/derecho, nuca, expresiones (serio, sonrisa, enojado). Fondo sólido (pared o green screen) sin distracciones.
2. Sube a **Character > Create Character**. Espera 30-60 min hasta que aparezca en tu lista.
3. Para generar imágenes: selecciona tu avatar, usa **Higgsfield Soul** (único modelo que lo soporta). Prompt ejemplo: `"This character, wearing black hat, over the ear headphones in a podcast setting with purple LED and gradient lighting behind him, looking at the camera, solid black hat, no text on clothing"`.
4. Ajustes: **Aspect ratio** 16:9 o 9:16, **Quality** High, **Prompt Enhancer** OFF, **Number of images** 4 (2 créditos). Descarta las que tengan texto en ropa o miradas perdidas.

### Shots App (ángulos desde una imagen)
- Ve a **Apps > Shots**. Sube 1 imagen (vertical o landscape). Genera 9 miniaturas.
- Selecciona las que te gusten (mínimo 2). **Upscale** (8 créditos por 2 imágenes). Descarga cada una en full res.
- Útil para obtener múltiples ángulos del mismo personaje/escena sin re-promptear.

### Popcorn App (storyboard controlado)
- **Apps > Popcorn**. Sube 4 imágenes de referencia del mismo personaje.
- Modo **Auto**: escribe mood/acción general (ej: `"cinematic scene where character is thoughtful at the beach reflecting on his life"`). Genera 4 shots automáticos.
- Modo **Manual**: escribe prompt específico por slot (1-4). Ejemplo:
  - Slot 1: `"Character stands thoughtful"`
  - Slot 2: `"He walks towards the water"`
  - Slot 3: `"Goes in the water waist-deep"`
  - Slot 4: `"Looks up at the sky with both arms up"`
- Descarga cada frame. Úsalos como start frames para video.

### Skin Enhancer (realismo facial)
- **Apps > Skin Enhancer**. Sube foto de personaje.
- Elige: **Soft skin**, **Realistic skin**, o **Imperfect skin**.
- Click **Enhance** (4 créditos). Compara original vs mejorado. Imperfect skin añade textura más natural.

### Generación de Imágenes (Nano Banana Pro)
- **Image > Create Image**. Modelo: **Nano Banana Pro** (mejor calidad, 2K/4K).
- Aspect ratio: 9:16 o 16:9. **Resolution**: 2K (unlimited actualmente). **Number of generations**: 2-4.
- Prompt ejemplo: `"A New York City taxi cab driving in the snow in Time Square. Next to it is an elephant with a Santa Claus hat"`.
- Descarga directa. Compara con otros modelos (Seedream 4.0, Flux) para ver diferencias de estilo.

### Generación de Video (Image-to-Video con Kling 2.6)
1. Sube imagen como **start frame** (ej: foto de personaje o auto).
2. Modelo: **Kling 2.6** (mejor realismo, 1080p, 5-10 seg, con audio).
3. **Duration**: 5 seg (10 créditos). **Aspect ratio**: Auto (hereda de la imagen).
4. Prompt (solo cámara + acción + diálogo, NO describas personaje/escena):
   - `"Shallow depth of field, handheld shot, character attentively listens, no dialogue"`
   - Para autos: `"This is the front of the car. Low angle follow shot as the car drives. Camera tracks it. 1963 Corvette ambient sound"`
5. Si el modelo tiene audio y NO quieres voz: agrega `"no dialogue"` o especifica sonido ambiente (ej: `"windy landscape ambient sound"`).
6. Si quieres silencio visual: omite cualquier mención de audio, pero el modelo puede inventar narración. Mejor escribe `"ambient sound only"`.

### Comparativa de Modelos de Video
| Modelo | Resolución | Duración | Audio | Mejor para |
|--------|-----------|----------|-------|------------|
| Kling 2.6 | 1080p | 5-10s | Sí | Realismo, autos, escenas fijas |
| Google Veo 3.1 | 1080p | 8s | Sí | Actuación de personajes, diálogos |
| Sora 2 | 1080p | 5-10s | No | Videos virales TikTok, look candid |
| Seedance Pro | 480p-1080p | 5-10s | No | Alternativa rápida |
| Minimax | 1080p | 5-10s | No | Escenas de acción |

### Organización de Assets
- **Browse Assets** (header superior): combina imágenes y videos. Crea carpetas por proyecto.
- Selecciona assets > **Add to folder** > **Create new** (ej: "Ocean Project"). Guarda. Filtra por carpeta en sidebar izquierdo.

## Reglas para el erudito de Higgsfield

- **Para crear avatar realista**: usa 22-31 fotos con fondo sólido, variando ángulos y expresiones. Modelo **Higgsfield Soul** obligatorio.
- **Para máxima calidad de imagen**: usa **Nano Banana Pro** con resolución **2K** (unlimited). Prompt enhancer OFF.
- **Para video con audio controlado**: usa **Kling 2.6** o **Google Veo 3.1**. Siempre especifica `"no dialogue"` o `"ambient sound"` en el prompt.
- **Para evitar que el personaje hable en Kling 2.6**: agrega `"no dialogue"` al final del prompt. Si no, el modelo inventará voz.
- **Para mantener ángulo exacto en autos**: escribe `"This is the front of the car. Keep this exact angle"` en el prompt.
- **Para obtener múltiples ángulos de un personaje**: usa **Shots app** (9 miniaturas) o **Popcorn manual** (4 slots con prompts específicos).
- **Para realismo facial**: después de generar imagen, pasa por **Skin Enhancer** con modo **Realistic skin** o **Imperfect skin**.
- **Para text-to-video sin imagen**: escribe prompt con 5 elementos: personaje, escenario, iluminación, acción, diálogo. Usa cheat sheet (disponible vía DM en Instagram del creador).
- **Para proyectos largos**: genera frames individuales con Popcorn/Shots, luego conviértelos a video con Kling 2.6 (5s cada uno). Ensambla en editor externo.
- **Para sonido ambiente específico**: en prompts de video con audio, escribe `"[escena] ambient sound"` (ej: `"beach ambient sound"`, `"car engine ambient sound"`).

## Errores comunes / que evitar

- **No dejar el prompt de video vacío en Kling 2.6/Veo 3.1**: si el modelo tiene audio y no escribes nada sobre sonido, inventará narración o voz. Siempre pon `"no dialogue"` o especifica sonido.
- **No usar Prompt Enhancer para avatares**: activarlo añade adjetivos que pueden cambiar la apariencia del personaje. Mantén OFF.
- **No generar video sin especificar acción**: si solo pones `"character"` sin movimiento, el video será estático o alucinará. Describe cámara + acción.
- **No usar modelos sin audio para escenas con diálogo**: Seedance, Minimax, Sora 2 no tienen audio. Si necesitas voz, usa Kling 2.6 o Veo 3.1.
- **No subir fotos de avatar con texto en ropa/fondo**: el modelo lo replica y se ve artificial. Especifica `"no text on clothing"` en el prompt.
- **No confiar en la duración máxima para todas las escenas**: 10s en Kling 2.6 cuesta 20 créditos vs 5s (10 créditos). Usa 5s para pruebas.
- **No olvidar que Popcorn auto no permite control de ángulos**: si necesitas planos específicos, usa modo **Manual** con prompts por slot.
- **No generar video directamente desde texto si puedes usar imagen**: image-to-video da más control sobre composición y personaje. Siempre genera la imagen primero con Nano Banana Pro.
- **No ignorar la carpeta de organización**: sin carpetas, los assets se mezclan. Usa **Browse Assets > Add to folder** por proyecto.
- **No usar Seedance para proyectos que requieran 1080p**: solo ofrece hasta 1080p en Pro, pero Kling 2.6 lo supera en realismo.