# CURSO BÁSICO DE FOTOGRAFÍA: Qué es la distancia focal del objetivo y tipos de lentes
**Fuente:** esc_lentes_es | https://youtu.be/W-4XGjHX6rI

## Que ensena (2-3 lineas)
Define la distancia focal como la distancia entre el sensor de la cámara y el centro óptico del lente (no la distancia al sujeto), y explica cómo afecta el ángulo de visión, la profundidad de campo y la compresión de la imagen. Clasifica los tipos de lentes por rango focal: ojo de pez, gran angular, estándar, teleobjetivo y superteleobjetivo, con sus aplicaciones típicas.

## Lecciones accionables
- **Distancia focal (Focal Length):** Medida en milímetros (mm). Es la distancia entre el sensor y el centro óptico del lente. No confundir con la distancia al sujeto.
- **Relación focal-ángulo:** A mayor focal (mm), menor ángulo de visión, menor profundidad de campo (shallower depth of field), sujeto más cercano. A menor focal, mayor ángulo de visión, mayor profundidad de campo.
- **Tipos de lentes para prompts:**
  - **Fisheye (8mm):** Ángulo de visión de 180°. Ideal para distorsión extrema, espacios cerrados, efectos surrealistas.
    - *Prompt:* `fisheye lens, 8mm, extreme wide angle, 180 degree field of view, spherical distortion`
  - **Gran Angular (Wide Angle, 8-25mm):** Ángulo de 80-110°. Para paisajes, arquitectura, montañas.
    - *Prompt:* `wide angle lens, 24mm, expansive landscape, deep depth of field, leading lines`
  - **Estándar (Standard, 25-85mm):** Ángulo de 25-85°. Para retratos, eventos, fiestas. Reproduce la visión humana.
    - *Prompt:* `standard lens, 50mm, natural perspective, medium shot, shallow depth of field, bokeh background`
  - **Teleobjetivo (Telephoto, 85-160mm):** Ángulo de 10-25°. Para deportes, retratos comprimidos, fauna.
    - *Prompt:* `telephoto lens, 135mm, compressed perspective, subject isolation, soft background`
  - **Superteleobjetivo (Super Telephoto, 160-600mm):** Ángulo de 2-10°. Para distancias extremas, luna, deportes de larga distancia.
    - *Prompt:* `super telephoto lens, 400mm, extreme close-up, moon, shallow depth of field, atmospheric haze`
- **Movimientos de cámara recomendados por focal:**
  - Gran angular: `camera dolly forward`, `camera pan`, `camera tilt up` (movimientos lentos para evitar distorsión excesiva).
  - Teleobjetivo: `camera push in`, `camera orbit`, `camera handheld` (movimientos sutiles para mantener estabilidad).
- **Parámetros técnicos en prompts:**
  - `focal length: [valor]mm`
  - `aperture: f/[valor]` (ej. f/2.8 para poca profundidad, f/16 para todo enfocado)
  - `depth of field: [shallow/deep]`
  - `angle of view: [grados]`
  - `lens type: [fisheye/wide/standard/telephoto/super telephoto]`

## Reglas para el director de fotografia IA
- **Usa focal corta (8-24mm) cuando necesites mostrar todo el entorno**, como paisajes, arquitectura o escenas de establecimiento. El ángulo amplio captura contexto pero puede distorsionar bordes.
- **Usa focal media (35-50mm) para diálogos y retratos naturales**, ya que reproduce la perspectiva humana sin distorsión facial.
- **Usa focal larga (85-200mm) para aislar sujetos del fondo**, crear compresión de perspectiva (fondo parece más cercano) y suavizar el fondo (bokeh). Ideal para primeros planos emocionales.
- **Para no alucinar en video IA:** Especifica siempre `focal length` y `lens type` en el prompt. Si no defines la focal, el modelo puede cambiar abruptamente entre tomas, generando inconsistencias de escala y perspectiva.
- **En transiciones de plano:** Mantén la misma focal entre tomas consecutivas para evitar saltos visuales. Si cambias de focal, hazlo con un `camera zoom` explícito en el prompt.
- **Para profundidad de campo:** Combina `focal length` larga con `aperture: f/1.4` o `f/2.8` para fondo borroso. Para todo enfocado, usa `focal length` corta con `aperture: f/11` o `f/16`.
- **En escenas de movimiento:** Las focales largas magnifican el movimiento (más inestabilidad), las cortas lo minimizan. Ajusta `camera shake` o `handheld` según la focal.

## Errores comunes que evita o menciona
- **Confundir distancia focal con distancia al sujeto:** La focal es una propiedad del lente (mm), no la separación cámara-sujeto. En prompts, no pongas `distance: 5m` como sustituto de `focal length`.
- **Usar gran angular para retratos cercanos:** Distorsiona rasgos faciales (nariz grande, orejas pequeñas). Para retratos, usa 50mm o más.
- **Ignorar el ángulo de visión en escenas amplias:** Un gran angular (ej. 16mm) captura 110°, un teleobjetivo (200mm) solo 10°. Si el prompt pide “vista panorámica” con focal larga, el resultado será recortado y sin contexto.
- **No especificar focal en secuencias:** El modelo puede interpretar “close-up” como 50mm o 200mm, generando inconsistencias. Siempre añade `focal length: [valor]mm`.
- **Asumir que “zoom” es lo mismo que “cambio de focal”:** El zoom es un movimiento óptico continuo. En video IA, usa `camera zoom in` o `camera zoom out` para simular cambio de focal, pero especifica la focal inicial y final si es necesario.