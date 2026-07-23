# Advanced Animation Breakdown + Grid Animation
**Fuente:** Motion Circles | https://youtu.be/PF3_babBRFY

## Qué enseña
Desglose completo de una animación en Adobe After Effects, desde el storyboard y selección de paleta de colores hasta la construcción de una animación de cuadrícula (grid) usando repetidores y transformaciones. Muestra cómo animar posición, escala, rotación y usar el efecto Echo para estelas de movimiento, además de crear transiciones con Alpha Matte.

## Técnicas accionables
- **Storyboard:** Crear frames en Illustrator antes de animar; usar como guía visual.
- **Paleta de colores:** Visitar coolors.co → explorar paletas de diseñadores → seleccionar y personalizar.
- **Selección de música:** Elegir una pista musical antes de animar para sincronizar movimientos al ritmo.
- **Importar desde Illustrator:** Usar el plugin **Overlord** para empujar vectores (grids) directamente a After Effects.
- **Animación de cuadrícula (grid) con repetidores:**
  1. Crear una composición nueva (ej. "Grid Animation").
  2. Activar **Title/Action Safe**.
  3. Dibujar una línea recta con la herramienta de forma; ancho = **3 puntos**.
  4. En el panel de contenido de la forma: **Add → Repeater** (Repeater 1).
     - Copies: **15**
     - Offset: **Y position = 100 px**
  5. Agregar un segundo repeater: **Add → Repeater** (Repeater 2).
     - Copies: **4**
     - Transform: **X position = 0**, **Rotation = 90°**
  6. Alargar la línea original (stroke) para que los repetidores se extiendan fuera del encuadre verticalmente.
  7. Ajustar la posición del segundo repeater para alinear las líneas.
- **Animación de la cuadrícula:**
  - En la línea original: animar **Scale** de **0%** a **100%** → aplicar **Easy Ease** (F9).
  - En el primer repeater → Transform: animar **Scale** de **0%** a **100%** → Easy Ease.
  - Modificar curvas (Graph Editor) para dar energía.
  - En el primer repeater → Transform: animar **Position** (controla distancia entre líneas): keyframe inicial **200**, keyframe final **100** → Easy Ease → desplazar keyframes.
  - En el transform de la capa: animar **Rotation**: keyframe inicial **90°**, keyframe final **0°** en 2 segundos → Easy Ease → curvar.
  - Para zoom out más evidente: cambiar Position inicial a **250** y final a **200**.
- **Efecto Echo (smear):** Aplicar a la capa del círculo para crear estela de movimiento.
- **Alpha Matte como transición:** Duplicar la capa de cuadrícula, ocultar la segunda, en la primera aumentar **Stroke Width** a **200** → animar a 0 con Easy Ease → usar como Alpha Matte en la escena principal.
- **Animación del ojo (pupila):** Solo animar **Position** de la pupila (moverse a un lado, luego al otro, volver al centro). El zoom out general se controla con un **Null Object** padre.
- **Animación de la escena 2:** Círculo que cae desde arriba: animar **Position** (caída), **Scale** y **Rotation**; usar Echo para smear. El círculo gradiente (Layer 2) rota junto con el principal para dar complejidad.

## Reglas para el erudito
- Usa **Overlord** para transferir vectores de Illustrator a After Effects sin pérdida de calidad.
- Siempre selecciona una pista musical **antes** de empezar a animar para inspirar el ritmo de los movimientos.
- Cuando uses repetidores para grids, ajusta la longitud de la línea original para que los repetidores se extiendan fuera del encuadre.
- Para animar la distancia entre líneas, anima la **Position** del primer repeater (no la de la línea original).
- Aplica **Easy Ease** (F9) a todos los keyframes de escala, posición y rotación, luego modifica las curvas en el Graph Editor para dar energía.
- Para transiciones con Alpha Matte, duplica la capa de cuadrícula, aumenta el **Stroke Width** a un valor grande (ej. 200) y anima a 0.

## Errores comunes que evita o menciona
- No alargar la línea original lo suficiente hace que los repetidores no cubran toda el área deseada.
- Olvidar ajustar la posición del segundo repeater para alinear correctamente las líneas de la cuadrícula.
- No animar la posición del primer repeater (solo la escala) da como resultado una animación estática sin cambio en la distancia entre líneas.
- No usar Easy Ease ni modificar curvas produce movimientos lineales y sin energía.