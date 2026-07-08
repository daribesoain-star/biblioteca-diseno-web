# Plugins for FCP | Four Must See Plugins from FCP Experts
**Fuente:** jennjagerpro | https://youtu.be/9kfNp8CmhEU

## Qué enseña
Cuatro plugins de creadores independientes para Final Cut Pro: Outliner (contornos animados), Line Magic (títulos con cajas de fondo automáticas), Photo and Video Slideshow Maker (collages animados) y Picture in Picture (máscaras animadas). Muestra usos prácticos como rotoscopia, tracking, chroma key y composición multicapa.

## Lecciones accionables
- **Outliner (Brett FX):** Usa el efecto sobre un clip rotoscopiado (con M Roto AI, Keeper o Scene Removal Mask nativo). Ajusta en inspector: *Placement* (inside/outside), *Offset*, *Inner Glow*, *Color*. Para formas personalizadas: arrastra título Outliner, activa *Points and Transform* en inspector de título, modifica vértices para rodear objetos. Combínalo con el *Tracker* nativo de FCP: selecciona clip base → añade Tracker → trackea un logo/objeto → selecciona título Outliner → activa transform tools → asigna el nuevo objeto trackeado.
- **Line Magic (Rohan Marx):** Arrastra el título sobre un clip. Edita texto en el campo de texto. Cambia fuente, escala, alineación y posición en el inspector de texto. En el inspector de título, modifica el color de los fondos de las cajas. Cada línea anima secuencialmente con auto-resize del fondo.
- **Photo and Video Slideshow Maker (Motion Master Templates / Jon Ortiz):** Arrastra el título a la línea de tiempo. Rellena las *Drop Zones* en el inspector con fotos o videos (hasta 7). Ajusta: *Direction* (right, top, etc.), *Animation Speed*, *Grouping* (bajo = una por una, alto = todas juntas). Para efecto de una sola foto: cambia *Photo Count* a 1, baja *Background Opacity* a 0, reposiciona la imagen al centro, pon *Animation* en "none", activa *Drop On* (entra desde cámara), activa *Depth of Field Amount*, sube *Animation Speed*. Aplica efectos adicionales desde el inspector de video.
- **Picture in Picture (Ian Anderson):** Arrastra el efecto sobre un clip. En el inspector: activa/desactiva *Build In* y *Build Out*, cambia *Outline Width*, elige *Animation Style*. Para reposicionar/re-escalar: usa las herramientas de transformación (transform tools). Apila múltiples clips con el mismo efecto para composiciones multicapa.

## Reglas para agentes
- Usa Outliner con clips rotoscopiados previamente para contornos precisos; no lo apliques directamente sobre fondos complejos sin máscara.
- Activa *Points and Transform* en Outliner solo cuando uses títulos para formas personalizadas; desactívalo para efectos automáticos sobre clips.
- Usa el Tracker nativo de FCP para fijar Outliner a objetos en movimiento; nunca intentes animar la posición manualmente.
- En Line Magic, edita el texto en el campo de texto del inspector, no en el visor directamente.
- En Photo and Video Slideshow Maker, ajusta *Grouping* bajo (ej. 1-3) para entradas secuenciales y alto (ej. 10+) para entradas simultáneas.
- Activa *Drop On* y *Depth of Field* solo cuando uses una sola foto; desactívalos para múltiples imágenes.
- En Picture in Picture, usa las herramientas de transformación para reposicionar, no los parámetros del inspector de efectos.
- Apila múltiples instancias de Picture in Picture para maximizar metraje B-roll en una sola composición.

## Errores comunes que evita o menciona
- No aplicar Outliner directamente sobre clips sin rotoscopiar: el efecto requiere un sujeto aislado (con chroma key, Scene Removal Mask, Keeper o M Roto AI) para funcionar correctamente.
- No olvidar asignar el objeto trackeado al título Outliner después de usar el Tracker; de lo contrario, el contorno no seguirá al objeto en movimiento.
- No usar Line Magic con fuentes muy grandes sin ajustar la escala en el inspector de texto; las cajas de fondo se redimensionan automáticamente pero el texto puede desbordarse.
- No dejar *Grouping* en valores medios para slideshows con muchas fotos: produce transiciones erráticas; usa valores extremos (bajo o alto) para resultados predecibles.
- No aplicar Picture in Picture sin desactivar *Build In* o *Build Out* si se desea que la máscara permanezca estática durante todo el clip.