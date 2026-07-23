# Take your After Effects to the Next Level
**Fuente:** Ben Marriott | https://youtu.be/9Sa103aiOSA

## Qué enseña
Tres niveles de animación de lluvia en After Effects, desde técnicas básicas hasta avanzadas, usando efectos nativos, expresiones y composición inteligente. Cubre CC Rainfall, CC Drizzle, displacement maps, y construcción manual de gotas y ondas con capas de forma y máscaras.

## Técnicas accionables

- **Nivel 1 (Ape):** Crear un sólido negro, aplicar efecto **CC Rainfall** desde el panel Efectos y Presets. Ajustar: **Opacity** (subir), **Size** (subir), **Influence** (bajar a 0 para desactivar reflejo de fondo). Cambiar blending mode de la capa a **Screen**. Reducir **Drops**. Animar **Speed** con keyframes: valor inicial 15000, valor final 150 (2 segundos después), aplicar easing. Poner **Spread** a 0. Ajustar **Scene Depth** y **Ground Level Percentage** en Extras para profundidad. Crear splash: usar **Ellipse Tool**, animar tamaño (no escala) y opacidad, trim layer, precomponer y duplicar donde desaparecen gotas.

- **Nivel 2 (Elevated Ape):** Crear sólido gris con **Ctrl+Y**, altura 3 veces la del comp. Aplicar **CC Drizzle**. Aumentar **Drip Rate** a 8. En Shading: **Diffuse Lighting** al máximo, **Ambient Light** a ~15. Desvincular escala de la capa (icono de cadena), bajar escala vertical para aplanar perspectiva. Crear **Adjustment Layer** llamado "Effects", aplicar **Threshold**. En capa drizzle: cambiar luz de **Distant Light** a **Point Light**, mover posición al centro del comp, bajar **Light Height** y **Ripple Height**. Ajustar **Light Intensity**, Ambient, Diffuse. Agregar **Tint** (negro a gris oscuro, blanco a azul puro), **Gaussian Blur** (suave), **Deep Glow** (sutil). Agregar **Transform** con **Wiggle** en Position. **Posterize Time** a 12 fps. **Noise HLS Auto** para grano. Para gotas: **Pen Tool**, dibujar línea vertical, animar **Shape Path** con 3 keyframes en **Hold**. Blending mode **Difference**. Mover **Anchor Point** al fondo de la capa, presionar **R** para rotación. Duplicar gota, pick whip rotation a la original para sincronizar.

- **Nivel 3 (Consciousness):** Para texto con displacement: capa de texto, aplicar **Displacement Map**. Source Layer: capa drizzle, Source: **Effects & Masks**. Ocultar capa drizzle. Fondo: sólido negro. Aumentar **Horizontal Displacement**. Cambiar luz en drizzle de Point a Distant. Precomponer capa drizzle (mover todos los atributos). Para centrar: dentro del precomp, crear shape layer con color **50% gris** (RGB 128,128,128), ajustar ambient shading para igualar, luego eliminar shape layer.

- **Construcción manual de onda (ripple):** Capa de forma: elipse, animar tamaño (keyframes) y stroke width. Efectos: **Gaussian Blur** + **Directional Blur** (horizontal). Duplicar capa, bajar, más blur. Highlight: duplicar, color blanco, stroke width reducido, dos **máscaras** (top-left y bottom-right) con **feather**. Shading: capa oscura, mismas áreas con máscaras, **Preserve Underlying Transparency** activado. Duplicar shading moviendo ligeramente abajo y más suave. Adjustment layer sobre todo: animar **Directional Blur** + **Gaussian Blur** para suavizar al expandirse. Capa de fondo con gradiente sobre el ripple, fade in, Preserve Underlying Transparency. Duplicados extra con grises más oscuros para sombras.

- **Animación de gota + ondas:** Gota: círculo con gradiente. Máscara: shape layer con blur como **matte** de la gota. Animar posición de la gota (saltos arriba/abajo 3 veces), escala reduciéndose en cada salto bajo el agua. Parentear a **Null**, animar escala del Null para squash & stretch. Ripples duplicados alineados con entradas/salidas del agua. Para superposición: crear máscara que corta ripple por la mitad, feather, duplicar capa, invertir máscara, ordenar en stack. Sombra de gota: elipse con blurs.

- **Efectos finales:** **Gaussian Blur** para unificar, **Noise HLS Auto**, **CC Toner** para color. Strobing: adjustment layer con **Curves**, opacidad animada 100→0→100 con expresión de loop. Curves muy sutil.

## Reglas para el erudito (imperativas y verificables)

- Usa **Screen** como blending mode para CC Rainfall cuando tengas fondo oscuro.
- Usa **Difference** como blending mode para gotas dibujadas sobre fondo con Tint.
- Nunca uses **Scale** para animar el tamaño de un splash; usa **Size** (propiedad de forma) para mantener stroke width consistente.
- Cuando uses **Displacement Map**, asegúrate de que la capa fuente tenga fondo **50% gris** (RGB 128,128,128) para evitar desplazamiento no deseado.
- Si precompones una capa con escala no uniforme para usarla como displacement map, mueve **todos los atributos** al nuevo comp.
- Para que las gotas tengan dirección consistente, vincula la rotación de todas con **pick whip** a una capa maestra.
- En CC Drizzle, usa **Point Light** en lugar de Distant Light cuando quieras iluminación localizada.
- Mantén **Deep Glow** muy sutil; si no lo tienes, usa varios **Glow** regulares.
- Para el strobing de cámara lenta, la opacidad del adjustment layer con Curves debe ir de 100 a 0 y volver a 100 con un loop; el efecto debe ser casi imperceptible.

## Errores comunes que evita o menciona

- No dejar **Influence** alto en CC Rainfall porque refleja el fondo y dificulta ver las gotas.
- No usar **Spread** alto en CC Rainfall (valor 6 por defecto) si quieres que todas las gotas caigan rectas; poner a 0.
- No alinear splashes manualmente uno por uno en toda la pantalla (solo hizo media pantalla porque tomaba mucho tiempo).
- No usar **Point Light** en CC Drizzle cuando aplicas Displacement Map a texto, porque la iluminación central distorsiona el centro; cambiar a **Distant Light**.
- No olvidar que el Displacement Map no toma en cuenta escalas no uniformes de la capa fuente; hay que precomponer con "mover todos los atributos".
- No dejar el fondo del precomp de drizzle más oscuro que 50% gris, porque desplazará todo el texto hacia un lado.
- No usar blending mode **Difference** en texto sobre ripples si quieres un efecto natural de agua; mejor usa **Displacement Map**.
- No animar la escala de una elipse si quieres mantener el grosor del trazo constante; anima el **tamaño** (propiedad de forma).