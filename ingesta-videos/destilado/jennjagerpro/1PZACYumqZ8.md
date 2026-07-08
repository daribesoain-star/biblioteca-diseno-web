# Create Pro Logo Animations in Apple Motion | Illustrator to Motion Workflow Tutorial
**Fuente:** jennjagerpro | https://youtu.be/1PZACYumqZ8

## Qué enseña (2-3 líneas)
Aprende a importar un logo desde Illustrator a Apple Motion, limpiar capas innecesarias, y animar cada elemento con keyframes, behaviors y filtros. Cubre técnicas como expansión centrífuga de letras, fade progresivo, colorización dinámica con stroke filter, y stagger de caracteres para un resultado profesional.

## Lecciones accionables
- **Exportar desde Pixelmator Pro a Motion:** Ve a `Share > Export`, configura frame rate a `60 fps` y timeline a `6 seconds`. El archivo generado contiene un proyecto de Motion listo para abrir.
- **Ajustar dimensiones del proyecto:** Selecciona `Project` en el panel de proyecto, ve a `Inspector > Properties` y cambia a resolución `4K`.
- **Limpiar capas del diseñador:** Twirl down en todas las capas, elimina elementos sobrantes (ej: círculos negros, verdes, copias extra de formas). Agrupa elementos relacionados (ej: botón de play + círculo O en un mismo grupo).
- **Animación de expansión centrífuga (letras "Motion"):**
  1. Coloca el playhead en `1s 15f`.
  2. Selecciona todos los elementos del grupo "Motion".
  3. Añade keyframe en `X Position` (línea de posición X).
  4. Mueve el playhead a `25f`.
  5. Cambia todos los valores X a `0`.
  6. Arrastra reglas vertical y horizontal desde las reglas hasta el centro (0,0). Activa `Overlays` para ver wireframes.
  7. Ajusta manualmente el valor X de cada elemento en el keyframe de `25f` hasta que el punto central del wireframe coincida con las reglas.
  8. Elimina las reglas arrastrándolas fuera del canvas.
- **Curva dinámica con Keyframe Editor:** Abre `Keyframe Editor`, selecciona todos los elementos, agarra los handles de los keyframes y ajústalos para crear una `S-curve` exagerada.
- **Ocultar elementos al inicio:** Coloca playhead en `30f`, selecciona todos los elementos excepto el grupo del botón de play, presiona `I` (tecla I) para establecer el inicio de esos elementos en ese punto.
- **Añadir fade in:** Selecciona el primer elemento, agrega `Behaviors > Basic Motion > Fade In/Fade Out`. Pon `Fade Out Time` en `0` y `Fade In Time` en `20 frames`. Copia el behavior y pégalo en los demás elementos del grupo.
- **Camuflar un círculo molesto con filtro Colorize:**
  1. Selecciona el círculo teal.
  2. Ve a `Filters > Color > Colorize`.
  3. En `Remap Whites`, usa el color picker para elegir el azul oscuro del logo.
  4. Arrastra desde el color well blanco al negro para que ambos sean iguales.
  5. Keyframe la propiedad `Mix`: en `38f` añade keyframe con mix alto, unos frames después baja el mix. Ajusta la posición de los keyframes hasta que el círculo no sea notorio al inicio.
- **Animación del botón de play (escala + rotación Z):**
  1. **Escala:** Playhead al inicio, selecciona el botón de play, keyframe en `Scale` y ponlo a `0`. Playhead en `30f`, keyframe en `Scale` y ponlo a `100`. En Keyframe Editor, dale S-curve.
  2. **Rotación Z:** En Inspector, twirl down `Rotation`, haz clic derecho en `Z Rotation` y elige `Add Parameter Behavior > Ramp`. Pon `Start Value` en `330`. Coloca playhead en `1s 15f`, selecciona el behavior Ramp, presiona `O` para recortarlo. Sube `Curvature` a `100`.
