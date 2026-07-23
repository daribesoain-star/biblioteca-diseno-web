# The ONLY Geometry Nodes Tutorial You'll Ever Need!
**Fuente:** SharpWind | https://youtu.be/aTeLyeVO0Dc

## Qué enseña (2-3 líneas)
Tutorial completo para crear un generador procedural de partituras musicales en Blender usando Geometry Nodes. Cubre desde la lógica básica de nodos hasta técnicas avanzadas como captura de atributos, manipulación vectorial y exposición de parámetros para animación. El resultado es un sistema paramétrico que adapta líneas y notas a una curva Bézier con control total sobre espaciado, grosor, trims y aleatoriedad.

## Técnicas accionables
- Crear un nuevo árbol de Geometry Nodes: seleccionar cualquier malla, curva o texto → abrir ventana Geometry Nodes → botón **New**
- Añadir nodo **Transform Geometry** para mover/rotar/escalar geometría
- Usar **Join Geometry** para combinar múltiples salidas de geometría
- Añadir nodo **Value** para crear un valor numérico controlable
- Usar **Combine XYZ** para convertir valores X, Y, Z separados en un solo vector
- Añadir nodo **Math** → operación **Multiply** para escalar valores
- Exponer parámetros: arrastrar el conector de un valor hacia el socket abierto del nodo **Group Input**
- Renombrar sockets del Group Input: seleccionar nodo Group Input → **N** para abrir panel lateral → pestaña **Group** → doble clic en el nombre
- Configurar límites de parámetros expuestos: en el panel Group, ajustar **Min** y **Max**
- Añadir nodo **Curve Circle** como perfil para dar grosor a curvas
- Usar **Curve to Mesh** para convertir curvas en malla (conectando perfil y curva principal)
- Añadir **Merge by Distance** para colapsar vértices duplicados (umbral de distancia)
- Convertir malla de vuelta a curva con **Mesh to Curve**
- Agrupar nodos: seleccionar nodos → **Ctrl+J** → asignar color personalizado
- Añadir **Resample Curve** → cambiar modo a **Length** para puntos equidistantes
- Usar **Trim Curve** → modo **Factor** (rango 0-1, funciona con cualquier escala)
- Añadir **Set Curve Radius** antes de convertir a malla para controlar grosor variable
- Usar **Spline Parameter** → salida **Factor** para obtener valor progresivo a lo largo de la curva (0=inicio, 1=final)
- Añadir **RGB Curves** para remapear visualmente el factor (crear punto medio en 1, extremos en 0 para efecto de taper)
- Activar **Node Wrangler**: Editar → Preferencias → Complementos → buscar "Node Wrangler" → activar
- Previsualizar nodo: **Ctrl+Shift+clic** en el nodo (requiere Node Wrangler)
- Añadir **Instance on Points** para colocar instancias en cada punto de una curva
- Usar **Collection Info** → activar **Separate Children**, **Pick Instance**, **Reset Children**
- Añadir **Set Position** antes de Instance on Points para desplazar puntos antes de instanciar
- Usar **Random Value** → modo **Vector** para aleatorizar posición en X, Y, Z
- Añadir **Capture Attribute** para almacenar atributos (como tilt y tangent) antes de modificarlos
- Conectar **Curve Tilt** y **Curve Tangent** al Capture Attribute
- Usar **Vector Rotate** para alinear vectores: conectar random value como vector, tangent como axis, tilt como angle
- Añadir **Align Rotation to Vector** → axis **X**, pivot **Auto** para orientar instancias a la tangente
- Duplicar Align Rotation to Vector → axis **Z**, pivot **Y** para incorporar tilt
- Usar **Store Named Attribute** para guardar un atributo (ej. factor) con nombre personalizado
- Recuperar atributo con **Named Attribute** → mismo nombre
- Añadir **Vector Math** → **Distance** para calcular distancia entre dos valores
- Usar **Map Range** para remapear valores (From Min/Max a To Min/Max)
- Añadir **Set Material** al final de cada cadena de geometría para asignar materiales
- Crear paneles en parámetros expuestos: icono de carpetas en el panel Group → **Add Panel** → arrastrar parámetros dentro
- Cambiar tipo de socket a **Single Value** para que no espere atributos (seleccionar en lista → marcar Single Value)

## Reglas para el erudito (imperativas, "usa X cuando Y")
- Usa **Resample Curve** → modo **Length** cuando necesites puntos equidistantes en una curva, independientemente de la posición de los manejadores Bézier
- Usa **Trim Curve** → modo **Factor** cuando quieras recortar curvas de forma que funcione con cualquier escala (porcentaje 0-1)
- Usa **Merge by Distance** después de convertir círculos de perfil a malla cuando los vértices estén colapsados en el mismo punto (triángulos de radio 0)
- Usa **Capture Attribute** antes de modificar geometría cuando necesites valores originales (como tangent o tilt) después de transformaciones
- Usa **Store Named Attribute** cuando quieras acceder a un valor desde cualquier parte de Blender (Shader Editor, otros nodos), no solo dentro del árbol actual
- Usa **Set Curve Radius** antes de **Curve to Mesh** cuando quieras grosor variable a lo largo de la curva (no funciona en malla)
- Usa **Map Range** con valores invertidos (From Min 0→1, To Min 1→0) cuando necesites invertir una relación lineal
- Usa **Clamp** en nodos Math cuando multipliques valores que no deben exceder 1 (para evitar que notas se agranden en zonas de superposición)
- Usa **Separate Children** + **Pick Instance** + **Reset Children** en **Collection Info** cuando instancies objetos individuales de una colección
- Usa **Align Rotation to Vector** con axis **X** primero para orientar a tangent, luego axis **Z** con pivot **Y** para incorporar tilt
- Usa **Node Wrangler** (Ctrl+Shift+clic) para previsualizar nodos específicos sin desconectar el árbol completo

## Errores comunes / gotchas
- **No confundir Group Input con la geometría original**: el nodo Group Input puede recibir cualquier geometría, no necesariamente la del objeto que tiene el modificador
- **Transform Geometry mueve en XYZ global**: si solo quieres mover en un eje, usa Combine XYZ con los otros ejes en 0
- **Curve Circle con radio 0 crea triángulos invisibles**: aunque no se vean, existen 3 vértices en el mismo punto; usar Merge by Distance para colapsarlos
- **No se puede trimar una malla**: las mallas no tienen dirección inicio/fin; convertir a curva con Mesh to Curve antes de aplicar Trim Curve
- **Set Curve Radius no funciona en mallas**: aplicar siempre antes de Curva a Malla
- **Factor de Spline Parameter es global por spline**: si hay múltiples splines, cada uno tiene su propio factor 0-1
- **Instance on Points sin orientación**: por defecto las instancias no siguen la curva; usar Align Rotation to Vector con tangent y tilt
- **Random Value en Z se aplica en global**: si la curva tiene tilt, el desplazamiento Z no sigue la orientación local; usar Vector Rotate con tangent y tilt capturados
- **Multiplicar valores de Map Range sin clamp**: si ambos mapas tienen valores >1, la multiplicación los agranda en lugar de mantenerlos; usar clamp para limitar a 1
- **Materiales no se asignan automáticamente**: usar Set Material al final de cada cadena de geometría (líneas y notas por separado)
- **Parámetros expuestos como atributos por defecto**: si no necesitas que acepten atributos, marcar **Single Value** en el panel Group para simplificar la interfaz