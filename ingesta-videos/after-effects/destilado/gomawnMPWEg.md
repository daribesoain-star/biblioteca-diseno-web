# Start Compositing VFX in After Effects - Step-By-Step
**Fuente:** ProductionCrate | https://youtu.be/gomawnMPWEg

## Qué enseña
Este tutorial enseña a componer una explosión de edificio en metraje real usando After Effects, combinando múltiples activos de stock (explosiones, ondas de choque, cielos) con técnicas de tracking, creación de mates con Luma y Chroma Key, y efectos de postproducción como destellos, vibración de cámara y distorsión.

## Técnicas accionables

- **Tracking con Mocha AE:** Seleccionar capa de metraje → `Control + Espacio` → escribir "mocha" → seleccionar "Mocha AE" → hacer clic en "Launch Mocha AE". Dentro de Mocha: usar herramienta X-Spline, dibujar un rectángulo alrededor de una esquina de alto contraste, hacer clic derecho para detener puntos, presionar "Analyze Forward". Cerrar Mocha con X, presionar "Save". En panel Effects Controls: desplegar "Tracking Data" → "Create Track Data" → cambiar "Export Option" de "Corner Pin" a "Transform". Crear un Null Object (Layer → New → Null Object). Seleccionar metraje → cambiar "Layer Export" al Null → "Apply Export".

- **Creación de Luma mat con Colorama:** Duplicar capa de metraje (`Control + D`). Aplicar efecto Colorama (`Control + Espacio` → "colorama"). En Output Cycle: cambiar preset de "None" a "Ramp Gray". Hacer clic en el círculo de color para crear nuevos puntos: seleccionar área gris → crear "Perfect White" al 100% de brillo; seleccionar área oscura → crear "Perfect Black" al 0%. Usar el Track Matte Picker de la capa de stock (edificio) y seleccionar la capa duplicada. Cambiar de "Alpha Matte" a "Luma Matte".

- **Refinar mate con Keylight:** Precomponer la capa duplicada (`Control + Shift + C`, marcar "Move all attributes to a new composition", nombrar "skym mat"). Dentro de la precomp: duplicar metraje (`Control + D`), eliminar Colorama. Aplicar Keylight (`Control + Espacio` → "key light"). Usar Screen Color Picker en el área verde de la chaqueta. Cambiar "Final Result" a "Combined Mat". Cambiar blending mode de la capa a "Multiply".

- **Añadir sólidos negros/blancos enmascarados:** Copiar Null de composición principal (`Control + C`), pegar en precomp (`Control + V`). Crear sólido negro (`Control + Y` → color negro). Escalar sólido. Parentear al Null con el Pick Whip. Ocultar sólido, dibujar máscara con herramienta Pluma alrededor de áreas que deben ser negras. Repetir proceso con sólido blanco para áreas del cielo.

- **Suavizar hojas con máscara y feather:** Duplicar capa inferior con Colorama. Crear otro sólido negro, parentear al Null, dibujar máscara alrededor del árbol. Usar Track Matte Picker de la copia duplicada y seleccionar el sólido negro. Presionar `F` para revelar Feather de la máscara del sólido y aumentar el valor.

- **Time Remapping en activos:** Hacer clic derecho sobre capa → Time → "Time Remapping". Arrastrar el último keyframe hacia atrás para que el activo no desaparezca al inicio.

- **Ajuste de color con Levels:** Aplicar efecto Levels. En el canal Red: ajustar slider de salida. Repetir en Green y Blue. Volver a RGB para ajuste general.

- **Box Blur en fondos lejanos:** Aplicar efecto "Fast Box Blur" con valor ~2 píxeles.

- **Onda de choque:** Importar activo "World Breaker Shockwave 8". Colocar sobre edificios. Aplicar Luma Matte con "skym mat". Parentear al Null. Cambiar blending mode a "Add". Posicionar y escalar. Animar escala: presionar `S`, crear keyframe, avanzar 20-30 frames, escalar hasta casi fuera de cuadro. Ajustar opacidad (`T`) a ~20-30%. Crear keyframe de opacidad en el medio, avanzar unos frames, bajar a 0%.

