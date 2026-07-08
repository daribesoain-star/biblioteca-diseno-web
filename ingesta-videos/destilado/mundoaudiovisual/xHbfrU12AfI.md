# Curso de After Effects en español - 🎬  Capítulo 8 - El Chroma Key.
**Fuente:** mundoaudiovisual | https://youtu.be/xHbfrU12AfI

## Qué enseña (2-3 líneas)
Este capítulo enseña cómo realizar un chroma key profesional en After Effects utilizando el plugin Keylight 1.2. Explica el proceso completo: selección del color con el cuentagotas, ajuste del Screen Matte para refinar bordes, uso de Clip, Choke, Shrink/Grow, y corrección de tonos verdes con Lumetri Color. También cubre cómo integrar el sujeto en un fondo nuevo con desenfoque y posicionamiento 3D.

## Lecciones accionables
- **Aplicar Keylight 1.2:** Selecciona la capa del clip con green screen, ve a Effects & Presets, busca "Keylight 1.2" y arrastra el efecto sobre el clip.
- **Seleccionar color con el cuentagotas:** En el panel de efectos, haz clic en el cuentagotas de Keylight y pincha sobre un área verde del fondo.
- **Activar Screen Matte:** En el menú desplegable de Keylight, cambia View a "Screen Matte" para ver la máscara en blanco y negro (blanco = visible, negro = eliminado).
- **Ajustar blancos en Screen Matte:** Busca el parámetro "Screen Gain" (o "Screen Balance" según versión) y ajústalo para convertir áreas grises en blanco. No exageres para no perder detalles.
- **Ajustar negros en Screen Matte:** Ajusta el parámetro "Clip Black" (o "Screen Balance" para negros) para convertir áreas grises en negro.
- **Refinar bordes con Clip Rollback:** Usa "Clip Rollback" (o "Clip" en algunos paneles) con valores positivos para expandir bordes hacia afuera o negativos para contraerlos. Déjalo en 0 si no es necesario.
- **Usar Choke y Shrink/Grow:**
  - "Choke" (o "Choke Matte"): contrae el borde hacia adentro (valores positivos) para eliminar halos verdes.
  - "Shrink/Grow": valores negativos reducen el borde, valores positivos lo expanden. Ajusta con precisión (ej. -1.5, -1.8) hasta que el borde se vea limpio.
- **Crear máscara manual:** Con la herramienta Pen (G) o Rectangle, dibuja una máscara en la capa del sujeto para recortar áreas no deseadas (ej. bordes del chroma). Ajusta los puntos clave en el tiempo si el sujeto se mueve.
- **Corregir tonos verdes con Lumetri Color:**
  - Crea un ajuste de capa (Layer > New > Adjustment Layer) o aplica Lumetri Color directamente al clip.
  - Ve a la sección "Curves" y baja el canal verde (Green) para eliminar reflejos verdes en la piel o ropa.
- **Añadir fondo y desenfoque:**
  - Coloca el clip de fondo debajo del sujeto en la línea de tiempo.
  - Selecciona el fondo, presiona 'S' para escalar, 'P' para posición.
  - Aplica "Camera Lens Blur" o "Fast Box Blur" al fondo para crear profundidad de campo.
- **Activar 3D y rotar:** Activa el cubo 3D en la capa del sujeto (switch 3D Layer). Usa la herramienta Rotation (W) o parámetros en el panel Transform para rotar en el eje Y y que coincida con la perspectiva del fondo.
- **Congelar fotograma:** Para un fondo estático, selecciona la capa de fondo, ve a Layer > Time > Freeze Frame.

## Reglas para agentes
- Usa Keylight 1.2 como plugin principal para chroma key; no uses efectos nativos como Color Key o Linear Color Key para resultados profesionales.
- Siempre activa la vista "Screen Matte" para ajustar blancos y negros antes de ver el resultado final.
- Ajusta primero los blancos (Screen Gain) y luego los negros (Clip Black) en ese orden.
- Usa valores negativos en Shrink/Grow (ej. -1.5) para eliminar bordes verdes; nunca uses valores positivos a menos que necesites expandir el borde.
- Aplica Lumetri Color con curvas en el canal verde para corregir reflejos; no uses solo el parámetro "Despill" de Keylight.
- Activa 3D en la capa del sujeto solo si el fondo tiene perspectiva; de lo contrario, mantén 2D.
- Congela el fondo con Freeze Frame si es un video estático para evitar parpadeos.

## Errores comunes que evita o menciona
- **No exagerar en los ajustes de Screen Matte:** Ajustar demasiado los blancos o negros puede eliminar detalles del sujeto (ej. cabello, bordes de ropa).
- **No usar valores altos en Clip Rollback:** Valores positivos altos (ej. 8) expanden el borde y muestran áreas no deseadas del fondo original.
- **No olvidar la corrección de color:** El reflejo verde en la piel o ropa no se elimina solo con Keylight; requiere Lumetri Color para bajar el canal verde.
- **No descuidar la máscara manual:** El chroma key no elimina perfectamente bordes del encuadre; se necesita una máscara para recortar áreas sobrantes.
- **No ignorar la perspectiva:** Colocar al sujeto sin rotación 3D puede hacer que no encaje con el fondo, rompiendo la ilusión realista.