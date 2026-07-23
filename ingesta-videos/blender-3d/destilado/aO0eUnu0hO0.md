# Blender Tutorial: Geometry Nodes for Beginners - Part 1
**Fuente:** Blender Guru | https://youtu.be/aO0eUnu0hO0

## Qué enseña (2-3 líneas)
Introducción a Geometry Nodes como sistema de post-procesamiento de mallas basado en nodos. Se explica cómo crear un sistema de dispersión de objetos (cristales de azúcar) sobre un cubo usando nodos de distribución de puntos, instancias y valores aleatorios, sentando las bases para entender el flujo de trabajo de nodos en Blender.

## Técnicas accionables
- Activa la pestaña **Geometry Nodes** en la barra superior para abrir el editor de nodos y la hoja de cálculo (spreadsheet).
- Haz clic en **New** para crear un sistema Geometry Nodes aplicado al objeto seleccionado; se añade automáticamente el modificador **Geometry Nodes** en el stack de modificadores.
- Para añadir nodos, usa **Shift+A** y busca por nombre o navega por los menús (ej. **Points > Distribute Points on Faces**).
- Conecta nodos arrastrando desde las salidas (círculos de color) a las entradas del mismo color (verde a verde, púrpura a púrpura).
- Usa el nodo **Join Geometry** (Shift+A > Search > "Join Geometry") para combinar múltiples entradas de geometría en una sola salida; su entrada es extensible (puedes añadir más conexiones).
- Para que los puntos dispersos sean visibles en render, añade el nodo **Instance on Points** después de **Distribute Points on Faces** y conecta un objeto en su entrada **Instance**.
- Crea un objeto separado (ej. un cubo escalado a 0.1 con **S** > **0.1** > **Enter**) y renómbralo (ej. "sugar crystal"). Arrástralo desde el Outliner al editor de nodos para generar automáticamente un nodo **Object Info** con ese objeto referenciado.
- Aplica la escala del objeto instanciado con **Ctrl+A** > **Scale** para que las transformaciones se reflejen correctamente en Geometry Nodes.
- Para rotación aleatoria por punto, usa el nodo **Random Value** (Shift+A > Utilities > Random Value) en modo **Vector** y conéctalo a **Rotation** del nodo **Instance on Points**.
- Para escala aleatoria manteniendo la forma cúbica, usa **Random Value** en modo **Float** y conéctalo a **Scale** del nodo **Instance on Points**; evita que el mínimo sea 0 para que no aparezcan instancias invisibles.
- Para valores de rotación en radianes: usa **2*pi** o **tau** (τ) para una rotación completa de 360 grados; pi (π) equivale a 180 grados.
- Para fijar el editor de nodos a un objeto específico, activa el icono de **pin** (alfiler) en la cabecera del editor de nodos; así no desaparece al seleccionar otro objeto.

## Reglas para el erudito (imperativas, "usa X cuando Y")
- Usa **Join Geometry** cuando necesites combinar la geometría original con los puntos instanciados en una sola salida.
- Usa **Random Value** en modo **Vector** para rotaciones cuando quieras valores independientes en cada eje (X, Y, Z).
- Usa **Random Value** en modo **Float** para escala cuando quieras mantener la proporción del objeto (que siga siendo un cubo, no un prisma rectangular).
- Usa **Ctrl+A** > **Scale** en el objeto instanciado antes de referenciarlo en Geometry Nodes para evitar escalas incorrectas.
- Usa el pin en el editor de nodos cuando trabajes con múltiples objetos y no quieras perder la vista del setup actual.

## Errores comunes / gotchas
- Si conectas un **Random Value** en modo **Float** a la entrada **Rotation**, obtienes el mismo valor aleatorio para los tres ejes, generando un patrón repetitivo en lugar de rotaciones verdaderamente aleatorias.
- Si no aplicas la escala (**Ctrl+A** > **Scale**) en el objeto instanciado, las instancias aparecen con el tamaño original sin escalar (ej. un cubo de tamaño 1 en lugar de 0.1).
- Si el mínimo del **Random Value** para escala es 0, algunas instancias tendrán escala 0 y serán invisibles pero seguirán renderizando, desperdiciando recursos.
- Los valores de rotación en Geometry Nodes están en radianes, no en grados: 1 radián ≈ 57.29 grados; para 360° usa **tau** (τ = 2π ≈ 6.283).
- Al seleccionar otro objeto (cámara, luz, etc.), el editor de nodos se vacía a menos que actives el pin en la cabecera.