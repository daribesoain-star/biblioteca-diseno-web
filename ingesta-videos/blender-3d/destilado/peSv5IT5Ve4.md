# ABSOLUTE Beginner Basics.. Blender For Noobs 2025
**Fuente:** RoBuilder | https://youtu.be/peSv5IT5Ve4

## Qué enseña (2-3 líneas)
Tutorial para principiantes absolutos que nunca abrieron Blender, cubriendo navegación 3D, modos Object y Edit, selección de vértices/aristas/caras, y los atajos esenciales para modelar un primer objeto (un árbol de pino) usando extrusión, escala, rotación, loop cuts y bevel.

## Técnicas accionables
- **Navegación:** Rueda del mouse (scroll) para zoom in/out. Click + arrastrar rueda para orbitar alrededor del objeto. **Shift + click rueda** para paneo (desplazar escena).
- **Vistas con teclado numérico:** **1** para frente ortográfico, **3** para derecha ortográfico, **7** para superior, **9** para inferior.
- **Vistas sin teclado numérico:** **Alt + click rueda** y arrastrar en la dirección deseada para snap a vistas ortográficas.
- **Modos:** En el menú superior de modos, usar **Object Mode** para mover el mesh completo y **Edit Mode** (o presionar **Tab** para alternar) para editar geometría internamente.
- **Selección en Edit Mode:** Tres modos de selección: vértices (puntos), aristas (líneas), caras (polígonos). Hacer clic en el ícono correspondiente o usar atajos: **1** para vértices, **2** para aristas, **3** para caras.
- **Seleccionar todo:** **A** para seleccionar todos los elementos del mesh activo.
- **Mover (Grab):** **G** para mover (grab) la selección. Combinar con eje: **G + X**, **G + Y**, **G + Z** para restringir a un eje.
- **Escalar:** **S** para escalar. Combinar con eje: **S + X**, **S + Y**, **S + Z**.
- **Rotar:** **R** para rotar. Combinar con eje: **R + X**, **R + Y**, **R + Z**.
- **Extruir:** **E** para extruir caras (funciona mejor en caras que en vértices/aristas). Combinar con eje: **E + Z** para extruir verticalmente.
- **Loop Cut:** **Ctrl + R** para añadir loop cuts. Usar scroll del mouse para aumentar el número de cortes antes de hacer clic para confirmar.
- **Bevel:** Seleccionar aristas (modo aristas, **2**), luego **Ctrl + B** para biselar. Usar scroll del mouse para añadir más segmentos y suavizar.
- **Shade Smooth:** Click derecho sobre el objeto y seleccionar **Shade Smooth** para suavizar visualmente. Luego activar **Auto Smooth** en el panel de propiedades del objeto (pestaña verde triángulo) para controlar el ángulo de suavizado.
- **Añadir objetos:** **Shift + A** para abrir el menú Add. Navegar a **Mesh** para añadir: Plane, Cube, Circle, UV Sphere, Icosphere, Cylinder, Cone, Torus.
- **Ajustar número de vértices al añadir:** Antes de hacer clic para colocar el objeto, usar el panel desplegable en la esquina inferior izquierda (o presionar **F9**) para modificar parámetros como **Vertices** (ej. 8 para cilindro bajo poligonal).
- **Duplicar:** **Shift + D** para duplicar la selección. Luego mover con el mouse o restringir eje (ej. **Shift + D**, luego **G + Z**).
- **Seleccionar arista completa (edge loop):** **Alt + clic** en una arista para seleccionar todo el loop de aristas alrededor del mesh.
- **Seleccionar pieza conectada:** **L** para seleccionar todo el elemento conectado bajo el cursor (útil para aislar partes del mesh).

## Reglas para el erudito (imperativas, "usa X cuando Y")
- Usa **Tab** para alternar rápidamente entre Object Mode y Edit Mode.
- Usa **E** principalmente en caras, no en vértices o aristas, para extruir limpiamente.
- Usa **Ctrl + R** cuando necesites más geometría para deformar o detallar una zona específica.
- Usa **Ctrl + B** en aristas seleccionadas para suavizar bordes duros, pero prefiere **Shade Smooth + Auto Smooth** para bordes que no requieren geometría extra (micro bevels).
- Usa **Shift + A > Mesh** para añadir primitivas base (cilindro, círculo, etc.) al escenario.
- Usa **Shift + D** para duplicar partes del modelo y ahorrar tiempo en repeticiones.
- Usa **L** para seleccionar rápidamente una pieza completa del mesh sin seleccionar manualmente cada cara/arista.
- Usa **R + Z** (o cualquier eje) para rotar exclusivamente en ese eje y evitar rotaciones descontroladas.
- Usa **E + Z** cuando extruyas un círculo o forma plana para que la extrusión vaya hacia arriba y no en todas direcciones.

## Errores comunes / gotchas
- **Extruir todo el mesh a la vez:** Presionar **E** con todo seleccionado (A) no funciona bien; solo extruye caras individuales o grupos seleccionados.
- **Olvidar restringir eje al extruir/rotar/escalar:** Sin especificar eje (X, Y, Z), la transformación sigue la orientación de la cámara, lo que puede dar resultados inesperados.
- **Bevel excesivo:** Añadir demasiados segmentos con bevel (scroll) puede saturar la geometría innecesariamente; usar **Shade Smooth + Auto Smooth** como alternativa ligera.
- **No ajustar vértices al añadir objetos:** Si añades un cilindro o círculo sin reducir el número de vértices (ej. 32 por defecto), obtienes geometría densa para modelos low-poly.
- **Confundir modos de selección:** Estar en modo vértices cuando quieres seleccionar caras, o viceversa, impide seleccionar correctamente.
- **Shade Smooth sin Auto Smooth:** Activar solo Shade Smooth suaviza todo el mesh, incluyendo bordes que deberían ser duros; activar Auto Smooth con un ángulo adecuado (ej. 30°) corrige esto.