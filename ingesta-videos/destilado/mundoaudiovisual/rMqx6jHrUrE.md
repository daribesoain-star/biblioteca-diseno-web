# Curso de Corrección de Color - - Davinci Resolve - 🎬 Capítulo 4 - Representaciones gráficas.
**Fuente:** mundoaudiovisual | https://youtu.be/rMqx6jHrUrE

## Qué enseña (2-3 líneas)
Este capítulo explica cómo usar las representaciones gráficas en el módulo de color de DaVinci Resolve (waveform, histograma y vectoscopio) para verificar exposición, evitar áreas quemadas o recortadas, y lograr una corrección de color precisa independientemente del monitor. Enfatiza que estas herramientas son esenciales cuando el monitor no está calibrado o tiene interpretaciones de color diferentes.

## Lecciones accionables
- **Abrir panel de representaciones gráficas:** Haz clic en el pin del panel inferior derecho y arrastra las gráficas fuera para verlas ampliadas junto al visor.
- **Cambiar formato de waveform:** Usa el menú desplegable en la gráfica para alternar entre: RGB, waveform (luma), y vectoscopio. El formato más común es "luma" (luminancia) o "the heretic".
- **Leer el waveform:** La izquierda del gráfico corresponde a la izquierda de la imagen, la derecha a la derecha. Arriba = más luminancia, abajo = menos luminancia. Valores cerca de 1023 (o 100%) = blancos quemados; valores cerca de 0 = negros recortados.
- **Ver canales individuales en waveform:** Dentro del waveform, haz clic en los botones de color (rojo, verde, azul) para aislar un canal específico y ver su distribución de luminancia.
- **Usar el histograma:** Actívalo desde el mismo menú de representaciones. La izquierda del histograma = sombras/negros; la derecha = altas luces/blancos. Si ves picos tocando los extremos izquierdo o derecho, hay áreas recortadas (blown out).
- **Ver histograma por luminancia:** En el menú del histograma, selecciona "luminance" en lugar de "channels" para ver solo el brillo general sin mezcla de colores.
- **Corregir blancos quemados con el histograma:** Si un canal de color (ej. azul) está recortado a la derecha, ve a las barras de color (Color Wheels), selecciona ese canal y baja ligeramente su ganancia (gain) para recuperar detalle.
- **Ajustar piel con vectoscopio:** En el vectoscopio, la línea de tono de piel (skintone line) debe caer en la zona entre rojo y amarillo. Si está muy magenta, baja el tinte (tint) hacia verde; si está muy azul, sube la temperatura (temperature).
- **Verificar exposición con contraste:** Al ajustar contraste en las ruedas de color, observa cómo el waveform se expande verticalmente. El pivote (pivot) permite redistribuir la información entre sombras y altas luces sin recortar.
- **Usar máscara para fondos negros:** Si creas una máscara para fondo negro, verifica en el waveform que los valores estén en 0 (parte inferior) para confirmar que el fondo es completamente negro sin ruido.

## Reglas para agentes
- Usa el waveform en modo "luma" como primera verificación de exposición antes de cualquier ajuste de color.
- Nunca permitas que el histograma tenga picos tocando ambos extremos (0 y 1023) simultáneamente a menos que sea intencional (ej. fondo negro + cielo blanco).
- Cuando ajustes tono de piel, usa el vectoscopio y verifica que la línea de piel caiga en el sector entre rojo y amarillo; si se desvía, corrige con tinte (tint) y temperatura (temperature).
- Si un canal de color aparece recortado en el histograma (pico en el extremo derecho), reduce ese canal específico en las barras de color antes de aplicar otros ajustes.
- Al trabajar con contraste, ajusta el pivote (pivot) para distribuir la información entre sombras y altas luces sin crear recortes en los extremos.
- Siempre verifica en el waveform que no haya información perdida (líneas planas en 0 o 1023) después de aplicar cualquier corrección de exposición.

## Errores comunes que evita o menciona
- **Confiar ciegamente en el monitor:** El monitor puede mostrar colores y exposición incorrectos; las representaciones gráficas son la referencia objetiva.
- **Recortar negros o blancos sin intención:** Al bajar la exposición, el waveform muestra líneas blancas en la parte inferior que indican que los negros se han "volado" (blown out) y no se pueden recuperar.
- **Subir exposición sin control:** Si subes demasiado la exposición, el waveform muestra toda la información en la parte superior, indicando sobreexposición irrecuperable.
- **Ignorar canales individuales:** Un canal (ej. azul) puede estar recortado aunque el histograma general de luminancia parezca correcto; hay que revisar cada canal por separado.
- **No usar el vectoscopio para piel:** Ajustar el tono de piel solo con la vista puede dar resultados incorrectos; el vectoscopio muestra objetivamente si la piel está en la línea correcta.
- **Solapar objetos no deseados en luminancia:** Al ajustar contraste, asegúrate de que objetos en diferentes zonas de la imagen no se mezclen en el mismo rango de luminancia si eso no es intencional.