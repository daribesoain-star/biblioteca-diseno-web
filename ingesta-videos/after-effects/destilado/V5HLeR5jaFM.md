# How to Make Anything React to Audio & Music in After Effects
**Fuente:** Smertimba Graphics | https://youtu.be/V5HLeR5jaFM

## Qué enseña
Este tutorial enseña cómo usar la función "Convert Audio to Keyframes" para generar datos de audio y vincularlos mediante expresiones a cualquier propiedad de una capa (como escala). También cubre cómo ajustar la intensidad de la reacción y cómo establecer un umbral específico para controlar cuándo y cuánto reacciona la propiedad.

## Técnicas accionables
- **Convertir audio a keyframes:** Haz clic derecho sobre la capa de audio en la línea de tiempo → **Keyframe Assistant** → **Convert Audio to Keyframes**. Se crea una nueva capa llamada "Audio Amplitude".
- **Limpiar canales innecesarios:** Expande la capa "Audio Amplitude" → Effects → selecciona "Left" y "Right" channels y presiona **Delete** para quedarte solo con "Both Channels".
- **Vincular escala (método con dos valores):** Selecciona la capa del logo → presiona **S** para mostrar escala → mantén presionada la tecla **Alt** y haz clic izquierdo en el cronómetro de escala para activar expresiones → arrastra el **pick whip** (espiral) sobre el slider de "Both Channels" → suelta. Luego, al final de la expresión, escribe **+[100,100]** para mantener la escala original.
- **Vincular escala (método con un solo valor):** Ve a **Effects & Presets** → busca **Transform** y arrastra el efecto a la capa del logo. En el panel de controles de efecto, mantén **Alt** + clic izquierdo en el cronómetro de escala del efecto Transform → escribe **value+** antes de arrastrar el pick whip al slider de "Both Channels".
- **Ajustar intensidad de reacción:** Al final de la expresión, añade ***2** para duplicar la reacción o **/2** para reducirla a la mitad. Puedes usar cualquier número (ejemplo: *4 para una reacción muy exagerada).
- **Crear un umbral de reacción específico:** Mantén **Alt** + clic izquierdo en el cronómetro del slider de "Both Channels" → escribe la expresión: **linear(value, umbral_bajo, umbral_alto, 0, valor_máximo)**. Por ejemplo: **linear(value, 7, 20, 0, 20)**. Esto hace que valores menores o iguales a 7 den reacción cero, y valores mayores o iguales a 20 se limiten a 20.
- **Identificar valores del umbral:** Abre el **Graph Editor** en la capa "Audio Amplitude" → haz clic derecho y selecciona **Edit Value Graph** para ver los valores numéricos de los keyframes y elegir los límites bajo y alto.

## Reglas para el erudito
- Usa **value+** (con el pick whip) cuando la propiedad tenga un solo valor (como la escala del efecto Transform) para mantener el valor original y sumar la reacción del audio.
- Usa **+[100,100]** (al final de la expresión) cuando la propiedad tenga múltiples valores (como la escala nativa de la capa) para restaurar el valor por defecto.
- Nunca arrastres el pick whip sin escribir **value+** primero si quieres conservar el valor original de la propiedad; de lo contrario, la propiedad se sobrescribirá completamente.
- Para el umbral, elige valores bajos (ej. 7) y altos (ej. 20) observando los valores en el **Edit Value Graph** para que la reacción sea suave y controlada.
- Por defecto, después de aplicar **linear(value, bajo, alto, 0, alto)**, los valores por debajo del umbral bajo producen reacción cero y los valores por encima del umbral alto se limitan al valor máximo definido.

## Errores comunes que evita o menciona
- **Error:** La escala se reduce a un tamaño mínimo después de vincularla con el pick whip. **Solución:** Añadir **+[100,100]** al final de la expresión para recuperar la escala original.
- **Error:** No saber cómo ajustar la intensidad de la reacción. **Solución:** Multiplicar o dividir el valor al final de la expresión (ej. *2 o /2).
- **Error:** No establecer un umbral, lo que hace que incluso sonidos muy bajos generen reacción. **Solución:** Usar la expresión **linear(value, bajo, alto, 0, alto)** en el slider para definir un rango de reacción.