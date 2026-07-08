# ¿Cómo transformar una fotografía en un video? con After Effects!
**Fuente:** mundoaudiovisual | https://youtu.be/XuITxYMbXo8

## Qué enseña
Transforma una fotografía estática en un video animado con fuego, humo y partículas usando After Effects. El tutorial cubre la creación de planos de profundidad mediante máscaras, la aplicación de efectos de color incandescente, y la animación de elementos de fuego con time remapping y expresiones loop.

## Lecciones accionables
- **Crear planos de profundidad:** Duplica la capa de la fotografía base (Ctrl+D). En cada duplicado, usa la herramienta Pluma (atajo `G`) para dibujar máscaras alrededor de árboles u objetos. Nombra las capas como "Plano 1", "Plano 2", etc., según su cercanía al frente.
- **Ajustar máscaras:** Selecciona cada máscara, ve a `Mask > Mask Feather` y establece un valor de **7 píxeles** para suavizar bordes. Usa `Mask Expansion` para ajustar el área.
- **Corregir color incandescente:** Aplica `Effect > Color Correction > Curves`. Sube el canal rojo, baja los canales azul y verde. Luego aplica `Effect > Color Correction > Lumetri Color`. Aumenta `Temperature` hacia tonos rojos/magentas y sube ligeramente `Exposure` y `Saturation`.
- **Añadir fuego con loop infinito:** Importa los clips de fuego. Colócalos en la línea de tiempo. Activa `Layer > Time > Enable Time Remapping`. Presiona `Alt` y haz clic en el cronómetro de `Time Remap`. En el panel de expresiones, escribe `loopOut("cycle")`. Esto hace que el clip se repita al terminar.
- **Modo de fusión para fuego:** Cambia el modo de fusión de la capa de fuego a `Screen` o `Add`. `Add` da más luz; `Screen` es más sutil. Prueba ambos según el efecto deseado.
- **Crear brillo (glow):** Duplica la capa de fuego (Ctrl+D). En la copia, aplica `Effect > Blur & Sharpen > Gaussian Blur`. Ajusta el valor de desenfoque para crear un resplandor alrededor del fuego original.
- **Añadir humo:** Coloca clips de humo sobre las capas de fuego. Reduce la `Opacity` (opacidad) para que no sea tan intenso. Aplica `Lumetri Color` y sube `Temperature` para darle tono anaranjado.
- **Precomponer elementos:** Selecciona múltiples capas de fuego o partículas y presiona `Ctrl+Shift+C` para precomponerlas. Nombra la precomposición (ej. "Partículas 1", "Partículas 2").
- **Movimiento de cámara:** Selecciona la precomposición final. Presiona `P` para abrir `Position`. Mantén `Alt` y haz clic en el cronómetro de `Position`. Escribe la expresión `wiggle(10, 1)` para un movimiento sutil (frecuencia 10, amplitud 1 píxel). Ajusta los valores: `wiggle(5, 3)` para más movimiento.
- **Añadir partículas de fuego:** Coloca clips de partículas sobre las capas de fuego. Cambia el modo de fusión a `Add`. Precompón y aplica `Gaussian Blur` para luminancia extra.

## Reglas para agentes
- Usa `loopOut("cycle")` en Time Remapping cuando un clip de fuego o humo deba repetirse indefinidamente.
- Aplica `Mask Feather` de al menos 7 píxeles en todas las máscaras de planos para evitar bordes duros.
- Cambia el modo de fusión a `Screen` o `Add` en todas las capas de fuego y partículas; nunca las dejes en modo `Normal`.
- Precompón grupos de fuego y partículas antes de aplicar efectos globales como `wiggle` o `Gaussian Blur`.
- Usa `wiggle(10, 1)` como valor inicial para movimiento de cámara; nunca superes `wiggle(10, 5)` para mantener sutileza.

## Errores comunes que evita o menciona
- **No olvidar el loop:** Si no activas Time Remapping con `loopOut("cycle")`, el fuego se detendrá al final del clip y no se repetirá.
- **Máscaras sin feather:** Sin suavizado en las máscaras, los bordes de los planos se ven cortados y poco realistas.
- **Modo de fusión incorrecto:** Usar `Normal` en fuego o partículas hace que se vean opacos y sin integración con la fotografía.
- **Exceso de movimiento de cámara:** Valores altos en `wiggle` (ej. `wiggle(20, 50)`) generan un temblor antinatural; mantener amplitud baja (1-3) para efecto sutil.
- **No ajustar color de fondo:** Si no se aplican curvas y Lumetri para tonos rojizos, el fuego no se integra visualmente con la fotografía original.