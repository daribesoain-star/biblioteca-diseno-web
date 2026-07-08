# Knockout Text Animation for Final Cut Pro
**Fuente:** jennjagerpro | https://youtu.be/W0AUJqlgezQ

## Qué enseña (2-3 líneas)
Cómo crear plantillas de título animadas estilo "knockout" (recorte) en Apple Motion, inspiradas en promociones olímpicas, y publicarlas en Final Cut Pro. Cubre el uso de capas clonadas, máscaras de imagen, comportamientos Move, máscaras rectangulares con fotogramas clave, y la publicación de parámetros para control en FCP.

## Lecciones accionables
- **Configuración inicial del proyecto:** Duración 5 segundos, tipo "Final Cut Title". Usa la fuente **Helvetica New**, todo en mayúsculas. Tamaño de texto **400**, alineación vertical **inferior**, interlineado **-177**. En Propiedades, posición en **0,0**.
- **Clonar texto:** Selecciona el texto original y presiona **tecla K** para clonar. Arrastra el clon a un nuevo grupo llamado "Top text". Desactiva el texto original (desmarcar casilla).
- **Alinear texto al centro horizontal:** Activa reglas (View > Show Overlays > Rulers). Arrastra una guía horizontal al punto **0** (centro). En el clon, ajusta la posición Y para que el borde inferior del texto toque la guía.
- **Comportamiento Move en el clon:** Selecciona el clon > Behaviors > Basic Motion > **Move**. Coloca el playhead en el fotograma **20**, selecciona la barra Move y presiona **I** (inicio). Avanza **12 fotogramas** (Shift + flecha derecha 10 + dos flechas simples) y presiona **O** (fin). Al final del Move, modifica la posición Y para que el borde superior del texto toque la guía. Cambia velocidad de **Constant** a **Accelerate**.
- **Máscara de imagen con color sólido:** En el grupo "Top text", agrega un **Color Solid** (Library > Generators). Cámbialo a **blanco**. En Propiedades, activa **Crop** y recorta el **inferior** en **1080** (para 4K). Haz clic derecho sobre el sólido > **Add Image Mask**. En el pozo de la máscara, arrastra el **clon** del grupo "Top text".
- **Duplicar grupo para texto inferior:** Duplica el grupo "Top text" (clic derecho > Duplicate), renómbralo "Bottom text". En el sólido de color del grupo inferior, cambia el Crop a **superior** en **1080**. En la máscara de imagen del grupo inferior, arrastra el **clon del grupo inferior** al pozo y activa **Invert Mask**.
- **Máscara rectangular para wipe de entrada/salida:** Selecciona el grupo "Top text". Usa la herramienta **Rectangle Mask** y dibuja un rectángulo en la mitad inferior del canvas, alineado con la guía central. En el fotograma **0**, agrega un fotograma clave en **Position** (Y). Avanza **12 fotogramas** y reposiciona la máscara para que su borde inferior toque la guía. Para la salida: en el fotograma **-12** desde el final, agrega un fotograma clave sin cambiar valores. En el último fotograma, reposiciona la máscara para que su borde superior toque la guía.
- **Invertir máscara para grupo inferior:** Copia la máscara rectangular del grupo superior y pégala en el grupo inferior. Intercambia los fotogramas clave rojos: mueve el primero después del segundo, y el segundo al primer fotograma. Repite el intercambio para los dos últimos fotogramas clave.
- **Marcadores Build In/Build Out:** Coloca el playhead después del segundo fotograma clave de las máscaras. Clic derecho en la regla > **Add Marker**. Edita el marcador: tipo **Build In Optional**. Repite al final del timeline con tipo **Build Out Optional**.
- **Comportamiento Link para sincronizar:** En el clon del grupo "Bottom text", en la línea **Position**, agrega Behavior > Parameter > **Link**. En el pozo Source, arrastra el **clon del grupo "Top text"**. Repite para el color del sólido inferior: selecciona el sólido, en el parámetro **Color**, agrega Link y arrastra el sólido superior al pozo.
- **Publicar parámetros para FCP:** En el texto original (desactivado), publica: **Content**, **Font**, **Size**, **Alignment**, **Line Spacing**, y **Y Offset** (renombrar a "Start Position"). En el clon del grupo superior, dentro del comportamiento Move, publica: **Y Position** (renombrar "End Position") y **Speed**. En el sólido de color del grupo superior, publica: **Color**.
- **Guardar y publicar:** File > Save As > guardar en la categoría **Favorites** con nombre "Text Knockout Horizontal". En FCP, arrastra la plantilla a un clip. Ajusta "End Position" para separar líneas. Puedes fotograma clave "End Position" para animar.
- **Convertir a vertical:** Guarda como "Text Knockout Vertical". Agrupa ambos grupos (Top y Bottom) en un grupo padre. Rota el grupo padre **90°**. Reposiciona en X para que el sólido blanco quede en el borde. Ajusta tamaño y espaciado del texto original. En el clon del grupo superior, reposiciona usando **X** (no Y). Publica: **Y Offset** del texto original como "Start Position", **X Position** del Move como "End Position", y **X Offset** del texto original como "Vertical Position". Reordena parámetros publicados arrastrándolos.

## Reglas para agentes
- Usa **Helvetica New** en **mayúsculas** para el texto base cuando crees títulos knockout.
- Aplica **Clone Layer** (tecla K) en lugar de duplicar texto manualmente para mantener sincronización entre capas.
- Usa **Image Mask** con un **Color Solid** recortado para crear el efecto de recorte (knockout) en lugar de máscaras de texto directas.
- Usa **Link Behavior** para sincronizar posición y color entre grupos superior e inferior; nunca ajustes manualmente ambos por separado.
- Publica parámetros **Content**, **Font**, **Size**, **Alignment**, **Line Spacing** y **Y Offset** del texto original para control en FCP; nunca publiques parámetros de capas visibles directamente.
- Usa **Build In Optional** y **Build Out Optional** markers para dar flexibilidad de animación en FCP; nunca uses markers estándar para esto.
- Cuando conviertas a orientación vertical, **agrupa** los grupos Top y Bottom antes de rotar, y cambia los parámetros publicados de Y a X según corresponda.

## Errores comunes que evita o menciona
- **No alinear las máscaras rectangulares exactamente con la guía central** – causa cortes imprecisos en la animación de wipe. El tutorial enfatiza hacer zoom para precisión milimétrica.
- **Olvidar desactivar el texto original** – causa duplicación visible de texto en el canvas.
- **No intercambiar los fotogramas clave al copiar la máscara al grupo inferior** – la animación de wipe sale en dirección incorrecta.
- **Publicar parámetros incorrectos al convertir a vertical** – los valores Y ya no controlan la posición correcta; hay que republicar usando X.
- **No renombrar los parámetros publicados** – dificulta el uso en FCP porque los nombres por defecto no son descriptivos.