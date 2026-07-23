# Math.sin - Adobe After Effects Expression
**Fuente:** ECAbrams | https://youtu.be/Oiiq4wmbuPo

## Qué enseña
Explica cómo usar la expresión `Math.sin()` en After Effects para hacer que propiedades oscilen en una onda sinusoidal regular. Cubre los conceptos de amplitud, frecuencia, período, y cómo aplicar la expresión a posición, escala, opacidad y rotación, incluyendo el uso de `Math.cos()` para desfasar ondas.

## Técnicas accionables
- **Abrir ventana de expresión:** Mantener presionada la tecla **Alt** y hacer clic en el cronómetro de la propiedad (ej. Position, Scale, Opacity, Rotation).
- **Expresión básica para posición vertical oscilante:**
  - Crear variables: `a = 240;` (amplitud), `f = 0.5;` (frecuencia en veces por segundo).
  - Escribir: `y = Math.sin(time * 2 * Math.PI * f) * a;`
  - Cerrar con: `[value[0], y]` (mantiene X fijo, Y oscila).
- **Expresión para escala oscilante:**
  - Usar: `y = Math.sin(time * 2 * Math.PI * f) * a;` y luego `[y, y]` para escalar uniformemente.
  - Ajustar amplitud para evitar valores negativos: ej. `a = 50;` y sumar offset: `y + 50` para oscilar entre 0 y 100%.
- **Expresión para opacidad oscilante:**
  - Usar: `y = Math.sin(time * 2 * Math.PI * f) * a;` con `a = 50;` y luego `y + 50` para oscilar entre 0 y 100.
- **Expresión para rotación con dirección:**
  - Usar `Math.cos()` en lugar de `Math.sin()` para que la rotación comience apuntando en la dirección correcta: `y = Math.cos(time * 2 * Math.PI * f) * a;` y luego `y + value` para mantener la rotación base.
- **Hacer que la oscilación sea relativa al inicio del layer:**
  - Crear variable: `t = time - inPoint;`
  - Reemplazar `time` por `t` dentro de `Math.sin()`.
- **Ver gráfico de valores:** Hacer clic en el botón **Graph Editor** en la línea de tiempo para ver la onda sinusoidal en el gráfico de valores.

## Reglas para el erudito
- Usa `Math.sin()` cuando quieras que la oscilación comience en 0 (subiendo primero).
- Usa `Math.cos()` cuando quieras que la oscilación comience en 1 (bajando primero), útil para rotación que debe apuntar en la dirección del movimiento.
- Para controlar la frecuencia, multiplica `time` por `2 * Math.PI * frecuencia` (ej. `f = 0.5` para 0.5 oscilaciones por segundo).
- Para controlar el período, multiplica `time` por `1 / período` dentro de `Math.sin()` (ej. `1/3` para un período de 3 segundos).
- En propiedades como Opacity y Scale, suma un offset (ej. `y + 50`) para evitar valores negativos que se recortan.
- Nunca uses `Math.sin()` directamente en Scale sin ajustar la amplitud y el offset, porque los valores negativos invierten la escala.
- Por defecto, la expresión usa el tiempo de la composición; si necesitas que el layer sea independiente al moverlo en el tiempo, usa `time - inPoint`.

## Errores comunes que evita o menciona
- **Valores negativos en Opacity o Scale:** Si la amplitud es mayor que el offset, la oscilación genera valores negativos que After Effects recorta (Opacity no acepta <0%, Scale invierte). Solución: reducir amplitud y sumar offset.
- **Rotación no alineada con el movimiento:** Usar `Math.sin()` para rotación hace que el objeto apunte en dirección incorrecta al inicio. Solución: usar `Math.cos()` para que la rotación esté sincronizada con la posición.
- **Oscilación relativa al tiempo de composición:** Si mueves el layer en la línea de tiempo, la oscilación no se desplaza con él. Solución: usar `time - inPoint` en lugar de `time`.