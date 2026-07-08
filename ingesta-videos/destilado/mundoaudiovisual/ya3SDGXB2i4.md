# Curso de efectos de Video - Fusion - Davinci Resolve - 🎬 Capítulo 3 - Transformar
**Fuente:** mundoaudiovisual | https://youtu.be/ya3SDGXB2i4

## Qué enseña
Explica cómo transformar correctamente objetos (fotos, videos, logos, texto) dentro de Fusion en DaVinci Resolve, usando el nodo **Merge** y el nodo **MediaIn** para aplicar transformaciones de escala, posición, rotación, opacidad y modos de fusión. También aclara la función de los colores de los conectores del Merge (amarillo = fondo, verde = primer plano, azul = máscara).

## Lecciones accionables
- Para transformar solo el **primer plano** (foreground) de una composición, selecciona el nodo **MediaIn** que está conectado al conector verde del Merge y ajusta en el Inspector: **Scale**, **Position**, **Angle**, **Opacity**, **Blend Mode**.
- Para transformar **toda la composición** (fondo + primer plano juntos), selecciona el nodo **Merge** directamente y modifica sus parámetros en el Inspector.
- Para añadir un fondo blanco: agrega un nodo **Background** (sin nada seleccionado), conéctalo al **MediaOut**, y en el Inspector cambia el color a blanco.
- Para superponer un logo sobre un fondo: usa un nodo **Merge**. Conecta el fondo al conector **amarillo** (background) y el logo al conector **verde** (foreground). Luego conecta la salida del Merge al **MediaOut**.
- Para renombrar nodos: selecciona el nodo, presiona **F2** y escribe el nuevo nombre (ej: "logo", "background").
- Para recortar solo el primer plano con una máscara: agrega un nodo de forma (ej: **Rectangle**), conéctalo al conector **azul** del Merge. Esto recorta únicamente el objeto en el conector verde.
- Para recortar toda la composición (fondo + primer plano): coloca un nodo **Background** como base, luego un Merge con la composición completa en el conector verde, y otro Merge con el fondo en el amarillo. Conecta la máscara al conector azul del Merge superior.
- Para animar con keyframes: selecciona el nodo **MediaIn** del objeto, ve al Inspector, activa el keyframe (diamante) en **Scale** o **Opacity**, cambia el fotograma y ajusta el valor. Ejemplo: Opacity keyframe en 0 y luego en 100 para un efecto de aparición.

## Reglas para agentes
- Usa el nodo **MediaIn** para transformar solo el objeto que está en el conector verde del Merge (foreground), no el Merge completo.
- Cuando conectes un Merge, siempre enlaza el fondo al conector **amarillo** y el primer plano al conector **verde**.
- Para aplicar una máscara que recorte solo el primer plano, conecta el nodo de forma al conector **azul** del Merge.
- Nunca transformes el nodo Merge si quieres modificar solo un elemento individual; usa el MediaIn correspondiente.
- Si necesitas recortar toda la composición, añade un fondo base y un Merge adicional para jerarquizar la máscara.

## Errores comunes que evita o menciona
- No confundir los conectores del Merge: amarillo es fondo (abajo), verde es primer plano (arriba), azul es para máscaras.
- Si no hay un fondo conectado al conector amarillo, el primer plano no se verá correctamente sobre un fondo transparente.
- Al aplicar una máscara directamente al Merge sin un fondo base, el recorte no funcionará si no hay un elemento de fondo que lo soporte.
- Transformar el nodo Merge en lugar del MediaIn mueve o escala toda la composición, no solo el objeto deseado.