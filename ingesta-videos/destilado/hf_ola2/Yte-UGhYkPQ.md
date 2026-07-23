# I Added Insane AI VFX to Real Footage in 4K (Seedance 2.0)
**Fuente:** hf_ola2 | https://youtu.be/Yte-UGhYkPQ

## Que ensena sobre Higgsfield (2-3 lineas)
Muestra el flujo completo para aplicar VFX con IA a footage real usando Seedance 2.0 en 4K dentro de Higgsfield: subes tu clip, usas un "skill" (prompt escalado) que escribe automáticamente un prompt detallado que "bloquea" los elementos que deben permanecer (rostro, movimiento, cámara) y solo modifica lo solicitado (fondo, elementos, criaturas). El resultado es un clip 4K limpio sin necesidad de máscaras, compositing ni edición manual.

## Tips y flujos accionables

### Flujo general (3 pasos exactos)
1. **Sube tu clip raw a Higgsfield** → arrastra el video a la interfaz de Seedance 2.0 en 4K.
2. **Usa el "skill" gratuito** (enlace en descripción del video) → pégalo en el chat de Higgsfield. El skill analiza el clip como frames, entiende el contexto (tú, caminata, luz, movimiento de cámara) y escribe el prompt completo.
3. **Ejecuta Seedance 2.0 en 4K** con ese prompt → obtienes el mismo clip con solo el cambio solicitado, sin máscaras ni compositing.

### Nivel 1: Swap de mundo (fondo)
- **Prompt exacto usado (vía skill):** "Swap the background to a desert at sunset right when he snaps his fingers."
- **Lo que el skill bloquea automáticamente:** tu cara, caminata, anillos en la mano, gestos, movimiento exacto de cámara handheld. Solo cambia el fondo.
- **Para cámara rápida (ej. conduciendo):** el skill agrega más elementos a "bloquear": el auto, cinturón, rig de cámara, todo el movimiento de conducción. Prompt usado: "neon city, lava, even above the clouds" → Seedance genera la iluminación automáticamente (neón deslizándose sobre el auto, lava iluminando la barbilla).

### Nivel 2: Transformar elementos específicos
- **Fuego en la cabeza:**
  - Prompt exacto: "Set my whole head of curls on fire."
  - El skill bloquea: cara, expresión, auto, luz de hora dorada. Solo añade fuego.
  - Resultado: el fuego derrama resplandor naranja en la camisa y reflejo en el auto, sincronizado con el atardecer. Sin máscaras.
- **Morfosis de mano:**
  - Prompt exacto: "Turn my right hand into something unexpected right when I say the line, 'transform myself right in front of you.' I want a completely smooth transition all while I keep talking to the camera like nothing's happened till the very end of the clip."
  - El skill bloquea: cara, voz, performance, cámara. Solo toca el brazo derecho.
- **Añadir criatura con referencia visual:**
  - Paso extra: genera una imagen de referencia (ej. lagarto con GPT Image 2.0) y súbela junto al clip raw.
  - Prompt exacto: "Big lizards climbing up the side of a building." + "I wanted a reveal, so I asked for a zoom out first. Tight on them climbing first, then pulling back to show me fully with the right lip sync."
  - El skill genera un zoom out que no filmaste.

### Nivel 3: Cinematic showcase handheld
- **Clave:** dispara cada clip sabiendo qué quieres ver. El prompt reconstruye el mundo entero.
- **Wing walker sobre biplano:**
  - Prompt vía skill: cambia vestuario y fondo a "a wing walker on a flying biplane over floating mountains."
  - Resultado: Seedance añade brisa en el cabello (física) aunque el clip original no tenía viento. Sin máscaras.
- **Templo selvático colapsando:**
  - Prompt: "Trust me on monkey bars... collapsing jungle temple. Me as the treasure hunter over a bottomless chasm."
- **Dinosaurios en bosque lluvioso:**
  - Prompt: "Three giant long-necked dinosaurs towering behind me in a rainy forest while I turn and react."
  - Resultado: tracking de cámara perfecto, criaturas foto-realistas, sin aspecto de render barato.
