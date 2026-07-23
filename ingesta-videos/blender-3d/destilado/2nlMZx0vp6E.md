# Character Rigging in Blender : Easy Setup for Beginners
**Fuente:** Grant Abbitt (Gabbitt) | https://youtu.be/2nlMZx0vp6E

## Qué enseña (2-3 líneas)
A crear un rig básico para personajes en Blender desde cero, usando Armatures y pesos automáticos. Explica cómo posicionar huesos, usar simetría X, nombrar correctamente los huesos y parentar la malla al Armature para animar.

## Técnicas accionables
- **Ajustar origen del objeto:** en Object Mode, selecciona el personaje, presiona `N` para abrir el panel Item, escala con `S` hasta ~1.9 m de altura. Asegura que el origen esté en la base del personaje.
- **Centrar el cursor 3D:** presiona `Shift + S` → "Cursor to World Origin" antes de añadir el Armature.
- **Añadir Armature:** en Object Mode, vista frontal (`1` en numpad), presiona `Shift + A` → Armature → Single Bone.
- **Ver huesos siempre:** selecciona el Armature, ve a Object Data Properties (icono de hueso) → Viewport Display → activa "In Front".
- **Editar huesos:** selecciona el Armature, presiona `Tab` para Edit Mode. El hueso tiene cabeza (círculo), cuerpo (selecciona el centro) y cola (punta).
- **Crear torso:** selecciona el cuerpo del hueso, presiona `G` y luego `Z` para moverlo en Z. Selecciona la cola, presiona `E` y `Z` para extruir hacia arriba (cuello, cabeza).
- **Añadir brazos:** desde la cola del hueso del cuello, presiona `E` y extruye hacia un lado (clavícula), luego `E` para codo, `E` para muñeca, `E` para mano.
- **Activar simetría X:** en Edit Mode, activa el botón "X-Axis Mirror" en la barra superior (junto a "Options").
- **Nombrar huesos correctamente:** selecciona un hueso, presiona `F2` para renombrar. Usa sufijos `.L` para izquierda (ej. `hip.L`, `upper_arm.L`, `forearm.L`, `hand.L`).
- **Simetrizar Armature:** selecciona todo el Armature con clic derecho, luego ve a Armature → Symmetrize (o presiona `Ctrl + Shift + S` y elige "Symmetrize").
- **Extruir piernas con simetría:** con X-Axis Mirror activo, selecciona la cola del hueso de cadera, presiona `E` y extruye hacia abajo (muslo, rodilla, pie).
- **Parentar malla al Armature:** en Object Mode, selecciona primero el cuerpo, luego el Armature (activo en amarillo), presiona `Ctrl + P` → Armature Deform → With Automatic Weights.
- **Ver pesos en Edit Mode:** selecciona el cuerpo, ve a Modifiers, activa "Display modifier in edit mode" y "On Cage" para ver la deformación.
- **Activar Pose Mode:** selecciona el Armature, presiona `Ctrl + Tab` para entrar en Pose Mode. Rota huesos con `R`, mueve con `G`.
- **Vincular hueso raíz:** en Edit Mode del Armature, selecciona los huesos a vincular, luego el hueso raíz (activo), presiona `Ctrl + P` → Keep Offset.

## Reglas para el erudito (imperativas, "usa X cuando Y")
- Usa "In Front" en Viewport Display del Armature cuando los huesos queden ocultos dentro de la malla.
- Usa sufijos `.L` y `.R` en los nombres de huesos cuando trabajes con simetría X para que la función Symmetrize funcione correctamente.
- Usa `Ctrl + P` → "With Automatic Weights" cuando la malla tenga suficiente topología en las articulaciones; si hay poca, considera añadir más bucles de vértices.
- Usa "Preserve Volume" en el modificador Armature cuando tengas suficiente topología y aún así haya pinzamiento en las deformaciones.
- Usa un hueso raíz adicional (extruido desde la base) y vincúlalo con "Keep Offset" cuando quieras mover todo el personaje con un solo hueso.

## Errores comunes / gotchas
- **Huesos no visibles dentro del personaje:** olvidar activar "In Front" en Viewport Display del Armature.
- **Simetría no funciona al extruir:** los huesos no están nombrados con `.L`/`.R` o no se ha activado "X-Axis Mirror" en Edit Mode.
- **Deformaciones distorsionadas en articulaciones:** la malla tiene muy poca topología (pocos vértices) en la zona de la articulación; añade más bucles con `Ctrl + R`.
- **El hueso raíz no mueve todo el personaje:** falta vincular los huesos del torso al hueso raíz con `Ctrl + P` → "Keep Offset".
- **Pesos automáticos fallan si el origen del objeto no está centrado:** asegura que el cursor 3D esté en el origen mundial antes de añadir el Armature.