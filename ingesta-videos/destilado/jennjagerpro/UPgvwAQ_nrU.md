# Apple Motion Tutorial- SNL Show Open
**Fuente:** jennjagerpro | https://youtu.be/UPgvwAQ_nrU

## Qué enseña
Recrea el efecto de créditos de apertura de SNL (temporadas 2014-2018) en Apple Motion: texto grande que se reduce y se desvanece con motion tracking sobre un clip de video, usando filtros de glow, gradient blur y prism, más comportamientos de randomización y pop-out.

## Lecciones accionables
- **Retiming del clip:** seleccionar clip en el panel de proyecto → Properties → Timing → Show → Speed → cambiar a **200%** para pasar de cámara lenta a tiempo real.
- **Crear texto grande inicial:** usar herramienta Text → escribir nombre (ej. "SEAN") → fuente **Ponter Alt** (o cualquier fuente all caps, blocky) → escalar para que no quepa completamente en pantalla.
- **Ajustes de Appearance en texto grande:** Face = blanco, Glow = blanco (sin marcar checkbox de glow aún).
- **Filtros para texto grande (aplicar secuencialmente):**
  - Filtro **Glow**: Radius = 92, Opacity = 1.5, Threshold = 0.75, Softness = 0.65
  - Filtro **Gradient Blur**: Amount = 39 → mover puntos en canvas a configuración vertical (más blur arriba, menos abajo)
  - Filtro **Prism**: Amount = 27
- **Blend mode del texto grande:** Properties → Blend Mode → **Overlay**
- **Duplicar texto para apellido:** click derecho → Duplicate → cambiar contenido a apellido (ej. "STEELE") → reposicionar (ej. S sobre W de SEAN) → Appearance → Face = color **teal**
- **Dividir textos en timeline:** saltar **15 frames** (Shift + flecha derecha para 10, luego 5 flechas derecha) → seleccionar cada texto → Edit → Split → crear dos grupos: "large text" (primeros 15 frames) y "small text" (resto)
- **Ajustar texto pequeño:** seleccionar textos dentro del grupo "small text" → Format → Size = **208** → Blend Mode = **Vivid Light**
- **Drop shadow en texto pequeño (primer nombre):** Appearance → Drop Shadow → Color = teal, Opacity = 84, Blur = 275, Distance = 7, Angle = -70
- **Modificar filtros en texto pequeño (primer nombre):**
  - Deshabilitar Gradient Blur
  - Glow: Radius = 49, Opacity = 1, Threshold = 0.75, Softness = 0.35, Mix = 37
  - Prism: Amount = 6, Angle = 270, Mix = 37
- **Drop shadow en texto pequeño (apellido):** mismo teal, Opacity = 100, Blur = 275, Distance = 7, Angle = -70
- **Modificar filtros en texto pequeño (apellido):**
  - Deshabilitar Prism y Gradient Blur
  - Glow: Radius = 55, Opacity = 1.5, Threshold = 0.75, Softness = 0.65, Mix = 100
- **Behavior Randomize en primer nombre (texto pequeño):** Behaviors → Parameter → Randomize → Apply to = Filters → Prism → Mix → Amount = 93 → Apply Mode = **Subtract** → Frequency = 2 → Noisiness = 0.55
- **Duplicar Randomize:** click derecho en el behavior → Duplicate → cambiar Apply to = Filters → Glow → Mix (dejar mismos valores)
- **Acortar duración del texto pequeño:** arrastrar borde en timeline a **3 segundos** (o menos)
- **Behavior Pop Out en primer nombre:** Behaviors → Text Basic → Pop Out → mover behavior al **final** del texto en timeline → duración = **18 frames** → Inspector → desmarcar "Remove Format and Scale" → Sequencing = 2 → Animate = Character → Spread = 0 → Direction = **Backwards**
- **Copiar Pop Out al apellido:** click derecho → Copy sobre behavior de primer nombre → seleccionar apellido → Paste → mover al final del texto
- **Motion Tracking final:** agrupar "large text" y "small text" en un grupo → Behaviors → Motion Tracking → Match Move → reducir rectángulo de tracking a círculo pequeño → posicionar sobre la **nariz** del sujeto → playhead al inicio → Inspector → desactivar **Rotation adjust** y **Scale adjust** (solo Position) → click flecha **Forward** para analizar

## Reglas para agentes
- Usa fuente **Ponter Alt** o cualquier all caps blocky cuando recrees texto de créditos SNL
- Aplica **Overlay** como blend mode para el texto grande inicial y **Vivid Light** para el texto pequeño
- Desactiva **Rotation adjust** y **Scale adjust** en Match Move cuando el texto debe mantenerse nivelado sin importar el movimiento del sujeto
- Usa **Subtract** como Apply Mode en Randomize para que el efecto se atenúe en lugar de acumularse
- Cambia Direction a **Backwards** en Pop Out para que las letras desaparezcan una por una en lugar de aparecer
- Usa la **nariz** como punto de tracking porque los orificios nasales son definidos para que el tracker se adhiera

## Errores comunes que evita o menciona
- No dejar el glow color en amarillo por defecto: cambiarlo a **blanco** en Appearance antes de aplicar el filtro Glow para que el glow sea blanco
- No olvidar deshabilitar filtros (Gradient Blur, Prism) en el texto pequeño que no los necesita para evitar efectos no deseados
- No usar la música original de SNL para evitar demonetización del video
- No dejar el clip en cámara lenta: retimear a **200%** para velocidad real
- No olvidar mover el behavior Pop Out al **final** del texto en timeline para que las letras desaparezcan al terminar, no al comenzar