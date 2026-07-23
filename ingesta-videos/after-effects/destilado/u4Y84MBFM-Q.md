# Kinetic Typography Motion Posters
**Fuente:** Nawaz Alamgir | https://youtu.be/u4Y84MBFM-Q

## Qué enseña
Desglose de 30 proyectos de kinetic typography en After Effects, mostrando cómo se construyen efectos de texto animado populares. Explica el uso de text animators, time displacement, CC effects, expressions y técnicas de 3D para crear motion posters tipográficos.

## Técnicas accionables
- **Text Animator con offset:** Seleccionar capa de texto → Añadir "Text" > "Animator" → Agregar "Position" → Cambiar "Shape" a "Ramp" → Animar el parámetro "Offset" para que el texto aparezca y desaparezca en cascada.
- **Silueta sin máscara:** Usar una capa shape con modo "Silhouette Alpha" sobre el texto para ocultar superposiciones sin emplear máscaras tradicionales.
- **Time Displacement con ramp:** Crear un adjustment layer con efecto "Time Displacement" → Configurar "Time Displacement (sec)" en -0.4 → Usar como mapa de desplazamiento una capa con "Gradient Ramp" + "Posterize" (valor 10) + "Colorama" con "Cycle Repetitions" en 11.
- **CC Mercury para gotas:** Aplicar efecto "CC Mercury" a una capa de texto → Ajustar settings: tamaño de gotas, cantidad, etc. → Añadir "Levels" para controlar contraste → Fondo con black solid.
- **Echo effect en texto duplicado:** Duplicar capa de texto → En la copia aplicar "Echo" → Configurar "Echo Time (seconds)" y "Number Of Echoes" → "Composite Echo" en "In Front" o "Composite On Original" según se desee.
- **CC RepeTile + CC Cylinder:** Aplicar "CC RepeTile" a la capa de texto para repetirla → Luego aplicar "CC Cylinder" → Ajustar "Radius" y "Rotation" → Añadir expresión a "Rotation Y": `time * X` (donde X es velocidad deseada).
- **Expresión de delay entre capas:** En la propiedad "Rotation" de una capa, usar: `thisComp.layer(index - 1).transform.rotation.valueAtTime(time - delay)` donde `delay = framesToTime(X)` (X = número de frames de retardo).
- **Fractal Noise para fondos abstractos:** Aplicar "Fractal Noise" → Configurar settings → Añadir "Levels" para binarizar a dos colores → "Set Matte" usando la misma capa para eliminar negro → "Fill" con color → "Bevel Alpha" + "Drop Shadow".
- **CC Glass para distorsión:** Aplicar "CC Glass" sobre capa de texto → Usar como mapa de desplazamiento una capa de ruido o blobs → Duplicar y aplicar otro "CC Glass" para distorsión adicional.
- **Per-Character 3D:** Activar "Per-Character 3D" en la capa de texto → Rotar y posicionar cada carácter individualmente → Animar "Y Rotation" del texto para efecto 3D.
- **Offset para efecto espejo:** Usar "Offset" en capa con animación de posición sinusoidal → Combinar con "Composite Echo" en "In Front" para crear ondas repetitivas.

## Reglas para el erudito
- Usa "Shape" en "Ramp" dentro del Text Animator cuando quieras que el texto aparezca/desaparezca de forma progresiva y suave.
- Cuando uses "Time Displacement", el mapa debe ser una capa con "Gradient Ramp" + "Posterize" para obtener el efecto escalonado (slit scan).
- Para "Echo", configura siempre "Composite Echo" en "In Front" (no el default "On Original") para que los ecos se superpongan correctamente.
- En "CC Mercury", copia exactamente los settings modificados del tutorial (no usar defaults) para lograr el efecto de gotas.
- En "CC Cylinder", mantén el valor de "Radius" en 100 como base y ajusta desde ahí.
- Para el efecto de delay entre capas, usa siempre `valueAtTime(time - delay)` con `delay = framesToTime(X)` donde X es el número de frames de retardo.
- Cuando uses "Collapse Transformations" en pre-comps 3D, actívalo para que las transformaciones 3D de los comps anidados se hereden correctamente.
- Para el efecto de "pushing text" (escala con anchor point), el anchor point debe estar en el lado izquierdo para la capa que escala de 100 a 0, y en el derecho para la que escala de 0 a 100.

## Errores comunes que evita o menciona
- No usar máscaras cuando se puede lograr el mismo resultado con una capa shape en modo "Silhouette Alpha", que es más eficiente y fácil de editar.
- Olvidar que al cambiar texto en proyectos con múltiples capas duplicadas, After Effects no actualiza automáticamente el tamaño, kerning ni estilo del texto; hay que ajustarlo manualmente en cada capa.
- No ajustar los puntos de inicio y fin (in/out points) para crear loops perfectos: el primer frame debe comenzar ligeramente antes del inicio real de la animación para que el loop sea continuo.
- Usar "Echo" con valores por defecto sin cambiar "Composite Echo" a "In Front", lo que produce un resultado visual incorrecto.
- No considerar el rendimiento al duplicar efectos "Echo" sobre capas que ya tienen "Echo" (echo del echo), lo que puede ralentizar máquinas lentas.
- No usar "Collapse Transformations" en pre-comps 3D apiladas, perdiendo así la profundidad 3D del diseño.