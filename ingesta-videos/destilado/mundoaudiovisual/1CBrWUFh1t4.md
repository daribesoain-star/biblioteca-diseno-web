# Curso de Motion 5 tutorial en español - 🎬 * Capítulo 8 - Creando el escenario para este tutorial
**Fuente:** mundoaudiovisual | https://youtu.be/1CBrWUFh1t4

## Qué enseña (2-3 líneas)
Este capítulo enseña a construir un escenario 3D completo en Motion 5 desde cero, utilizando texturas importadas y ajustando manualmente la posición, rotación y recorte de cada elemento. Se cubre la creación de paredes, suelo, escalones y laterales mediante transformaciones en los ejes X, Y y Z, y el uso de vistas de cámara para alinear objetos.

## Lecciones accionables
- **Crear proyecto Motion 5:** Configurar a 25 fps, duración 20 segundos.
- **Activar 3D:** Agregar un nuevo objeto de cámara a la barra para transformar el grupo en 3D.
- **Importar texturas:** Arrastrar los archivos de textura (fondo, suelo, base) al grupo.
- **Posicionar pared de fondo:** Seleccionar la textura de fondo, ir a Inspector > Propiedades > Posición, ajustar eje Z a -1000.
- **Rotar suelo:** Seleccionar textura de suelo, en Inspector > Propiedades > Rotación, ajustar eje X a 90 grados.
- **Alinear suelo con pared:** Cambiar a vista de cámara derecha, usar herramienta Seleccionar (Select tool), quitar manijas (clic en punto pequeño), ajustar eje Z hasta -460.
- **Ajustar altura del suelo:** En vista de cámara derecha, ajustar eje Y a -39.18 (aproximadamente).
- **Crear base del escenario:** Seleccionar textura de base, activar Recorte (Crop), recortar parte inferior y superior con cursores (usar Shift para mover más rápido).
- **Posicionar base:** En vista de cámara derecha, ajustar eje Y y eje Z hasta que toque el suelo.
- **Crear laterales:** Duplicar la base, rotar 90 grados en eje Y (Inspector > Propiedades > Rotación Y = 90).
- **Ajustar lateral derecho:** En vista de cámara superior, ajustar eje Z y luego eje X para colocarlo al costado. Recortar el lado derecho con Crop.
- **Crear lateral izquierdo:** Duplicar el lateral derecho, en Inspector > Propiedades > Posición X, invertir el valor (ej: si es 751.75, poner -751.75).
- **Renombrar capas:** En la lista de capas, hacer clic derecho sobre cada objeto y renombrar: "step", "right step", "left step", "floor".
- **Crear paredes laterales:** Duplicar la textura de pared de fondo, rotar 90 grados en eje Y.
- **Posicionar pared derecha:** En vista de cámara derecha, ajustar eje Z y luego eje X. Recortar el lado derecho con Crop (valor ~14000).
- **Agrupar paredes:** Crear un nuevo grupo (llamarlo "wall"), meter dentro la pared de fondo y la pared lateral derecha.
- **Ajustar altura del grupo:** Seleccionar grupo "wall", en Inspector > Propiedades > Posición Y, bajar hasta que toque el suelo.
- **Crear pared izquierda:** Duplicar pared derecha, en Posición X invertir el valor (ej: 809.23 a -809.23).
- **Ajustar recorte de pared izquierda:** En Crop, cambiar el recorte al lado opuesto (ej: de 4520 a -4520).
- **Crear pared trasera:** Duplicar pared lateral, rotar 180 grados en eje Y, ajustar eje Z a -1124.
- **Crear techo:** Duplicar una pared, rotar 90 grados en eje X, ajustar eje Y hacia arriba. En vista de cámara superior, ajustar eje Z para que cubra las paredes. Recortar con Crop para ajustar al tamaño.
- **Organizar grupos:** Crear un grupo "stage step group", mover dentro los elementos de escalón, laterales y suelo. Este grupo debe estar dentro del grupo "stage".

## Reglas para agentes
- Usa **25 fps** y **20 segundos** de duración al crear el proyecto.
- Cuando actives 3D, agrega siempre un **objeto de cámara** a la barra.
- Para rotar objetos 90 grados, usa **Rotación X = 90** para horizontal (suelo/techo) y **Rotación Y = 90** para vertical (laterales).
- Para duplicar un objeto al lado opuesto, invierte el signo del valor en **Posición X** (ej: 751.75 → -751.75).
- Usa **Shift** mientras arrastras cursores de Crop para mover parámetros más rápido.
- Renombra cada capa inmediatamente después de crearla para mantener el proyecto organizado.
- Agrupa elementos relacionados (paredes, escalones) en grupos con nombres descriptivos.

## Errores comunes que evita o menciona
- No olvidar renombrar las capas, lo que causa confusión al identificar objetos ("¿cuál es este? ¿cuál es el otro?").
- No alinear correctamente el suelo con la pared de fondo, dejando espacios visibles entre ellos.
- No ajustar el recorte (Crop) después de duplicar un lateral, lo que deja bordes desiguales.
- Olvidar que al duplicar un lateral, el recorte debe invertirse al lado opuesto para que la textura mire hacia adentro.
- No agrupar elementos correctamente, lo que impide mover el escenario como un conjunto.