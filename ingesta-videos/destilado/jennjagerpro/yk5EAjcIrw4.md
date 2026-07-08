# Final Cut Pro Tutorial
**Fuente:** jennjagerpro | https://youtu.be/yk5EAjcIrw4

## Qué enseña (2-3 líneas)
Este tutorial compara métodos alternativos en Final Cut Pro para elegir la herramienta óptima según la situación: layouts personalizables, ajuste de volumen, uso de adjustment layers vs compound clips, ordenamiento del browser, scrolling timeline, herramientas de color (color mask vs hue/saturation curves), snapping, y hold frames vs freeze frames.

## Lecciones accionables
- **Personalizar layout según etapa de edición:** Usa los 3 botones superiores (browser, timeline, inspector). Para revisar raw clips: cierra inspector y timeline. Para multicámara: abre inspector. Para efectos/transiciones: cierra browser. Para corrección de color: ve a Window > Workspaces > Color and Effects (cierra browser automáticamente y abre scopes); también puedes cerrar browser manualmente y abrir scopes con **Command + 7**, luego arrastra el borde superior del timeline para reducirlo.
- **Ajustar volumen con keyframes manuales (recomendado sobre range tool):** Mantén presionada la tecla **Option** y haz clic en la línea central de volumen del clip de audio para colocar keyframes manualmente, luego arrastra la línea hacia abajo. Para cortes abruptos (ej. tos), usa **R** para activar range tool, selecciona un área pequeña en la forma de onda y baja el volumen; los keyframes quedarán muy juntos.
- **Usar adjustment layers en lugar de compound clips (excepto para volumen):** Descarga un adjustment layer (título vacío) de internet. Conéctalo sobre los clips en la timeline. Aplica efectos/transformaciones al adjustment layer para afectar todos los clips debajo. Para ajustar volumen de múltiples clips, usa compound clip (**Option + G** para anidar), ya que adjustment layer no tiene inspector de audio.
- **Ordenar browser según proyecto:** Para proyectos pequeños: agrupa por tipo de archivo (raw media, música, gráficos, compound/multicam clips). Para proyectos con múltiples cámaras: ordena por nombre (clips de cada cámara juntos). Para crear multicam clips con timecode sincronizado: cambia a vista de lista y ordena por **Start Timecode**; si las cámaras tienen fecha/hora precisa, ordena por **Content Created**; si no, ordena por **Media Duration**.
- **Deshabilitar scrolling timeline para ediciones de audio finas:** Ve a Final Cut Pro menu > Settings > Playback y desmarca "Scrolling Timeline". Útil cuando estás ampliado en subframes y reproduces repetidamente para editar audio.
- **Usar color mask para ajustar un solo color (ej. saturación de rojo):** En el color board, agrega un color mask, selecciona el color con el cuentagotas y reduce la saturación. Para ajustar múltiples colores (ej. cielo azul y verde) en un solo clip: usa **Hue/Saturation Curves**; con el cuentagotas selecciona el rango de azul, luego el verde, sin necesidad de agregar otro color board.
- **Deshabilitar snapping (N) para ediciones de audio expandidas y para revisión final:** Cuando expandes audio (puedes recortar en 1/80 de frame), desactiva snapping para evitar que el clip se ajuste al punto de edición. También desactívalo antes de exportar para hacer un scrub suave y detectar flash frames o títulos faltantes.
- **Usar hold frames (Shift + H) en lugar de freeze frames (Option + F) siempre que sea posible:** Los hold frames son parte del clip original (indicados en naranja en el menú de retiming); puedes ajustar su duración arrastrando la barra negra. Los freeze frames crean clips separados (hay que aplicar efectos a cada uno). Excepción: usa freeze frames cuando los retiming tools no funcionan, como en generadores de Final Cut Pro.

## Reglas para agentes
- Usa **Option + clic** para colocar keyframes de volumen manualmente en lugar del range tool, a menos que necesites un corte abrupto en una forma de onda específica.
- Prefiere **adjustment layers** sobre compound clips para efectos y transformaciones; usa compound clips solo cuando necesites ajustar el volumen de múltiples clips simultáneamente.
- Ordena el browser por **tipo de archivo** en proyectos pequeños, por **nombre** en proyectos multicámara, y por **Start Timecode** o **Content Created** para crear multicam clips sincronizados.
- Deshabilita el **scrolling timeline** (Settings > Playback) cuando edites audio en subframes o ampliado.
- Usa **color mask** para ajustar un solo color; usa **Hue/Saturation Curves** cuando necesites modificar múltiples colores en un mismo clip.
- Desactiva **snapping** (tecla N) al expandir audio para ediciones finas y al hacer scrub de revisión antes de exportar.
- Opta por **hold frames** (Shift + H) en lugar de freeze frames (Option + F); usa freeze frames solo cuando los retiming tools no estén disponibles (ej. en generadores).

## Errores comunes que evita o menciona
- Usar el range tool para ajustar volumen da poco control sobre la colocación de keyframes, resultando en fades abruptos; es mejor colocar keyframes manualmente.
- Los compound clips complican agregar transiciones en los bordes y obligan a abrir timelines anidadas para acceder a clips individuales; los adjustment layers son más flexibles.
- No ordenar el browser adecuadamente antes de editar puede desorganizar proyectos grandes; se recomienda agrupar por tipo de archivo, nombre, o timecode según el proyecto.
- Mantener snapping activado durante ediciones de audio finas o al hacer scrub de revisión reduce la precisión y fluidez; desactivarlo mejora el control.
- Usar freeze frames en lugar de hold frames crea clips separados que requieren aplicar efectos individualmente; hold frames mantienen todo en un solo clip y son preferibles excepto cuando los retiming tools no funcionan (ej. generadores).