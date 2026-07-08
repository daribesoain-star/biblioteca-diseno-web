# 3D en DaVinci Resolve: ¡Iníciate GRATIS!
**Fuente:** mundoaudiovisual | https://youtu.be/9exZhc6Zxp0

## Qué enseña
Introducción al módulo Fusion de DaVinci Resolve para crear entornos 3D. Explica cómo navegar en el espacio tridimensional, construir una habitación 3D con planos y texturas, y preparar una escena básica para trabajar con iluminación y sombras en capítulos posteriores.

## Lecciones accionables
- **Navegación en entorno 3D (Fusion):**
  - Con Magic Mouse en Mac: mover sin teclas para desplazamiento lateral/vertical.
  - Presionar **Shift** + mover mouse: rotar la vista en todos los ejes.
  - Presionar **Command** + mover mouse: avanzar y retroceder (zoom).
  - Cambiar vistas: hacer clic derecho en la ventana del visor → seleccionar **Perspective**, **Front**, **Top**, **Left**, etc.
- **Crear un plano 3D:**
  - Ir al módulo **Fusion** → cerrar el Inspector para ampliar vista.
  - En la barra de acceso rápido, usar el icono de **3D Plane** (plano 3D).
  - Arrastrar un clip de imagen/video desde el **Media Pool** al nodo del plano para aplicar textura.
- **Construir una habitación 3D (escenario):**
  - Crear un **3D Merge** (icono de fusión 3D) para combinar objetos.
  - Para cada pared/suelo/techo:
    1. Copiar y pegar el nodo del plano base.
    2. Renombrar el nodo (ej: "background", "right wall", "left wall", "floor", "ceiling").
    3. Conectar el plano al **3D Merge**.
    4. Seleccionar el plano → en el **Inspector**, ajustar **Transform**:
       - Rotación en **Y** a 90° para paredes laterales.
       - Rotación en **X** a 90° para suelo/techo.
       - Posición en **Z** (negativo para fondo, positivo para frente).
       - Escala para ajustar tamaño.
  - Para la pared izquierda: copiar la derecha, pegar, y en **Transform** → **Position Z** poner valor negativo (ej: -0.49).
- **Agrupar objetos 3D:**
  - Seleccionar todos los nodos de la habitación → clic derecho → **Create Group** → renombrar (ej: "room").
- **Manipular objetos 3D con controles del visor:**
  - Botón de **flechas** (mover): arrastrar en eje X (rojo), Y (verde), Z (azul).
  - Botón de **rotación** (círculo): arrastrar para rotar en cualquier eje.
  - Botón de **escala** (cuadro): arrastrar para escalar uniformemente.
- **Renderizar a 2D:**
  - Agregar nodo **3D Renderer** (icono de render 3D) → conectar al **Media Out**.
  - Sin cámara, la vista será frontal por defecto.

## Reglas para agentes
- Usa **Shift + mouse** para rotar la vista 3D en Fusion, nunca uses solo el mouse sin tecla para rotar.
- Usa **Command + mouse** para hacer zoom adelante/atrás en el visor 3D.
- Cuando crees una pared lateral, rota el plano en **Y a 90°**; para suelo/techo, rota en **X a 90°**.
- Para duplicar una pared al lado opuesto, copia el nodo y cambia el valor de **Position Z** a negativo del original.
- Siempre conecta los planos 3D a un **3D Merge** antes de agruparlos o renderizarlos.
- Para ver el resultado final en el timeline de edición, conecta el **3D Renderer** al **Media Out**.
- Nunca intentes renderizar directamente un objeto 3D sin pasar por el **3D Renderer**; no se verá en 2D.

## Errores comunes que evita o menciona
- **No confundir la vista en perspectiva con la vista renderizada:** el visor 3D muestra la escena, pero no aparece en el video hasta que se añade el **3D Renderer** y se conecta al **Media Out**.
- **Olvidar crear una cámara:** sin cámara, la renderización solo muestra la vista frontal; para ángulos personalizados se necesita un nodo **Camera**.
- **No renombrar nodos:** al copiar y pegar planos, es fácil perderse; renombrar cada nodo (ej: "right wall", "floor") evita confusiones.
- **Escalar texturas incorrectamente:** si la textura no encaja, se debe ajustar en el archivo original (Photoshop) o cambiar el **Scale** en el Inspector del plano.
- **Mover objetos sin usar los controles del visor:** los botones de mover/rotar/escalar en el visor son más precisos que arrastrar libremente.