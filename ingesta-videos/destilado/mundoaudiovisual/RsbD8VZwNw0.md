# Curso de efectos de Video - Fusion - Davinci Resolve - 🎬 Capítulo 11 - Rastreador 3D
**Fuente:** mundoaudiovisual | https://youtu.be/RsbD8VZwNw0

## Qué enseña
Cómo usar el rastreador 3D (Camera Tracker) en Fusion para reconstruir el movimiento de una cámara real en un espacio tridimensional, permitiendo insertar objetos 3D (texto, esferas, etc.) que sigan perfectamente ese movimiento. Explica el flujo completo: detección de puntos, resolución de cámara, exportación a nodos y posicionamiento de elementos 3D.

## Lecciones accionables
- Agregar el nodo Camera Tracker: presionar Shift + Espacio, escribir "CameraTrack" (tres veces, mayúscula inicial) y seleccionarlo.
- Antes de Auto Track, activar "Preview Autotrack Location" para visualizar los puntos verdes que se rastrearán.
- Ajustar el parámetro "Spacing" (distancia entre puntos): valor bajo = más puntos y mayor precisión; valor alto = menos puntos. Dejar en 2.2 como valor por defecto funcional.
- Activar "Bidirectional Tracking" para que el rastreo se haga hacia adelante y luego hacia atrás, mejorando la precisión.
- Presionar "Auto Track" y esperar a que se procesen todos los fotogramas.
- Después del rastreo, hacer clic en "Resolve" para que el software calcule la cámara 3D a partir de los puntos. Esperar según capacidad del equipo (CPU/GPU).
- Hacer clic en "Export" para generar automáticamente los nodos: CameraTracker3D, Merge3D, Renderer3D y un punto de nube (point cloud).
- Desconectar el nodo CameraTracker original de la salida y conectar CameraTracker1 directamente al Merge3D para usar la cámara resuelta.
- Para insertar texto 3D: agregar nodo "Text3D" (Shift + Espacio, escribir "Text3D"), conectarlo al Merge3D.
- Posicionar el texto usando la vista de nube de puntos como referencia: mover en los ejes X, Y, Z hasta que el texto esté dentro de la nube que representa el objeto real (ej. castillo).
- Ajustar tamaño del texto con el parámetro "Size" en el nodo Text3D.
- Para iluminación: agregar nodo "Light" (Shift + Espacio, escribir "Light"), conectarlo al Merge3D. En el nodo CameraTracker3D, activar "Enable Lighting" y "Enable Shadows".
- Posicionar la luz usando la vista "Camera Top": seleccionar el nodo Light, moverlo hasta que ilumine el texto (verificar en la vista 3D).
- Para objetos 3D como una esfera: agregar nodo "Sphere" (Shift + Espacio, escribir "Sphere"), luego nodo "Merge3D" para combinarlo con la escena.
- Desactivar "Affected by Lights" en el nodo Sphere si no se desea sombras adicionales.
- Para animar rotación: en el nodo Sphere, crear keyframe en "Rotation" al inicio del clip (valor 0), ir al final, cambiar rotación (ej. en Y) y crear otro keyframe.

## Reglas para agentes
- Usa "Bidirectional Tracking" siempre que se requiera máxima precisión en el rastreo de cámara 3D.
- Ajusta "Spacing" a valores bajos (cercanos a 2) cuando la escena tenga muchos detalles y se necesiten más puntos de referencia.
- Nunca conectes el nodo CameraTracker original directamente al Merge3D después de exportar; desconéctalo y usa CameraTracker1 en su lugar.
- Activa "Enable Lighting" y "Enable Shadows" en el nodo CameraTracker3D solo después de haber agregado un nodo Light a la escena.
- Usa la vista de nube de puntos (point cloud) como guía visual para posicionar objetos 3D en el espacio correcto.
- Para objetos que no requieren iluminación propia, desactiva "Affected by Lights" en sus propiedades.

## Errores comunes que evita o menciona
- No confundir el rastreador 3D con otros rastreadores (punto, plano) cuando la cámara se mueve en todos los ejes (como en tomas de dron).
- No olvidar presionar "Resolve" después del Auto Track; sin este paso no se genera la cámara 3D.
- No dejar el nodo CameraTracker original conectado después de exportar; causa conflictos en el flujo de nodos.
- No posicionar objetos 3D fuera de la nube de puntos; el texto o esfera no seguirá correctamente el movimiento de la cámara.
- No omitir la activación de luces y sombras si se desea un efecto 3D realista con iluminación.