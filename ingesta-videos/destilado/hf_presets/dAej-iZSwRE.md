# This New AI Tool Makes Cinematic Shots Too Easy (Higgsfield Cinema Studio)
**Fuente:** hf_presets | https://youtu.be/dAej-iZSwRE

## Que ensena sobre Higgsfield (2-3 lineas)
Higgsfield Cinema Studio permite crear secuencias cinematográficas completas desde una sola imagen o prompt, con control real sobre cámara, lente, movimiento y encuadre. El flujo es: generar imagen base cinematográfica → generar múltiples ángulos (multi-shot) → upscalar → animar con movimiento de cámara controlado. Todo en una sola plataforma, sin cambiar de herramienta.

## Tips y flujos accionables

### Flujo completo paso a paso (del video)

1. **Generar imagen base en Cinema Studio**
   - Ir a la página de Cinema Studio
   - Pegar prompt (ejemplo del video: prompt de escena con personaje principal)
   - Configurar cámara: **IMAX film camera** (modelo exacto usado)
   - Configurar lente: **Arri Signature Prime** (modelo exacto usado)
   - Configurar distancia focal: **24 mm** (para wides cinematográficos)
   - Resolución: **2K** (recomendado para flujo fluido; se puede hasta 4K)
   - Click "Generate"

2. **Multi-shot generation** (desde la imagen base)
   - La herramienta genera automáticamente **9 ángulos diferentes**: wide establishing shots, medium frames, close-ups, front, side, over-the-shoulder
   - Seleccionar solo los shots más fuertes para la historia
   - **Upscalear** solo los shots seleccionados (paso crucial: afina detalles cinematográficos, mejora claridad, prepara para animación)

3. **Generar video desde cada shot**
   - Opción A: Seleccionar imagen generada como primer frame → Cinema Studio cambia automáticamente a modo video
   - Opción B: Ir manualmente a la pestaña de video y generar desde cualquier imagen
   - Configurar:
     - **Camera movement**: Static, handheld, zoom in/out, pan, tilt, orbit, dolly in, dolly out
     - **Shot duration**: 10 segundos (usado en el ejemplo)
     - **Audio**: On/Off (dejarlo On para sonido ambiental natural)
     - **Slow motion**: Off (para mantener sensación realista)
     - **Batch size**: Default (1) para un solo resultado limpio
   - Click "Generate"

4. **Repetir** con otras imágenes de referencia para construir secuencia completa (wide shots, close-ups, reaction shots)

### Prompts VERBATIM del video
- Prompt usado para imagen base: *"I think maybe just talk to them. So, let's talk."* (escena con personaje principal)
- Prompt para video: incluye descripción de movimiento de cámara (ej: "static camera movement")

### Trucos clave
- La imagen base debe tener: **composición cinematográfica fuerte, personaje principal estable, iluminación consistente, suficiente profundidad** para permitir movimiento de cámara
- **No upscalar todos los shots**: solo los que se van a animar (mantiene flujo eficiente)
- Los shots seleccionados deben tener: **personaje completamente visible, entorno claramente establecido, horizonte y fondo estables** (se siente como fotograma de película, no momento aleatorio)
- Para cambiar de estilo: generar otra imagen base con nuevo mood/paleta de colores/atmósfera

## Reglas para el erudito de Higgsfield

- **Para imagen base cinematográfica**: usa preset **IMAX film camera** con lente **Arri Signature Prime** a **24mm focal length** y resolución **2K**
- **Para cobertura de escena**: usa **multi-shot generation** desde la imagen base para obtener 9 ángulos automáticos (wide, medium, close-up, front, side, over-the-shoulder)
- **Para animar**: selecciona imagen upscaleada → ve a pestaña video → elige **camera movement** específico (static, dolly, orbit, etc.) con **shot duration** de 10s y **slow motion Off**
- **Para mantener consistencia**: asegura que la imagen base tenga **personaje principal visible, iluminación consistente y fondo estable** antes de generar ángulos o videos
- **Para flujo eficiente**: upscala **solo los shots que vas a animar**, no todos

## Errores comunes / que evitar

- **No generar imagen base sin configurar cámara y lente**: el resultado será genérico, no cinematográfico
- **No upscalar todos los shots**: desperdicia recursos y tiempo; solo upscalar los que se usarán en video
- **No usar imágenes base débiles**: si la imagen no tiene composición sólida, personaje estable y profundidad, los ángulos y videos saldrán inconsistentes
- **No mezclar movimientos de cámara aleatorios**: elegir un movimiento específico (static, dolly, orbit) para cada shot, no "random"
- **No generar video sin antes upscalar la imagen**: los detalles cinematográficos se pierden y el resultado se ve blando
- **No ignorar el audio**: dejarlo On para sonido ambiental natural mejora la inmersión
- **No usar slow motion en escenas que buscan realismo**: mantener Off para sensación grounded