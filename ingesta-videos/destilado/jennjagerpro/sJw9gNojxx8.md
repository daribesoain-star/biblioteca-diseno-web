# 5 More Magnetic Mask Ideas in Final Cut Pro!
**Fuente:** jennjagerpro | https://youtu.be/sJw9gNojxx8

## Qué enseña (2-3 líneas)
Cinco técnicas avanzadas para usar la máscara magnética (Magnetic Mask) en Final Cut Pro: texto dentro de objetos, transiciones con objetos en movimiento, transiciones suaves con disolución, efectos de brillo (glow) alrededor de sujetos, y relleno de mockups de redes sociales con video. Incluye tracking, shape masks, blend modes y keyframing.

## Lecciones accionables
- **Texto dentro de un objeto (montaña):**
  1. Duplica el clip de línea principal: selecciona, Option + arrastra para copia conectada.
  2. Deshabilita el clip inferior (tecla V). Aplica Magnetic Mask al clip superior.
  3. En el inspector, en la línea Magnetic Mask, despliega y desmarca "Invert".
  4. Arrastra el texto animado debajo del clip con máscara y encima del clip original en línea principal. Habilita el clip inferior.
  5. Ajusta rotación X/Y del texto para alinearlo con el objeto.
  6. Aplica Shape Mask (Efectos > Shape Mask) al texto. Ajusta tamaño, ángulo y feather (suavizado) para recortar el texto sobrante.
  7. Deshabilita clips de máscara y texto. Selecciona clip original, añade Tracker (tracking de movimiento) y marca un punto en el objeto (ej. roca expuesta).
  8. Habilita texto, en el inspector de tracking selecciona "Attach to Object Track", desmarca rotación.
  9. Cambia blend mode del texto a "Screen". Añade un sólido de color debajo del texto, aplica el mismo Shape Mask (arrastra desde inspector), color pick del objeto, oscurece el tono, baja opacidad. Añade cross dissolves al sólido.

- **Transición con objeto entrante (sierra circular):**
  1. Conecta el clip entrante (incoming) sobre el saliente (outgoing) en línea principal.
  2. Aplica Magnetic Mask al clip entrante, máscara sobre el objeto (sierra).
  3. Coloca playhead al inicio del clip entrante. En inspector > Transform, añade keyframe en Y position, sube el valor (objeto fuera de cuadro).
  4. Avanza ~7 frames, añade otro keyframe en Y position con valor 0.
  5. Ctrl+V para expandir keyframes en timeline. Coloca playhead en el segundo keyframe.
  6. Recorta el clip saliente hasta ese punto. Con Blade tool, parte el clip conectado en ese mismo punto.
  7. Click derecho en la segunda mitad del clip entrante > "Overwrite to Primary Storyline".
  8. En inspector, deshabilita Magnetic Mask en esa segunda mitad.
  9. Expande el clip conectado unos frames hacia la derecha.
  10. Presiona T para Trim tool. Desliza el punto de corte hacia la derecha unos frames después del keyframe del clip conectado.
  11. Añade cross dissolve de ~6 frames.

- **Transición suave con disolución (camello):**
  1. Apila clip saliente sobre entrante en línea principal.
  2. Aplica Magnetic Mask al clip saliente, máscara sobre el objeto (camello).
  3. Repite pasos 5-9 de la transición anterior (partir, overwrite, deshabilitar máscara, expandir).
  4. Con Trim tool, desliza el punto de corte hacia la izquierda (antes del keyframe).
  5. Añade dissolves: uno al inicio del clip conectado, otro entre los clips de línea principal.

- **Efecto glow (brillo) alrededor de un objeto (mano robótica):**
  1. Duplica el clip en línea principal. Aplica Magnetic Mask al duplicado. Deshabilita el original.
  2. Haz otra copia del clip con máscara (arrastra). Tendrás 3 clips: superior (máscara), medio (máscara), inferior (full frame).
  3. Deshabilita el clip superior.
  4. En el clip medio, aplica Efectos > Colorize. Sube Intensity al máximo. Elige color de glow (ej. rosa-púrpura). En Colorize, remapea Blacks y Whites al mismo color (silueta sólida).
  5. Añade Efectos > Gaussian Blur al clip medio.
  6. Habilita el clip superior (máscara sin efectos).
  7. Para glow degradado: duplica el clip medio. En el nuevo duplicado, cambia color, sube blur boost. Cambia blend mode a "Add".

- **Rellenar mockup de red social con video (perro):**
  1. Coloca imagen del mockup (post de Blue Sky) en línea principal. Ajusta con recorte (crop) izquierda/derecha para eliminar bordes.
  2. Añade sólido de color para rellenar espacios negros, color pick del mockup.
  3. Coloca clip de video (perro) sobre el mockup. Duplica el clip, deshabilita el inferior.
  4. Aplica Magnetic Mask al clip superior, máscara sobre la cara/orejas del perro (evitar cuerpo sobrante).
  5. Deshabilita el clip superior. Selecciona el mockup, aplica Shape Mask con feather en 0. Ajusta tamaño y posición para enmarcar el rectángulo gris del mockup. Activa "Invert Mask" para recortar el hueco.
  6. Habilita el clip de perro sin máscara (inferior), colócalo debajo del mockup pero sobre el sólido. Con Command + selección, mueve ambos clips de perro en simultáneo para posicionar la cabeza.
  7. En el clip inferior (sin máscara), aplica crop a la derecha para ocultar video sobrante.
  8. Habilita el clip con Magnetic Mask (superior). Aplica crop desde abajo.

## Reglas para agentes
- Usa Magnetic Mask + desmarcar "Invert" cuando quieras crear un hueco con forma de objeto para mostrar contenido detrás.
- Usa Shape Mask con feather > 0 cuando necesites recortar bordes de texto o gráficos dentro de un objeto.
- Usa el Tracker de Final Cut Pro y desmarca siempre la opción de rotación al adjuntar texto a un objeto en movimiento.
- Usa blend mode "Screen" en texto superpuesto sobre texturas para mantener la textura visible.
- Usa "Overwrite to Primary Storyline" después de partir un clip conectado para sincronizar frames exactos entre línea principal y conectada.
- Usa Trim tool (tecla T) para deslizar puntos de corte en transiciones sin perder sincronía.
- Usa Colorize + Gaussian Blur + blend mode "Add" para crear efectos de glow alrededor de sujetos.
- Nunca apliques tracking de rotación en Final Cut Pro; desactívalo siempre.
- Nunca uses el Magnetic Mask sin verificar que el objeto esté completamente aislado; ajusta manualmente si es necesario.

## Errores comunes que evita o menciona
- **No invertir la máscara cuando se necesita un hueco:** si quieres texto dentro de un objeto, desmarca "Invert" en el inspector de Magnetic Mask; de lo contrario, el texto quedará fuera.
- **No sincronizar frames al partir clips:** al hacer transiciones, usa "Overwrite to Primary Storyline" y expande el clip conectado para evitar frames faltantes o duplicados.
- **Usar tracking de rotación:** la rotación automática del tracker de Final Cut Pro da malos resultados; desactívala siempre.
- **No ajustar feather en Shape Mask:** sin feather, los bordes del recorte quedan duros; súbelo para transiciones suaves.
- **Olvidar cambiar blend mode en glows:** sin "Add" o "Screen", el glow se ve opaco y no se mezcla con el fondo.
- **No recortar bordes sobrantes en mockups:** si el video del perro sobresale del marco del post, usa crop para ocultarlo.