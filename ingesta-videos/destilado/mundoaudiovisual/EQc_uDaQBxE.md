# MAGIC MASK in DAVINCI RESOLVE 18 THIS IS WITCHCRAFT
**Fuente:** mundoaudiovisual | https://youtu.be/EQc_uDaQBxE

## Qué enseña
El video explica cómo usar la herramienta Magic Mask en DaVinci Resolve 18 Studio para aislar personas u objetos mediante inteligencia artificial, permitiendo efectos como cambio de fondo, color, saturación o inserción de texto detrás del sujeto sin necesidad de croma o rotoscopia manual.

## Lecciones accionables
- Activar Magic Mask desde el módulo **Color** → botón **Magic Mask** (ícono de varita mágica).
- Si no aparece el selector (+), activar **Specific Colors** en la parte superior derecha.
- Dibujar un trazo sobre el objeto/persona a aislar con el selector **+** (no necesita ser perfecto).
- Usar **Toggle Pan Mask Controls** (ícono de ojo) para ver en rojo la selección.
- Elegir **Quality** en lugar de **Speed** para bordes más precisos (depende de potencia del PC).
- Seleccionar modo **Objects** incluso para personas (el presentador recomienda este sobre **People**).
- Refinar selección con selector **-** para eliminar áreas no deseadas (ej. mesa, brazos, micrófono).
- Para tracking: presionar botón de **Forward Tracking** y **Backward Tracking** (flechas hacia adelante y atrás).
- Para aislar completamente: en nodo, hacer clic derecho → **Add Alpha Output** → conectar el punto azul del nodo al Alpha Output.
- Para efectos de color: ajustar saturación, temperatura, sombras, medios tonos o matiz directamente en el nodo con la máscara.
- Para cambiar fondo: volver al módulo **Edit**, colocar clip/imagen debajo del clip original, y el sujeto aparecerá aislado.
- Para texto detrás del sujeto: duplicar clip, eliminar Alpha Output del clip inferior, colocar título (Effects → Titles → Text+) entre ambos clips.
- Para animar texto: usar keyframes en posición dentro del módulo **Edit**.
- Para aislar una prenda específica (ej. camisa azul): dibujar trazo solo sobre esa área, refinar con selector **-**, y cambiar color con controles de rueda cromática.
- Para aislar objetos como un molino: mismo proceso, luego agregar Alpha Output y colocar texto detrás.

## Reglas para agentes
- Usa **Magic Mask** solo en **DaVinci Resolve 18 Studio** (no en versión gratuita).
- Siempre selecciona **Quality** sobre **Speed** cuando la máquina lo permita.
- Usa modo **Objects** incluso para personas, a menos que **People** sea necesario para cabello/ropa.
- Refina siempre con selector **-** después del primer trazo para eliminar áreas no deseadas.
- Activa **Specific Colors** si el selector + no aparece.
- Realiza tracking hacia adelante y atrás para cubrir todo el clip.
- Para aislar completamente, agrega **Alpha Output** al nodo de la máscara.
- Nunca uses croma o rotoscopia manual si Magic Mask puede hacer el trabajo en segundos.

## Errores comunes que evita o menciona
- No olvidar activar **Specific Colors** si el selector no aparece.
- No usar **Speed** si se busca precisión en bordes (elegir **Quality**).
- No dejar áreas no deseadas en la selección; usar selector **-** para limpiar.
- No saltarse el tracking si el clip tiene movimiento; hacer forward y backward.
- No confiar ciegamente en la selección inicial; revisar fotograma a fotograma y corregir con selector **-**.