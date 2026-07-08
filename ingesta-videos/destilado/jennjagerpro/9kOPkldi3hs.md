# Animate Logos in Apple Motion
**Fuente:** jennjagerpro | https://youtu.be/9kOPkldi3hs

## Qué enseña (2-3 líneas)
A animar un logo multicapa en Apple Motion, comenzando con la preparación de capas en Pixelmator Pro (fusionar y separar elementos), y luego aplicando movimientos de claqueta deslizante, revelado por recorte, letras con overshoot y giro en salpicaduras. Cubre keyframes, behaviors (overshoot, move, fade in/out) y filtros (twirl).

## Lecciones accionables
- **Preparación en Pixelmator Pro:**  
  - Fusiona capas que deben ser un solo elemento: selecciona con Shift, clic derecho → Merge.  
  - Separa letras individuales: usa Polygonal Selection, clic derecho → Copy & Paste as Layer, luego elimina la capa original completa.  
  - Agrupa las letras separadas: selecciona todas, clic derecho → Group.  
  - Exporta: File → Export → Motion Project, frame rate 24 fps, duración 10 segundos.

- **Animación de la claqueta (clapper):**  
  - Coloca el playhead en frame 16. En Inspector → Properties, añade keyframes de Position (X) y Rotation (Z) para la posición final.  
  - Retrocede 14 frames (frame 2). Ajusta X para que cubra "agency", rota -14°.  
  - En Keyframe Editor, selecciona todos los keyframes → Interpolation → Bezier. En Position X, curva en "S" invertida; en Rotation Z, curva en "S" normal.  
  - Lleva la claqueta al tope del grupo en Project pane (arrastra arriba).  
  - Añade Fade In / Fade Out: Behaviors → Basic Motion → Fade In/Fade Out. Fade In: 3 frames, Fade Out: 0.

- **Revelado de "agency" con recorte:**  
  - Selecciona "agency". Playhead en frame 16 (final de claqueta). Inspector → Crop → Show → Left. Añade keyframe.  
  - Playhead al inicio del movimiento de claqueta. Crop Left hasta ocultar completamente "agency".  
  - En Keyframe Editor, haz Bezier y ajusta curva para que coincida con el movimiento de la claqueta (curva en "S" invertida en X).

- **Animación de letras "kickstart":**  
  - Reordena el grupo "kickstart" arriba de la claqueta en Project pane.  
  - Para la letra K:  
    - Behaviors → Parameter → Overshoot. Duración: 10 frames (trim con O en frame 10).  
    - Inspector → Apply To: Properties → Transform → Position → Y. Start Value: 145, End Value: 0, Ramp Duration: 27, Cycles: 3.  
    - Behaviors → Basic Motion → Move. Duración: 4 frames (trim con O en frame 4).  
    - Inspector → Direction: From. Mueve el punto azul (inicio) con las flechas del canvas para que entre en ángulo.  
    - Behaviors → Basic Motion → Fade In/Fade Out. Fade In: 3, Fade Out: 0.  
  - Copia los behaviors de K (clic derecho → Copy), selecciona las demás letras (I a T), pega (clic derecho → Paste).  
  - Ajusta el punto de inicio del Move en cada letra manualmente con la flecha roja en canvas.  
  - Stagger timing: selecciona todo el grupo de letras, muévelo 7 frames a la derecha en timeline. Luego, letra por letra, desplázalas para que entren una tras otra.

- **Salpicaduras (paint splatters):**  
  - Agrupa todas las salpicaduras en Project pane (selecciona, clic derecho → Group).  
  - Filters → Distortion → Twirl.  
  - Behaviors → Parameter → Overshoot. En Inspector → Apply To: Filters → Twirl → Twirl.  
  - Trim overshoot a 13 frames (playhead en frame 13, presiona O). Start Value: 550, End Value: 0, Ramp Duration: 9, Cycles: 2.  
  - Behaviors → Basic Motion → Fade In/Fade Out. Fade In: 6, Fade Out: 0.  
  - Mueve el grupo al frame 11 en timeline.

## Reglas para agentes
- Usa **Pixelmator Pro** para preparar logos PSD antes de importar a Motion: fusiona capas que deben ser un solo elemento, separa letras individuales con Polygonal Selection.  
- Cuando exportes a Motion, usa **24 fps** y duración de **10 segundos**.  
- Para animaciones de entrada, usa **keyframes de posición y rotación** en el frame final, luego retrocede para definir el inicio.  
- Aplica **Bezier** en Keyframe Editor y ajusta curvas en "S" para movimientos naturales.  
- Usa **Overshoot behavior** para rebotes: configura Start Value, End Value, Ramp Duration y Cycles.  
- Para revelados con recorte, sincroniza el **Crop Left** con el movimiento del objeto que revela.  
- Stagger las animaciones moviendo grupos o capas en la línea de tiempo.  
- Nunca olvides reordenar capas en Project pane para controlar superposiciones (ej. letras sobre claqueta).  
- Nunca uses valores de Fade Out mayores a 0 si no quieres que desaparezca al final.

## Errores comunes que evita o menciona
- **No fusionar capas en Pixelmator Pro** antes de importar: causa elementos separados innecesarios en Motion.  
- **No separar letras individualmente** en Pixelmator Pro: impide animar cada letra por separado.  
- **No sincronizar el recorte (Crop) con el movimiento de la claqueta**: el revelado no coincide visualmente.  
- **No ajustar la interpolación a Bezier** en Keyframe Editor: los movimientos se ven rígidos o lineales.  
- **No reordenar capas** (ej. letras detrás de claqueta): causa superposiciones incorrectas.  
- **No ajustar el punto de inicio del Move behavior** en cada letra después de pegar behaviors: todas entran desde el mismo lugar.  
- **No hacer stagger de timing**: todas las letras entran al mismo tiempo, perdiendo dinamismo.