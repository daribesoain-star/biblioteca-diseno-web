# Apple Motion Whiteboard Video Tutorial
**Fuente:** jennjagerpro | https://youtu.be/KN6XHLnpqL4

## Qué enseña (2-3 líneas)
Tutorial completo para crear animaciones de pizarra blanca (whiteboard animation) en Apple Motion, cubriendo tres niveles de dificultad: medio, rápido (down and dirty) y avanzado para imágenes detalladas. Explica cómo simular que una mano dibuja trazos sobre una ilustración usando la herramienta BZA, máscaras de imagen y comportamientos de escritura.

## Lecciones accionables

- **Preparación del fondo:** Ve a la pestaña *Generators*, selecciona *Color Solid*, arrastra al panel de proyecto. En el *Inspector*, cambia el color a blanco puro.
- **Trazado con BZA (nivel medio):** Selecciona la herramienta *BZA* (Bezier) desde el menú desplegable central. Haz clic para crear puntos de edición en el orden en que se dibujaría la ilustración. Incluye puntos fuera del dibujo para que la mano siga una trayectoria de entrada. Para curvas, haz clic derecho sobre un punto de edición → *Make Smooth* y ajusta con los handles. Para añadir puntos, haz clic derecho → *Add Point*.
- **Ajuste de grosor de línea BZA:** En el *Inspector*, reduce el *Width* al mínimo posible que aún cubra todas las líneas negras del dibujo original.
- **Aplicar Write On:** Selecciona la capa BZA en el panel de proyecto. Ve a *Behaviors* → *Shape* → *Write On*. La línea BZA desaparecerá y aparecerá una barra púrpura en la línea de tiempo. Arrastra el borde de la barra para acortar la duración y acelerar el dibujo.
- **Máscara de imagen:** Selecciona la imagen de la ilustración (ej. avión de papel) en el panel de proyecto. Ve a *Object* → *Add Image Mask*. En el *Inspector*, en *Mask Source*, arrastra la capa BZA desde el panel de proyecto. La ilustración se ocultará y aparecerá progresivamente al reproducir.
- **Configuración de la mano:** Arrastra la imagen de la mano al lienzo. Cambia la herramienta a *Anchor Point* (menú *Transform* o clic derecho). Usa las flechas del teclado para mover el punto azul hasta la punta del marcador/lápiz.
- **Motion Path para la mano:** Selecciona la mano en el panel de proyecto. Ve a *Behaviors* → *Basic Motion* → *Motion Path*. En el *Inspector*, cambia *Path Shape* de *Open Spline* a *Geometry*. Aparecerá un cuadro *Shape Source*; arrastra la misma capa BZA desde el panel de proyecto. Ajusta la duración de la barra *Motion Path* en la línea de tiempo para que coincida con la duración del *Write On*.
- **Extender trayectoria fuera del encuadre:** Activa la visibilidad de la capa BZA. Haz clic derecho en el lienzo → *Edit Points*. Localiza el último punto clave. Haz clic derecho debajo de ese punto → *Add Point*. Arrastra el punto original hacia abajo fuera del encuadre. Reposiciona el nuevo punto para que la mano salga de la pantalla. Desactiva la capa BZA.
- **Técnica rápida (down and dirty):** Con la herramienta *BZA*, dibuja un patrón en zigzag sobre la imagen (ej. un logo). Mantén la línea ancha. Aplica *Write On*, *Image Mask* y *Motion Path* siguiendo los mismos pasos. Para sombreados rápidos, usa una velocidad de animación más rápida.
- **Técnica avanzada para líneas de grosor variable:**
    1. Crea una primera capa BZA cubriendo solo las líneas finas del dibujo. Ajusta el *Width* a un valor pequeño (ej. 12 puntos). Aplica *Write On*.
    2. Crea una segunda capa BZA cubriendo las líneas gruesas (alas, cola, pico, ojo). Ajusta el *Width* más ancho. En la línea de tiempo, coloca esta segunda BZA justo después de que termine el *Write On* de la primera. Aplica *Write On* a la segunda BZA.
    3. En el panel de proyecto, selecciona ambas capas BZA (mantén *Command*), haz clic derecho → *Group*. Esto es crítico.
    4. Selecciona la imagen principal (ej. gaviota). Ve a *Object* → *Add Image Mask*. En *Mask Source*, arrastra el grupo entero de BZAs.
    5. Para la mano: arrastra la imagen de la mano **fuera del grupo** (por encima). Configura el *Anchor Point*.
    6. Aplica *Motion Path* a la mano, cambia a *Geometry*, y arrastra **solo la primera BZA** (la de líneas finas) al *Shape Source*. Ajusta duración.
    7. Coloca el *playhead* justo después de que termine el primer *Motion Path*. Selecciona la mano. Ve a *Edit* → *Split*. Se crearán dos versiones de la mano en la línea de tiempo.
    8. Selecciona la segunda versión de la mano. Arrastra el *Motion Path* adjunto debajo de esta nueva mano (para alinearlos). Selecciona ese *Motion Path*, ve al *Inspector* y arrastra la **segunda BZA** (líneas gruesas) al *Shape Source*. Ajusta la duración para que coincida con el *Write On* de la segunda BZA.

## Reglas para agentes

- Usa *BZA* tool para crear la trayectoria de dibujo, no otra herramienta de dibujo.
- Ajusta el *Width* de la línea BZA al mínimo que cubra completamente la ilustración original.
- Aplica *Write On* behavior a la capa BZA, no a la imagen.
- Usa *Image Mask* en la ilustración, con la BZA como *Mask Source*.
- Configura el *Anchor Point* de la mano en la punta del marcador/lápiz antes de añadir *Motion Path*.
- Cambia *Path Shape* a *Geometry* en el *Motion Path* para usar una BZA como trayectoria.
- Empareja la duración del *Motion Path* con la duración del *Write On* correspondiente.
- Para imágenes con grosores de línea variables, agrupa todas las capas BZA antes de usarlas como *Mask Source*.
- Cuando uses múltiples BZAs para la mano, usa *Split* en la línea de tiempo y asigna cada *Motion Path* a su BZA correspondiente.
- Coloca la mano **fuera del grupo** de BZAs cuando trabajes con múltiples capas.

## Errores comunes que evita o menciona

- **No usar *Anchor Point* en la punta del marcador:** la mano no seguirá correctamente la trayectoria de dibujo.
- **Dejar la mano en el lienzo al finalizar:** la mano se queda congelada en el último punto. Solución: extender la trayectoria BZA fuera del encuadre añadiendo puntos adicionales.
- **Intentar arrastrar un grupo de BZAs al *Shape Source* del *Motion Path*:** no funciona en Apple Motion. Solución: usar *Split* en la línea de tiempo y asignar cada BZA individualmente.
- **No agrupar las BZAs antes de aplicarlas como *Mask Source* en imágenes con múltiples grosores:** la máscara no funcionará correctamente.
- **Dejar la línea BZA demasiado gruesa:** cubrirá detalles finos o se verá artificial. Ajustar al mínimo grosor que cubra las líneas originales.
- **Sincronización incorrecta de duraciones:** la mano se moverá más lento o más rápido que el dibujo. Ajustar las barras *Write On* y *Motion Path* para que tengan la misma duración.