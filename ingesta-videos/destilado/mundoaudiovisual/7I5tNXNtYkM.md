# Course - Final Cut Pro X - 2020 - 🎬 * Chap. 14 - How to make an animated map with Final Cut Pro X?
**Fuente:** mundoaudiovisual | https://youtu.be/7I5tNXNtYkM

## Qué enseña
Cómo crear un mapa animado con una ruta de viaje en Final Cut Pro X usando figuras generadoras, máscaras y fotogramas clave. Explica el proceso completo desde la importación de materiales hasta la animación de la línea de ruta y la entrada/salida del mapa.

## Lecciones accionables
- **Preparar materiales:** Usar un mapa en formato PNG con transparencia (fondo transparente) y un video de fondo (ej. carretera). Importar clips al evento y proyecto (1080p, 25 fps).
- **Posicionar mapa:** Arrastrar el mapa PNG a la línea de tiempo sobre el clip de video. Usar `Transform` (tecla `T`) para escalar y reposicionar. Ajustar opacidad en el inspector para hacerlo semitransparente.
- **Corregir color del mapa:** Ir al panel de color (`Color`), seleccionar `Master` y ajustar hacia tonos azulados para mejorar la apariencia.
- **Crear puntos de destino:** Usar `Generators > Shapes > Square` (o círculo). En el inspector: desactivar `Outline` (eliminar borde exterior), cambiar `Color` a rojo o amarillo. Escalar con `Transform` para que sea pequeño. Posicionar sobre el mapa.
- **Agregar etiquetas de texto:** Ir a `Titles > Basic Text`. Escribir el nombre de la ciudad (ej. "Sevilla"). Cambiar fuente, color (rojo) y tamaño. Alinear con el punto de destino usando la barra magnética para que ambos clips empiecen juntos.
- **Duplicar puntos y textos:** Seleccionar punto y texto, copiar (`Cmd+C`) y pegar (`Cmd+V`). Arrastrar cada copia a una posición temporal diferente en la línea de tiempo. Cambiar nombre del texto y reposicionar el punto en el mapa para cada ciudad (Sevilla → Córdoba → Madrid → Barcelona).
- **Dibujar línea de ruta con figuras:** Usar `Generators > Shapes > Square`. Configurar: `Outline` desactivado, `Color` amarillo. Escalar con `Transform` para que parezca una línea fina (ancho ~200). Rotar (`Rotate`) para seguir la dirección del camino entre ciudades. Colocar cada segmento debajo del mapa en la línea de tiempo.
- **Agrupar segmentos en un Compound Clip:** Seleccionar todas las figuras de la ruta (mantener `Cmd` y hacer clic en cada una). Clic derecho → `New Compound Clip` → nombrar "Ruta".
- **Animar la ruta con máscara:** Arrastrar `Effects > Masks > Shape Mask` al Compound Clip "Ruta". En el inspector de la máscara: desactivar `Smoothing` (suavizado = 0). Escalar la máscara para que cubra parcialmente la ruta.
- **Agregar fotogramas clave a la máscara:** En el inspector de máscara, activar fotogramas clave en `Position`. En el inicio: máscara fuera del mapa. En cada punto de destino (Córdoba, Madrid, Barcelona): agregar fotograma clave moviendo la máscara para revelar progresivamente la ruta.
- **Animar entrada del mapa:** Agregar otro `Shape Mask` al Compound Clip del mapa. Activar fotogramas clave en `Position`. Primer fotograma: máscara fuera del mapa. Segundo fotograma (unos segundos después): máscara cubriendo todo el mapa (efecto de entrada).
- **Animar salida del mapa:** Al final del clip del mapa, agregar otro fotograma clave en la máscara con posición fuera del mapa.
- **Agregar música:** Descargar música libre de derechos desde YouTube Library. Arrastrar a la línea de tiempo. Cortar al final del video con la herramienta `Blade` (tecla `B`).

## Reglas para agentes
- Usa siempre mapas en formato PNG con transparencia para superponer sobre videos.
- Desactiva `Outline` y `Smoothing` en todas las figuras generadoras y máscaras usadas para la ruta.
- Agrupa todos los segmentos de la ruta en un solo `Compound Clip` antes de aplicar la máscara animada.
- Coloca la línea de ruta (figuras) debajo del mapa en la línea de tiempo para que el mapa tape los extremos.
- Usa la tecla `Z` para ver toda la línea de tiempo y `Cmd+Z` para deshacer.
- Nunca uses máscaras con suavizado (`Smoothing`) para animar rutas; mantenlo en 0 para bordes precisos.

## Errores comunes que evita o menciona
- No usar mapas sin transparencia (formato JPG) porque no se superpondrán correctamente sobre el video.
- Olvidar desactivar `Outline` en las figuras generadoras, lo que deja bordes no deseados en la ruta.
- No agrupar los segmentos de ruta en un Compound Clip, lo que dificulta aplicar una máscara única.
- Colocar la ruta encima del mapa en lugar de debajo, ocultando el recorrido.
- Olvidar activar fotogramas clave en la máscara antes de moverla, perdiendo la animación.
- No ajustar la duración de los clips de texto y puntos para que coincidan con el tiempo de viaje en el mapa.