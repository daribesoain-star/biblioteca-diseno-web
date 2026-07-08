# 🔵 NEW DAVINCI RESOLVE 19 COURSE 20 🎬 Chapter 17: INTRODUCTION TO PARTICLES IN FUSION
**Fuente:** mundoaudiovisual | https://youtu.be/TZdcBSrkFU0

## Qué enseña
Introducción a los sistemas de partículas en el módulo Fusion de DaVinci Resolve 19. Explica la función de los nodos Emitter y pRender, y cómo configurar parámetros básicos (número de partículas, velocidad, ángulo, estilo, tamaño, color, duración) para crear un efecto de texto que se revela con partículas. También muestra cómo añadir nodos de turbulencia y glow para mejorar el resultado visual.

## Lecciones accionables
- **Crear una composición Fusion:** Ir a Effects → New Fusion Composition, duración 4 segundos, sin colocarla en la línea de tiempo.
- **Añadir nodos de partículas:** Arrastrar el nodo **Emitter** (pEmitter) y el nodo **pRender** (particle renderer) al área de nodos. Conectar pRender al MediaOut.
- **Configurar número de partículas:** En los controles del Emitter, en **Number**, escribir `1000` (valor alto consume muchos recursos del sistema).
- **Ajustar resolución de previsualización:** En el visor, bajar la resolución a **25%** o **50%** para que renderice más rápido mientras se configura.
- **Configurar variación:** En **Variation** del Emitter, poner `200` para que las partículas tengan diferencias entre sí.
- **Ajustar velocidad:** En **Speed**, poner `0.1`; en **Speed Variation**, poner `0.05`.
- **Configurar ángulo de emisión:** En **Angle**, poner `180`; en **Angle Variation**, poner `120`.
- **Ajustar herencia de movimiento:** En **Inherit**, poner `0.1` para que las partículas sigan al emisor cuando se mueve.
- **Cambiar estilo de partícula:** En **Style**, seleccionar `Blob` (o el que se prefiera).
- **Modificar tamaño de partícula:** En **Size**, poner `0.05` o `0.06`; en **Size Variation**, poner `0.05`.
- **Configurar color y transparencia:** En **Colors**, añadir un punto, poner el primer color verde, y en el segundo punto ajustar **Alpha** para que las partículas se disuelvan al final (más transparentes).
- **Ajustar región del emisor:** En **Region**, bajar **Size** a `0.05` para que el área de emisión sea más pequeña.
- **Controlar duración de partículas:** En **Duration**, poner `11`; en **Duration Variation**, poner `5` para que las partículas tengan vida limitada.
- **Eliminar explosiones no deseadas:** En **Position Variation**, subir a `0.5`; en **Time Distribution**, seleccionar `Random`.
- **Animar el emisor con keyframes:** Posicionar el emisor fuera del encuadre al inicio, poner un keyframe en **Position**; mover al final del clip (frame 95) y arrastrar el emisor a la posición deseada, poner otro keyframe.
- **Añadir nodo de turbulencia:** Arrastrar el nodo **Turbulence** entre el Emitter y el pRender. En sus controles, poner **X** a `0.4` e **Y** a `1.5`.
- **Añadir glow:** Arrastrar el nodo **Glow** (escribir "Glow" con mayúscula inicial y espacio) debajo del pRender. Conectar la salida del pRender a la entrada del Glow, y la salida del Glow al MediaOut. Ajustar intensidad al gusto.
- **Aplicar glow al texto:** Añadir otro nodo **Glow** al texto, con color verde para que combine con las partículas.

## Reglas para agentes
- Usa **pEmitter + pRender** como estructura base obligatoria para cualquier sistema de partículas en Fusion.
- Cuando el número de partículas supere 500, baja la resolución de previsualización a **25%** o **50%** para evitar ralentizaciones.
- Conecta el nodo **Turbulence** siempre entre el Emitter y el pRender, nunca después del pRender.
- Para que las partículas sigan al emisor en movimiento, ajusta **Inherit** a un valor entre `0.1` y `0.3`.
- Si aparecen ráfagas o explosiones no deseadas, ajusta **Position Variation** a `0.5` o superior y cambia **Time Distribution** a `Random`.
- Para partículas con vida limitada, configura **Duration** con un valor menor a 20 y **Duration Variation** proporcional (ej: 11 y 5).
- Nunca uses valores de **Speed** superiores a 1 sin reducir primero el número de partículas, o el sistema colapsará.

## Errores comunes que evita o menciona
- **No poner el emisor dentro del encuadre desde el inicio:** El emisor debe comenzar fuera del frame y animarse hacia adentro para que el efecto de revelado funcione correctamente.
- **Olvidar ajustar la duración de las partículas:** Si no se configura **Duration**, las partículas duran indefinidamente (100%) y siguen apareciendo incluso después de que el emisor se haya movido.
- **Usar resolución al 100% durante la configuración:** Ralentiza el sistema innecesariamente; se debe bajar a 25% o 50% mientras se ajustan parámetros.
- **No ajustar Position Variation y Time Distribution:** Provoca que las partículas salgan en ráfagas en lugar de de forma continua y natural.
- **Conectar el nodo Turbulence después del pRender:** La turbulencia debe ir entre el Emitter y el pRender para afectar el movimiento de las partículas antes de renderizarse.