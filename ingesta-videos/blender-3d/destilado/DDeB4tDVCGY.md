# Rigging for impatient people - Blender Tutorial
**Fuente:** Joey Carlino | https://youtu.be/DDeB4tDVCGY

## Qué enseña (2-3 líneas)
Tutorial acelerado de rigging en Blender que cubre dos estilos: deformación por pesos (armature + automatic weights) y rigging rígido (parenting directo a huesos o pesos binarios). Explica creación de armaduras, weight painting, IK básico y animación por keyframes.

## Técnicas accionables
- **Añadir armadura:** `Shift+A` → Armature → Single Bone. Para ver huesos a través del modelo: Object Data Properties (icono de persona corriendo) → Viewport Display → In Front.
- **Editar huesos:** Tab para Edit Mode. Seleccionar cabeza (círculo grueso) o cola (círculo fino). Mover con `G`, extruir con `E`. La cabeza es el punto de pivote en Pose Mode.
- **Snapping a superficie:** Activar magnetismo (icono imán) → Snap To: Face Project + Center. Mover huesos con `Ctrl` para snap.
- **Duplicar y parentar:** `Shift+D` para duplicar huesos. `Ctrl+P` para parentar: elige Connected (cadena) o Keep Offset (independiente). `Alt+P` para desconectar/desparentar.
- **Renombrar lote simétrico:** Seleccionar huesos del lado izquierdo (no los centrales) → `Ctrl+F2` → Batch Rename: Find: "Bones", Replace with: "Bones", Suffix: ".L" → OK. Luego clic derecho → Symmetrize para copiar al lado derecho.
- **Auto-naming:** En Edit Mode, seleccionar huesos → clic derecho → Auto Name (Left/Right) como alternativa.
- **Parentar malla a armadura (automatic weights):** Object Mode → seleccionar malla → `Shift+clic` armadura → `Ctrl+P` → Armature Deform → With Automatic Weights. Para múltiples objetos: seleccionar todos los objetos, luego armadura al final, mismo método.
- **Re-aplicar automatic weights selectivo:** Pose Mode → seleccionar huesos a recalcular → Object Mode → seleccionar malla → Weight Paint Mode → Weights → Assign Automatic From Bones.
- **Weight paint - configuración esencial:**
  - Viewport Overlays → Wireframe (activado). Muestra la malla base, no la subdividida.
  - Tool Settings → Options → Auto Normalize (activado). Evita pesos conflictivos.
  - Tool Settings → Falloff → Projected (para pintar a través del modelo).
  - Advanced Brush Settings → Front Faces Only (desactivado si usas Projected).
- **Pintar pesos:** `F` para cambiar tamaño de pincel. Weight=1 (rojo/influencia total), Weight=0 (azul/sin influencia). Strength bajo para ajustes finos.
- **Suavizar pesos:** Weights → Smooth → elige Smooth (todos) o Smooth (selected bones).
- **Parenting directo a hueso (objetos separados):** Object Mode → seleccionar objeto → `Shift+clic` armadura → Pose Mode → seleccionar hueso → `Ctrl+P` → Bone.
- **Parenting con empty groups (un solo objeto):** Object Mode → seleccionar malla → `Shift+clic` armadura → `Ctrl+P` → With Empty Groups. Luego Edit Mode → seleccionar vértices con `L` (hover sobre la pieza) → en lista de Vertex Groups (buscar por nombre con flecha) → Weight=1 → Assign.
- **Truco pesos rígidos automáticos:** Edit Mode → cambiar Pivot Point a Individual Origins (tecla `.`) → `S` → `0.1` → Enter. Object Mode → parentar con Automatic Weights. Edit Mode → `S` → `10` → Enter. Limpiar con Weight Paint → Weights → Quantize → valor 1 (fuerza pesos a 0 o 1).
- **Keyframes:** Pose Mode → seleccionar huesos → `I` → Location/Rotation/Scale. Cambiar pose → `I` de nuevo. Copiar pose: `Ctrl+C`. Pegar espejado: `Ctrl+Shift+V`.
- **Auto IK rápido:** Pose Options → Auto IK (activado). Mover hueso y usar rueda del ratón para cambiar longitud de cadena.
- **IK constraint (inverse kinematics):**
  - Edit Mode: extruir (`E`) desde el tobillo un hueso IK (o usar hueso del pie). Desactivar Deform en ese hueso (Bone Properties → Deform).
  - `Alt+P` → Clear Parent para desconectarlo.
  - Pose Mode: seleccionar hueso IK → `Shift+clic` hueso de la pierna → `Shift+I` → Add IK to Active Bone.
  - Ajustar Chain Length (2 o 3 para piernas) en Bone Constraint (icono de hueso, no el de constraint normal).
  - Para Pole Target: Edit Mode → extruir desde la rodilla → `Alt+P` → Clear Parent → nombrar con "Target". En el constraint, seleccionar Armature y luego ese hueso como Pole Target. Ajustar Pole Angle si la pierna apunta mal.
- **Simetrizar IK:** Si los huesos tienen sufijo `.L` o `.R`, al Symmetrize se copian constraints.

## Reglas para el erudito (imperativas, "usa X cuando Y")
- Usa **Auto Normalize** en weight paint siempre que pintes para evitar que un vértice tenga influencia de múltiples huesos.
- Usa **Wireframe** en viewport overlays cuando pintes pesos si tu malla tiene Subdivision Surface modifier, porque los pesos solo afectan la malla base.
- Usa **Quantize (valor 1)** en weight paint para forzar pesos binarios (0 o 1) en rigs rígidos.
- Usa **sufijos .L / .R** desde el principio si planeas simetrizar poses o constraints IK.
- Usa **Deform desactivado** en huesos que solo sirven como controladores IK (no deben influir en la malla).
- Usa **Pole Target** en IK cuando necesites controlar la dirección del codo/rodilla.
- Usa **Connected** al parentar huesos si quieres una cadena continua; usa **Keep Offset** si quieres huesos independientes.

## Errores comunes / gotchas
- **"Bone heat weighting failed"**: ocurre cuando la malla tiene partes superpuestas (overlapping geometry). Soluciones: remallar, retopologizar, separar en objetos múltiples y re-aplicar automatic weights.
- **Deformación pobre por falta de geometría**: un cubo con 8 vértices no se dobla. Añade Loop cuts (`Ctrl+R`) antes de aplicar automatic weights.
- **Pesos que no se pintan a través del modelo**: olvidaste activar Projected en Falloff y desactivar Front Faces Only.
- **IK no dobla la pierna**: los joints (articulaciones) están alineados rectos. En Edit Mode, mueve ligeramente las cabezas/colas de los huesos en la dirección deseada de doblado.
- **Mover el modelo y no la armadura**: selecciona siempre la armadura en Object Mode para animar/posar, no la malla.