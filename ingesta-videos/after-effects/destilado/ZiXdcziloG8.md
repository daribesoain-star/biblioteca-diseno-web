# City Destruction Tutorial!
**Fuente:** Video Copilot | https://youtu.be/ZiXdcziloG8

## Qué enseña (2-3 líneas)
Este tutorial enseña a crear un efecto de ciudad destruida en After Effects combinando 3D camera tracking, composición de texturas de daño, máscaras, color correction y elementos de stock footage. Cubre desde la creación de agujeros en edificios hasta la integración de humo, fuego, vigas dobladas y matte painting 2D/3D.

## Técnicas accionables
- **3D Camera Tracker:** Window > Tracker > Track Camera. Seleccionar 3 puntos en una superficie plana (Shift + clic), luego right-click > Set Ground Plane and Origin, luego right-click > Create Solid and Camera.
- **Reemplazar sólido 3D con textura:** Seleccionar el sólido, Alt + arrastrar la textura de daño desde el panel Project para reemplazarlo manteniendo la posición 3D.
- **Máscara con Pin Tool (pluma):** Dibujar alrededor del área dañada, luego presionar M para mostrar propiedades de máscara, cambiar a Subtract. Duplicar capa (Ctrl + D), cambiar máscara a Add para la capa inferior.
- **Feathering de máscara:** Presionar F para acceder a Mask Feather, ajustar valores (ej. "just a little bit" o "couple point feather").
- **Track Matte:** Colocar capa de máscara debajo de la capa de daño, seleccionar la capa de daño > Track Matte > Alpha Matte.
- **Desplazar capa en 3D:** Usar herramienta de selección y arrastrar en eje Z para empujar la capa hacia atrás en el espacio 3D.
- **Extract effect:** Effect > Channel > Extract. Funciona como Luma key: deslizar el control para key out áreas oscuras, ajustar Feather para suavizar bordes.
- **Roughen Edges effect:** Effect > Stylize > Roughen Edges. Aplicar sobre capa de vigas, ocultar máscaras, ajustar Scale (reducir para más rugosidad), Border Size y Sharpness.
- **Pre-compose:** Seleccionar múltiples capas, Layer > Pre-compose, nombrar (ej. "front building"), marcar "Move all attributes into the new composition". Luego activar Collapse Transformation switch (estrella) en la precomposición.
- **Congelar frame:** Duplicar capa de footage (Ctrl + D), right-click > Time > Freeze Frame.
- **Mocha AE tracking:** Animation > Track in Mocha AE. Dibujar máscara alrededor del área, click Track Forward. Al terminar, right-click en máscara > Align Selected Surface, luego Export Tracking Data > After Effects Corner Pin > Copy to Clipboard. En AE: seleccionar capa congelada, Edit > Paste.
- **Motion Blur:** Activar el switch de Motion Blur en cada capa y el switch global de Motion Blur en el timeline.
- **Element 3D:** Effect > Element. En Setup, cargar modelo 3D (ej. Jet Strike Collection). En Environment, seleccionar preset de entorno similar a la escena. Activar Physical Shader para el cuerpo, ajustar Shininess. Crear Group Null para animar posición.
- **Tint de entorno en Element 3D:** Physical Environment > Tint Color, ajustar para que coincida con el color cast de la escena.
- **Atajos de teclado mencionados:** Ctrl + D (duplicar capa), M (mostrar máscaras), F (feather de máscara), P (posición), S (escala), T (opacidad), Ctrl + Shift + H (ocultar gizmos), Enter (renombrar capa).

## Reglas para el erudito (imperativas y verificables)
- Usa el gizmo local (Local Gizmo) al rotar o mover capas 3D para no desalinearlas de la superficie.
- Cuando reemplaces un sólido 3D con una textura, usa Alt + arrastrar para mantener la posición 3D exacta.
- Para integrar elementos de destrucción, usa Curves (Effect > Color Correction > Curves) en cada capa: ajusta el canal Red para quitar rojo, el canal Green para quitar verde, y RGB para contraste y brillo.
- Para que el humo se vea realista, usa transfer mode Screen y baja la opacidad (T).
- Para vigas dobladas o rotas, dibuja máscaras con la pluma imitando formas irregulares, no líneas rectas perfectas.
- Activa el Collapse Transformation switch en precomposiciones 3D para que mantengan su posición en el espacio 3D.
- Para motion blur, actívalo en todas las capas y en el switch global del comp.
- Para matte painting 2D, usa un freeze frame del primer frame y píntalo en Photoshop, luego aplica corner pin tracking de Mocha AE.

## Errores comunes que evita o menciona
- No perder los datos de tracking 3D: duplica la capa de footage y guarda una copia con los datos de cámara antes de precomponer.
- No usar líneas rectas perfectas en bordes de destrucción: aplica Roughen Edges o máscaras irregulares para dar sensación orgánica.
- No olvidar el color correction en cada elemento de daño para que coincida con el color cast de la escena (ej. quitar verde si la escena es verdosa).
- No usar motion blur en elementos 3D o compuestos: sin motion blur se ven demasiado nítidos y falsos.
- No alinear correctamente las superficies en Mocha AE: usar Align Selected Surface antes de exportar tracking data.