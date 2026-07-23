# Expressions Basics - After Effects Tutorial
**Fuente:** Holmes Motion | https://youtu.be/MuXiRF3BMlw

## Qué enseña
Este tutorial enseña cinco expresiones fundamentales de After Effects para animación procedural: `time`, `loopOut`, `wiggle`, `linear` y `valueAtTime`. Muestra cómo reducir el uso de fotogramas clave, crear bucles perfectos, movimientos aleatorios controlados y desplazamientos temporales, todo explicado desde cero para personas sin experiencia en programación.

## Técnicas accionables

- **Rotación continua con `time`:** Seleccionar capa → presionar `R` para rotación → Alt+clic en cronómetro de rotación → escribir `time * 30;` para velocidad constante. Para hacerlo legible: crear variable `turnSpeed = 30;` en línea superior, luego escribir `time * turnSpeed;`.
- **Bucle oscilante con `loopOut`:** Crear dos fotogramas clave en rotación (ej. -35° y +35°) → Alt+clic en cronómetro → escribir `loopOut("pingpong");`. Alternativas: `"cycle"` (salta al inicio), `"offset"` (continúa el valor). `loopIn` buclea antes del primer fotograma clave.
- **Movimiento aleatorio con `wiggle`:** Alt+clic en cronómetro de posición → escribir `wiggle(1, 15);` (frecuencia=1, amplitud=15). Para bucle perfecto: crear capa nula (Layer > New > Null Object) → renombrar "wiggle control" → Effect > Expression Controls > Slider Control → presionar `E` para ver slider → fotograma clave 0 en inicio, 15 a 1 segundo, copiar (`Ctrl+C`) a 29 segundos, pegar (`Ctrl+V`), clic derecho > Keyframe Assistant > Time Reverse Keyframes → en expresión de la capa, reemplazar amplitud con `thisComp.layer("wiggle control").effect("Slider Control")("Slider");`.
- **Desplazamiento lineal con `linear`:** Separar dimensiones de posición (clic derecho en posición > Separate Dimensions) → Alt+clic en cronómetro de Posición X → escribir `linear(time, 0, 30, -1920, 0);` (tiempo inicio, tiempo fin, posición inicio, posición fin). Duplicar capa (`Ctrl+D`) y cambiar parámetros a `linear(time, 0, 30, 0, 1920);` para bucle perfecto.
- **Retardo de animación con `valueAtTime`:** Alt+clic en cronómetro de opacidad → escribir `valueAtTime(time - 0.15);` (retraso de 0.15 segundos). Mantiene todos los fotogramas clave en una sola capa maestra.
- **Vincular propiedades con pick whip:** Arrastrar el ícono de espiral desde la expresión de una capa hasta la propiedad de otra (ej. rotación de sombra = rotación de sol). Luego agregar `;` al final. Equivalente manual: `thisComp.layer("sun").transform.rotation;`.
- **Expression Language Menu:** Botón de flecha junto al campo de expresión → contiene presets de `linear`, `ease`, `time`, `wiggle`, etc.
- **Efecto Set Mat:** Para máscara de capa: seleccionar capa → Effect > Channel > Set Matte → en "Take Matte From Layer" elegir la capa de referencia (ej. "ground").

## Reglas para el erudito

- Usa `time * valor` para rotación continua; multiplica por 30 para velocidad rápida, por 1 para lenta.
- Usa `loopOut("pingpong")` cuando quieras oscilación suave entre dos fotogramas clave; evita `"cycle"` si necesitas transición sin salto.
- Usa `wiggle(frecuencia, amplitud)` con frecuencia 1 y amplitud 15 para movimiento sutil; para bucle perfecto, controla la amplitud con un slider keyframeado que vaya de 0 a valor máximo y vuelva a 0.
- Usa `linear(time, inicioTiempo, finTiempo, inicioPos, finPos)` para movimiento horizontal continuo; los valores de posición deben coincidir con el ancho del comp (1920 px para HD).
- Usa `valueAtTime(time - retraso)` para retrasar animaciones sin mover fotogramas clave; el retraso debe ser en segundos (ej. 0.15, 0.30, 0.60).
- Siempre termina cada línea de expresión con punto y coma (`;`).
- Crea variables al inicio de la expresión para valores repetidos (ej. `freq = 1;`, `amp = 15;`) y referéncialas en la expresión para mayor legibilidad.
- Usa el pick whip para vincular propiedades rápidamente, pero verifica que agregue el `;` final.

## Errores comunes que evita o menciona

- **Olvidar parámetros requeridos en `wiggle`:** El error "wiggle needs between two and five arguments" aparece si solo escribes `wiggle();` sin frecuencia y amplitud.
- **Usar `loopOut` sin tipo:** Por defecto usa `"cycle"`, que salta abruptamente al primer fotograma clave en lugar de oscilar suavemente.
- **Bucle no perfecto con `wiggle`:** El movimiento aleatorio no coincide al inicio y final del comp; la solución es keyframear la amplitud a cero en ambos extremos usando un slider.
- **No separar dimensiones de posición:** Para mover solo en X con `linear`, debes separar las dimensiones de posición antes de añadir la expresión.
- **Olvidar el punto y coma final:** El pick whip no lo agrega automáticamente; la expresión falla si falta.
- **Mover fotogramas clave manualmente para retrasos:** Es más limpio usar `valueAtTime(time - X)` que arrastrar fotogramas clave en múltiples capas.