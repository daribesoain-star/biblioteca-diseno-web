

===== DESTILADO: R1-b7F_u8oU.md =====
# How to Optimize After Effects Renders
**Fuente:** SternFX | https://youtu.be/R1-b7F_u8oU

## Qué enseña
Explica cómo usar el Composition Profiler (Oscar the Snail) para identificar capas y efectos que consumen más tiempo de render, y cómo optimizar un proyecto recortando el área de trabajo, usando Region of Interest, reduciendo track mattes duplicados y reemplazando efectos lentos por alternativas más rápidas.

## Técnicas accionables
- **Trim Composition to Work Area:** Coloca el Current Time Indicator (CTI) donde quieras el inicio y presiona **B** (Begin); coloca el CTI donde quieras el final y presiona **N** (End). Luego haz clic derecho sobre la barra del Work Area y selecciona "Trim Comp to Work Area".
- **Set Work Area for Selected Layers:** Selecciona una o varias capas y presiona **Command + Option + B** (macOS) / **Alt + Ctrl + B** (Windows) para ajustar automáticamente el Work Area a la duración de esas capas.
- **Trim Layer to Work Area:** Selecciona una capa y presiona **Option + ]** (macOS) / **Alt + ]** (Windows) para recortar el final de la capa hasta donde esté el CTI.
- **Activar Composition Profiler:** Haz clic en el ícono de **Oscar the Snail** (ubicado en la parte inferior del panel Composition) para expandir la columna **Render Time** en la línea de tiempo. Allí se muestra un desglose por capa, máscaras, estilos de capa y efectos individuales, con barras de color: verde (tiempo real o medio real), amarillo a rojo (de 100 ms a 5 segundos).
- **Reducir Track Mattes duplicados:** Si varias capas usan el mismo track matte (ej. una capa "glitch matte"), selecciona todas esas capas, usa el **Track Matte Pick Whip** para vincularlas a una sola capa fuente, y luego elimina las copias duplicadas del matte.
- **Region of Interest (ROI):** Activa el ROI desde el botón en la parte inferior del panel Composition (ícono de rectángulo punteado), dibuja un rectángulo alrededor del área que realmente se usa (ej. solo la zona donde aparecen los títulos). Luego ve a **Composition > Crop Comp to Region of Interest** para reducir el tamaño del comp.
- **Reemplazar Camera Lens Blur por Compound Blur:** Si el efecto **Camera Lens Blur** es un "render hog", ve a **Effect > Blur & Sharpen > Compound Blur**. Ajusta el parámetro **Maximum Blur** a la mitad del valor original (ej. de 5 a 2.5), selecciona la capa de mapa de desenfoque (ej. "blur ramp") y marca **Invert Blur** si es necesario. Esto es mucho más rápido, aunque no idéntico visualmente.
- **Purgar caché antes de medir:** Para obtener una medición precisa del tiempo de render de un fotograma, ve a **Edit > Purge > All Memory** (atajo: **Command + Option + /** en macOS o **Alt + Ctrl + /** en Windows) antes de evaluar el frame actual.
- **Re-exportar como Motion Graphics Template:** Después de optimizar, abre el panel **Essential Graphics** y re-exporta el proyecto como .mogrt para usarlo en Premiere Pro con mejor rendimiento.

## Reglas para el erudito (imperativas y verificables)
- **Usa el Composition Profiler siempre que necesites identificar cuellos de botella:** no tiene penalización de rendimiento, puedes mantenerlo visible todo el tiempo.
- **Nunca dejes capas invisibles o desactivadas esperando ser evaluadas:** no aparecen en la columna Render Time, pero consumen recursos si están activas.
- **Cuando uses Draft 3D (si hay capas 3D), el Composition Profiler se desactiva automáticamente.**
- **Si el panel Composition está oculto o cerrado, el Composition Profiler entra en estado "dormant" (no registra datos).**
- **Para track mattes, prefiere una sola capa fuente compartida por Pick Whip en lugar de múltiples copias del mismo matte.**
- **Valor por defecto recomendado para Compound Blur:** reducir el Maximum Blur a la mitad del valor original del Camera Lens Blur (ej. 5 → 2.5) y activar Invert Blur si el mapa original está invertido.

## Errores comunes que evita o menciona
- **No asumir que todas las capas se renderizan igual:** el profiler muestra que capas con track mattes duplicados o efectos como Camera Lens Blur pueden ser los mayores consumidores de tiempo.
- **No ignorar el tamaño del comp:** si solo una pequeña porción de la imagen se usa (ej. títulos), el ROI y "Crop Comp to Region of Interest" reducen drásticamente el área de render.
- **No dejar el Work Area más largo de lo necesario:** recortarlo al rango útil (con B/N o Trim Comp to Work Area) evita procesar fotogramas innecesarios.
- **No confiar en la vista previa en caché para medir rendimiento:** siempre purga la memoria (Edit > Purge > All Memory) antes de leer el tiempo de render de un frame.

===== DESTILADO: UutXfHp9KDg.md =====
# After Effects Scripting for Absolute Beginners - ExtendScript Tutorial
**Fuente:** Code and Motion | https://youtu.be/UutXfHp9KDg

## Qué enseña
Este tutorial enseña los fundamentos de ExtendScript (variante de JavaScript) para automatizar tareas en After Effects. Al final, el alumno puede escribir un script que aplica una expresión personalizada a todas las propiedades seleccionadas, comprendiendo variables, funciones, objetos, arrays, condicionales y bucles.

## Técnicas accionables
- **Crear una variable de texto:** `var myVariable = "mi texto";` (siempre con comillas dobles y punto y coma al final).
- **Mostrar un pop-up de prueba:** `alert(myVariable);` dentro del código.
- **Obtener propiedades seleccionadas en la composición activa:** `var selected = app.project.activeItem.selectedProperties;` (esto devuelve un array).
- **Acceder al primer elemento del array:** `selected[0]` (el índice empieza en 0).
- **Leer el valor de una propiedad:** `alert(selected[0].value);`
- **Cambiar el valor de una propiedad:** `selected[0].setValue(30);`
- **Añadir una expresión a una propiedad:** `selected[0].expression = "loopOut();";`
- **Agrupar acciones en un solo paso de deshacer:**
  ```javascript
  app.beginUndoGroup("mi script action");
  // ... acciones ...
  app.endUndoGroup();
  ```
- **Verificar si hay propiedades seleccionadas:**
  ```javascript
  if (selected.length === 0) {
      alert("Please select a property");
  } else {
      // aplicar expresión
  }
  ```
- **Recorrer todas las propiedades seleccionadas con un bucle for:**
  ```javascript
  for (var i = 0; i < selected.length; i++) {
      selected[i].expression = "loopOut();";
  }
  ```
- **Crear un panel de UI básico (código copiado del tutorial):** usar una función que devuelve un objeto `palette` con un campo de texto (`editText` de 25 caracteres) y un botón (`button`). El botón tiene un evento `onClick` que ejecuta la función `addExpression`, la cual lee el texto del campo con `expressionInput.text`.
- **Guardar el script como panel permanente:** guardar el archivo `.jsx` en `C:\Program Files\Adobe\Adobe After Effects [versión]\Support Files\Scripts\ScriptUI Panels\`. El nombre del archivo aparece en el menú `Window` de After Effects.
- **Comentar código:** usar `//` para comentar una línea y evitar que se ejecute.
- **Depurar con alerts:** usar `alert()` en diferentes puntos del código para rastrear el flujo y los valores de las variables.

## Reglas para el erudito
- **Usa camelCase para nombrar variables:** la primera letra en minúscula y cada palabra siguiente con mayúscula (ej: `myVariable`).
- **Nunca uses espacios, guiones ni números al inicio en nombres de variables.**
- **Siempre termina cada línea de código con un punto y coma (`;`), no dos.**
- **Usa `===` para comparar valores, no `=` (un solo signo asigna, no compara).**
- **Usa `!==` para verificar desigualdad.**
- **Usa `&&` para "Y" lógico y `||` para "O" lógico en condiciones.**
- **Agrupa acciones grandes con `beginUndoGroup` y `endUndoGroup` para permitir deshacer todo de una vez.**
- **Siempre verifica que `selectedProperties` no esté vacío antes de operar sobre él.**
- **Usa nombres de variables descriptivos para facilitar la lectura futura del código.**
- **Comenta las secciones importantes del código con `//` para recordar su propósito.**

## Errores comunes que evita o menciona
- **No seleccionar ninguna propiedad:** si `selectedProperties` devuelve `undefined` o un array vacío, el script falla. El tutorial enseña a usar un `if` para comprobar `selected.length === 0` y mostrar un mensaje de advertencia.
- **Usar un solo `=` en lugar de `===` en comparaciones:** esto asigna un valor en lugar de compararlo, causando errores lógicos.
- **Olvidar que los arrays empiezan en índice 0:** el segundo elemento tiene índice 1, el tercero índice 2, etc.
- **No usar `beginUndoGroup`:** sin esto, el usuario no puede deshacer todas las acciones del script con un solo Ctrl+Z.
- **No comentar el código:** dificulta entender el script meses después.
- **No usar alerts para depurar:** impide rastrear el flujo del programa y detectar errores.

===== DESTILADO: V5HLeR5jaFM.md =====
# How to Make Anything React to Audio & Music in After Effects
**Fuente:** Smertimba Graphics | https://youtu.be/V5HLeR5jaFM

## Qué enseña
Este tutorial enseña cómo usar la función "Convert Audio to Keyframes" para generar datos de audio y vincularlos mediante expresiones a cualquier propiedad de una capa (como escala). También cubre cómo ajustar la intensidad de la reacción y cómo establecer un umbral específico para controlar cuándo y cuánto reacciona la propiedad.

## Técnicas accionables
- **Convertir audio a keyframes:** Haz clic derecho sobre la capa de audio en la línea de tiempo → **Keyframe Assistant** → **Convert Audio to Keyframes**. Se crea una nueva capa llamada "Audio Amplitude".
- **Limpiar canales innecesarios:** Expande la capa "Audio Amplitude" → Effects → selecciona "Left" y "Right" channels y presiona **Delete** para quedarte solo con "Both Channels".
- **Vincular escala (método con dos valores):** Selecciona la capa del logo → presiona **S** para mostrar escala → mantén presionada la tecla **Alt** y haz clic izquierdo en el cronómetro de escala para activar expresiones → arrastra el **pick whip** (espiral) sobre el slider de "Both Channels" → suelta. Luego, al final de la expresión, escribe **+[100,100]** para mantener la escala original.
- **Vincular escala (método con un solo valor):** Ve a **Effects & Presets** → busca **Transform** y arrastra el efecto a la capa del logo. En el panel de controles de efecto, mantén **Alt** + clic izquierdo en el cronómetro de escala del efecto Transform → escribe **value+** antes de arrastrar el pick whip al slider de "Both Channels".
- **Ajustar intensidad de reacción:** Al final de la expresión, añade ***2** para duplicar la reacción o **/2** para reducirla a la mitad. Puedes usar cualquier número (ejemplo: *4 para una reacción muy exagerada).
- **Crear un umbral de reacción específico:** Mantén **Alt** + clic izquierdo en el cronómetro del slider de "Both Channels" → escribe la expresión: **linear(value, umbral_bajo, umbral_alto, 0, valor_máximo)**. Por ejemplo: **linear(value, 7, 20, 0, 20)**. Esto hace que valores menores o iguales a 7 den reacción cero, y valores mayores o iguales a 20 se limiten a 20.
- **Identificar valores del umbral:** Abre el **Graph Editor** en la capa "Audio Amplitude" → haz clic derecho y selecciona **Edit Value Graph** para ver los valores numéricos de los keyframes y elegir los límites bajo y alto.

## Reglas para el erudito
- Usa **value+** (con el pick whip) cuando la propiedad tenga un solo valor (como la escala del efecto Transform) para mantener el valor original y sumar la reacción del audio.
- Usa **+[100,100]** (al final de la expresión) cuando la propiedad tenga múltiples valores (como la escala nativa de la capa) para restaurar el valor por defecto.
- Nunca arrastres el pick whip sin escribir **value+** primero si quieres conservar el valor original de la propiedad; de lo contrario, la propiedad se sobrescribirá completamente.
- Para el umbral, elige valores bajos (ej. 7) y altos (ej. 20) observando los valores en el **Edit Value Graph** para que la reacción sea suave y controlada.
- Por defecto, después de aplicar **linear(value, bajo, alto, 0, alto)**, los valores por debajo del umbral bajo producen reacción cero y los valores por encima del umbral alto se limitan al valor máximo definido.

## Errores comunes que evita o menciona
- **Error:** La escala se reduce a un tamaño mínimo después de vincularla con el pick whip. **Solución:** Añadir **+[100,100]** al final de la expresión para recuperar la escala original.
- **Error:** No saber cómo ajustar la intensidad de la reacción. **Solución:** Multiplicar o dividir el valor al final de la expresión (ej. *2 o /2).
- **Error:** No establecer un umbral, lo que hace que incluso sonidos muy bajos generen reacción. **Solución:** Usar la expresión **linear(value, bajo, alto, 0, alto)** en el slider para definir un rango de reacción.

===== DESTILADO: VieNlfxYxwU.md =====
# Adobe Premiere Pro and After Effects Workflow: Dynamic Linking Best Practices
**Fuente:** Other World Computing | https://youtu.be/VieNlfxYxwU

## Qué enseña
Este tutorial enseña cómo transferir clips y composiciones entre Adobe Premiere Pro y After Effects mediante Dynamic Link, incluyendo métodos como reemplazar clips con composiciones, arrastrar comps desde AE, copiar y pegar clips entre programas, y cuándo es mejor renderizar en lugar de usar Dynamic Link para clips pesados.

## Técnicas accionables
- **Reemplazar clips de Premiere con composición de AE:** Seleccionar clips en la línea de tiempo de Premiere, hacer clic derecho y elegir "Replace with After Effects Composition". Antes, duplicar los clips originales presionando **Option** (Mac) o **Alt** (Windows) y arrastrándolos hacia arriba en la línea de tiempo para conservar una copia.
- **Arrastrar comp desde AE a Premiere:** En After Effects, hacer clic sobre el nombre del comp en el panel de proyecto y arrastrarlo directamente al panel de proyecto de Premiere (o a un bin específico). Luego arrastrar desde el bin a la línea de tiempo.
- **Importar comp desde AE usando Media Browser:** En Premiere, ir al panel **Media Browser**, navegar hasta la carpeta del proyecto de After Effects, abrir la carpeta "Comps", hacer clic derecho sobre el comp deseado y seleccionar "Import". Luego arrastrar desde el bin a la línea de tiempo.
- **Copiar y pegar un clip de Premiere a AE:** En Premiere, seleccionar el clip en la línea de tiempo, presionar **Command+C** (Mac) o **Control+C** (Windows) para copiar. En After Effects, presionar **Command+V** o **Control+V** para pegar. Nota: el clip se pegará en la misma posición temporal desde donde se copió y extenderá la duración del comp de AE.
- **Truco para pegar clips al inicio del comp de AE:** En Premiere, copiar el clip (**Command/Ctrl+C**), presionar **Home** para ir al inicio de la línea de tiempo, asegurarse de que el track patching esté activo en un track vacío (ej. video 6), pegar con **Command/Ctrl+V**. Luego cortar ese clip con **Command/Ctrl+X**, ir a After Effects y pegar con **Command/Ctrl+V**. Esto coloca el clip al inicio del comp de AE.
- **Recortar comp de AE a la duración deseada:** Después de pegar un clip, seleccionar la capa de texto o capa guía que marca la duración deseada, presionar **O** (letra) para ir al final de esa capa, presionar **N** para ajustar el final del área de trabajo al playhead, luego hacer clic derecho en el área de trabajo y elegir "Trim Comp to Work Area".
- **Renderizar comps pesados para usar en Premiere:** En After Effects, enviar el comp al **Render Queue**, elegir formato **ProRes 422**, definir destino de salida y renderizar. Luego importar el archivo renderizado en Premiere. Para editar el original, hacer clic derecho sobre el clip renderizado en Premiere y elegir "Edit Original" – esto abre el comp original en After Effects.
- **Configurar "Set to Frame Size" en Premiere para escalado correcto:** En Premiere, hacer clic derecho sobre el clip y elegir "Set to Frame Size" (no "Scale to Frame Size"). Esto ajusta la escala en el panel Effect Controls (ej. 50% para un clip 4K en un comp HD). Al copiar y pegar este clip a AE, la escala se mantiene (ej. 50%) y el clip se pega como capa directa, no como pre-composición.
- **Reemplazar pre-comp por footage original en AE:** Si al pegar un clip de Premiere aparece como pre-comp, hacer clic derecho sobre la capa, elegir "Reveal Layer Source in Project", localizar el footage original en el bin, mantener presionado **Option** (Mac) o **Alt** (Windows) y arrastrar el footage sobre la capa para reemplazarla.

## Reglas para el erudito
- **Duplica los clips originales en Premiere antes de reemplazarlos con una composición de AE**, porque el reemplazo los aplana y elimina los clips originales de la línea de tiempo.
- **Usa "Set to Frame Size" en Premiere** (no "Scale to Frame Size") cuando planees copiar clips a After Effects, para que la escala se transfiera correctamente y el clip no llegue como pre-comp.
- **Renderiza comps de AE a ProRes 422** cuando tengan efectos pesados (desenfoque, lens flare, grano) que ralenticen la reproducción en Premiere mediante Dynamic Link.
- **Usa "Edit Original" en Premiere** sobre un clip renderizado para volver al comp original en After Effects y hacer cambios.
- **Recuerda recortar el comp de AE después de pegar un clip de Premiere**, porque el comp se extiende automáticamente a la duración total del footage pegado.
- **Mantén organizados los linked comps** en un bin separado dentro de Premiere para evitar confusiones.

## Errores comunes que evita o menciona
- **No olvidar duplicar los clips antes de reemplazarlos con una composición de AE**, o se perderán los clips originales en la línea de tiempo.
- **No pegar clips de Premiere en AE sin ajustar su posición temporal**, porque se pegarán en el mismo punto de tiempo de donde se copiaron (ej. en el segundo 42), no al inicio del comp.
- **No usar Dynamic Link con comps que tienen efectos que renderizan lento** (desenfoque, lens flare, grano), porque la reproducción en Premiere se traba y no reproduce en tiempo real. En su lugar, renderizar a ProRes.
- **No asumir que el escalado de un clip de Premiere se transfiere automáticamente a AE** – si se usa "Scale to Frame Size", la escala se pierde y el clip llega a AE al 100% de tamaño, requiriendo re-escalado manual.
- **No ignorar que al pegar un clip de Premiere en AE puede llegar como pre-comp** en lugar de capa directa, lo que requiere reemplazar manualmente la fuente si se desea trabajar con el footage original.

===== DESTILADO: Y0RRBVnn2MA.md =====
# DUIK Angela Jumpstart Complete Beginner's Guide
**Fuente:** Jake In Motion | https://youtu.be/Y0RRBVnn2MA

## Qué enseña
Este tutorial enseña el proceso completo de rigging de personajes 2D en Adobe After Effects usando el plugin gratuito DUIK Angela, desde la preparación del artwork en Illustrator hasta la creación de un sistema de esqueleto, rigging automático y ciclos de caminar y correr automáticos. Cubre la configuración del espacio de trabajo, creación de huesos (bones), auto-rigging, controladores IK/FK y animación procedural.

## Técnicas accionables

- **Preparación del artwork en Illustrator:** Crear círculos perfectos en todas las articulaciones del personaje (codos, rodillas, caderas, cuello, muñecas, tobillos). Usar una mesa de trabajo (artboard) de 2000x2000 píxeles o mayor si se necesita hacer zoom. Nombrar las capas con etiquetas como "R_arm", "L_forearm", "R_hand" (R = right, L = left desde la perspectiva del personaje). Dar una ligera curvatura a las extremidades para que DUIK sepa en qué dirección deben doblarse.

- **Importación a After Effects:** Importar el archivo de Illustrator como "Composición" con "Tamaño de capa" como dimensión del metraje (footage dimension). Duplicar la composición original y renombrarla como "[nombre]_artwork" para tener una copia de seguridad.

- **Configuración del espacio de trabajo:** Acoplar el panel de línea de tiempo (timeline) en el lado izquierdo del espacio de trabajo. Cerrar paneles innecesarios (Character, etc.). Guardar como nuevo espacio de trabajo: Window > Workspace > Save as New Workspace, nombrarlo "character_rigging". En DUIK, ir a Settings > Edit Settings y cambiar UI Mode a "rookie" para ver etiquetas de texto en los botones.

- **Ajuste de puntos de anclaje (Anchor Points):** Activar la capa "guides" del personaje. Presionar **Y** para la herramienta Anchor Point. Para precisión: hacer clic derecho en la capa guides > Create > Shapes from Vector Layer para convertir los círculos en capas de forma. Luego, mantener presionado **Control (Windows)** o **Command (Mac)** mientras se arrastra el Anchor Point para activar el snapping al centro del círculo. Alternativa: reducir la escala de los círculos guía al 20% para facilitar la colocación.

- **Creación de huesos (Bones) - Método 1 (selección de capas):** Seleccionar las capas de la extremidad en orden desde la raíz hasta la punta (ej: arm > forearm > hand). Ir a la pestaña Bones > Hominoid > opciones de Arm. Configurar: Front/Back según corresponda, Right/Left según el lado del personaje. Desmarcar "shoulder bone" si no existe en el artwork. Mantener presionado **Control** y hacer clic en el botón Arm. Esto genera huesos alineados a los Anchor Points y auto-parenta el artwork a los huesos. Reposicionar el hueso de la punta (tip) al final del dedo/extremidad.

- **Creación de huesos (Bones) - Método 2 (dibujar trazado):** Con la herramienta Pluma (Pen Tool), dibujar un trazado colocando un punto en cada articulación y un punto final en la punta de la extremidad. Seleccionar el trazado (no solo la capa), ir a Bones > Hominoid > opciones de Arm, configurar etiquetas y hacer clic en Arm. Luego, seleccionar las capas de artwork correspondientes y usar el botón "Link Art" para que DUIK auto-parente el artwork a los huesos basándose en los nombres de las capas.

- **Creación de la columna vertebral (Spine):** Mover los Anchor Points de hips, torso, neck y head a sus respectivas articulaciones. Seleccionar en orden: hips > torso > neck > head. Ir a Bones > Hominoid > opciones de Spine. Configurar: hips activado, spine sections = 1, neck = 1, head activado. Mantener **Control** y hacer clic en Spine. Reposicionar el hueso de la punta al tope de la cabeza. Parentear manualmente los elementos faciales al hueso head.

- **Creación de piernas (Legs):** Repetir el proceso de las extremidades. En opciones de Leg, activar "toes". Configurar Front/Back y Right/Left. Después de generar los huesos, alinear el hueso "toe" a la punta de los dedos y el hueso "heel" al talón (mantener Shift para movimiento horizontal).

- **Auto-rigging:** Duplicar la composición de huesos y renombrarla como "[nombre]_rig". Eliminar las capas guides y background. Seleccionar todos los huesos usando el botón "Select All Bones" en el panel Bones. Ir a la pestaña Auto-rig y hacer clic en el botón. Antes de hacer clic, marcar la casilla para ocultar overlays (esto acelera el proceso). Esperar a que termine el proceso.

- **Post-auto-rigging:** Ocultar los huesos con el botón "Show/Hide Bones" en el panel Bones. Seleccionar todas las capas controller (Ctrl), presionar **P** para ver posición. Deseleccionar los que ya están en cero (torso, hips). Ir a la pestaña Links & Constraints > botón "Add Zero". Esto genera nulos (nulls) en la misma posición que los controladores y los parentea, permitiendo resetear a 0,0 para volver a la pose neutral.

- **Limpieza de la composición:** Bloquear (lock) todas las capas de artwork y bones. Activar el switch "Shy" en todas las capas excepto los controladores. Hacer clic en el icono de Shy para ocultar las capas shy.

- **Ajuste de controladores (Controllers):** Para cada controlador, ir al efecto "Icon" y ajustar la posición (Position) para mover el icono fuera del personaje. Cambiar el color si es necesario. Para los controladores de manos: en el efecto "Icon", rotar 180° en el eje Z para que apunten hacia abajo, luego desplazar en Y. Para los controladores de pies: rotar 90° y desplazar hacia abajo/delante.

- **Corrección de dirección de flexión (IK bend):** Si una extremidad se dobla en dirección opuesta a la deseada, ir al controlador de mano/pie > efecto "IK" > cambiar "Side" de 100% a -100% (o viceversa).

- **Ocultar puntos de anclaje de controladores:** Seleccionar todos los controladores. En el efecto "Icon", buscar la propiedad "Anchor Point Size" y cambiarla a 0.

- **Ciclo automático de caminar/correr:** Duplicar la composición rig. Seleccionar todos los controladores (incluyendo los que estaban ocultos/bloqueados). Ir a la pestaña Automation > Walk/Run Cycle > botón de settings para verificar que los controladores correctos están asignados a cada parte del cuerpo. Hacer clic en "Walk/Run Cycle". Aparecerá un nuevo controlador con parámetros. Para encontrar la duración del ciclo: ir a Computation > Cycle Duration (frames). Establecer el área de trabajo (Work Area) en cycle duration - 1 frame (ej: 24 frames → work area hasta frame 23).

- **Parámetros del ciclo de caminar:** General Motion: controla la transición entre caminar y no caminar (0% = quieto, 100% = caminando). Walk/Run: controla qué ciclo está activo. Main Parameters: Height, Energy, Softness. Walk Cycle: Walk Speed (distancia entre pasos; valor negativo invierte dirección), Walk Type (Realistic/Dancing). Advanced Parameters: Step Amplitude, Step Frequency. Individual Limb Adjustments: controlan cabeceo de cabeza, balanceo de cuello, etc.

- **Transición entre ciclos:** Keyframear General Motion de 0% a 100% para iniciar la caminata gradualmente. Para transicionar de caminar a correr: keyframear Walk de 100 a 0 y Run de 0 a 100 simultáneamente. Ajustar Step Amplitude y Step Frequency en el punto de transición.

- **Copiar/pegar animación entre composiciones:** Usar la pestaña Animation > Copy Animation y Paste Animation para transferir keyframes de controladores entre diferentes puntos en el tiempo.

## Reglas para el erudito

- **Usa círculos perfectos en todas las articulaciones** del artwork en Illustrator para que las rotaciones no muestren costuras.
- **Nunca uses Shape Layers ni Continuous Rasterize** en After Effects para el artwork; DUIK puede romperse o complicarse. Trata el artwork de Illustrator como imágenes planas (flat layers).
- **Importa siempre como "Composición" con "Tamaño de capa"** como dimensión del metraje.
- **Nombra las capas de artwork con etiquetas consistentes** (R_ / L_ para right/left del personaje, no del espectador) para que el botón "Link Art" funcione automáticamente.
- **Selecciona las capas desde la raíz hasta la punta** (root to tip) antes de generar huesos para que el auto-parenting funcione correctamente.
- **Mantén presionado Control/Command** al hacer clic en el botón de generación de huesos (Arm, Leg, Spine) para activar el auto-parenting.
- **Después del Auto-rig, usa siempre "Add Zero"** en todos los controladores para poder resetear a la pose neutral con valores 0,0.
- **Usa el controlador "Body" (centro de gravedad) para mover al personaje completo**, no los controladores de torso, shoulders o hips individualmente.
- **Para el ciclo de caminar, establece el Work Area en Cycle Duration - 1 frame** para evitar el frame duplicado del loop.
- **No modifiques los marcadores (markers) generados por DUIK** en las capas; son esenciales para que el sistema funcione.

## Errores comunes que evita o menciona

- **No alinear correctamente los Anchor Points** a los círculos de las articulaciones causa que las extremidades se separen visiblemente al rotar. Solución: usar snapping con Control/Command o reducir la escala de los círculos guía al 20%.
- **No dar una curvatura inicial a las extremidades** en Illustrator puede hacer que DUIK no sepa en qué dirección deben doblarse, resultando en flexiones inversas. Solución: usar el parámetro "Side" en el efecto IK del controlador (cambiar de 100% a -100%).
- **Mover el controlador de hips o torso para desplazar al personaje** en lugar de usar el controlador Body causa desalineaciones en el rig. Regla: solo el controlador Body debe usarse para mover/rotar todo el personaje.
- **No ocultar los overlays antes del Auto-rig** hace que el proceso sea extremadamente lento. Siempre marcar la casilla de ocultar overlays antes de hacer clic en Auto-rig.
- **No usar "Add Zero" después del Auto-rig** impide volver a la pose neutral, ya que las posiciones de los controladores tienen valores arbitrarios no memorizables.
- **Intentar usar Shape Layers o Continuous Rasterize** para el artwork causa problemas de compatibilidad con DUIK. Usar siempre capas de Illustrator importadas como composición.
- **No verificar la duración del ciclo después de modificar parámetros** (Step Amplitude, Step Frequency) cambia la duración del loop, rompiendo la sincronización del Work Area. Siempre revisar Computation > Cycle Duration después de cambios.

===== DESTILADO: ZiXdcziloG8.md =====
# City Destruction Tutorial!
**Fuente:** Video Copilot | https://youtu.be/ZiXdcziloG8

## Qué enseña (2-3 líneas)
Este tutorial enseña a crear un efecto de ciudad destruida en After Effects combinando 3D camera tracking, composición de texturas de daño, máscaras, color correction y elementos de stock footage. Cubre desde la creación de agujeros en edificios hasta la integración de humo, fuego, vigas dobladas y matte painting 2D/3D.

## Técnicas accionables
- **3D Camera Tracker:** Window > Tracker > Track Camera. Seleccionar 3 puntos en una superficie plana (Shift + clic), luego right-click > Set Ground Plane and Origin, luego right-click > Create Solid and Camera.
- **Reemplazar sólido 3D con textura:** Seleccionar el sólido, Alt + arrastrar la textura de daño desde el panel Project para reemplazarlo manteniendo la posición 3D.
- **Máscara con Pin Tool (pluma):** Dibujar alrededor del área dañada, luego presionar M para mostrar propiedades de máscara, cambiar a Subtract. Duplicar capa (Ctrl + D), cambiar máscara a Add para la capa inferior.
- **Feathering de máscara:** Presionar F para acceder a Mask Feather, ajustar valores (ej. "just a little bit" o "couple point feather").
- **Track Matte:** Colocar capa de máscara debajo de la capa de daño, seleccionar la capa de daño > Track Matte > Alpha Matte.
- **Desplazar capa en 3D:** Usar herramienta de selección y arrastrar en eje Z para empujar la capa hacia atrás en el espacio 3D.
- **Extract effect:** Effect > Channel > Extract. Funciona como Luma key: deslizar el control para key out áreas oscuras, ajustar Feather para suavizar bordes.
- **Roughen Edges effect:** Effect > Stylize > Roughen Edges. Aplicar sobre capa de vigas, ocultar máscaras, ajustar Scale (reducir para más rugosidad), Border Size y Sharpness.
- **Pre-compose:** Seleccionar múltiples capas, Layer > Pre-compose, nombrar (ej. "front building"), marcar "Move all attributes into the new composition". Luego activar Collapse Transformation switch (estrella) en la precomposición.
- **Congelar frame:** Duplicar capa de footage (Ctrl + D), right-click > Time > Freeze Frame.
- **Mocha AE tracking:** Animation > Track in Mocha AE. Dibujar máscara alrededor del área, click Track Forward. Al terminar, right-click en máscara > Align Selected Surface, luego Export Tracking Data > After Effects Corner Pin > Copy to Clipboard. En AE: seleccionar capa congelada, Edit > Paste.
- **Motion Blur:** Activar el switch de Motion Blur en cada capa y el switch global de Motion Blur en el timeline.
- **Element 3D:** Effect > Element. En Setup, cargar modelo 3D (ej. Jet Strike Collection). En Environment, seleccionar preset de entorno similar a la escena. Activar Physical Shader para el cuerpo, ajustar Shininess. Crear Group Null para animar posición.
- **Tint de entorno en Element 3D:** Physical Environment > Tint Color, ajustar para que coincida con el color cast de la escena.
- **Atajos de teclado mencionados:** Ctrl + D (duplicar capa), M (mostrar máscaras), F (feather de máscara), P (posición), S (escala), T (opacidad), Ctrl + Shift + H (ocultar gizmos), Enter (renombrar capa).

## Reglas para el erudito (imperativas y verificables)
- Usa el gizmo local (Local Gizmo) al rotar o mover capas 3D para no desalinearlas de la superficie.
- Cuando reemplaces un sólido 3D con una textura, usa Alt + arrastrar para mantener la posición 3D exacta.
- Para integrar elementos de destrucción, usa Curves (Effect > Color Correction > Curves) en cada capa: ajusta el canal Red para quitar rojo, el canal Green para quitar verde, y RGB para contraste y brillo.
- Para que el humo se vea realista, usa transfer mode Screen y baja la opacidad (T).
- Para vigas dobladas o rotas, dibuja máscaras con la pluma imitando formas irregulares, no líneas rectas perfectas.
- Activa el Collapse Transformation switch en precomposiciones 3D para que mantengan su posición en el espacio 3D.
- Para motion blur, actívalo en todas las capas y en el switch global del comp.
- Para matte painting 2D, usa un freeze frame del primer frame y píntalo en Photoshop, luego aplica corner pin tracking de Mocha AE.

## Errores comunes que evita o menciona
- No perder los datos de tracking 3D: duplica la capa de footage y guarda una copia con los datos de cámara antes de precomponer.
- No usar líneas rectas perfectas en bordes de destrucción: aplica Roughen Edges o máscaras irregulares para dar sensación orgánica.
- No olvidar el color correction en cada elemento de daño para que coincida con el color cast de la escena (ej. quitar verde si la escena es verdosa).
- No usar motion blur en elementos 3D o compuestos: sin motion blur se ven demasiado nítidos y falsos.
- No alinear correctamente las superficies en Mocha AE: usar Align Selected Surface antes de exportar tracking data.

===== DESTILADO: a3ZfR4uJxNY.md =====
# Trapcode Particular 3 Training
**Fuente:** Maxon Red Giant | https://youtu.be/a3ZfR4uJxNY

## Qué enseña (2-3 líneas)
Este tutorial explica cómo usar la función **Motion Paths** en Trapcode Particular para guiar partículas a lo largo de una ruta 3D definida por la animación de una luz. Cubre la diferencia entre un emisor de luz estándar y un motion path, y muestra cómo integrar escenas de Cinema 4D Lite con After Effects para crear flujos de partículas alrededor de objetos 3D.

## Técnicas accionables
- **Configurar un Motion Path básico:**
  1. Crear una luz en After Effects y nombrarla (ej. "motion path one").
  2. Animar la posición de la luz para definir la trayectoria deseada.
  3. En el panel de efectos de Particular, ir a **Physics > Air > Motion Path** y seleccionar el nombre de la luz creada (ej. "motion path one").
  4. Asegurarse de que **Emitter > Emitter Type** NO esté en "Lights"; usar "Point" (o "Point 4").
  5. Ajustar **Emitter > Particles/sec** (ej. 25) y **Physics > Velocity** (reducir a 0 para que las partículas sigan exactamente la ruta).
  6. Alinear la posición del emisor con el punto de inicio de la luz: copiar los valores de posición de la luz (X, Y, Z) y pegarlos en **Emitter > Position XY** y **Position Z**.
  7. Ajustar **Particle > Life** para que las partículas vivan lo suficiente para recorrer toda la longitud de la spline (ej. si la spline dura 4 segundos, Life debe ser ≥ 4).

- **Usar un sprite personalizado con orientación a la ruta:**
  1. En **Particle > Particle Type**, seleccionar "Sprite Colorize".
  2. En **Sprite > Layer**, elegir un sprite de la biblioteca (ej. flecha básica).
  3. En **Size**, aumentar el tamaño (ej. 80 píxeles).
  4. En **Rotation**, activar **Orient to Motion** y ajustar **Rotate** a 90 grados para que la flecha apunte en la dirección del movimiento.

- **Corregir la orientación del primer fotograma (partícula desalineada en frame 0):**
  - **Opción 1 (expresión):** Alt+clic en el cronómetro de **Particles/sec** y escribir:
    ```
    if (time == inPoint) 0 else value
    ```
    Esto establece Particles/sec a 0 en el primer fotograma de la capa, evitando que se genere la partícula sin movimiento.
  - **Opción 2 (periodicidad aleatoria):** En **Emission Extras**, ajustar **Periodicity Random** a un valor distinto de cero (ej. 1) para corregir partículas "rebeldes" ocasionales.

- **Integrar escena de Cinema 4D Lite con Motion Path:**
  1. En After Effects, crear un archivo Cinema 4D: **File > Maxon Cinema 4D File**.
  2. En Cinema 4D, crear un objeto (ej. cilindro) y un **Null** para definir el centro del flujo.
  3. Aplicar al Null el tag **Tags > Cinema 4D > External Compositing** para que aparezca en After Effects como un null 3D.
  4. Para que un objeto (ej. cilindro azul) tenga su propio canal alfa, seleccionarlo, ir a la pestaña **Compositing** (última pestaña), activar **Object Buffer** y marcar **Enable** (buffer 1).
  5. Habilitar **Multi-Pass** en la configuración de render: **Render Settings > Multi-Pass > Enable**, y añadir **Object Buffer** como pase adicional.
  6. En After Effects, importar el archivo C4D. En la capa C4D, ir a **Cinema 4D Controls > Extract** para obtener el null y la cámara.
  7. Cambiar el renderizador a **Standard (Draft/Full)** y usar **Add Image Layers** para añadir los pases múltiples (RGB y Object Buffer).
  8. Crear una luz, parentearla al null 3D (Shift+arrastrar) y animar su posición y rotación (ej. Y rotation: 3 vueltas en 4 segundos, posición de abajo arriba).
  9. En Particular, asignar esa luz como **Motion Path** en Physics > Air.
  10. Ajustar **Emitter Position** para alinear con el null (ej. valores cercanos a 0, 260, 0).
  11. Para que las partículas interactúen con el objeto 3D (delante/detrás), en **Visibility > Z Buffer**, activar **Use Z Buffer** y seleccionar la capa del Object Buffer como **Z Buffer Layer**.
  12. Ajustar **Z Buffer Distance** (ej. alrededor de 1200 píxeles) para definir la distancia entre la cámara y el objeto en el espacio 3D.

- **Animar una luz en Cinema 4D a lo largo de una spline para Motion Path:**
  1. Crear una spline y un círculo, luego un objeto **Sweep** que use ambos para generar geometría.
  2. Crear una luz y aplicarle el tag **Align to Spline**.
  3. Animar la posición del tag de 0 a 100 para que la luz recorra la spline.
  4. En Cinema 4D, seleccionar el tag, ir a **Timeline > Functions > Bake Objects** y aceptar para convertir la animación en keyframes.
  5. Importar la luz con keyframes horneados a After Effects y usarla como Motion Path en Particular.

## Reglas para el erudito (imperativas y verificables)
- **Usa "Point" como Emitter Type** cuando trabajes con Motion Paths; nunca uses "Lights" porque el motion path no es un emisor de luz, es una spline que define el flujo.
- **Alinea siempre la posición del emisor con el punto de inicio de la luz** para que las partículas comiencen exactamente donde empieza la ruta.
- **Ajusta el Life de las partículas** para que sea igual o mayor que la duración de la spline; si la spline dura 4 segundos, Life debe ser ≥ 4.
- **Usa la expresión `if (time == inPoint) 0 else value`** en Particles/sec para evitar la partícula desalineada en frame 0; es más flexible que keyframear manualmente.
- **Aplica Periodicity Random > 0** en Emission Extras si ves una partícula ocasional mal orientada incluso con la expresión.
- **Para integración 3D con Cinema 4D, usa Z Buffer** en lugar de Obscuration Layer; el Z Buffer respeta la profundidad 3D real del objeto, mientras que Obscuration Layer solo funciona con capas planas de After Effects.
- **Ajusta Z Buffer Distance** experimentalmente (ej. empezar en 1000 y subir hasta que las partículas aparezcan delante del objeto); en After Effects la distancia se mide en píxeles.

## Errores comunes que evita o menciona
- **Confundir Motion Path con Light Emitter:** El tutorial aclara que un light emitter solo dicta dónde nacen las partículas, pero no afecta su trayectoria; el motion path sí controla el flujo continuo de las partículas a lo largo de la ruta.
- **No alinear el emisor con el inicio de la luz:** Si no se copian los valores de posición de la luz al emisor, las partículas no comenzarán en el punto correcto de la ruta.
- **Partículas que se detienen antes del final de la spline:** Ocurre cuando el Life es menor que la duración de la spline; hay que aumentar Life para que las partículas recorran toda la ruta.
- **Partícula desalineada en frame 0 al usar Orient to Motion:** En frame 0 no hay movimiento, por lo que la orientación falla. Se corrige con la expresión en Particles/sec o con Periodicity Random.
- **Usar Obscuration Layer en lugar de Z Buffer para objetos 3D reales:** Obscuration Layer solo funciona con capas planas de After Effects; para objetos 3D de Cinema 4D se debe usar Z Buffer con el Object Buffer correspondiente.
- **No habilitar Multi-Pass ni Object Buffer en Cinema 4D:** Sin estos ajustes, no se genera el canal alfa separado necesario para el Z Buffer en After Effects.

===== DESTILADO: gmC5251SLxg.md =====
# Advanced Damage & Decay FX Tutorial! 100% After Effects!
**Fuente:** Video Copilot | https://youtu.be/gmC5251SLxg

## Qué enseña
Este tutorial enseña a crear efectos procedurales de daño, deterioro, musgo, grietas, óxido y descascarado de pintura en After Effects sin plugins de terceros. Todo el sistema se basa en el efecto CC Glass combinado con capas de textura procedural (Fractal Noise, Cell Pattern) y máscaras de luminancia, permitiendo que los efectos se actualicen automáticamente al cambiar el texto o logotipo de entrada.

## Técnicas accionables

- **Configuración inicial del proyecto:** Configurar proyecto a 16 bits por canal (Alt+clic en el botón de profundidad de bits). Crear composición 1920×1080, 10 segundos, llamada "decay".
- **Creación del alpha del texto:** Usar herramienta de texto, escribir "decay", escalar. Precomponer la capa de texto: Capa > Precomponer, mover todos los atributos, nombrar "decay alpha".
- **Creación del bevel (bisel):** Duplicar "decay alpha" (Ctrl+D), precomponer la copia: Capa > Precomponer, mover todos los atributos, nombrar "decay bevel". Dentro de "decay bevel": aplicar Estilo de capa > Resplandor interior. Configurar: Modo = Normal, Opacidad = 100%, Color = Negro, Técnica = Preciso, Tamaño = 20. Crear capa de ajuste, aplicar Efecto > Canal > Sólido compuesto (color Negro). Aplicar Desenfoque rápido (Fast Box Blur) con 1 píxel, 1 iteración, Repetir píxeles de borde activado.
- **Configuración del título 3D con iluminación:** Arrastrar textura "rock grunge" a la línea de tiempo, precomponer: Capa > Precomponer, mover todos los atributos, nombrar "rock texture". Sobre "rock texture": aplicar Efecto > Estilizar > CC Glass. En Superficie: Mapa de relieve = "decay bevel". Suavidad = 0, Desplazamiento = 0. En Iluminación: cambiar de Luces incorporadas a Luces AE. Aplicar Efecto > Canal > Configurar mate: usar "decay alpha" como fuente de mate. Crear nueva luz: Capa > Nueva > Luz, elegir Paralela. Crear luz ambiental al 50%. Crear luz puntual con color azul para acentos. Ajustar posición e intensidad de las luces.
- **Texturizado del bevel con Fractal Noise:** Dentro de "decay bevel": crear un sólido nuevo, nombrar "rock fractal". Aplicar Efecto > Ruido y grano > Fractal Noise. Modo de transferencia = Aditivo. Alternativa: modo Max con Invertir activado para crear recortes cóncavos. Ajustar Brillo y Contraste. Duplicar "decay alpha" (Ctrl+D), ponerlo encima, aplicar Efecto > Canal > Invertir canal, luego Desenfoque rápido (Fast Box Blur) con valor alto. Reducir opacidad (T) de esta capa para crear hendiduras sutiles.
- **Creación de hendiduras físicas (dents):** Crear otro sólido, nombrar "rock dense". Aplicar Fractal Noise, modo = Multiplicar. Aumentar Brillo, reducir Contraste. Aplicar Efecto > Afinar > Máscara de enfoque (Unsharp Mask). Reducir opacidad al 70%.
- **Sombra larga con CC Radial Blur:** Duplicar "decay alpha", poner debajo de la textura de roca, renombrar "shadow". Aplicar Efecto > Corrección de color > Tinte (Negro). Aplicar Efecto > Desenfocar > CC Radial Blur, tipo = Fading Zoom. Mover centro hacia arriba, aumentar Cantidad. Duplicar la sombra (Ctrl+D), en la copia cambiar Cantidad a 1, reducir opacidad de la capa inferior.
- **Efecto de musgo (moss):** Duplicar "decay alpha", precomponer la copia: nombrar "decay moss". Dentro de "decay moss": crear sólido, nombrar "moss". Aplicar Efecto > Generar > Cell Pattern. Reducir Tamaño drásticamente, aumentar Contraste. Aplicar Efecto > Distorsionar > Desplazamiento turbulento (Turbulent Displace): Tamaño muy bajo, Complejidad = 2 o 3. Aplicar Fractal Noise, modo = Multiplicar, reducir Brillo para controlar cantidad de musgo. En la composición principal: duplicar la capa del título con CC Glass, renombrar "moss effects", eliminar efectos existentes. Aplicar CC Glass: Mapa de relieve = "decay moss". Suavidad = 0, Desplazamiento = 0. Iluminación = Luces AE. Aplicar Efecto > Canal > Configurar mate: primero con "decay alpha", segundo con "decay moss" configurado de Alfa a Luminancia. Aplicar Efecto > Corrección de color > Curvas, ir al canal Alfa y ajustar para endurecer la transparencia. Opcional: insertar Efecto > Matte > Simple Choker entre los dos Configurar mate para reducir bordes. Insertar Efecto > Desenfocar > Desenfoque de canal (Channel Blur) para suavizar el canal Alfa. Aplicar Efecto > Perspectiva > Sombra paralela (Drop Shadow) con distancia 2.
- **Grietas (cracks) en el bevel:** Dentro de "decay bevel": crear sólido, nombrar "cracks". Aplicar Cell Pattern, modo = Crystals (alta calidad). Aumentar Tamaño a ~1500 para líneas finas. Aplicar Turbulent Displace: Tamaño reducido, Complejidad = 3. Precomponer esta capa: nombrar "cracks", modo de transferencia = Multiplicar. Ajustar Brillo. En la composición principal: arrastrar "cracks" sobre el título, aplicar Configurar mate con "decay alpha".
- **Musgo creciendo solo desde las grietas:** Dentro de "decay moss": arrastrar "cracks" desde el proyecto. Aplicar Efecto > Canal > Invertir. Modo de transferencia = Multiplicar. Aplicar Desenfoque rápido (Fast Box Blur) para engrosar las grietas. Aplicar Curvas para aumentar el brillo. Aplicar Turbulent Displace con tamaño pequeño para aleatorizar sin perder alineación.
- **Césped (grass) con CC Hair:** Duplicar la capa "moss effects", renombrar "grass effects". Aplicar Efecto > Simulación > CC Hair. Ajustar Longitud del cabello, Peso, Densidad. Color verde. En Mapa: añadir ruido. Aplicar Turbulent Displace con tamaño 3 para rizar. Para viento: crear sólido "wind map", aplicar Fractal Noise (Complejidad = 2), animar Evolución, precomponer. En CC Hair, Mapa = "wind map". Duplicar capas de césped con variaciones aleatorias de parámetros.
- **Efecto de óxido (rust):** Duplicar "decay alpha", precomponer: nombrar "decay rust". Dentro: crear sólido, Fractal Noise con Contraste alto. En composición principal: duplicar título, renombrar "rust", eliminar efectos. Aplicar CC Glass: Mapa de relieve = "decay rust", Desplazamiento = valor negativo. Aplicar Configurar mate con "decay alpha" y luego con "decay rust" (de Alfa a Luminancia). Ajustar Curvas en canal Alfa. Duplicar "rust", en la copia usar Desplazamiento positivo para simular borde levantado. Aplicar Sombra paralela. Aplicar Estilo de capa > Sombra interior (Inner Shadow) con rotación opuesta a la luz. Para evitar que el óxido toque el borde: invertir "decay alpha", aplicar Desenfoque rápido, Tinte (Negro), Curvas en canal Alfa. Aplicar Turbulent Displace para mezclar bordes.
- **Animación del deterioro:** Dentro de "cracks": animar un Linear Wipe o animar Desenfoque rápido con Curvas en canal Alfa para que el deterioro crezca. Animar el Tamaño del Resplandor interior en "decay bevel" para que el bisel desaparezca. Animar Brillo del Fractal Noise en el musgo para que crezca o se marchite.

## Reglas para el erudito

- Usa CC Glass con Suavidad = 0 y Desplazamiento = 0 cuando solo quieras el reiluminado 3D, no la deformación.
- Usa el modo de transferencia Multiplicar en las capas de textura (Fractal Noise, Cell Pattern) cuando quieras que afecten solo las áreas iluminadas del relieve.
- Nunca uses el Resplandor interior con modo Normal si quieres un bisel preciso; usa siempre Técnica = Preciso.
- Para crear transparencia desde una textura procedural, aplica SIEMPRE dos efectos Configurar mate: el primero para el recorte del alpha original, el segundo configurado de Alfa a Luminancia usando la textura como fuente.
- Valores por defecto recomendados: Tamaño de Resplandor interior = 20, Desenfoque rápido = 1 píxel, Complejidad de Turbulent Displace = 2-3, Brillo de Fractal Noise en modo Multiplicar reducido para controlar cantidad de efecto.
- Usa Channel Blur (Desenfoque de canal) solo en el canal Alfa cuando necesites suavizar bordes de transparencia, no en RGB.
- Cuando uses CC Hair, ajusta primero Densidad y Longitud antes de modificar Color y Grosor para mantener el rendimiento.

## Errores comunes que evita o menciona

- No olvidar cambiar la iluminación de CC Glass de "Luces incorporadas" a "Luces AE" para poder usar luces 3D personalizadas; de lo contrario, las luces nuevas no afectan el material.
- No aplicar CC Glass directamente sobre el texto sin un mapa de relieve; el efecto requiere un mapa (bump map) para funcionar correctamente.
- No usar valores altos de Desplazamiento en CC Glass si solo se busca reiluminado; mantenerlo en 0 para evitar deformaciones no deseadas.
- No olvidar que el orden de los efectos Configurar mate importa: primero el alpha de recorte, luego el de luminancia para la transparencia procedural.
- No usar el modo de fusión equivocado en Fractal Noise dentro del bevel: Aditivo para textura superficial, Multiplicar para hendiduras, Max con Invertir para recortes cóncavos.
- No aplicar Sombra paralela (Drop Shadow) con distancia grande en efectos de musgo/óxido; mantener distancia = 2 para realismo.
- No olvidar activar la rasterización continua (interruptor de sol) en capas de texto/logo precompuestas para mantener la calidad al escalar.

===== DESTILADO: gomawnMPWEg.md =====
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

===== DESTILADO: iDSECTnJf2M.md =====
# Three motion graphics techniques for your After Effects projects
**Fuente:** olly | https://youtu.be/iDSECTnJf2M

## Qué enseña
Tres técnicas de motion graphics en After Effects: "snapping" (una variante del match cut para enfatizar impacto y fricción), entrelazado de formas mediante Set Matte con máscaras y compositing options, y control de gradientes animados con nulls y expresiones para que sigan el movimiento de extremos de un trazo.

## Técnicas accionables

- **Técnica 1: Snapping (match cut con pausa de impacto)**
  - Animar posición de dos capas (ej. círculos) con keyframes: posición inicial → punto de contacto → posición final intercambiada.
  - En el Graph Editor, ajustar los handles de velocidad: llevar los extremos de posición a máxima velocidad (curva en forma de "V" invertida suave).
  - Para el snapping: añadir un "pose" (pausa) unos fotogramas antes del punto de contacto. Insertar un keyframe adicional justo antes del contacto y mantener la posición estática unos frames.
  - Ajustar la curva de velocidad para que muestre un pequeño impacto: velocidad baja en el contacto, luego crece lentamente.
  - Animar también la forma (path) de los círculos: mantener el path normal hasta justo antes del contacto, luego aplicar squashing (escalado no uniforme o deformación del path) durante unos frames para simular fricción.
  - Sincronizar sonidos de impacto con cada acción usando la línea de tiempo de AE (arrastrar archivos de audio y alinearlos visualmente con los keyframes de movimiento).

- **Técnica 2: Entrelazado de formas con Set Matte y máscara**
  - Seleccionar la capa superior (ej. círculo blanco).
  - Aplicar efecto: **Effect > Channel > Set Matte**.
  - En el panel de efectos, en **Set Matte**, elegir como capa de mate la otra forma (ej. círculo negro). Activar **Invert Matte**.
  - Dibujar una máscara (herramienta **Pen Tool** o **Shape Tool**) en la capa, delimitando solo una de las dos áreas de superposición.
  - Ir a las propiedades del efecto Set Matte, desplegar **Compositing Options** y hacer clic en **Add** (junto a "Mask"). Esto restringe el efecto solo al área de la máscara.
  - Para el efecto de transparencia en la superposición:
    - Duplicar la capa del círculo que será visible a través del otro (ej. círculo blanco). Llevar la copia al frente.
    - Aplicar **Set Matte** con la máscara como antes para que solo sea visible en la superposición.
    - Añadir **Effect > Matte > Simple Choke** (valor sugerido: 50) para reducir el área de superposición.
    - Añadir **Effect > Blur & Sharpen > Fast Box Blur** (valor sugerido: 20).
    - Reducir **Opacity** de la capa para suavizar el color.
    - Repetir el proceso con el otro círculo (duplicar, invertir el mate, copiar Choke y Blur, bajar opacidad).
    - Opcional: aplicar **Layer Styles > Inner Glow** e **Inner Shadow** para dar profundidad.

- **Técnica 3: Gradiente animado con nulls y expresión**
  - Crear un trazo (Stroke) con **Gradient Stroke** (en propiedades de forma, elegir "Gradient Stroke" en lugar de "Stroke" sólido).
  - En las propiedades del gradiente, localizar **Start Point** y **End Point**.
  - Crear dos objetos nulos (**Layer > New > Null Object**) para controlar cada extremo del gradiente.
  - Posicionar cada nulo donde se desee el inicio y fin del gradiente.
  - En la capa del trazo, seleccionar solo el parámetro **Start Point** del gradiente.
  - En lugar de parentar directamente (que causa desajuste de coordenadas), aplicar esta expresión a **Start Point**:
    ```javascript
    thisComp.layer("NombreDelNulo1").transform.position
    ```
  - Aplicar la misma expresión a **End Point** pero apuntando al segundo nulo:
    ```javascript
    thisComp.layer("NombreDelNulo2").transform.position
    ```
  - Animar la posición de los nulos con keyframes para que se acerquen o alejen.
  - Ajustar curvas de velocidad en el Graph Editor: para un match cut, poner máxima velocidad al final del movimiento (curva con handle hacia arriba).

## Reglas para el erudito

- Usa **Set Matte** con **Compositing Options > Add** cuando necesites aplicar un efecto solo dentro de una máscara sin duplicar la capa.
- Nunca parentes directamente el parámetro **Start Point** o **End Point** de un gradiente a un nulo; usa la expresión `thisComp.layer("nulo").transform.position` para mantener la referencia correcta de coordenadas de composición.
- Para snapping, inserta siempre un keyframe de pausa (pose) unos fotogramas antes del punto de contacto, y ajusta la curva de velocidad para que la velocidad sea mínima en el impacto y luego crezca gradualmente.
- Valores por defecto recomendados: **Simple Choke** = 50, **Fast Box Blur** = 20, opacidad reducida a ~50-70% para el efecto de transparencia.

## Errores comunes que evita o menciona

- No parentar solo la propiedad de posición de un gradiente a un nulo: causa desajuste porque un parámetro usa el espacio de composición y el otro el espacio del objeto. La expresión es la solución correcta.
- No olvidar que al duplicar una capa para el efecto de transparencia, los efectos aplicados se comportan como entidades separadas; por eso recomienda usar Set Matte con máscara en lugar de duplicar y enmascarar manualmente.
- No omitir la sincronización de sonido: sin efectos de sonido (de Epidemic Sound o similares) la animación de snapping se siente incompleta.

===== DESTILADO: jKyMPFncsmk.md =====
# 5 Essential Illustrator to After Effects Workflow Techniques
**Fuente:** SonduckFilm | https://youtu.be/jKyMPFncsmk

## Qué enseña
Este tutorial enseña cinco flujos de trabajo prácticos para transferir y animar gráficos vectoriales desde Adobe Illustrator a After Effects. Cubre desde la animación de iconos como trazos hasta la creación de escenas continuas sin costuras, pasando por la animación de objetos individuales dentro de vectores complejos.

## Técnicas accionables
- **Animación de iconos como trazo desde Illustrator:**
  1. En Illustrator, con la herramienta **Direct Selection Tool**, selecciona un icono, elimina un punto de la ruta para borrar todo el trazo, luego selecciona el resto y cópialo (Ctrl+C / Cmd+C).
  2. En After Effects, crea un nuevo **Shape Layer** (Layer > New > Shape Layer). Ábrelo, añade un **Path** (Add > Path), selecciona el path y pega (Ctrl+V / Cmd+V) los datos de la ruta.
  3. Escala con **Ctrl+T / Cmd+T**. Añade **Stroke** (Add > Stroke) y ajusta el ancho del trazo.
  4. Para animar, añade **Trim Paths** (Add > Trim Paths). Activa keyframes en **End**, pon el primer keyframe en **0%** y el segundo en **100%**.
- **Importación de escenas vectoriales complejas:**
  1. En Illustrator, selecciona todos los objetos, ve a **Object > Ungroup** varias veces hasta que todos los grupos y paths estén aislados bajo una sola capa.
  2. Con todas las capas seleccionadas, ve al menú del panel de capas (icono de hamburguesa) y elige **Release to Layers (Sequence)**. Esto separa cada objeto en su propia capa.
  3. Arrastra todas las capas fuera de la capa original. Guarda el archivo como **.ai** (File > Save As).
  4. En After Effects, importa ese archivo: **File > Import > File**, selecciona **Composition** como Import Kind, haz clic en OK.
  5. Dentro de la composición, selecciona las capas vectoriales y activa **Continuously Rasterize** (icono de rayo en la columna de switches). Así puedes escalar sin pérdida de calidad.
  6. Mueve los **Anchor Points** sobre los objetos y anima con valores de **Transform** (Position, Scale, Rotation).
- **Animación de un objeto siguiendo un path personalizado:**
  1. En Illustrator, con la **Direct Selection Tool**, selecciona un path completo y cópialo.
  2. En After Effects, crea un **Solid** (Layer > New > Solid), pégalo como máscara (selecciona el sólido, pega). Presiona **M** para ver la máscara, escala con **Ctrl+T / Cmd+T**.
  3. Copia la ruta de la máscara. Selecciona tu gráfico, presiona **P** para Position, y pega la ruta en el parámetro **Position**. Aparecerán keyframes de posición que puedes estirar para controlar la duración.
- **Animación de paths individuales dentro de un objeto vectorial:**
  1. En After Effects, haz clic derecho sobre la capa vectorial importada, ve a **Create > Create Shapes from Vector Layer**. Esto genera una **Shape Layer** con cada path y objeto como grupo independiente.
  2. Abre los grupos (ej. "Group 6", "Group 7" para manecillas de reloj), ve a **Transform: Group**, y añade keyframes o una expresión como `time*20` en el parámetro **Rotation** para animar.
- **Creación de una escena continua (seamless) con Motion Tile:**
  1. Precompón el fondo: selecciona la capa de fondo, ve a **Layer > Pre-compose**, nómbrala "scene background", haz clic en OK.
  2. Aplica **Effect > Stylize > Motion Tile**. Ajusta **Tile Center** (valor X) para desplazar el fondo infinitamente.
  3. Para ocultar el corte visible, ve a Illustrator, copia un objeto (ej. un árbol), crea un nuevo documento, pégalo y guárdalo como .ai.
  4. En After Effects, importa ese objeto como **Footage**. Activa **Continuously Rasterize** y escálalo para cubrir el corte.
  5. Crea un **Null Object** (Layer > New > Null Object). Selecciona el Null, presiona **P** para Position.
  6. En el efecto Motion Tile, Alt+clic en el stopwatch de **Tile Center**, y exprímelo al **Position** del Null (usando el pick whip).
  7. Selecciona el objeto vectorial (el árbol), presiona **P** para Position, y exprímelo también al **Position** del Null. Repite para otros objetos que oculten cortes adicionales.

## Reglas para el erudito
- Usa **Continuously Rasterize** (icono de rayo) en todas las capas vectoriales importadas de Illustrator antes de escalarlas, para mantener la calidad vectorial.
- Cuando copies paths desde Illustrator, asegúrate de que el path esté completamente limpio (sin puntos sobrantes) antes de pegarlo en After Effects.
- Para animar un objeto siguiendo un path, pega la ruta copiada directamente en el parámetro **Position** del objeto (no en un path de forma).
- Al usar **Motion Tile**, activa **Mirror Edges** solo si el patrón lo permite; de lo contrario, oculta los cortes con objetos vectoriales adicionales.
- Para animar manecillas o partes rotativas, usa la expresión `time*20` (ajusta el multiplicador según la velocidad deseada) en el parámetro **Rotation** del grupo correspondiente.

## Errores comunes que evita o menciona
- No olvides **desagrupar** (Ungroup) varias veces en Illustrator hasta que todos los objetos estén en paths individuales, de lo contrario **Release to Layers** no funcionará correctamente.
- No escalar capas vectoriales sin activar **Continuously Rasterize**; de lo contrario, la imagen se pixelará al agrandarla.
- No animar directamente la posición del fondo sin usar **Motion Tile** o precomposición, porque el fondo se acabará y mostrará un borde vacío.
- No pegar un path de Illustrator directamente en una máscara si lo que quieres es animar la posición de un objeto; debes copiar la ruta de la máscara y pegarla en el parámetro **Position** del objeto.

===== DESTILADO: kaP50qSKmWE.md =====
# after effects techniques to improve any motiongraphics project
**Fuente:** olly | https://youtu.be/kaP50qSKmWE

## Qué enseña
Tres técnicas de efectos visuales en After Effects para añadir capas de detalle y realismo a animaciones básicas: deformación por impacto con Liquify, sistema reactivo de luz y sombra con Radial Fast Blur y máscaras, y lentes reveladoras con Gaussian Blur y máscaras circulares.

## Técnicas accionables
- **Deformación por impacto (Liquify):**
  - Crear una capa de ajuste (Adjustment Layer) sobre el elemento a deformar.
  - Aplicar efecto **Liquify** (Efecto > Distorsionar > Licuar).
  - Seleccionar la herramienta Pincel (Brush Tool) dentro del efecto, ajustar tamaño y pincel.
  - Animar **Distortion Percentage**: keyframe en 100% en el fotograma exacto del impacto, keyframe en 0% un fotograma antes del impacto, y keyframe en 0% aproximadamente medio segundo después del impacto.
  - Suavizar la curva de velocidad (F9 o Easy Ease) en los keyframes.
  - Copiar esos keyframes para cada rebote. Reducir el porcentaje en cada rebote sucesivo: segundo rebote a 70%, tercer rebote a 20%.

- **Sistema reactivo de luz y sombra (Radial Fast Blur + Brightness + Máscara):**
  - Duplicar la composición del entorno.
  - Sobre la copia, aplicar efecto **Radial Fast Blur** (Efecto > Desenfocar > Desenfoque radial rápido).
  - En el efecto, seleccionar la propiedad **Center** y usar el Pick Whip para enlazarla a la propiedad **Position** del elemento en movimiento (ej. esfera).
  - Aumentar **Amount of Radial Blur** a 90.
  - Aplicar efecto **Fill** (Efecto > Generar > Relleno) sobre la misma capa para darle un color uniforme (ej. azul) → esto crea la sombra.
  - Duplicar la capa del entorno original.
  - Aplicar efecto **Brightness & Contrast** (Efecto > Corrección de color > Brillo y contraste) y subir **Brightness** → esto crea la luz.
  - Crear un sólido (Layer > New > Solid) y dibujar una máscara circular con pluma (Mask Feather) alta para que sea un círculo degradado.
  - Usar ese sólido como **Track Matte** (Alpha Matte) para la capa con brillo.
  - Parentear (Pick Whip) el sólido con la máscara a la posición del elemento en movimiento.

- **Lentes reveladoras (Gaussian Blur + Máscaras + Track Matte invertido):**
  - Crear una capa de ajuste (Adjustment Layer) sobre la composición.
  - Aplicar efecto **Gaussian Blur** (Efecto > Desenfocar > Desenfoque gaussiano) y subir la cantidad de desenfoque.
  - En la capa de ajuste, dibujar una máscara circular (herramienta Elipse Mask).
  - Crear una segunda capa de ajuste (o una forma circular) para el segundo lente.
  - Colocar la segunda capa como **Track Matte** (Alpha Matte) de la primera capa de ajuste.
  - Hacer clic en el icono **Invert Matte** (el icono T invertido junto al Track Matte) para que el desenfoque solo esté fuera del segundo círculo.
  - Animar **Position** y **Scale** de ambos lentes para que se muevan y escalen.
  - Añadir un **Null Object** (Layer > New > Null Object) en el centro de la composición.
  - Animar **Rotation** del Null Object (ej. varias vueltas) y parentear ambos lentes al Null.
  - Desfasar los keyframes entre los dos lentes: seleccionar todos los keyframes del primer lente y moverlos 5-10 fotogramas en la línea de tiempo respecto al segundo.
  - Opcional: aplicar efecto **Drop Shadow** (Efecto > Perspectiva > Sombra paralela) con valores suaves para separar visualmente los lentes.

## Reglas para el erudito (imperativas y verificables)
- Usa Liquify solo en el fotograma exacto del impacto; keyframe en 0% antes y después.
- Reduce el porcentaje de distorsión en cada rebote sucesivo (100% → 70% → 20%) para simular pérdida de energía cinética.
- En Radial Fast Blur, usa el Pick Whip del Center directamente a la propiedad Position del elemento, no a la capa completa.
- Usa un sólido con máscara circular y pluma alta (Mask Feather) como matte para la luz; no uses una forma sólida sin degradado.
- Para las lentes reveladoras, el segundo círculo debe tener el Track Matte en Alpha Matte e Invertido para cancelar el desenfoque del primero.
- Desfasa los keyframes de los dos lentes entre 5 y 10 fotogramas para crear dinamismo.
- Nunca uses valores de Drop Shadow altos en los lentes; mantenlo muy ligero para no opacar el efecto.

## Errores comunes que evita o menciona
- No usar squash and stretch cuando se busca un efecto más sutil y menos caricaturesco; Liquify es una alternativa más realista.
- Olvidar reducir el porcentaje de distorsión en rebotes sucesivos, lo que rompe la ilusión de pérdida de energía.
- No parentear el centro del Radial Fast Blur a la posición del elemento, lo que hace que el desenfoque no siga al objeto en movimiento.
- No invertir el Track Matte en las lentes reveladoras, lo que impide que el segundo círculo cancele el desenfoque del primero.
- No desfasar los keyframes entre los dos lentes, resultando en un movimiento sincronizado y menos dinámico.