- **Explosión aérea:** Importar "Ultimate Explosion 5 Aerial". Mismo proceso: Luma Matte, Null, Levels para ajuste de color.

- **Máscara de edificio sobre explosión:** Duplicar capa de edificio principal (`Control + D`), llevar al tope. Usar herramienta Pluma para enmascarar áreas que sobresalen. Presionar `F` para aumentar Feather. Presionar `M` para revelar Mask Path, crear keyframe, al final de la composición ajustar máscara para que el humo parezca avanzar.

- **Impact Frames:** Llevar composición principal a nueva comp (arrastrar al icono de nueva comp). Renombrar "finishing effects". Mover playhead al impacto. Duplicar metraje (`Control + D`), recortar inicio con `Alt + [` (Alt + corchete izquierdo). Aplicar "Easy Glow" (plugin ProductionCrate Laforge Suite). Cambiar "Glow Tint" a naranja, aumentar "Tint Strength". Crear sólido naranja claro (`Control + Y`), ocultar, dibujar máscara elíptica (mantener `Control` mientras arrastra) centrada en explosión. Cambiar blending mode a "Add". Presionar `F` para Feather, aumentar. Recortar inicio con `Alt + [`. Presionar `MM` para Mask Expansion, crear keyframe, avanzar 1 frame, reducir expansión.

- **Frames de exposición:** Seleccionar sólido y duplicado de metraje, recortar inicio con `Alt + [`. Avanzar 1 frame, duplicar metraje original (`Control + D`), recortar inicio con `Alt + [`. Dibujar máscara elíptica alrededor de explosión, cambiar a "Subtract". Añadir Levels a esta copia, oscurecer hasta casi negro. Presionar `F` para Feather. Crear Adjustment Layer (`Control + Alt + Y`), recortar inicio con `Alt + [`. Añadir Curves: brillar, en canal Red aumentar, en canal Blue disminuir. Añadir "Easy God Rays" (Laforge Suite), centrar en explosión. Avanzar 1 frame, seleccionar ambas capas, recortar final con `Alt + ]`.

- **Glow selectivo con Keylight:** Duplicar metraje inferior, recortar inicio con `Alt + [`. Añadir Keylight, seleccionar color naranja de explosión con Color Picker, cambiar "Final Result" a "Combined Mat". Añadir efecto Invert. Añadir "Easy Glow" con tint naranja. Añadir "Fast Box Blur" para suavizar. Cambiar blending mode a "Add".

- **Sólido naranja de ambiente:** Crear sólido naranja, dibujar máscara circular, cambiar blending mode a "Screen", Feather alto. Recortar inicio para que coincida con glow.

- **Keyframes de opacidad para fade out:** Crear keyframe de opacidad (`T`) unos frames después del impacto, avanzar más tarde, bajar a 0% en glow y sólido naranja.

- **Displacement Map con anillo expansivo:** Crear sólido blanco, poner sobre todo, ocultar. Dibujar máscara circular. Presionar `MM` para Mask Expansion. Ir 1 frame antes del impacto, arrastrar expansión a negativo hasta que desaparezca, crear keyframe. Avanzar hasta que edificios secundarios caigan, aumentar expansión hasta llenar cuadro. Duplicar máscara (`Control + D`), cambiar segunda máscara de "Add" a "Subtract". Deslizar keyframes de segunda máscara 2-3 frames después. Dibujar máscara con Pluma alrededor del suelo, cambiar a "Subtract". Presionar `F`, ajustar Feather a ~200 en cada máscara. Añadir efecto "Solid Composite" (cambiar de blanco a negro). Añadir "Turbulent Displace", aumentar Size, disminuir Amount. Cambiar blending mode a "Screen", opacidad (`T`) a ~10-15%. Presionar `U` para revelar keyframes, arrastrar keyframes traseros para ralentizar.

