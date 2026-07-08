# Video Effects Course - Fusion - DaVinci Resolve - 🎬 Chapter 1 - First Steps
**Fuente:** mundoaudiovisual | https://youtu.be/Q5R-VcH--Tw

## Qué enseña (2-3 líneas)
Introducción a la interfaz del módulo Fusion en DaVinci Resolve, explicando el cambio de paradigma de trabajar con capas a trabajar con nodos. Muestra la disposición del panel de nodos, los visores, el inspector y las herramientas básicas para comenzar a crear efectos visuales propios.

## Lecciones accionables
- **Acceder a Fusion:** Selecciona un clip en la línea de tiempo del módulo Edit y haz clic en la pestaña "Fusion" (abajo) para abrir la interfaz de nodos.
- **Navegar en el panel de nodos:** Usa `Control + rueda del ratón` (Windows) o `Command + rueda del ratón` (Mac) para hacer zoom. Usa el botón central/rueda del ratón presionada para desplazarte por el panel.
- **Configurar visores:** Haz clic en el botón de dos monitores para tener Monitor 1 (izquierda) y Monitor 2 (derecha). Arrastra un nodo a un visor o selecciona el nodo y presiona `1` para mostrarlo en el monitor izquierdo, `2` para el derecho.
- **Ver canales individuales:** En el visor, usa los botones de canal (rojo, verde, azul, alfa) para inspeccionar componentes específicos de la imagen.
- **Previsualizar con LUT:** Activa "Gamut View" (vista de gama) para simular cómo se vería un clip con perfil logarítmico tras aplicar corrección de color (solo previsualización, no afecta al resultado final).
- **Agregar nodos desde la barra superior:** Usa los botones de la barra de herramientas para insertar nodos: Background, Text+, Noise, Color Curves, Merge (para unir nodos al output), máscaras (Polygon, etc.), emisor de partículas y herramientas 3D.
- **Ejemplo rápido 3D:** Agrega un nodo Text+ → conéctalo a un nodo Renderer 3D → conéctalo al MediaOut. Ajusta extrusión y rotación en el inspector del nodo Text+.
- **Ver timeline dentro de Fusion:** La línea verde en la parte inferior marca el renderizado de video; los límites entre las dos líneas verticales representan la duración del clip seleccionado en el módulo Edit.

## Reglas para agentes
- Usa el nodo **Merge** cuando necesites combinar dos o más nodos y conectarlos al nodo **MediaOut** (salida final).
- Nunca asumas que los ajustes de "Gamut View" modifican el clip real; solo son una previsualización temporal.
- Siempre selecciona un clip en la línea de tiempo del módulo Edit antes de entrar a Fusion para que los nodos se asocien a ese clip.
- Usa los botones de canal (R, G, B, Alpha) en el visor cuando trabajes con chroma key o máscaras para verificar la transparencia.
- Conecta siempre un nodo Renderer 3D entre nodos 3D (cámara, texto 3D, luces) y el nodo MediaOut para que sean visibles.

## Errores comunes que evita o menciona
- **No confundir la interfaz de nodos con la de capas:** Fusion no funciona como After Effects o Motion; no se apilan capas, se conectan nodos en una jerarquía.
- **No olvidar conectar al MediaOut:** Si agregas un nodo (ej. Text+) y no lo conectas al nodo MediaOut, no se verá en el resultado final.
- **No usar "Gamut View" como ajuste permanente:** Solo sirve para previsualizar cómo quedaría un perfil logarítmico corregido, pero no aplica cambios reales al clip.
- **No ignorar el nodo Merge:** Es esencial para unir múltiples nodos (ej. fondo + texto) antes de la salida final; sin él, solo se verá el último nodo conectado.