- **Kraken en tormenta nocturna:**
  - Prompt: "A giant kraken tearing into a ship in a night storm. Tentacles everywhere, me right in the middle of it."
  - Clip original: solo bajar escaleras. Seedance compone barco, tormenta, caos.

### Parámetros y trucos clave
- **Modelo/preset:** Seedance 2.0 en 4K (dentro de Higgsfield). No se mencionan otros modelos.
- **Motion control:** no se usa control manual; el skill bloquea el movimiento de cámara original automáticamente.
- **Cámara:** handheld funciona perfectamente; el skill maneja parallax y shake.
- **Para evitar alucinaciones:** el skill escribe explícitamente qué debe permanecer igual (cara, gestos, cámara) y solo modifica lo solicitado.
- **Look cinematográfico:** Seedance relightea automáticamente al sujeto según el nuevo entorno (luz de neón, lava, atardecer). No necesitas ajustar iluminación.

## Reglas para el erudito de Higgsfield

- **Para swap de fondo con cámara lenta/estable:** usa el skill gratuito con prompt "Swap the background to [entorno] right when [acción]". El skill bloquea automáticamente cara, gestos, cámara.
- **Para swap de fondo con cámara rápida (conduciendo):** usa el mismo skill pero el prompt debe incluir "neon city, lava, above the clouds" o similar. El skill bloquea auto, cinturón, rig, movimiento completo.
- **Para fuego en la cabeza:** prompt exacto "Set my whole head of curls on fire." Sin máscaras. Seedance añade resplandor y reflejos automáticamente.
- **Para morfosis de mano:** prompt exacto "Turn my right hand into something unexpected right when I say the line, 'transform myself right in front of you.' I want a completely smooth transition all while I keep talking to the camera like nothing's happened till the very end of the clip."
- **Para añadir criatura con referencia visual:** primero genera imagen de referencia (ej. con GPT Image 2.0), súbela junto al clip raw. Prompt: "[descripción de criatura] climbing up the side of a building." + especifica si quieres un zoom out/reveal.
- **Para cinematic handheld:** dispara el clip sabiendo el efecto final. Usa el skill con prompt detallado del mundo deseado (ej. "a wing walker on a flying biplane over floating mountains"). Seedance añade física (viento, sombras) automáticamente.
- **Para criaturas foto-realistas en handheld:** prompt "Three giant long-necked dinosaurs towering behind me in a rainy forest while I turn and react." El tracking se mantiene perfecto.
- **Para escena épica (kraken):** prompt "A giant kraken tearing into a ship in a night storm. Tentacles everywhere, me right in the middle of it." Clip original puede ser solo caminar por escaleras.

## Errores comunes / que evitar

- **No usar el skill:** si escribes el prompt manualmente, el AI puede alucinar y cambiar elementos que deben permanecer (cara, gestos, cámara). Siempre usa el skill gratuito del video.
- **No dar contexto visual para criaturas:** si quieres un lagarto específico, no lo describas solo con texto. Genera una imagen de referencia y súbela junto al clip.
- **Esperar máscaras manuales:** Seedance 2.0 en 4K no requiere máscaras ni compositing. Si intentas enmascarar, pierdes el tiempo. El skill bloquea automáticamente.
- **Usar cámara trípode para efectos handheld:** el skill maneja perfectamente cámara handheld caótica. No necesitas estabilizar. De hecho, los efectos se ven más reales con movimiento natural.
- **No especificar el momento exacto del cambio:** en el prompt, incluye "right when [acción]" (ej. "right when he snaps his fingers") para que el cambio ocurra en el fotograma preciso.
- **Ignorar la iluminación del entorno:** Seedance relightea automáticamente. No necesitas ajustar luces. Confía en que el AI igualará la luz del nuevo fondo.
- **Usar Seedance en resoluciones menores a 4K:** el video enfatiza que la calidad 4K es clave para resultados limpios. No uses versiones inferiores.