- **Crates Distortion (Laforge Suite):** Añadir Adjustment Layer (`Control + Alt + Y`). Añadir "Crates Distortion". En "Displacement Inputs": desactivar "Blend Iterations". En "Textures": cambiar "Input" al sólido blanco con anillo. Cambiar de "Source" a "Effects and Masks". En "Parameters": bajar "Strength" de 35 a ~0.8, reducir "X Multiplier". Ajustar "Aberration" sliders para cromatismo. Recortar inicio con `Alt + [`. Precomponer todo (`Control + Shift + C`, nombrar "comp impact frames").

- **Camera Shake con ProductionCrate Camera Shake:** Ir a Window → scripts → "ProductionCrate Camera Shake". Cambiar de "Shake" a "Jolt" mode. Mover playhead al inicio de explosión. Aumentar "Amplitude", disminuir "Frequency". Presionar "Jolt". Presionar `U` para ver keyframes. Seleccionar todos, arrastrar último hacia afuera manteniendo `Alt` para ralentizar. Presionar `F9` para suavizar keyframes (easy ease).

- **Color grading final:** Añadir Adjustment Layer (`Control + Alt + Y`). Añadir "Lumetri Color". En "Creative": seleccionar LUT (ej. Kodak film stock). En "Basic Correction": aumentar Contrast, disminuir Highlights, aumentar Temperature, ajustar Blacks. Añadir Curves: curva en S para contraste, en canal Blue otra curva en S, en canal Green subir ligeramente.

## Reglas para el erudito

- Usa Mocha AE para tracking cuando el metraje tenga movimiento handheld y necesites fijar elementos a un punto de alto contraste que permanezca en cuadro todo el tiempo.
- Usa Colorama con preset "Ramp Gray" para crear un Luma Matte inicial cuando el cielo sea significativamente más brillante que el primer plano.
- Usa Keylight en modo "Combined Mat" con blending mode Multiply para refinar áreas verdes/azules que el Luma Matte no captura bien.
- Precompon siempre la capa de mate ("Move all attributes to a new composition") antes de añadir sólidos enmascarados para evitar que los efectos se apliquen incorrectamente.
- Nunca uses máscaras directamente sobre capas con Colorama si necesitas feather suave; en su lugar, usa un sólido negro como Track Matte y aplica el feather a la máscara del sólido.
- Usa Time Remapping en todos los activos de explosión para que no desaparezcan al inicio del clip.
- Ajusta color con Levels canal por canal (Red, Green, Blue) antes de tocar RGB para igualar el metraje base.
- Usa blending mode "Add" para ondas de choque, explosiones aéreas y elementos de glow.
- Para impact frames, usa máscaras "Subtract" con Levels para simular ajuste automático de exposición de cámara.
- Usa "Jolt" mode en ProductionCrate Camera Shake en lugar de "Shake" para vibraciones cortas de impacto.
- Aplica `F9` (easy ease) a los keyframes de cámara shake para movimiento más natural.
- Usa Crates Distortion con Strength muy bajo (~0.8) y desactivando "Blend Iterations" para distorsión sutil de impacto.

## Errores comunes que evita o menciona

- No olvidar cambiar "Export Option" de "Corner Pin" a "Transform" en Mocha AE para que el tracking funcione correctamente con Null objects.
- No usar el Track Matte Picker sin cambiar de "Alpha Matte" a "Luma Matte" cuando se usa Colorama como mate.
- No aplicar feather directamente a una máscara sobre una capa con Colorama, porque el efecto "crunch" la máscara y no da un feather suave.
- No dejar que la onda de choque ocupe todo el tiempo del clip sin keyframes de opacidad para que se desvanezca al llegar a los bordes.
- No olvidar recortar el inicio de los impact frames con `Alt + [` para que no aparezcan antes del impacto.
- No dejar la distorsión (Crates Distortion) activa antes del impacto; recortar su inicio con `Alt + [` para que no afecte la primera parte del clip.
- No usar valores altos de Strength en Crates Distortion (default 35); reducirlo drásticamente (~0.8) para un efecto sutil.