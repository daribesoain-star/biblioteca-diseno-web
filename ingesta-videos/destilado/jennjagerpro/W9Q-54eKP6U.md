# Magnetic Mask + Particles = Magic in FCP🪄🪄🪄
**Fuente:** jennjagerpro | https://youtu.be/W9Q-54eKP6U

## Qué enseña
Cómo crear un generador de partículas personalizado en Apple Motion, publicarlo en Final Cut Pro y combinarlo con la Magnetic Mask para lograr efectos realistas de nieve o partículas que interactúan con sujetos enmascarados en capas.

## Lecciones accionables
- Crear un círculo en Motion con Shape Tools → desactivar Outline, activar Fill → en Inspector > Properties resetear parámetros y ajustar Radius.
- Convertir el círculo en emisor: seleccionar el círculo → menú superior "Make Particles".
- Cambiar forma del emisor de "Point" a "Line" → ajustar Start Point X a -2160 y End Point X a +2160.
- Publicar parámetros clave para Final Cut: en el emisor, publicar Birth Rate, Initial Number, Speed, Speed Randomness, Angle, Angle Randomness, Spin, Spin Randomness, Scale, Scale Randomness. En Properties, publicar Position.
- Reordenar parámetros publicados: en Project > Project Tab, arrastrar Position al tope de la lista.
- Crear rig de selección de partículas: en Project Pane, bajo Particle Source Circle → Add to Rig > Create New Rig > Add to New Popup. En Inspector > Widget Tab, renombrar "snapshot 1" a "circles".
- Agregar partícula "Sparkle": Library > Content > buscar "spark" → seleccionar "spark 06" → arrastrar al Project Pane. En el Popup del rig, agregar "snapshot 2", renombrar a "sparkle", Start Edit Mode, arrastrar spark 06 al source well, Stop Rig Edit Mode.
- Agregar Drop Zone para imagen personalizada: Add Object > Drop Zone → arrastrar al Project Pane. En Properties, reducir Scale a 10%, desmarcar Crop (para que sea cuadrado). En el Popup del rig, agregar "snapshot 3", renombrar a "custom", Start Edit Mode, arrastrar Drop Zone al source well, Stop Rig Edit Mode.
- Deshabilitar spark 06 y Drop Zone en Project Pane (no afecta al emisor).
- Publicar el Popup: en Project > Published Parameters, renombrar a "Particle".
- Agregar dirección con gravedad: seleccionar emisor → Behaviors > Simulation > Gravity. Publicar el parámetro Acceleration, renombrarlo a "Gravity Pull".
- Agregar desenfoque: seleccionar emisor → Filters > Blur. Publicar Amount, renombrar a "Blur".
- Configurar defaults en Motion: Y Position a 1300 (partículas fuera de cuadro arriba), Birth Rate 30, Initial Number 100, Blur 0.
- Crear opción "Build In" vs "No Build In":
  1. Renombrar grupo original a "building in", colapsarlo.
  2. Duplicar grupo (clic derecho > Duplicate), renombrar a "no buildin".
  3. Deshabilitar "building in", seleccionar "no buildin".
  4. Arrastrar "no buildin" hacia atrás en la línea de tiempo (antes del inicio del timeline).
  5. Extender "no buildin" hasta el final del timeline.
  6. Crear checkbox rig: en "building in" > Properties > Opacity → Add to Rig > Add to New Checkbox. En "no buildin" > Properties > Opacity → Add to Rig > Add to Existing Checkbox.
  7. Con checkbox activado: Start Rig Edit Mode, bajar Opacity de "no buildin" a 0, Stop Rig Edit Mode.
  8. Con checkbox desactivado: Start Rig Edit Mode, bajar Opacity de "building in" a 0, Stop Rig Edit Mode.
  9. Publicar el checkbox, renombrar a "Build In", arrastrar al tope de parámetros publicados.
- Vincular parámetros entre grupos: en "no buildin", seleccionar el círculo → Add Parameter Behavior > Link. En source well, arrastrar el círculo del grupo "building in". Repetir para Birth Rate, Initial Number, Speed, Speed Randomness, Angle, Angle Randomness, Spin, Spin Randomness, Scale, Scale Randomness (10 links). Duplicar el Link Behavior para agilizar.
- Vincular Position: seleccionar el emisor en "no buildin" → Properties > Position → Add Parameter Behavior > Link → arrastrar emisor original al source well.
- Vincular Gravity y Blur: seleccionar Gravity Behavior en "no buildin" → Link con el original. Seleccionar Blur > Amount → Link con el original.
- En Final Cut Pro: aplicar Magnetic Mask a clips para aislar sujetos. Colocar generador de partículas entre capas de video en la línea de tiempo.
- Ajustar Blend Mode del generador a "Lighten" en Video Inspector para eliminar bordes negros en partículas tipo sparkle.
- Duplicar capas de partículas y apilar entre diferentes capas de video enmascaradas para crear profundidad (partículas detrás de algunos sujetos, delante de otros).

## Reglas para agentes
- Usa "Lighten" como Blend Mode cuando las partículas tengan bordes negros visibles.
- Publica siempre Position del emisor para poder reposicionarlo en Final Cut Pro.
- Usa valores negativos en Gravity Pull (-30 o menor) para que las partículas viajen hacia arriba; valores positivos para que caigan hacia abajo.
- Cuando dupliques grupos para "Build In"/"No Build In", vincula TODOS los parámetros publicados con Link Behaviors para que los ajustes en Final Cut afecten a ambos grupos.
- Nunca uses un Build In Marker nativo de Motion para este efecto porque los parámetros cambiarán si se modifica la duración del generador en Final Cut Pro.
- Siempre desmarca Crop en Drop Zones para que las imágenes personalizadas no se recorten a 16:9.
- Siempre deshabilita (desactiva visualmente) los objetos fuente (spark 06, Drop Zone) en el Project Pane después de agregarlos al rig, para que no interfieran con el emisor.

## Errores comunes que evita o menciona
- No usar el Build In Marker nativo de Motion porque causa valores inconsistentes al cambiar la duración del generador en Final Cut Pro; la solución es el rig manual con grupos duplicados.
- No olvidar cambiar el Blend Mode a "Lighten" cuando las partículas tipo sparkle muestren bordes negros.
- No dejar el Drop Zone con Crop activado, ya que recortará las imágenes personalizadas a 16:9 en lugar de mantenerlas cuadradas.
- No publicar demasiados parámetros (solo los esenciales: Birth Rate, Initial Number, Speed, Angle, Spin, Scale, sus Randomness, Position, Gravity Pull, Blur y el checkbox Build In).
- No olvidar reordenar los parámetros publicados en Project Tab para que aparezcan en un orden lógico en Final Cut Pro.