- **Recolorar letras "Ignite" con Stroke Filter:**
  1. Selecciona la letra "I".
  2. Ve a `Filters > Border > Stroke`.
  3. En `Stroke Type`, elige `Gradient`.
  4. Twirl down `Gradient`: primer color tag con valor `C8A300`, segundo con `CB0061`.
  5. Cambia `Position` de `Outside` a `Inside`.
  6. Sube `Width` hasta llenar el carácter.
- **Transición de color y opacidad con Custom Behavior:**
  1. Selecciona la letra "I".
  2. Ve a `Behaviors > Parameter > Custom`.
  3. En `Add Parameter`, agrega `Properties > Blending > Opacity` y `Filters > Stroke > Mix`.
  4. **Keyframe Opacity:** Playhead en `25f`, keyframe en Opacity, valor `-00` (equivale a 0% visible). Playhead en `50f`, keyframe en Opacity, valor `0` (equivale a 100% visible). En Keyframe Editor, dale S-curve.
  5. **Keyframe Mix:** Playhead en `25f`, keyframe en Mix. Playhead en `2s`, baja el Mix al mínimo. En Keyframe Editor, desactiva temporalmente los keyframes de Opacity, ajusta tangentes del Mix para que se mantenga rosa un momento y luego fadee lentamente al gradiente original.
- **Copiar y pegar behaviors a otras letras:** Selecciona el `Stroke filter` y el `Custom behavior` en la letra "I", haz clic derecho `Copy`, selecciona las demás letras de "Ignite" y pega (`Paste`).
- **Stagger de letras "Ignite":** Deja la "I" donde está. Selecciona la "G" y muévela `9 frames` adelante. La siguiente letra muévela `18 frames` desde el inicio (9+9). La siguiente `27 frames`. Acelera: la siguiente `32 frames`. La última un poco más allá.

## Reglas para agentes
- **Usa** `Share > Export` desde Pixelmator Pro con `60 fps` y `6 segundos` para generar un proyecto Motion listo.
- **Usa** `Inspector > Properties` para cambiar a `4K` inmediatamente después de abrir el proyecto.
- **Usa** la tecla `I` para establecer el inicio de elementos en el timeline cuando quieras que aparezcan después del frame 0.
- **Usa** `Behaviors > Parameter > Custom` para animar múltiples parámetros (opacidad + mix de filtro) en un solo behavior.
- **Usa** `Keyframe Editor` para ajustar curvas (S-curve) en keyframes de posición, escala y mix.
- **Usa** `Filters > Border > Stroke` con `Type: Gradient`, `Position: Inside` y `Width` alto para rellenar caracteres con un gradiente temporal.
- **Nunca** dejes capas extrañas del diseñador sin eliminar (círculos negros, verdes, copias duplicadas) antes de animar.
- **Nunca** uses valores X genéricos para centrar elementos; verifica con reglas y wireframes que el punto central coincida con el centro del canvas.
- **Nunca** apliques fade in/fade out behavior sin poner `Fade Out Time` a `0` si solo quieres fade de entrada.
- **Nunca** uses colorize filter sin keyframe el `Mix` para que la transición sea gradual y no abrupta.

## Errores comunes que evita o menciona
- **Elementos no centrados al usar keyframe X=0:** Ocurre porque en Illustrator las coordenadas de origen pueden estar desplazadas. Solución: arrastrar reglas al centro y ajustar manualmente el valor X de cada elemento en el keyframe.
- **Círculo incompleto que distrae visualmente:** El círculo teal parcial llama la atención al inicio. Solución: usar filtro `Colorize` con keyframe en `Mix` para que aparezca gradualmente desde el color del fondo.
- **Capas basura del diseñador:** El archivo AI puede contener elementos no usados (círculos negros, verdes, copias extra). Solución: revisar y eliminar antes de animar.
- **Movimiento lineal sin dinamismo:** Si no se ajustan curvas en Keyframe Editor, la animación se siente plana. Solución: siempre dar S-curve a keyframes de posición, escala y mix.