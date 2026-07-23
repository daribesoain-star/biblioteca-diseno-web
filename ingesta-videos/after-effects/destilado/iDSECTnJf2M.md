# Three motion graphics techniques for your After Effects projects
**Fuente:** olly | https://youtu.be/iDSECTnJf2M

## Qué enseña
Tres técnicas de motion graphics en After Effects: "snapping" (una variante del match cut para enfatizar impacto y fricción), entrelazado de formas mediante Set Matte con máscaras y compositing options, y control de gradientes animados con nulls y expresiones para que sigan el movimiento de extremos de un trazo.

## Técnicas accionables

- **Técnica 1: Snapping (match cut con pausa de impacto)**
  - Animar posición de dos capas (ej. círculos) con keyframes: posición inicial → punto de contacto → posición final intercambiada.
  - En el Graph Editor, ajustar los handles de velocidad: llevar los extremos de posición a máxima velocidad (curva en forma de "V" invertida suave).
  - Para el snapping: añadir un "pose" (pausa) unos fotogramas antes del punto de contacto. Insertar un keyframe adicional justo antes del contacto y mantener la posición estática unos frames.
  - Ajustar la curva de velocidad para que muestre un pequeño impacto: velocidad baja en el contacto, luego crece lentamente.
  - Animar también la forma (path) de los círculos: mantener el path normal hasta justo antes del contacto, luego aplicar squashing (escalado no uniforme o deformación del path) durante unos frames para simular fricción.
  - Sincronizar sonidos de impacto con cada acción usando la línea de tiempo de AE (arrastrar archivos de audio y alinearlos visualmente con los keyframes de movimiento).

- **Técnica 2: Entrelazado de formas con Set Matte y máscara**
  - Seleccionar la capa superior (ej. círculo blanco).
  - Aplicar efecto: **Effect > Channel > Set Matte**.
  - En el panel de efectos, en **Set Matte**, elegir como capa de mate la otra forma (ej. círculo negro). Activar **Invert Matte**.
  - Dibujar una máscara (herramienta **Pen Tool** o **Shape Tool**) en la capa, delimitando solo una de las dos áreas de superposición.
  - Ir a las propiedades del efecto Set Matte, desplegar **Compositing Options** y hacer clic en **Add** (junto a "Mask"). Esto restringe el efecto solo al área de la máscara.
  - Para el efecto de transparencia en la superposición:
    - Duplicar la capa del círculo que será visible a través del otro (ej. círculo blanco). Llevar la copia al frente.
    - Aplicar **Set Matte** con la máscara como antes para que solo sea visible en la superposición.
    - Añadir **Effect > Matte > Simple Choke** (valor sugerido: 50) para reducir el área de superposición.
    - Añadir **Effect > Blur & Sharpen > Fast Box Blur** (valor sugerido: 20).
    - Reducir **Opacity** de la capa para suavizar el color.
    - Repetir el proceso con el otro círculo (duplicar, invertir el mate, copiar Choke y Blur, bajar opacidad).
    - Opcional: aplicar **Layer Styles > Inner Glow** e **Inner Shadow** para dar profundidad.

- **Técnica 3: Gradiente animado con nulls y expresión**
  - Crear un trazo (Stroke) con **Gradient Stroke** (en propiedades de forma, elegir "Gradient Stroke" en lugar de "Stroke" sólido).
  - En las propiedades del gradiente, localizar **Start Point** y **End Point**.
  - Crear dos objetos nulos (**Layer > New > Null Object**) para controlar cada extremo del gradiente.
  - Posicionar cada nulo donde se desee el inicio y fin del gradiente.
  - En la capa del trazo, seleccionar solo el parámetro **Start Point** del gradiente.
  - En lugar de parentar directamente (que causa desajuste de coordenadas), aplicar esta expresión a **Start Point**:
    ```javascript
    thisComp.layer("NombreDelNulo1").transform.position
    ```
  - Aplicar la misma expresión a **End Point** pero apuntando al segundo nulo:
    ```javascript
    thisComp.layer("NombreDelNulo2").transform.position
    ```
  - Animar la posición de los nulos con keyframes para que se acerquen o alejen.
  - Ajustar curvas de velocidad en el Graph Editor: para un match cut, poner máxima velocidad al final del movimiento (curva con handle hacia arriba).

## Reglas para el erudito

- Usa **Set Matte** con **Compositing Options > Add** cuando necesites aplicar un efecto solo dentro de una máscara sin duplicar la capa.
- Nunca parentes directamente el parámetro **Start Point** o **End Point** de un gradiente a un nulo; usa la expresión `thisComp.layer("nulo").transform.position` para mantener la referencia correcta de coordenadas de composición.
- Para snapping, inserta siempre un keyframe de pausa (pose) unos fotogramas antes del punto de contacto, y ajusta la curva de velocidad para que la velocidad sea mínima en el impacto y luego crezca gradualmente.
- Valores por defecto recomendados: **Simple Choke** = 50, **Fast Box Blur** = 20, opacidad reducida a ~50-70% para el efecto de transparencia.

## Errores comunes que evita o menciona

- No parentar solo la propiedad de posición de un gradiente a un nulo: causa desajuste porque un parámetro usa el espacio de composición y el otro el espacio del objeto. La expresión es la solución correcta.
- No olvidar que al duplicar una capa para el efecto de transparencia, los efectos aplicados se comportan como entidades separadas; por eso recomienda usar Set Matte con máscara en lugar de duplicar y enmascarar manualmente.
- No omitir la sincronización de sonido: sin efectos de sonido (de Epidemic Sound o similares) la animación de snapping se siente incompleta.