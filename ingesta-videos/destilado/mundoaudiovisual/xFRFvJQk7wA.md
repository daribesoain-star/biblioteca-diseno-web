# 🔵 NUEVO CURSO 2 0 DE DAVINCI RESOLVE 18 🎬 Capítulo 13: INTRODUCCIÓN A FUSION
**Fuente:** mundoaudiovisual | https://youtu.be/xFRFvJQk7wA

## Qué enseña (2-3 líneas)
Introducción al módulo Fusion de DaVinci Resolve 18, explicando que es el editor de efectos integrado (equivalente a After Effects en Premiere o Motion en Final Cut). Cubre la interfaz básica, el concepto fundamental de trabajo con nodos (no capas), y los nodos esenciales Media In y Media Out, además de nodos predefinidos como Background y Text.

## Lecciones accionables
- Para acceder a Fusion: desde el módulo Edit, ve a **Effects** → arrastra **Fusion Composition** a la timeline → se crea un clip negro. Luego haz clic en el módulo **Fusion** en la parte inferior.
- Para ver un clip normal en Fusion: coloca el playhead sobre el clip en la timeline del módulo Edit → cambia al módulo Fusion → aparecerán los nodos **Media In** y **Media Out**.
- **Nodos fundamentales**: Media In = cómo entra el clip original; Media Out = resultado final después de procesar con nodos. Conecta cualquier nodo al Media Out para que sea visible en la composición final.
- Para mostrar un nodo en un monitor: selecciona el nodo → presiona el botón **1** (monitor 1) o **2** (monitor 2) en la esquina superior derecha del nodo. El punto blanco indica qué monitor muestra ese nodo.
- Para crear un fondo: desde la pestaña de nodos predefinidos, arrastra **Background** al panel de nodos → selecciona el nodo → en el **Inspector** (derecha) cambia el color. Conéctalo al Media Out arrastrando desde el triángulo de salida del Background al triángulo de entrada del Media Out.
- Para crear texto: arrastra el nodo **Text** al panel → selecciónalo → en el Inspector escribe el texto deseado → conéctalo al Media Out.
- Navegación en el panel de nodos: **Control + rueda del mouse** para zoom in/out; **clic con botón central del mouse** para desplazar el panel; **Control + rueda** también mueve el panel lateralmente.
- Para ordenar nodos: usa la opción de **grid** (cuadrícula) disponible en el panel de nodos para alinear automáticamente.

## Reglas para agentes
- Usa **Media In** como punto de entrada del clip original y **Media Out** como punto de salida final; todo nodo debe conectarse directa o indirectamente al Media Out para ser visible en el video.
- Cuando trabajes en Fusion, olvida el sistema de capas del módulo Edit; aquí todo se organiza mediante conexiones de nodos.
- Conecta siempre los nodos arrastrando desde el triángulo de salida (output) de un nodo al triángulo de entrada (input) de otro.
- Para ver el resultado de un nodo intermedio en un monitor, presiona el botón **1** o **2** en ese nodo; el punto blanco indica qué monitor lo muestra.
- Usa **Control + rueda del mouse** para zoom y desplazamiento en el panel de nodos; nunca intentes redimensionar manualmente los nodos.

## Errores comunes que evita o menciona
- **No ver nada en el video después de crear nodos**: ocurre cuando no se ha conectado el nodo al Media Out. El nodo puede verse en un monitor pero no estará en la composición final hasta conectarlo.
- **Confundir el sistema de capas con nodos**: en Fusion no hay capas superpuestas; la jerarquía se define por las conexiones entre nodos, no por orden vertical.
- **Pensar que un nodo es visible solo por estar en el panel**: un nodo debe estar conectado al Media Out y tener el monitor activado (punto blanco) para verse en la salida final.
- **No entender que el clip mostrado en Fusion depende del playhead**: si el playhead en Edit está sobre otro clip, Fusion mostrará ese clip, no el que se espera.