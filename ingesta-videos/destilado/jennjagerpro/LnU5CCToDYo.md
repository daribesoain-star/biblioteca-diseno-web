# Retiming in Final Cut Pro
**Fuente:** jennjagerpro | https://youtu.be/LnU5CCToDYo

## Qué enseña (2-3 líneas)
Este video explica todas las opciones del menú de retiming en Final Cut Pro, desde velocidades básicas (lento/rápido) hasta funciones avanzadas como velocidad personalizada, rampas de velocidad, repetición instantánea, rebobinado, salto por marcadores y calidad de video (optical flow vs. frame blending). También cubre el editor de retiming, la cuchilla de velocidad, las transiciones de velocidad y cómo ocultar/mostrar la barra de retiming.

## Lecciones accionables
- **Acceder al menú de retiming:** Haz clic en la esquina inferior izquierda del visor o ve a `Modify > Retime` (atajo: `Cmd + R` para ocultar/mostrar el editor de retiming).
- **Ralentizar:** Selecciona `Slow` y elige 50% (duplica duración), 25% (cuadruplica) o 10%. La barra del editor se vuelve **naranja**.
- **Acelerar:** Selecciona `Fast` y elige 2x, 4x, 8x o 20x. La barra del editor se vuelve **azul**.
- **Restablecer velocidad normal:** Usa `Shift + N` (atajo). La barra del editor se vuelve **verde**.
- **Congelar (Hold):** Coloca el cabezal donde quieras el fotograma congelado y presiona `Shift + H`. Aparece una barra naranja. Ajusta la duración arrastrando el mango negro. Para eliminar, usa `Shift + N`.
- **Cuchilla de velocidad (Blade Speed):** Presiona `Shift + B` en el cabezal para dividir el editor de retiming sin crear un corte de edición. Luego arrastra los mangos para cambiar la velocidad de segmentos individuales.
- **Eliminar cortes de cuchilla:** Selecciona la herramienta Rango (Range Tool), marca la sección y presiona `Shift + N`.
- **Velocidad personalizada (Custom Speed):** Presiona `Control + Option + R`. En la ventana emergente puedes:
  - Cambiar dirección a `Reverse`.
  - Ingresar porcentajes personalizados (ej. 39%, 150%).
  - Usar `Duration` para fijar una duración exacta (ej. 5 segundos) y que calcule automáticamente la velocidad.
- **Invertir clip (Reverse Clip):** Selecciona `Reverse Clip` en el menú. Para restaurar, usa `Reset Speed`.
- **Velocidad automática (Automatic Speed):** Ajusta automáticamente la velocidad del clip para que coincida con la frecuencia de cuadros del proyecto (ej. clip 60fps en proyecto 24fps = cámara lenta suave).
- **Rampa de velocidad (Speed Ramp):** Crea una desaceleración gradual hasta un fotograma congelado al final (0%) o una aceleración desde cero hasta 100%.
- **Repetición instantánea (Instant Replay):** Duplica el clip anterior y lo reproduce a la velocidad seleccionada (100% o 25%).
- **Rebobinado (Rewind):** Reproduce el clip hacia adelante, luego hacia atrás y otra vez hacia adelante. Elige multiplicador (1x, 2x, 4x). Para limitar el rebobinado, crea un corte de edición (`Cmd + B`) antes de la acción.
- **Salto por marcadores (Jump Cut at Markers):** Coloca marcadores en el clip, luego selecciona `Jump Cut at Markers` y elige el número de fotogramas a eliminar (ej. 20 frames). Ideal para sincronizar con beats musicales.
- **Calidad de video (Video Quality):** Al ralentizar mucho (ej. 25%), cambia de `Normal` a:
  - `Optical Flow`: Análisis para movimiento súper suave (puede causar distorsión).
  - `Frame Blending`: Mezcla de fotogramas (menos suave que Optical Flow).
- **Transiciones de velocidad (Speed Transitions):** Actívalas en el menú para que los cambios de velocidad sean graduales (aparecen cajas grises). Desactívalas para cambios abruptos.
- **Ocultar/mostrar editor de retiming:** Selecciona el clip y presiona `Cmd + R`.

## Reglas para agentes
- Usa `Shift + N` para restablecer la velocidad normal de un clip o segmento, no el menú `Reset Speed`.
- Usa `Shift + H` para crear fotogramas congelados (hold frames) en lugar de fotogramas fijos (freeze frames), porque los hold frames permanecen dentro del clip y heredan efectos aplicados.
- Usa `Shift + B` para dividir la velocidad sin crear un corte de edición (through edit).
- Usa `Optical Flow` cuando necesites cámara lenta muy suave; si hay distorsión, cambia a `Frame Blending`.
- Activa `Speed Transitions` para cambios de velocidad graduales; desactívalos para cambios abruptos y dramáticos (ej. sincronización con música).
- Nunca uses `Reset Speed` del menú si puedes usar `Shift + N` (más rápido).
- Nunca ignores la diferencia de frecuencia de cuadros entre clip y proyecto; usa `Automatic Speed` para corregir automáticamente.

## Errores comunes que evita o menciona
- **Ralentizar sin ajustar calidad de video:** Si ralentizas mucho (ej. 25%) y dejas `Normal`, el clip se verá entrecortado (jittery). Usa `Optical Flow` o `Frame Blending`.
- **Distorsión con Optical Flow:** Puede ocurrir cuando el sujeto se acerca mucho a la cámara. Cambia a `Frame Blending` como alternativa.
- **Usar freeze frames en lugar de hold frames:** Los freeze frames crean clips separados; los hold frames (`Shift + H`) permanecen dentro del clip y heredan efectos.
- **No usar la cuchilla de velocidad correctamente:** Al hacer `Shift + B` no se crea un corte de edición, solo una división en el editor de retiming.
- **Olvidar ocultar el editor de retiming:** Una vez aplicados los cambios, usa `Cmd + R` para ocultar la barra naranja/azul/verde.
- **No limitar el rebobinado:** Si usas `Rewind` en todo el clip, rebobinará desde el inicio. Crea un corte (`Cmd + B`) antes de la acción para limitar el rebobinado a esa sección.