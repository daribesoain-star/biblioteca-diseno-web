# Motion 5 tutorial course in Spanish - 🎬 * Chapter 11 - Generators for Final Cut Pro X
**Fuente:** mundoaudiovisual | https://youtu.be/NfASvf-9pgM

## Qué enseña (2-3 líneas)
Este capítulo enseña cómo crear generadores personalizados en Motion 5 para usarlos en Final Cut Pro X, tomando como ejemplo práctico un contador regresivo de 10 segundos. Se explican dos métodos: usando el generador "Fecha y Hora" con animación de fotogramas clave, y creando manualmente texto numerado con comportamientos y efectos visuales como fuego, contornos y sonidos.

## Lecciones accionables
- **Crear un nuevo generador:** Ve a "Archivo > Nuevo > Generador de Final Cut" (o "Create Generator" en el menú inicial). Configura: velocidad de fotogramas a 25 fps, duración 10 segundos.
- **Usar generador "Fecha y Hora":** En la biblioteca, busca "Fecha y Hora" (Date & Time) y arrástralo al lienzo. En el inspector, en "Generador": establece "Unidad de tiempo" = segundos, "Formato" = corto o medio, "Formato de fecha" = ninguno. En "Propiedades", escala el texto al tamaño deseado.
- **Animar el contador con fotogramas clave:** En el inspector del generador, activa el keyframe en "Hora de inicio". En el fotograma 0: valor 00:00:00:10 (10 segundos). En el último fotograma: valor 00:00:00:00. Reproduce para ver el conteo regresivo.
- **Truco para minutos simulando segundos:** Cambia "Unidad de tiempo" a minutos, "Formato" corto. En fotograma 0: valor 00:00:10:00 (10 minutos). En último fotograma: 00:00:00:00. Cada segundo cuenta un número.
- **Añadir fuego como fondo:** En biblioteca > Generadores > Emisores de partículas, selecciona "Fuego". Arrástralo debajo del texto. En inspector > Propiedades, escala a 600%. Para que el texto sea legible sobre fuego: selecciona el texto, ve a inspector > Apariencia > Contorno, color negro, ancho suficiente.
- **Método manual con texto numerado:** Crea un texto "10" con formato grande y contorno negro. Colócalo en el centro. Duplica el texto 10 veces (9,8,7...0). Ajusta la duración de cada capa: el "10" desde segundo 0 hasta segundo 1, el "9" desde segundo 1 hasta segundo 2, etc. Para evitar solapamientos, mueve el inicio de cada capa al fotograma 1 después del anterior.
- **Añadir comportamiento a números manuales:** Selecciona un número, ve a "Comportamientos > Destello" (o "Magnetic and Burned"). Ajusta la duración del comportamiento a la mitad de la duración del número. Con tecla Función presionada, copia y pega el comportamiento a todos los demás números.
- **Guardar el generador:** Archivo > Guardar. Nombre: "Motor Generators" (ejemplo). Categoría: "Mobile Generators" (crear nueva). Marca "Incluir video de vista previa". Haz clic en "Publicar".
- **Usar el generador en Final Cut Pro X:** Abre FCPX, ve a Generadores > "Mobile Generators" (la carpeta creada). Arrastra el generador al timeline. Reproduce; puede necesitar renderizado.
- **Añadir sonidos al generador:** Importa audio (ej. desde biblioteca de YouTube). Coloca efectos de sonido (beeps) sincronizados con cada segundo: copia el clip de audio en cada cambio de número (segundo 10, 9, 8...0). Ajusta la velocidad del audio si es necesario (inspector > velocidad).

## Reglas para agentes
- Usa "Archivo > Nuevo > Generador de Final Cut" cuando el objetivo sea crear contenido reutilizable en FCPX, no un proyecto Motion estándar.
- Configura siempre la duración del generador igual al tiempo total del contador (ej. 10 segundos para un conteo de 10 a 0).
- Cuando uses el generador "Fecha y Hora" para contador, activa keyframes en "Hora de inicio" y establece valores exactos de tiempo (formato HH:MM:SS:FF).
- Para que el texto sea legible sobre fondos brillantes (fuego, partículas), aplica siempre un contorno negro con ancho suficiente en inspector > Apariencia.
- Al duplicar capas de texto numerado manualmente, ajusta el inicio de cada capa al fotograma inmediatamente posterior al final de la anterior para evitar solapamientos.
- Guarda el generador con un nombre descriptivo y una categoría nueva para facilitar su localización en FCPX.
- Marca "Incluir video de vista previa" al guardar para que el generador muestre previsualización en FCPX.

## Errores comunes que evita o menciona
- **No confundir "Fecha y Hora" con "Timecode":** Timecode muestra horas, minutos, segundos y frames; "Fecha y Hora" permite mostrar solo segundos o minutos, más adecuado para contadores simples.
- **Solapamiento de números en método manual:** Si no desplazas el inicio de cada capa de texto al fotograma correcto, los números se superpondrán. Solución: mueve el inicio de cada capa al fotograma 1 después del final de la anterior.
- **Texto ilegible sobre fondos brillantes:** Sin contorno negro, el texto se pierde sobre fuego o partículas. Aplica contorno negro con ancho suficiente en inspector > Apariencia.
- **Olvidar ajustar la duración del proyecto:** Si el timeline es más corto que el contador, los números finales no se verán. Ajusta la duración del proyecto en inspector > Proyecto antes de animar.
- **No renderizar en FCPX:** Los generadores con muchos efectos (partículas, comportamientos) pueden necesitar renderizado antes de verse correctamente en FCPX.