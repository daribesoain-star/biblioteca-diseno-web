# TUTORIAL - EFECTO CÁMARA EN UN CÍRCULO EN LA PANTALLA
**Fuente:** mundoaudiovisual | https://youtu.be/zBnwbaBawa8

## Qué enseña (2-3 líneas)
Este tutorial explica cómo crear el efecto de que la cámara del presentador aparezca dentro de un círculo en una esquina de la pantalla, tanto en Adobe Premiere Pro como en DaVinci Resolve. Cubre dos variantes: que el círculo se encoja desde pantalla completa hasta su posición final, y que aparezca con una transición suave.

## Lecciones accionables
- **Adobe Premiere Pro:**
  - Coloca el clip de la cámara en una pista superior y el clip de pantalla (tutorial) en la pista inferior.
  - Deshabilita el audio del clip de cámara si no lo necesitas.
  - Selecciona el clip de cámara, ve a **Effect Controls** > **Opacity** > crea una **máscara de círculo** (ellipse mask).
  - Ajusta la máscara: **Mask Feather** = 0, **Mask Expansion** para que el círculo cubra al presentador.
  - Escala y posiciona el clip con **Scale** y **Position** hasta que el círculo esté en la esquina deseada.
  - Para la animación de encogimiento: en el fotograma inicial, pon **Mask Expansion** muy grande (ej. 500) y activa keyframe. Unos segundos después, reduce **Mask Expansion** al valor final (ej. 0). Luego, en ese mismo fotograma final, activa keyframes de **Scale** y **Position**; retrocede al inicio y ajusta **Scale** a 100 y **Position** al centro de la pantalla.
  - Para el borde del círculo: ve a **Subtitles and Graphics** > selecciona la herramienta **Ellipse** (mantén presionada para dibujar). Sin relleno, con **Stroke** del grosor y color que desees. Ajusta **Scale** a 75% y posición para que coincida con el círculo de la máscara.
  - Para que el borde aparezca después: en el fotograma donde el círculo ya está en su lugar, activa keyframe de **Mask Expansion** en el gráfico del borde con valor grande (ej. 500). Unos segundos después, reduce a 0 para que aparezca.
- **DaVinci Resolve (módulo Fusion):**
  - Ve al módulo **Fusion** (Blending). Selecciona el nodo **MediaIn**.
  - Agrega una máscara de **Ellipse** (arrastra desde el panel de herramientas o presiona Shift+Espacio y escribe "ellipse").
  - Conecta la máscara al nodo **MediaIn** (arrastra desde el triángulo gris de la máscara al triángulo azul del nodo).
  - Para el borde: agrega un nodo **Background** (Shift+Espacio > "background"). Cambia su color (ej. verde). Agrega un nodo **Merge** (Shift+Espacio > "merge"). Conecta: **Background** al fondo del Merge, **MediaIn** al frente del Merge.
  - Copia la máscara de ellipse (Ctrl+C) y pégala en el nodo **Merge** (Ctrl+V). En la máscara del Merge, desactiva "Solid" y ajusta "Border Width" para el grosor del borde.
  - Para animar el encogimiento: en el nodo **MediaIn**, activa keyframes de **Width** y **Height** (en la máscara). Al inicio: valores grandes (ej. 2.0). Al final: valores pequeños (ej. 0.5). Haz lo mismo en la máscara del **Merge** para que el borde siga.
  - Para mover la posición final: agrega un nodo **Transform** (Shift+Espacio > "transform") después del **Merge**. Activa keyframes de **Size**, **Center** y **Pivot**. Al inicio: **Size** = 1.0, **Center** = (0.5, 0.5). Al final: **Size** reducido (ej. 0.3), **Center** en la esquina deseada (ej. 0.9, 0.9).

## Reglas para agentes
- En Adobe Premiere, usa **Opacity > Ellipse Mask** para recortar el clip de cámara en un círculo; no uses efectos de terceros.
- En DaVinci Resolve, trabaja siempre desde el módulo **Fusion** con nodos; no uses la pestaña "Inspector" para animar máscaras.
- Para que el borde del círculo coincida exactamente con la máscara, copia y pega la misma máscara de ellipse en ambos nodos (MediaIn y Merge) en Fusion.
- Cuando animes el encogimiento, sincroniza los keyframes de **Mask Expansion** (Premiere) o **Width/Height** (Fusion) con los de **Scale/Position** (Premiere) o **Size/Center** (Fusion) para que el movimiento sea fluido.
- Nunca uses keyframes de opacidad para hacer aparecer el borde; en su lugar, anima **Mask Expansion** desde un valor grande hasta 0.

## Errores comunes que evita o menciona
- No olvidar deshabilitar el audio del clip de cámara si interfiere con el audio principal.
- En DaVinci Resolve, no conectar correctamente la máscara al nodo **MediaIn** (debe arrastrarse desde el triángulo gris de la máscara al triángulo azul del nodo).
- En Fusion, no copiar la misma máscara al nodo **Merge** para el borde, lo que causa que el borde no siga la animación del círculo.
- No ajustar el **Mask Expansion** en Premiere para que el círculo quede perfectamente centrado en el presentador; el tutorial recomienda jugar con este valor.