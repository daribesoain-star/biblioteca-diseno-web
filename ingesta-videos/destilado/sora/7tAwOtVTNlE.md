# The ULTIMATE Sora 2 Prompting Guide (Complete Control + Amazing Results)
**Fuente:** sora | https://youtu.be/7tAwOtVTNlE

## Que ensena (2-3 lineas)
Enseña la fórmula maestra de prompting para Sora 2: **Scene Intent + Shot Composition + Lighting & Tone**. Cubre desde prompts simples de texto a video hasta prompts avanzados con múltiples cortes, timestamps, diálogo y efectos de sonido, más el uso de imagen a video con control total sobre cada segundo del clip.

## Lecciones accionables

### Fórmula universal del prompt (3 partes obligatorias)
1. **Scene Intent** (1-3 oraciones): Describe el tema, mundo o emoción. Ej: *"High quality 2D anime film style cinematic realism. A samurai woman with long white hair walks slowly along a coastal path beside the ocean."*
2. **Shot Composition**: Define acción, personajes, cortes y timestamps. Usa **cut-based prompt control** o **timestamp control** para planificar cada segundo.
3. **Lighting & Tone**: Párrafo final que fija look, atmósfera y emoción. Ej: *"Golden late afternoon sunset with soft shadows, dynamic ocean reflections, sound of distant waves and wind."*

### Prompt simple (text-to-video, sin cortes)
```
High quality 2D anime film style. A samurai woman with long white hair walks slowly along a coastal path beside the ocean. Warm and cinematic lighting with late afternoon sunlight glinting off the ocean surface. Sound of distant waves and wind completes the tranquil environment.
```

### Prompt medio (con cortes y diálogo)
```
Scene intent: High quality 2D anime film style cinematic realism. A samurai woman with long white hair walks slowly along a coastal path beside the ocean.

Shot composition:
Cut 1: The woman walks slowly along the fence beside the ocean.
Cut 2: Camera tilts downward towards the rocks below. Sound of a ship horn in the distance.
Cut 3: Medium shot of her face. Her eyes reflect the ocean. She quietly whispers: "It's been so long."

Lighting and tone: Golden late afternoon sunset with soft shadows, dynamic ocean reflections, tranquil atmosphere. Ship horn sound continues faintly in the background.
```

### Prompt avanzado (image-to-video con timestamps)
```
Scene intent: High quality 2D anime film style cinematic realism. A samurai woman with long white hair stands beside a coastal path.

Shot composition:
[0-3s] The woman gently shifts her weight, then begins walking a few slow steps towards the fence down the path.
[3-6s] Camera tilts down to show waves crashing against the rocks below. Ship horn sounds.
[6-10s] Close-up of her eyes reflecting the ocean. She whispers: "It's been so long."

Lighting and tone: Warm golden hour light, soft shadows, ocean reflections, distant ship horn, wind.
```

### Reglas de sonido y diálogo
- **Diálogo específico**: Se coloca DENTRO del corte donde debe ocurrir. Ej: *"She quietly whispers: 'It's been so long.'"*
- **Sonidos tonales/fondo**: Se colocan en la sección Lighting & Tone. Ej: *"Sound of distant waves and wind."*
- **Efectos puntuales**: Se colocan en el corte exacto. Ej: *"Cut 2: Sound of a ship horn in the distance."*

## Reglas para el director de fotografia IA

- **Usa la fórmula Scene Intent + Shot Composition + Lighting & Tone** en TODOS tus prompts, incluso los simples.
- **Usa timestamps o cut-based prompt control** cuando necesites coreografía exacta de cámara y acción en segundos.
- **Coloca el diálogo DENTRO del corte** donde debe ocurrir; no lo pongas en la sección de tono.
- **Coloca sonidos ambientales y tonales en Lighting & Tone**; los efectos puntuales (como un cuerno de barco) van en el corte específico.
- **Para image-to-video**, describe el movimiento inicial con precisión: *"gently shifts her weight, then begins walking a few slow steps"* en lugar de solo *"walks"*.
- **Para no alucinar en video IA**, sé específico con la duración de cada corte usando timestamps [0-3s], [3-6s], etc.
- **Usa términos de cámara en inglés** en los cortes: *camera tilts downward*, *medium shot*, *close-up*, *camera follows smoothly behind*.
- **Termina SIEMPRE con un párrafo de Lighting & Tone** para fijar el look final y evitar que la IA invente atmósferas genéricas.

## Errores comunes que evita o menciona

- **No mezclar diálogo con sonidos ambientales**: Poner todo en una sola sección confunde a la IA. Separa diálogo (en el corte) de sonidos de fondo (en Lighting & Tone).
- **No usar prompts demasiado simples para escenas complejas**: Si quieres múltiples cortes, usa timestamps o cut-based control; un prompt de una línea no dará control.
- **No olvidar la sección Lighting & Tone**: Sin ella, la IA genera atmósferas genéricas y pierde la intención cinematográfica.
- **No asumir que la IA entiende timing sin timestamps**: Para control exacto de cuándo ocurre cada acción, usa [0-3s], [3-6s], etc.
- **No usar image-to-video sin describir la transición inicial**: Si partes de una imagen fija, especifica cómo comienza el movimiento (*"gently shifts her weight"*), o la IA puede alucinar el inicio.