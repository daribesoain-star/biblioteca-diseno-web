# Apple Motion Text Tutorial 
**Fuente:** jennjagerpro | https://youtu.be/gsu50LYFfZ4

## Qué enseña (2-3 líneas)
Este tutorial enseña a crear un efecto de texto 3D que parece hecho de cubos de hielo cayendo en una bebida carbonatada (como Sprite) usando Apple Motion y Final Cut Pro. Cubre desde la animación de caída con rebote, la configuración de materiales para simular hielo transparente, hasta la adición de burbujas y un filtro de condensación.

## Lecciones accionables
- **Agregar texto y fuente:** Usa la fuente "Soap" (o cualquier fuente blocky y cúbica). Crea una letra "I" grande y centrada en el lienzo.
- **Añadir comportamiento Overshoot (caída):** Ve a `Behaviors > Parameter > Overshoot`. En el campo "Apply to", cambia a `Transform Position` y selecciona `Y`. Ajusta el valor "Start" arrastrando los números (no el slider) para que la letra salga completamente del cuadro (ej. valor muy superior a 100). Reduce la barra púrpura del Overshoot en la línea de tiempo para acelerar la acción (aprox. 2 segundos).
- **Añadir segundo Overshoot (rotación/tumbling):** Repite `Behaviors > Parameter > Overshoot`. Esta vez aplica a `Rotation` y luego a `X` y `Z`. Valores sugeridos: Rotation X en 57, baja un poco el "Ramp", sube "Acceleration". Reduce la duración de la barra púrpura para un efecto de giro más rápido.
- **Convertir texto a 3D:** Selecciona la letra en el panel de proyecto. Ve a `Text > Appearance` y activa el botón `3D Text`.
- **Ajustar profundidad 3D:** Sube `Depth` a 180. Asegura que `Depth Direction` esté en `Centered`. Deja `Front Edge` como `Round`, cambia `Back Edge` a `Square Ring`.
- **Configurar material para hielo:** En `Material`, cambia de `Single` a `Metal` y selecciona `Aluminum Foil`. Luego, en `Substance`, cambia de `Metal` a `Generic` (esto habilita el campo "Distress" necesario). Vuelve a `Material` y cámbialo a `Multiple`.
- **Ajustar opacidad y textura por cara:**
    - **Front Edge:** Baja `Opacity`, cambia `Distress` de `Wrinkles` a `Wavy`, sube `Wavy` a 40, baja `Opacity` nuevamente.
    - **Sides:** Cambia `Wrinkles` a `Bumps`, hazlo muy pronunciado.
    - **Back Edge:** Baja `Opacity`.
- **Configurar iluminación:** Ve a `Lighting`, cambia a `Diagonal Right`. Baja `Intensity` a 50.
- **Añadir filtro Extrude:** Selecciona la letra, ve a `Filters > Stylize > Extrude`. Ajusta `Depth` a 64.
- **Duplicar y deletrear:** Duplica la letra (clic derecho > Duplicate) para crear 6 copias más. Cambia el texto de cada una para deletrear "ICE TEXT". Reordena las letras en el panel de proyecto para variar la superposición (unas detrás de otras).
- **Aleatorizar comportamientos:** Ajusta los valores de los Overshoots de cada letra individualmente para que caigan y giren de forma diferente. Desliza cada letra en la línea de tiempo para que caigan una tras otra, no todas al mismo tiempo.
- **Añadir fondo de agua:** Ve a `Library > Content > Water Dance`. Arrástralo al panel de proyecto (confirma cambiar a 3D). Coloca el grupo `Water Dance` arriba de todo. Dentro del grupo, arrastra `Gradient` al fondo del panel de proyecto. Selecciona `Gradient`, ve a `Inspector > Properties`, escala para cubrir el fondo. Selecciona `Caustics` y escala también.
- **Ajustar gradiente:** Selecciona `Gradient`, ve a `Generator` y cambia los colores a escala de grises (agua no es azul).
- **Ajustar opacidad de letras:** Selecciona todas las letras (Shift + clic), ve a `Properties` y baja la `Opacity` general.
- **Ajustar Caustics:** Selecciona `Caustics`, juega con `Refraction` (tamaño más grande), `Brightness` (sutil) y `Speed`.
- **Añadir burbujas (emitter):** Ve a `Library > Particle Emitters > Bubbles`. Arrástralo debajo de `Caustics` pero encima del texto. En `Inspector`:
    - `Shape`: cambia de `Line` a `Burst`.
    - `Radius`: 1000.
    - `Emission Angle`: 330.
    - `Birth Rate`: 235.
    - `Birth Rate Randomness`: 82.
    - `Initial Number`: 25.
    - `Life`: 8.
    - `Speed`: 50.
    - `Scale`: baja para burbujas pequeñas.
    - `Scale Randomness`: sube.
- **Posicionar emitter:** En `Properties`, mueve la posición al fondo del cuadro. Escala si es necesario. Cambia `Number of Arms`. Baja `Opacity` general del emitter.
- **Exportar a Final Cut Pro:** Exporta la animación desde Motion e impórtala en Final Cut.
- **Añadir filtro Water Pane en FCP:** En Final Cut, ve a `Effects > Distortion > Water Pane`. Ajústalo:
    - `Vignette`: desliza a 0.
    - `Refraction Amount`: sube para ver las gotas.
    - `Tint`: baja casi a 0.
    - `Refraction Softness`: sube un poco.
- **Escalar para recortar bordes oscuros:** Escala ligeramente el clip en FCP para recortar las gotas oscuras del perímetro.

## Reglas para agentes
- Usa una fuente blocky y cúbica (como "Soap") cuando quieras simular cubos de hielo; nunca uses fuentes altas y delgadas.
- Cambia `Substance` a `Generic` después de seleccionar `Aluminum Foil` para habilitar el campo `Distress`; sin este paso no podrás ajustar la textura del hielo.
- Aplica el filtro `Extrude` después de configurar el material 3D para darle profundidad extra al hielo.
- Cuando dupliques letras, reordénalas en el panel de proyecto para variar la superposición y evitar que todas estén en el mismo plano.
- Ajusta los comportamientos `Overshoot` de cada letra individualmente para que la animación de caída y giro sea aleatoria; nunca dejes los valores idénticos tras duplicar.
- Coloca el `Gradient` debajo del texto y los `Caustics` encima del texto para simular correctamente la luz y el fondo del agua.
- En Final Cut Pro, desactiva el `Vignette` del filtro `Water Pane` y baja el `Tint` casi a cero para evitar bordes oscuros no deseados.

## Errores comunes que evita o menciona
- **No usar el slider para valores altos:** Para valores de "Start" superiores a 100 en Overshoot, arrastra los números directamente con el ratón, no uses el slider, ya que este tiene un límite.
- **No olvidar bajar la opacidad en todas las caras:** Especialmente en `Sides`, para lograr la transparencia del hielo; el tutorial lo olvida inicialmente y lo corrige después.
- **No dejar el material por defecto:** El efecto preconstruido de "ice text" en Motion es "lame" (soso) y no es 3D; se debe crear desde cero con los pasos descritos.
- **No dejar las burbujas por defecto:** Las burbujas del emitter `Bubbles` son demasiado rápidas y grandes; hay que bajar `Speed` a 50 y reducir `Scale` para que parezcan pequeñas y efervescentes.
- **No usar el filtro Water Pane sin ajustar:** El preset del filtro `Water Pane` en Final Cut Pro es muy dramático; hay que desactivar `Vignette` y bajar `Tint` para evitar un aspecto artificial y bordes oscuros.