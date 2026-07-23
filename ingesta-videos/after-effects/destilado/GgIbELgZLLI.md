# The ONLY Particle Tutorial you'll EVER need
**Fuente:** Son Astral | https://youtu.be/GgIbELgZLLI

## Qué enseña (2-3 líneas)
Este tutorial enseña a crear partículas ambientales básicas y partículas personalizadas únicas en After Effects usando el plugin Trapcode Particular. Cubre configuración de emisor, movimiento, forma, color, física, y cómo adaptar las partículas a escenas concretas de videojuegos y anime.

## Técnicas accionables
- **Añadir Particular:** Ve a `Efectos > Trapcode > Particular` y arrastra sobre tu capa.
- **Abrir diseñador:** Haz clic en la pestaña `Designer` dentro del panel de efectos de Particular.
- **Rendering a GPU:** Dentro del panel de efectos, baja a la pestaña `Rendering` y cambia `Acceleration` de `CPU` a `GPU`.
- **Pre-run de partículas:** En el panel de efectos, ve a `Emitter > Emission Extras` y activa `Pre-run` al 100%.
- **Motion Blur interno:** En el diseñador, activa `Motion Blur` en la pestaña `Size and Rotation`. Luego, fuera del diseñador, en el panel de efectos, ve a `Rendering` y activa `Motion Blur` ahí para poder manipular `Shutter Angle` (valor recomendado: 120-190).
- **Partículas ambientales básicas:**
    1. En el diseñador, `Emitter Type`: `Box`.
    2. `Emitter Type` (modo): `Continuous`.
    3. `Emitter Size`: cambiar de `Length` a `Individual`.
    4. Ajustar `Z Depth` entre 3000 y 5000.
    5. Ajustar `X` y `Z` (ancho y profundidad) entre 2000 y 3000.
    6. Pestaña `Motion`: `Direction` en `Uniform` o `Disc`.
    7. Aumentar `Velocity` entre 300 y 400.
    8. `Velocity Random` al 100%.
    9. Pestaña `Size and Rotation`: `Size` entre 3 y 4.
    10. `Size Random` entre 20 y 40 (ej. 28).
    11. Pestaña `Physics and Gravity`: aumentar `Spin Amplitude` y `Spin Frequency` ligeramente.
    12. Reducir `Particles per second` para evitar que se vea "clumpy".
- **Color Over Life (gradiente):** En el panel de efectos, bajo `Particles`, cambiar `Color` de `At Start` a `Over Life`. Arrastra los marcadores del gradiente para añadir/quitar colores. Arrastra un marcador hacia abajo para eliminarlo.
- **Partículas personalizadas con Sprites:**
    1. En el diseñador, `Particle Type`: `Texture Polygon Colorized`.
    2. Elegir un `Sprite` (ej. Pentagon).
    3. Pestaña `Size and Rotation`: aumentar `Size` hasta ver la forma.
    4. Volver a `Emitter` y reducir `Particles per second`.
    5. En `Size and Rotation`, aumentar `Random Rotation` (ej. 40) para rotación 3D.
    6. Aumentar `Speed Rotate` (ej. 0.7) para que giren.
    7. Color: usar `Over Life` con gradiente.
- **Movimiento bidireccional:** En el diseñador, pestaña `Motion`, cambiar `Direction` a `Bi-Directional`.
- **Gravedad:** En `Physics and Gravity`, ajustar `Gravity` (positivo hacia abajo, negativo hacia arriba).
- **Posición del emisor:** En el panel de efectos, `Emitter > Position XY` y `Position Z` para acercar/alejar partículas.
- **Sistemas múltiples (layering):** Dentro del diseñador, en la esquina inferior izquierda, haz clic en `Systems > Add a System`. Duplica el sistema maestro, cambia `Random Seed` en `Motion`, ajusta valores de posición y sprite.
- **Presets:** En el diseñador, esquina superior izquierda: `Presets` (nature, smoke, fire, fluid, leaves). Esquina superior derecha: presets de sistemas, movimientos y partículas.

## Reglas para el erudito (imperativas y verificables)
- Usa `GPU` en `Rendering > Acceleration` siempre para evitar sobrecargar After Effects.
- Usa `Pre-run` al 100% en `Emitter > Emission Extras` para que todas las partículas aparezcan desde el inicio.
- Cuando uses Sprites, ajusta el tamaño de las partículas **dentro de Particular** (en el diseñador), no con escalado externo, para mantener calidad y evitar rangos de impacto incorrectos.
- Para motion blur, usa el `Motion Blur` interno de Particular (en `Rendering`) en lugar del de la composición, para poder controlar `Shutter Angle` manualmente.
- Reduce `Particles per second` cuando uses partículas grandes para evitar que se vean "clumpy" o abrumadoras.
- En `Size and Rotation`, usa `Random Rotation` alrededor de 40 y `Speed Rotate` por debajo de 1 (ej. 0.7) para un giro natural.
- Para partículas ambientales, usa `Velocity` entre 300-400 y `Velocity Random` al 100%.
- Para partículas únicas, usa `Over Life` en lugar de `At Start` para que cambien de color dinámicamente.

## Errores comunes que evita o menciona
- No usar `Pre-run` al 100%: las partículas no aparecen todas desde el primer fotograma.
- Escalar partículas externamente en lugar de ajustar el tamaño dentro de Particular: reduce calidad y altera el rango de impacto.
- Usar demasiadas partículas ("clumpy"): se ve antinatural y satura la escena.
- No ajustar la velocidad (`Velocity`) según el contexto de la escena: escenas con movimiento rápido (ej. cargas, poderes) requieren partículas más rápidas.
- Hacer 3D tracking en clips de anime cuando la cámara está estática: es innecesario; mejor usar Twixtor y añadir partículas encima.
- No oscurecer la escena (bajar gamma, highlights, midtones) antes de añadir partículas con glow: el brillo no resalta adecuadamente.