# Start Compositing in After Effects - Full Tutorial!
**Fuente:** ProductionCrate | https://youtu.be/sfkaCESPE5c

## Qué enseña (2-3 líneas)
Este tutorial enseña cómo combinar múltiples elementos de stock (explosiones, ondas de choque, polvo, escombros) con técnicas de composición en After Effects para crear una toma de explosión realista. Cubre tracking de cámara, rotoscopia básica, corrección de color, creación de ondas de choque con sólidos y máscaras, y la integración de capas para lograr un efecto orgánico.

## Técnicas accionables

- **Trackeo de movimiento:** Seleccionar footage → Ventana Tracker → Track Motion → Elegir punto de alto contraste (punta de un árbol) → Analyze Forward → Layer > New > Null Object → Edit Target (seleccionar null) → Apply (X e Y) → El null ahora contiene los datos de movimiento.
- **Parenting con Pick Whip:** Arrastrar el Pick Whip (espiral) desde la capa del asset hasta el null object para fijarlo al fondo trackeado.
- **Aplicar efectos con FX Console (Video Copilot, gratuito):** Presionar `Control + Espacio` → escribir nombre del efecto (ej. "Curves") → Enter.
- **Curves para igualar color:** Efecto Curves → Arrastrar punto inferior hacia arriba para reducir contraste → Canal Red: subir para tonos cálidos → Canal Blue: bajar para quitar azul.
- **Rotobrush para separar actor:** Duplicar footage (`Ctrl + D`) → Colocar copia encima de explosiones → Herramienta Rotobrush → Dibujar líneas verdes para seleccionar actor → `Alt` para restar selección → Espacio para previsualizar → Botón Freeze para bloquear selección (se vuelve color azul-púrpura).
- **Intercambiar clips manteniendo propiedades:** Duplicar capa (`Ctrl + D`) → Arrastrar nuevo clip desde Project Panel sobre la capa duplicada mientras se presiona `Alt` → Se reemplaza el clip conservando parenting y efectos.
- **Máscara rectangular para ocultar bordes:** Herramienta Rectangular Mask → Dibujar máscara → Cambiar Mask de Add a Subtract → Presionar `F` para Feather → Ajustar suavizado.
- **Tritone para igualar color de suelo:** Efecto Tritone → Eyedropper en Mid-tone Color → Seleccionar color oscuro del suelo → Ajustar manualmente.
- **Time Remapping para extender duración:** Seleccionar capas → Click derecho > Time > Enable Time Remapping → Arrastrar keyframes finales más allá del final del timeline → Arrastrar borde de clips hacia afuera.
- **Time Stretch para cámara lenta:** Click derecho > Time > Time Stretch → Setear a 200 (duplica duración) → Activar Frame Interpolation (clic dos veces en checkbox vacío hasta que aparezca flecha).
- **Fast Box Blur:** Efecto Fast Box Blur → Blur Radius: 25.
- **Crear onda de choque con sólido:** `Ctrl + Y` → Color blanco → Escalar más grande que composición → Herramienta Ellipse Mask → `Ctrl + Shift` para círculo perfecto desde el centro → Presionar `MM` para propiedades de máscara → Mask Expansion: keyframe en 0 al inicio → keyframe en valor grande 10-15 frames después → Duplicar máscara (`Ctrl + D`) → Segunda máscara en Subtract → Desplazar keyframes para crear anillo → Máscara rectangular en Subtract para recortar horizonte → Feather ~100 píxeles → Opacidad ~20%.
- **Script Camera Shake (ProductionCrate):** File > Scripts > Run Script File → Seleccionar script → Elegir "Jolt" en lugar de Shake → Jolt number 2 → Amplitude ~3.5 → Frequency ~0.7 → Skip Keys: 2 → Desactivar Auto Scale → Jolt.
- **Motion Tile para bordes negros:** Efecto Motion Tile → Activar Mirror Edges → Output Width: 150 → Output Height: 150.
- **Glow aislado con Keylight:** Duplicar pre-comp → Aplicar Keylight → Screen Color: seleccionar naranja de explosión → Abrir Screen Matte → Ajustar settings para aislar naranja → Fast Box Blur (Blur Radius: 100) → Tint → White Color: naranja/rojo → Modo de transferencia: Screen.
- **Ajuste de color final:** Adjustment Layer → Curves → Bajar midtones, subir highlights → Canal Blue: subir en sombras, bajar en altos y medios → Canal Red: bajar en sombras, subir en medios → Efecto Vignette (Amount reducido) → Levels para contraste fino → Hue/Saturation: Channel Control > Reds → Hue Angle: +5°, Saturación: reducir.

## Reglas para el erudito (imperativas y verificables)

- **Usa FX Console (Control + Espacio)** para buscar y aplicar efectos rápidamente; si no lo tienes, busca manualmente en Effects & Presets.
- **Parentea todos los assets al null del trackeo** para que sigan el movimiento de cámara.
- **Usa Curves en cada asset** para igualar contraste y temperatura de color con el fondo.
- **Aplica Time Remapping a capas de polvo/dirt** que se acortan para que duren hasta el final de la composición.
- **Usa Frame Interpolation (flecha en checkbox)** en clips con Time Stretch para evitar stuttering.
- **Aplica Motion Tile con Mirror Edges** cuando el camera shake deje bordes negros; ajusta Output Width/Height a ~150.
- **Aísla el glow con Keylight + Screen mode** para no afectar cielo ni suelo.
- **Nunca uses un solo asset de explosión**; combina múltiples capas (explosión base, dirt, shockwave, polvo, humo residual) para realismo.
- **Valor por defecto recomendado:** Feather en máscaras ~100 píxeles; Opacidad de onda de choque ~20%; Blur Radius en Fast Box Blur ~25 para after-shock.

## Errores comunes que evita o menciona

- **No olvidar parentear los assets al null** después de trackear, o no seguirán el movimiento de cámara.
- **No dejar bordes duros en explosiones de suelo**; usar múltiples capas de dirt y polvo con máscaras subtractivas y feather para bordes orgánicos.
- **No aplicar glow directamente a toda la imagen** porque afecta cielo y suelo; aislar el naranja de la explosión con Keylight y usar modo Screen.
- **No escalar la imagen para cubrir bordes negros** del camera shake (pierdes footage trabajado); usar Motion Tile con Mirror Edges.
- **No olvidar congelar (Freeze) el Rotobrush** después de la selección para que no siga actualizando.
- **No dejar que los clips de polvo se acorten**; usar Time Remapping para extenderlos hasta el final.