# Apple Motion Behaviors Challenge | It's Back!!!!
**Fuente:** jennjagerpro | https://youtu.be/7T6fAWHia8Y

## Qué enseña (2-3 líneas)
El video muestra cómo dos creadores (Jen y Ian Anderson) se enfrentan en un desafío de Apple Motion usando obligatoriamente los behaviors **Link** y **Oscillate** para crear una animación de texto en 2 horas. Se exploran técnicas avanzadas como vinculación de parámetros, oscilación con rampa, iluminación 3D, replicadores con color dinámico y publicación de parámetros para Final Cut Pro.

## Lecciones accionables
- **Usar Oscillate como Parameter Behavior:** Para añadirlo, ve a Properties → haz clic derecho en la propiedad deseada → Add Parameter Behavior → Oscillate. Activa **Half Range** para que oscile solo en un lado (sin cruzar el centro).
- **Combinar Oscillate con Ramp para amortiguar:** Haz clic derecho en **Amplitude** del Oscillate → Add Parameter Behavior → Ramp. Configura valor inicial en **0** y final en **800** para que la oscilación se detenga gradualmente.
- **Link de posición de luz a objeto animado:** Selecciona la luz → haz clic derecho en Position (Y o todos los ejes) → Add Parameter Behavior → Link. Enlaza al objeto que oscila (ej: el período). Así la luz sigue el rebote.
- **Link de contenido de texto entre duplicados:** Si duplicas un texto, selecciona el duplicado → en el inspector, haz clic derecho en **Content** → Add Parameter Behavior → Link → enlaza al Content del texto original. Cambiar el original actualiza todos.
- **Link de ancho de máscara al ancho de texto:** Crea un Rectangle Mask sobre un grupo de texto → haz clic derecho en **Width** de la máscara → Add Parameter Behavior → Link → enlaza al **Width** del texto. La máscara se ajusta automáticamente al contenido.
- **Link de posición X al borde derecho del texto:** Para empujar elementos al añadir caracteres, enlaza la **Position X** de los elementos secundarios al **Right Edge** del texto principal.
- **Oscillate en color de replicador:** En un Replicator, selecciona la celda → en el inspector, cambia **Color Mode** a **Over Pattern** → elige un **Color Tag** → haz clic derecho → Add Parameter Behavior → Oscillate. El color se desplazará dentro del gradiente.
- **Rate en Tile Offset para drift:** En un Replicator, añade **Rate** behavior al parámetro **Tile Offset** para crear un desplazamiento continuo (en lugar de Ramp que es lineal).
- **Publicar parámetros para Final Cut Pro:** En el inspector de proyecto (o grupo), marca los parámetros que quieras exponer (ej: color, blur) con el checkbox de publicación. Aparecerán en el inspector de Final Cut al usar el título.
- **Usar markers para sincronizar cambios de color:** Coloca markers en la línea de tiempo donde ocurren los rebotes → keyframe el color de la luz en esos puntos para que cambie al mismo tiempo.

## Reglas para agentes
- **Usa Half Range en Oscillate** cuando quieras que la oscilación no cruce el valor central (solo se mueva en una dirección).
- **Usa Ramp en lugar de Rate** para disminuir amplitud gradualmente (Ramp permite valores inicial y final explícitos).
- **Usa Link para conectar Position de luz a Position de objeto** cuando quieras iluminación dinámica que siga un elemento animado.
- **Usa Link de Content entre textos duplicados** cuando necesites que múltiples textos reflejen el mismo contenido editable.
- **Usa Link de Width de máscara a Width de texto** para que las máscaras se adapten automáticamente al largo del texto.
- **Usa Link de Right Edge del texto** para empujar elementos secundarios al expandir el texto.
- **Usa Over Pattern + Color Tag + Oscillate** en replicadores para animar colores dentro de un gradiente.
- **Usa Rate en Tile Offset** para crear movimiento continuo de desplazamiento en replicadores.
- **Publica parámetros** (color, blur, etc.) cuando crees templates para Final Cut Pro.
- **Nunca uses motion blur** si necesitas cambios de color instantáneos (el motion blur interpola frames y crea transiciones no deseadas).

## Errores comunes que evita o menciona
- **Motion blur interfiere con cambios de color instantáneos:** Si tienes motion blur activado, un keyframe de color no será instantáneo sino que mostrará un frame de transición entre colores. Motion blur es "all or nothing".
- **No confundir Rate con Ramp:** Rate es para velocidad constante, Ramp permite valores inicial y final. Ian prefiere Ramp para amortiguar oscilaciones.
- **No olvidar Half Range en Oscillate:** Sin él, la oscilación cruza el centro (como una onda sinusoidal completa), lo que puede no ser deseado para rebotes que solo van en una dirección.
- **No subestimar el Link Behavior para templates:** Es "bedrock" para construir controles en pantalla en Final Cut Pro, permitiendo que los usuarios controlen parámetros desde el inspector.