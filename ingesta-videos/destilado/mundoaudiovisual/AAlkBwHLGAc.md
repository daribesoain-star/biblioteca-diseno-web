# Video Editing Course - Davinci Resolve - Chapter 12 - Effects in the Editing Module
**Fuente:** mundoaudiovisual | https://youtu.be/AAlkBwHLGAc

## Qué enseña (2-3 líneas)
Este capítulo introduce los efectos disponibles directamente en el módulo de edición de DaVinci Resolve, explicando cómo añadirlos, modificarlos en el inspector y ordenarlos en la pila de efectos. Cubre efectos OpenFX como desenfoques, efectos de cámara (CCTV, prismáticos, DSLR), flares, reducción de ruido, efecto belleza y más, preparando el terreno para el módulo Fusion.

## Lecciones accionables
- **Añadir un efecto:** Ve a la biblioteca de efectos (Effects Library) → arrastra el efecto deseado (ej. "Binocular", "CCTV", "Gaussian Blur") directamente sobre el clip en la línea de tiempo.
- **Modificar parámetros de un efecto:** Selecciona el clip → ve al Inspector → sección "Effects" → ajusta parámetros como intensidad, distancia, tamaño de viñeta, nitidez, máscara, etc.
- **Ordenar efectos en la pila:** Arrastra los efectos hacia arriba o abajo en el Inspector; el orden afecta el resultado final (el efecto superior se aplica sobre los inferiores).
- **Activar/desactivar un efecto:** Usa el interruptor (checkbox) junto al nombre del efecto en el Inspector.
- **Eliminar un efecto:** Haz clic en la "X" junto al nombre del efecto en el Inspector.
- **Mover un efecto al módulo Fusion:** Haz clic en el botón de flecha (icono de "mover a Fusion") que aparece junto al efecto en el Inspector.
- **Usar Adjustment Clip:** Crea un Adjustment Clip desde la biblioteca de efectos → colócalo sobre los clips en la línea de tiempo → aplica efectos al Adjustment Clip para que afecten a todos los clips debajo.
- **Duplicar un clip:** Presiona `Alt` + arrastrar (Windows) o `Option` + arrastrar (Mac) para duplicar un clip en la línea de tiempo.
- **Aplicar efecto de flare:** Añade el efecto "Lens Flare" → posiciona el flare en el encuadre → cambia el modo de fusión a "Add" para mejor resultado.
- **Reducir ruido:** Añade el efecto "Noise Reduction" → ajusta el rango (ej. 5) para eliminar ruido de la imagen.
- **Aplicar efecto belleza:** Añade el efecto "Beauty" → ajusta la intensidad para suavizar imperfecciones de la piel.
- **Crear animación de desenfoque:** Añade "Gaussian Blur" → crea un keyframe en el parámetro de intensidad con valor 0 → avanza en la línea de tiempo → cambia el valor (ej. 100) → se genera automáticamente una animación de desenfoque.
- **Efecto de cámara en mano:** Usa el efecto "Camera Movement" → ajusta la cantidad de movimiento y velocidad para simular cámara handheld.
- **Efecto de viñeta con prismáticos:** Añade "Binocular" → ajusta "Vignette Size", "Vignette Sharpness", "Shaking Effect", "Blur" y tamaño de los ojos en el Inspector.

## Reglas para agentes
- Usa el efecto "Add" como modo de fusión cuando trabajes con flares o reflejos para obtener el mejor resultado visual.
- Aplica "Noise Reduction" cuando el video presente ruido visible; ajusta el rango progresivamente (ej. empezar en 5).
- Usa "Beauty" solo en clips con rostros o piel visible; no lo apliques en tomas de paisajes u objetos inanimados.
- Ordena los efectos de arriba a abajo en el Inspector según la prioridad de aplicación deseada (el efecto superior se aplica primero).
- Nunca asumas que todos los efectos están en el módulo de edición; los efectos complejos requieren el módulo Fusion (nodos).
- Activa siempre el efecto "Gaussian Blur" con keyframes para transiciones suaves de desenfoque.
- Usa Adjustment Clips cuando necesites aplicar el mismo efecto a múltiples clips consecutivos en la línea de tiempo.
- No elimines un efecto sin antes desactivarlo para verificar su impacto en el clip.

## Errores comunes que evita o menciona
- **Confundir el orden de los efectos:** El orden en la pila de efectos afecta el resultado; un efecto colocado arriba se aplica sobre los de abajo, no al revés.
- **No usar Adjustment Clips para efectos repetitivos:** Aplicar el mismo efecto manualmente a cada clip es ineficiente; un Adjustment Clip sobre varios clips lo simplifica.
- **Olvidar que los efectos son modificables en el Inspector:** Cada efecto tiene parámetros ajustables (intensidad, tamaño, máscara, etc.) que no deben ignorarse.
- **No animar efectos con keyframes:** Los efectos pueden animarse creando keyframes en el Inspector para cambios progresivos (ej. desenfoque que aumenta).
- **Aplicar efectos sin verificar el modo de fusión:** Para flares y reflejos, el modo "Add" funciona mejor que "Soft Light" o "Strong Light".
- **No desactivar efectos para comparar:** Usa el interruptor en el Inspector para ver el antes/después y evaluar si el efecto es necesario.
- **Confundir el módulo de edición con Fusion:** Los efectos aquí son básicos; para efectos profesionales se debe usar el módulo Fusion con nodos.