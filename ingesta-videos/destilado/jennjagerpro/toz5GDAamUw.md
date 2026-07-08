# Glass Pane Effects
**Fuente:** jennjagerpro | https://youtu.be/toz5GDAamUw

## Qué enseña (2-3 líneas)
Tutorial avanzado para crear efectos de paneles de vidrio animados en Apple Motion, utilizando capas clonadas, máscaras rectangulares, reglas y guías para lograr simetría, y publicación como efecto personalizado en Final Cut Pro con parámetros editables.

## Lecciones accionables
- **Crear capa clonada:** Seleccionar capa "effects source" → atajo `K` o clic derecho → "Make Clone Layer". La capa clonada referencia al original: cambios en la fuente afectan al clon, pero cambios en el clon NO afectan a la fuente.
- **Renombrar capas inmediatamente:** Nombrar la primera capa clonada como "left clear" para evitar confusiones con múltiples capas.
- **Usar reglas y guías para simetría:** Activar View → Rulers. Arrastrar desde la regla superior para crear guías amarillas. Colocar guía en la marca `0` del centro del canvas.
- **Dibujar máscara rectangular:** Seleccionar capa "left clear" → menú Mask → Rectangle Mask. Dibujar un rectángulo largo que se extienda fuera del marco, con el borde derecho alineado en el centro (guía en `0`).
- **Convertir máscara a puntos:** En Inspector → pestaña Mask → "Convert to Points".
- **Animación de apertura del panel izquierdo:**
  - En tiempo `00:00`: agregar keyframe en "Control Points" → arrastrar borde izquierdo al centro (shift para mantener recto) → la máscara queda como una línea.
  - Avanzar `10 frames` (Shift + flecha derecha): crear guía en `-400` → arrastrar borde izquierdo a esa guía.
  - Volver a `00:00`: en Inspector → Properties → agregar keyframe en "Position" (X).
  - En `2 segundos`: crear guía en `-2800` → reducir valor X en Position para alinear borde derecho con esa guía.
- **Añadir sombra:** Seleccionar capa → Inspector → Drop Shadow → Angle: `495` (opuesto a 315 para sombra izquierda) → Blur: `100`.
- **Añadir filtro de color:** Capa seleccionada → Filters → Color → Color Wheels → Global wheel → subir saturación.
- **Duplicar panel para lado derecho:** Duplicar capa "left clear" → renombrar "right clear" → resetear parámetros de Position en Inspector.
  - En `00:00`: alinear máscara con guía central (`0`).
  - En `10 frames`: cambiar a herramienta "Edit Points" (clic derecho → Edit Points o botón en tools) → arrastrar borde exterior a guía `+400`.
  - En `00:00`: keyframe en Position (X).
  - En `2 segundos`: guía en `+2800` → cambiar X para alinear borde izquierdo con esa guía.
  - En Drop Shadow: cambiar Angle a `315`.
- **Crear paneles tintados (coloreados):**
  - Duplicar "left clear" → deshabilitar duplicado → renombrar original a "left tint".
  - Eliminar filtro Color Wheels de "left tint".
  - Añadir Filters → Blur → subir desenfoque.
  - Añadir Filters → Color → Colorize → "Remap White" a color chartreuse → bajar "Mix" para sutileza.
  - Duplicar "right clear" → deshabilitar duplicado → renombrar original a "right tint".
  - Copiar filtros (Blur + Colorize) de "left tint" (Shift + Cmd + C) y pegar en "right tint" (Cmd + V).
  - En Colorize de "right tint": cambiar "Remap White" a teal.
- **Desfasar temporización de paneles tintados:**
  - Activar icono de keyframes en timeline (mostrar rombos rojos).
  - Seleccionar keyframes de "left tint rectangle mask" y "right tint rectangle mask" (Cmd + clic).
  - Arrastrar todos los keyframes seleccionados `3 frames` más adelante en la línea de tiempo.
- **Rotar todos los paneles:** Seleccionar todas las máscaras rectangulares en Project pane → Inspector → Properties → Rotation: `-30`.
- **Ajustar curva de movimiento:** Seleccionar todas las máscaras → abrir Keyframe Editor (icono de 3 diamantes entrelazados) → clic dentro → `Ctrl + A` para seleccionar todos → clic derecho → "Ease Out".
- **Publicar como efecto de Final Cut:**
  - File → Save As → nombre: "glass panes diagonal" → Category: crear nueva o usar existente → Theme: "glass panes" → Publish.
- **Publicar parámetros editables:**
  - Seleccionar filtro Colorize en "left tint" → Inspector → en "Remap White" → clic en disclosure button → "Publish".
  - Hacer lo mismo con "Mix".
  - En Project pane → línea "Project" → Inspector → pestaña Project → renombrar "Remap White 2" a "left pane color".
  - Repetir para "right tint": publicar "Remap White" y "Mix" → renombrar a "right pane color".
- **Limpiar placeholder:** Seleccionar capa "effects source" → Inspector → pestaña Image → botón "Clear" → `Cmd + S` para guardar y republicar.

## Reglas para agentes
- Usa capas clonadas (`K`) cuando necesites que múltiples capas hereden cambios de una fuente original sin duplicar archivos.
- Renombra cada capa inmediatamente después de crearla para mantener trazabilidad en proyectos con múltiples máscaras y filtros.
- Usa reglas y guías (View → Rulers) cuando trabajes con máscaras que requieran simetría precisa en el canvas.
- Convierte máscaras rectangulares a puntos (Inspector → Mask → Convert to Points) antes de animar bordes individuales.
- Mantén las máscaras más largas que el marco cuando apliques rotación diagonal, para que los paneles cubran toda la pantalla al moverse.
- Usa "Ease Out" en Keyframe Editor para suavizar la aceleración de los paneles al final de su movimiento.
- Publica parámetros (disclosure button → Publish) en filtros como Colorize si deseas que el usuario pueda ajustar colores desde Final Cut.
- Limpia la capa "effects source" (botón Clear) antes de publicar el efecto final para que muestre el thumbnail predeterminado de Final Cut.
- Nunca uses "Duplicate Layer" en lugar de "Clone Layer" si necesitas que los cambios en la fuente se reflejen automáticamente en las copias.

## Errores comunes que evita o menciona
- **No renombrar capas:** Causa confusión total al trabajar con múltiples máscaras y filtros; el tutorial enfatiza renombrar inmediatamente.
- **Usar Position tools en Inspector en lugar de reglas:** Para simetría con máscaras, las guías visuales en el canvas son más precisas que ajustar valores numéricos a ciegas.
- **Olvidar que las máscaras deben ser más largas que el frame:** Al rotar los paneles a -30°, las máscaras cortas no cubrirían toda la pantalla durante la animación diagonal.
- **No activar la visualización de keyframes en timeline:** Sin el icono de rombos activado, no se pueden ver ni mover los keyframes para desfasar temporizaciones.
- **Publicar efecto sin limpiar el placeholder:** El video de prueba aparece en el thumbnail del efecto en Final Cut, lo que se ve poco profesional.
- **No publicar parámetros:** El efecto queda sin opciones de personalización en Final Cut; el usuario no puede cambiar colores ni ajustes.