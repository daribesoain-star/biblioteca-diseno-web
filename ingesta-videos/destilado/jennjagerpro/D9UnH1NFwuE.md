# Apple Motion 3D Text Tutorial
**Fuente:** jennjagerpro | https://youtu.be/D9UnH1NFwuE

## Qué enseña (2-3 líneas)
Este tutorial enseña a crear un efecto de texto 3D que "emerge" desde un fondo plano con sombras dramáticas en Apple Motion. Cubre la conversión de texto a 3D, animación de profundidad, configuración de luces puntuales y sombras, y personalización de materiales por cara (frontal, lateral, interior, trasera).

## Lecciones accionables
- **Crear fondo:** Arrastra un "Color Solid" desde la biblioteca al panel de proyecto, centrado.
- **Agregar texto 3D:** Selecciona la herramienta de texto, escribe la palabra (ej. "emerge"), elige una fuente (ej. "Malloryak"), centra el texto con "Reset Parameter" y cambia alineación a centrada. Ajusta tamaño (ej. 288) y posición Y para centrar en pantalla.
- **Activar 3D y animar profundidad:** En el inspector de texto, pestaña "Appearance", marca la casilla "3D Text". Coloca el playhead al inicio, agrega keyframe en "Depth" y ponlo en 0. Mueve el playhead a 7 segundos, agrega otro keyframe y cambia "Depth" a 355 (o valor deseado).
- **Ajustar forma del frente:** En "Appearance", cambia el estilo del borde frontal de "Round" a "Square" para que el texto se vea completamente plano al inicio.
- **Agregar luz 3D:** Ve al menú superior de Motion, selecciona "Light". Cuando aparezca el diálogo, haz clic en "Switch to 3D". Mantén el tipo "Point Light" por defecto.
- **Posicionar la luz:** En el inspector de luz, pestaña "Properties", deja X centrado, ajusta Y manualmente (arrastra en el lienzo), y en Z pon un valor alto (ej. 1500) para acercar la luz.
- **Animar intensidad de luz:** Coloca el playhead más adelante en la línea de tiempo, agrega keyframe en "Intensity" y súbela. Unos segundos después, agrega otro keyframe y baja la intensidad.
- **Activar sombras:** En el inspector de luz, pestaña "Shadows", marca la casilla y haz clic en "Show" para desplegar opciones. Ajusta "Opacity" y "Softness" para suavizar las sombras.
- **Activar self-shadows del texto:** Selecciona el texto, en el inspector ve a "Shadows" y marca "Self Shadows", luego haz clic en "Show" para ajustar.
- **Personalizar materiales por cara:** En el inspector de texto, sección "Material", cambia de "Single" a "Multiple". Aparecen opciones para "Front Edge", "Side", "Back Edge" y "Back". Selecciona "Side", cambia su color o haz clic en la flecha desplegable para elegir un material diferente (ej. "Fabric", "Red Leather").
- **Ocultar superposición:** Si usas un material con textura, desactiva el "Overlay" en el inspector para que el texto sea invisible al inicio.

## Reglas para agentes
- Usa "3D Text" checkbox en Appearance para activar el modo 3D, no otra herramienta.
- Siempre agrega un keyframe de Depth en 0 al inicio para que el texto comience plano.
- Cuando agregues una luz, responde "Yes" al diálogo "Switch to 3D" para habilitar el espacio 3D.
- Para sombras realistas, activa siempre "Shadows" en la luz y "Self Shadows" en el texto.
- Si el texto se ve demasiado voluminoso al inicio, cambia el borde frontal a "Square" en Appearance.
- Para mayor definición de letras, usa "Multiple" en Material y modifica el color o material de la cara "Side".
- Nunca uses "Round" como estilo de borde frontal si quieres que el texto desaparezca completamente al inicio.

## Errores comunes que evita o menciona
- No olvidar cambiar el estilo del borde frontal de "Round" a "Square" para que el texto se vea totalmente plano en el primer keyframe; de lo contrario, se verá ligeramente 3D desde el inicio.
- No dejar la intensidad de la luz estática; se recomienda keyframearla para crear un efecto dramático de aparición.
- No omitir la activación de "Self Shadows" en el texto, ya que sin esto la forma de las letras se pierde dentro de las sombras del fondo.
- No usar un solo material si se busca más definición en curvas interiores de letras (como la "e" o "g"); usar "Multiple" y modificar la cara "Side" para resaltar detalles.