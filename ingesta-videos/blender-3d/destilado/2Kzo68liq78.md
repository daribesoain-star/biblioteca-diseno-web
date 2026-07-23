# How to make Game Models (For Beginners) from Start to Finish (blender)
**Fuente:** Jens | https://youtu.be/2Kzo68liq78

## Qué enseña (2-3 líneas)
Tutorial para crear modelos 3D low poly para videojuegos desde cero en Blender, cubriendo modelado modular, UV unwrapping, texturizado con atlas de colores y texturas seamless, y exportación a motores de juego. Enfocado en flujo de trabajo eficiente para creadores solitarios o equipos pequeños.

## Técnicas accionables
- **Navegación básica:** Mantén el botón central del mouse para orbitar, scroll para zoom, clic derecho para seleccionar objetos (o clic izquierdo si usas configuración antigua).
- **Selección múltiple:** Presiona **B** y arrastra con clic izquierdo para selección cuadrada, o **C** para selección circular.
- **Eliminar objetos:** Selecciona y presiona **X**.
- **Añadir objetos:** Presiona **Shift+A** y elige el tipo de malla.
- **Modos:** Usa **Tab** para alternar entre Object Mode y Edit Mode.
- **Transformaciones en Edit Mode:** **G** para mover (grab), **R** para rotar, **S** para escalar.
- **Herramientas clave:** **E** para extruir, **I** para inset, **Ctrl+R** para loop cut, **D** para duplicar.
- **Snapping para modular:** Activa snapping magnético para alinear piezas al grid; coloca el origen del objeto en la base (pie del modelo) alineado al grid.
- **Modelado de pared modular:** Crea un cubo, escala en eje Y, añade detalles con loop cuts y extrusión. Para esquinas: duplica, corta a la mitad, rota y fusiona vértices.
- **Ventanas:** Usa loop cuts para definir el hueco, elimina caras, selecciona bordes y presiona **F** para bridge edge loops. Duplica el borde interior (**Shift+D**), extruye (**E**), escala en X y Z (**S**), luego escala en Y para el marco.
- **Puertas:** Mismo método que ventanas, pero deja el hueco abierto y modela la puerta como objeto separado.
- **Subdivision Surface:** Añade el modificador Subdivision Surface a objetos como refrigeradores, luego añade edge loops con **Ctrl+R** para controlar la curvatura.
- **Array Modifier:** Añade el modificador Array para crear copias en línea (ej. perillas de horno).
- **Mirror Modifier:** Coloca el origen en el centro del objeto, elimina la mitad de la malla en Edit Mode, añade el modificador Mirror para modelar simétricamente.
- **Proportional Editing:** Actívalo con **O** en Edit Mode; afecta vértices circundantes al transformar. Útil para deformar esferas UV al hacer árboles.
- **Suavizado de caras curvas:** Selecciona el anillo de caras curvas (ej. cilindro), ve a Mesh > Faces > Shade Smooth; las caras planas déjalas como Shade Flat.
- **Árbol low poly (hojas):** Crea un Ico Sphere, elimina la mitad inferior en Edit Mode, ajusta la punta con Proportional Editing.
- **Exportación FBX:** Mueve el origen al centro de la escena (Object > Set Origin > Origin to 3D Cursor), exporta como FBX marcando "Selected Objects" y "Apply Scalings".
- **Corrección de normales:** En Edit Mode, selecciona todo (**A**) y ve a Mesh > Normals > Calculate Outside.
- **UV unwrapping básico (atlas):** En el UV Editing tab, selecciona caras, presiona **U** > Project from View (para gradientes) o ajusta manualmente el UV a un cuadro del atlas.
- **UV para texturas seamless:** Selecciona caras frontales, vista frontal (**1** en numpad), presiona **U** > Project from View. Para lados y techo, unwrap individualmente y escala en un solo eje para alinear.
- **Materiales múltiples:** Crea dos materiales en el Shading tab, selecciona caras en Edit Mode, asígnalas al material deseado en el panel Material.
- **Creación de atlas de colores:** En GIMP/Photoshop: crea imagen cuadrada, añade patrón de tablero de ajedrez, pinta columnas alternas con colores, aplica degradados verticales seleccionando con la varita mágica.
- **Material Maker (texturas seamless):** Usa nodos: Pattern (ladrillos), Step (separar ladrillo de mortero), Colorize (randomizar color ladrillo), Uniform (color mortero), Blend (mezclar).

## Reglas para el erudito
- Usa **Shift+A** para añadir cualquier objeto, no solo cubos.
- Usa **Ctrl+R** para loop cuts precisos antes de extruir o insets.
- Usa **E** para extruir caras, **I** para insets, **D** para duplicar elementos.
- Usa el modificador Mirror cuando el objeto sea simétrico; coloca el origen en el centro exacto antes de aplicarlo.
- Usa el modificador Array para elementos repetitivos lineales (perillas, rejillas).
- Usa Subdivision Surface + edge loops para curvas suaves en modelos low poly.
- Usa Proportional Editing (**O**) para deformaciones orgánicas (árboles, rocas).
- Usa Shade Smooth solo en caras curvas; mantén Shade Flat en caras planas para el estilo low poly.
- Usa snapping al grid para piezas modulares; alinea el origen en la base del objeto.
- Usa atlas de colores con degradados para texturizado rápido de múltiples objetos con una sola textura.
- Usa texturas seamless para patrones repetitivos (ladrillos, pisos) en assets modulares.
- Asigna dos materiales diferentes al mismo objeto si combinas atlas y seamless.
- Exporta como FBX con "Selected Objects" y "Apply Scalings" marcados.
- Calcula normales hacia afuera (Calculate Outside) si ves caras internas en el motor de juego.

## Errores comunes / gotchas
- **Olvidar eliminar el cubo por defecto:** Siempre elimínalo al empezar (seleccionar + **X**).
- **No alinear orígenes al grid:** Las piezas modulares no encajarán en el motor de juego; coloca el origen en la base del objeto.
- **Z-fighting por solapamiento exacto:** Si dos caras ocupan el mismo espacio, parpadean en el motor. Solución: desplaza ligeramente una pieza (ej. pared interior más baja que exterior) o tapa con otro objeto.
- **Normales invertidas:** Si ves el interior del modelo en el motor, selecciona todo y usa Calculate Outside.
- **Caras de un solo lado:** En motores como Unity, las caras solo se renderizan por un lado. Para árboles vistos desde abajo: duplica las caras y voltea normales (aumenta el conteo de triángulos) o usa la opción "Two Sided" en el material (disponible en Unreal, no en Unity por defecto).
- **UV mal alineado en texturas seamless:** Asegúrate de que los bordes del UV coincidan perfectamente con los bordes de la textura; escala en un solo eje para ajustar.
- **No usar canal UV separado para lightmaps:** Si el motor necesita lightmaps, crea un segundo canal UV y genera la textura de luz para ese canal.
- **Subdivision Surface sin edge loops de control:** El modelo se deformará de forma no deseada; añade loop cuts con **Ctrl+R** cerca de los bordes que quieras mantener afilados.
- **Escalar en Object Mode vs Edit Mode:** Para modelado modular, escala en Edit Mode para mantener las dimensiones exactas del grid.