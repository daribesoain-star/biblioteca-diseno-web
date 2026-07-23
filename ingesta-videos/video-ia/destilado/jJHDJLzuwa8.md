# How to use Runway Gen 3 Camera Control for Better AI Videos!
**Fuente:** Wade McMaster - Creator Impact | https://youtu.be/jJHDJLzuwa8

## Qué enseña
Este tutorial enseña a usar la función **Camera Control** de **Runway Gen 3** para dirigir el movimiento de cámara en videos generados por IA, partiendo de una imagen fija. Explica cómo ajustar parámetros como paneo, inclinación, rotación y zoom mediante un control visual interactivo, y cómo combinar estos movimientos con prompts descriptivos para obtener tomas más dinámicas y controladas.

## Técnicas accionables
- **Acceder a Camera Control:** Dentro de Runway, ve a **Generative Session** y selecciona la pestaña **Camera Control**.
- **Cargar imagen base:** Usa **Select from Assets** para elegir una imagen; luego haz doble clic para cargarla.
- **Estructura de prompt VERBATIM usada:**
  - `"a woman surrounded by burning temples looking around at the fire"`
  - `"smiling"` (añadido a la escena anterior para probar expresión facial)
  - `"a dog in a post-apocalyptic city panning away to look at the buildings"`
  - `"tilt up to the sky to see jellyfish flying upward woods"`
- **Parámetros de cámara disponibles (control visual con guía interactiva):**
  - **Horizontal pan (Paneo horizontal):** mueve la cámara a izquierda/derecha.
  - **Tilt (Inclinación):** inclina la cámara hacia arriba/abajo (ej. mirar hacia el suelo o el cielo).
  - **Vertical (Desplazamiento vertical):** sube o baja la cámara.
  - **Roll (Balanceo):** rota la cámara sobre su eje (ej. un ligero roll para efecto dinámico).
  - **Zoom in/out:** acerca o aleja la vista.
- **Ajuste fino de posición:** Puedes arrastrar el área de la imagen directamente para reposicionar el encuadre (ej. zoom in al rostro y luego mover el punto de vista).
- **Static mode (Modo estático):** Actívalo para mantener la cámara completamente fija; útil para evitar movimiento no deseado.
- **Duración del video:** Se usaron 10 segundos y 5 segundos en ejemplos.
- **Comparación de resultados:** Se generaron dos versiones (una con cámara en movimiento y otra estática) para mostrar la diferencia.
- **Experimento sin prompt:** Se generó un video solo con ajustes de cámara (sin texto) para ver cómo Runway interpreta el movimiento por sí mismo.

## Reglas para el erudito
- **Usa Camera Control** cuando quieras dirigir el movimiento de la cámara en lugar de dejarlo al azar; el control visual te permite previsualizar el encuadre.
- **Activa Static mode** cuando necesites que la cámara no se mueva en absoluto (ej. para retratos o escenas donde el movimiento resta calidad).
- **Combina ajustes de cámara con prompts descriptivos** para guiar tanto el movimiento como el contenido; pero si el prompt genera resultados no deseados, **prueba sin prompt** solo con los controles de cámara.
- **Experimenta con movimientos extremos** (zoom muy cercano, roll pronunciado, inclinaciones forzadas) para explorar los límites del modelo, pero reconoce que no es una ciencia exacta.
- **Usa duraciones cortas (5 segundos)** para pruebas rápidas y ahorrar tiempo de generación.

## Errores comunes / limitaciones que menciona
- **El control de cámara no es una ciencia exacta:** el resultado visual puede no coincidir perfectamente con lo ajustado en la guía.
- **Prompts demasiado creativos o contradictorios** pueden empeorar el resultado (ej. pedir "smiling" en una escena apocalíptica generó un efecto "creepy").
- **El modelo tiene dificultades para "mirar hacia otro lado"** cuando el sujeto principal está centrado; a veces mantiene el foco en la imagen original aunque se intente un paneo.
- **Añadir prompt puede producir elementos no deseados** (ej. al pedir "jellyfish flying upward" apareció una medusa en medio de la escena, no en el cielo).
- **A veces es mejor no usar prompt** y solo confiar en los ajustes de cámara para obtener resultados más naturales.