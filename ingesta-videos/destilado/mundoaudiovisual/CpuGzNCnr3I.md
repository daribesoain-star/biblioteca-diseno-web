# 🎬 DaVinci Resolve Tutorial: Insert 3D Objects into Your Videos with Camera Tracking 🔥
**Fuente:** mundoaudiovisual | https://youtu.be/CpuGzNCnr3I

## Qué enseña
Cómo usar el rastreador de cámara 3D en el módulo Fusion de DaVinci Resolve para insertar objetos 3D (texto 3D o modelos FBX) en un video existente, haciendo que los elementos sigan el movimiento de cámara original de la escena.

## Lecciones accionables
- **Preparar el clip:** En el módulo Editing, inserta el clip de video (ej. 24 fps). Luego ve al módulo Fusion desde ese clip.
- **Agregar el nodo Camera Tracker:** Presiona Mayúsculas + Espacio, busca "Camera Tracker" y agrégalo. Conecta la salida del nodo MediaIn al input del Camera Tracker.
- **Configurar el tracking:** En el Inspector del Camera Tracker, activa "Auto Track". Ajusta la cantidad de puntos de tracking: en "Auto Track" → "Points" (más puntos = mejor precisión). Selecciona dirección "Bidirectional" (forward y backward). Haz clic en "Track".
- **Resolver la cámara:** Una vez completado el tracking, haz clic en el ícono de lupa ("Rectify") → "Solve Camera Tracker 1 frames". Espera a que termine el proceso.
- **Verificar el plano terrestre:** En el Inspector, activa "Ground Plane" y haz clic en "Show in View" para visualizar el plano púrpura. Si no está alineado con la escena, ajústalo manualmente.
- **Exportar la cámara:** Haz clic en "Export Camera". Esto crea automáticamente: una cámara HD con el movimiento, una nube de puntos 3D, un plano terrestre y un nodo Merge 3D.
- **Añadir texto 3D:** Agrega un nodo Text3D (Mayúsculas + Espacio → "Text3D"). Conéctalo al Merge 3D. En el Inspector, escribe el texto (ej. "hello"), ajusta tamaño y posición usando la vista 3D.
- **Añadir modelo FBX:** Agrega un nodo "FBX Scene" (Mayúsculas + Espacio → "FBX Scene"). Conéctalo al Merge 3D. En el Inspector, carga el archivo FBX. Ajusta posición, escala y rotación en la vista 3D.
- **Renderizar:** Conecta el Merge 3D al nodo MediaOut. Reproduce para verificar el resultado final.

## Reglas para agentes
- Usa "Bidirectional" en el tracking cuando el clip tenga movimiento hacia adelante y hacia atrás.
- Siempre ajusta el "Ground Plane" antes de exportar la cámara para asegurar que los objetos 3D se alineen correctamente con la escena.
- Nunca omitas el paso "Solve Camera Tracker" después del tracking automático; sin él, la cámara no tendrá datos de resolución 3D.
- Cuando añadas un objeto 3D (texto o FBX), conéctalo siempre al Merge 3D que creó el Camera Tracker, no a otro nodo.
- Verifica la posición del objeto 3D en la vista 3D con la nube de puntos visible para saber dónde está ubicado en el espacio.

## Errores comunes que evita o menciona
- No verificar que el "Ground Plane" esté alineado con la escena antes de exportar la cámara; si el plano púrpura no es cuadrado o está mal posicionado, los objetos 3D no seguirán correctamente el movimiento.
- Olvidar hacer clic en "Solve Camera Tracker" después del tracking automático, lo que deja la cámara sin resolver.
- No ajustar la cantidad de puntos de tracking ("Points") cuando la escena tiene pocos contrastes; más puntos mejoran la precisión.
- Conectar el objeto 3D directamente al MediaOut sin pasar por el Merge 3D, lo que rompe la composición con el movimiento de cámara.