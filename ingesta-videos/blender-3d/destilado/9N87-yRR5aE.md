# Sculpting in Blender: A Complete Beginner's Guide
**Fuente:** Grant Abbitt (Gabbitt) | https://youtu.be/9N87-yRR5aE

## Qué enseña (2-3 líneas)
Guía paso a paso para esculpir una cara caricaturesca desde cero en Blender, usando el espacio de trabajo Sculpting. Cubre configuración inicial, selección de pinceles, simetría, remallado, y técnicas de detalle con pinceles como Grab, Draw, Crease y Smooth.

## Técnicas accionables
- **Configurar tableta:** Asigna el botón 1 del lápiz a Middle Mouse button (rueda) para orbitar; el botón 2 a right click.
- **Añadir malla base:** En Layout, selecciona el cubo por defecto y elimínalo con X. Presiona **Shift+A** → Mesh → Icosphere. En el panel inferior izquierdo (disclosure arrow), ajusta Subdivisions a **5**.
- **Ir a Sculpting Workspace:** En la barra superior, selecciona "Sculpting". Activa **Symmetry** en el eje X (botón X en la barra superior).
- **Pincel Grab (G):** Para estirar la forma. Usa **F** para redimensionar el pincel (mueve el cursor horizontalmente). Haz clic y arrastra para deformar.
- **Pincel Draw (D):** Para añadir volumen. Mantén **Ctrl** para invertir (hundir en lugar de levantar).
- **Pincel Crease (C):** Para crear pliegues y líneas de detalle. Mantén **Ctrl** para invertir (levantar aristas).
- **Smooth:** Mantén **Shift** mientras usas cualquier pincel para suavizar la superficie.
- **Remesh (remallado):** Presiona **R** para previsualizar el tamaño de vóxel (aparece un recuadro). Ajusta el valor (ej. 0.08, 0.03, 0.006). Luego presiona **Ctrl+R** para aplicar el remallado.
- **Ver estadísticas de polígonos:** En el menú Overlays (icono de dos círculos superpuestos), activa **Statistics** para ver el número de caras.
- **Añadir ojos:** Cambia a Layout workspace. Mueve el cursor 3D con **Shift+Right Click** sobre la zona del ojo. Presiona **Shift+A** → Mesh → UV Sphere. Escala con **S**. Rota con **R**, luego **X**, luego escribe **90** y Enter para orientar el polo hacia el frente.
- **Duplicar ojo con Mirror:** Selecciona el ojo, ve a Modifiers (icono de llave inglesa) → Add Modifier → Generate → **Mirror**. En Mirror Object, usa el picker y selecciona la cabeza (Head). Asegúrate de que el eje X esté activo.
- **Seleccionar objeto en Sculpting:** Si seleccionas el objeto equivocado, mueve el ratón sobre el objeto deseado y presiona **Alt+Q** (parpadea en rojo para confirmar).
- **Reorientar cámara:** **Alt+Middle Mouse** sobre una zona para centrar la vista en ese punto.

## Reglas para el erudito (imperativas, "usa X cuando Y")
- **Usa la Icosphere** en lugar del cubo o UV Sphere como malla base para esculpir caras, porque su distribución uniforme de polígonos evita deformaciones tempranas.
- **Usa subdivisiones altas (5)** al añadir la Icosphere para tener suficientes polígonos desde el inicio, pero no más para no saturar la máquina.
- **Usa el pincel Grab** en las etapas tempranas para definir la forma general (cráneo, cuello, mandíbula) antes de pasar a detalles finos.
- **Usa el pincel Draw** para añadir volumen en zonas específicas (orejas, cejas, pómulos) y **Ctrl+Draw** para hundir (ojos, fosas nasales).
- **Usa el pincel Crease** para definir pliegues (labios, párpados, líneas de expresión) y **Ctrl+Crease** para levantar bordes (párpados superiores, aristas de orejas).
- **Usa Smooth (Shift)** constantemente entre pasos para eliminar irregularidades y suavizar transiciones.
- **Usa Remesh (Ctrl+R)** cada vez que notes estiramientos visibles de polígonos o después de cambios grandes en la forma.
- **Usa un tamaño de vóxel grande (ej. 0.08)** al inicio para mantener pocos polígonos y que el Smooth tenga efecto global; **reduce progresivamente (0.03, 0.006)** al añadir detalle fino.
- **Usa la simetría en X** activada durante todo el proceso, y desactívala solo al final para añadir asimetrías realistas.
- **Usa estadísticas (Overlays → Statistics)** para monitorear el conteo de caras y evitar que el rendimiento se degrade (mantén por debajo de 3 millones en máquinas potentes, ~500k en máquinas lentas).

## Errores comunes / gotchas
- **No empezar con una Icosphere de suficientes subdivisiones:** Si usas una esfera con pocos polígonos, el estiramiento será severo al usar Grab y el remallado no lo corregirá del todo.
- **Olvidar activar Symmetry en X antes de esculpir:** Si empiezas a deformar sin simetría, el modelo quedará asimétrico desde el principio y será difícil corregirlo después.
- **Usar un tamaño de vóxel demasiado pequeño desde el inicio:** Si remallas con vóxel muy fino (ej. 0.006) al principio, el Smooth tendrá poco efecto global y la máquina se ralentizará innecesariamente.
- **No remallar (Ctrl+R) después de estiramientos:** Si continúas esculpiendo sin remallar, los polígonos se estirarán cada vez más, generando artefactos y pérdida de detalle.
- **Confundir el objeto activo en Sculpting:** Si al volver a Sculpting no puedes esculpir, probablemente tienes seleccionado el ojo u otro objeto. Usa **Alt+Q** sobre la cabeza para re-seleccionarla.
- **No ajustar el Mirror Object al duplicar ojos:** Si al añadir el modificador Mirror el ojo no se refleja en la posición correcta, cambia Mirror Object a la cabeza (Head) para que el eje de simetría sea el centro de la cabeza.
- **Usar el pincel Crease sin suavizar después:** El Crease deja aristas muy marcadas; siempre complementa con Smooth (Shift) para integrar los pliegues en la superficie.
- **No usar la previsualización de vóxel (R) antes de remallar:** Si remallas sin ver el tamaño, puedes terminar con polígonos demasiado grandes o pequeños para la etapa actual.