# Long Shadow Text Animation
**Fuente:** jennjagerpro | https://youtu.be/EQt8eJI-o1I

## Qué enseña (2-3 líneas)
Cómo crear una animación de texto con sombras largas 3D estilo "subscribe" para YouTube en Apple Motion, replicando el estilo del pack Mo Type Titles de FX Factory. Cubre el uso del filtro Extrude, ajuste de ángulos, animación de entrada/salida con Drift In/Out y sincronización de múltiples líneas de texto.

## Lecciones accionables
- **Crear proyecto:** preset 4K, 24 fps, duración 6 segundos
- **Texto inicial:** escribir "LIKE" en mayúsculas, fuente **Avenir Next Bold**, tamaño **288**
- **Filtro Extrude:** ir a *Stylize > Extrude* o buscarlo en la biblioteca de filtros
- **Ajustar distancia de sombra:** clickear el valor numérico (no slider), arrastrar hacia arriba hasta **500** (máximo)
- **Ajustar tamaño de sombra:** llevar **Size** a **0** para obtener punta afilada
- **Ángulo de sombra:** usar controles en canvas, arrastrar hacia la esquina inferior derecha
- **Alargar sombra:** arrastrar el texto hacia la esquina superior izquierda del canvas, luego afinar ángulo
- **Color de sombra:** en *Extrude Style*, cambiar de **Shading** a **Gradient**; seleccionar primer color tag y elegir color sólido (ej. naranja); arrastrar el segundo color tag (blanco) fuera del gradiente
- **Igualar brillo:** ajustar *Front Brightness* y *Back Brightness* hasta que la sombra se vea uniforme
- **Mover texto sin romper sombra:** activar **Fixed Resolution** en el grupo; mover el grupo (no el texto individual)
- **Animación de entrada:** seleccionar texto > *Behaviors > Text Basic > Drift In*
- **Configurar Drift In:** en Inspector, cambiar *Direction* con controles en canvas (origen desde esquina inferior derecha); *Opacity* a **100**; *Animate* a **Character**; *Spread* a **8**
- **Ajustar velocidad:** en timeline, acortar Drift In a **20 frames**; en *Speed* elegir **Custom**; abrir Keyframe Editor, cambiar interpolación a **Bezier**, exagerar handles
- **Animación de salida:** agregar *Behaviors > Text Basic > Drift Out*; arrastrarlo al final del timeline; duración **20 frames**; usar controles en canvas para que vuele hacia abajo fuera de cuadro; *Opacity* a **100**
- **Duplicar grupo:** seleccionar grupo > **Cmd+D**; modificar texto a "SUBSCRIBE"
- **Reposicionar texto:** seleccionar grupo duplicado, ajustar valor **X** en propiedades
- **Ajustar ángulo de sombra por línea:** seleccionar filtro Extrude de cada línea, modificar ángulo para que coincida
- **Cambiar color por línea:** en Extrude, cambiar color del gradiente (ej. rosa)
- **Escalar texto si se corta:** reducir tamaño en *Text > Format*, luego escalar grupo en *Properties > Scale* para igualar tamaño
- **Sincronizar timing:** mover Drift Out de "RING THE BELL" primero, luego "SUBSCRIBE", dejar "LIKE" al final; recortar extremos de texto en timeline
- **Ajustar Spread por número de caracteres:** "SUBSCRIBE" → **Spread 20**; "RING THE BELL" → **Spread 30**
- **Exportar con transparencia:** *Video Codec* → **Apple ProRes 4444**

## Reglas para agentes
- Usa **Fixed Resolution** en el grupo cuando muevas texto con filtro Extrude para mantener la sombra anclada al texto
- Nunca arrastres el texto individualmente con Extrude aplicado; mueve siempre el grupo
- Usa **Bezier** en el Keyframe Editor para exagerar la velocidad de animación cuando uses *Speed > Custom*
- Cuando dupliques grupos con Extrude, ajusta el ángulo de cada sombra manualmente para que coincida visualmente
- Usa **Apple ProRes 4444** al exportar para fondo transparente
- Ajusta el valor de **Spread** proporcionalmente al número de caracteres (más caracteres = mayor spread)

## Errores comunes que evita o menciona
- El slider de distancia del filtro Extrude solo llega a 100; hay que clickear el valor numérico y arrastrar hacia arriba para alcanzar 500
- Arrastrar el texto directamente con Extrude aplicado hace que la sombra se quede fija en su posición original; la solución es activar Fixed Resolution y mover el grupo
- El texto puede cortarse al reposicionarlo; se soluciona reduciendo el tamaño del texto y escalando el grupo para compensar
- Los valores por defecto de Drift In/Out incluyen fade (opacity < 100); hay que subir Opacity a 100 para eliminarlo
- El Drift Out por defecto se coloca al inicio del texto; hay que arrastrarlo manualmente al final del timeline