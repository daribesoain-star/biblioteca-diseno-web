# Final Cut Tricks
**Fuente:** jennjagerpro | https://youtu.be/7emNrqIewB0

## Qué enseña (2-3 líneas)
El video revela 20 funciones ocultas y atajos poco conocidos en Final Cut Pro, desde trucos avanzados con el selector de color y edición de clips hasta la creación de efectos personalizados y el uso de "snapshot projects". Incluye técnicas para manipular capas de Photoshop, animar texto con tracking, y previsualizar efectos con control de intensidad directamente desde el panel de efectos.

## Lecciones accionables
- **Color mask con Option key:** Al usar el cuentagotas en el Color Board, mantén presionada la tecla **Option** mientras haces clic en áreas de la imagen para *deseleccionar* esos tonos y evitar que se vean afectados por los ajustes (ej. evitar manchas en la piel al saturar un objeto rosa).
- **Importar rangos específicos:** En la ventana de importación, selecciona solo una parte del clip (arrastra los extremos del rango) antes de hacer clic en "Importar seleccionados" — útil cuando hay grabaciones largas sin pausas entre tomas.
- **Búsqueda rápida de fuentes:** En el menú desplegable de fuentes (Text Inspector), no hay campo de búsqueda, pero puedes presionar la **primera letra** del nombre de la fuente para saltar directamente a esa sección alfabética.
- **Slip edit sin mover clips conectados:** Presiona **T** para activar la herramienta Slip, luego mantén presionada la tecla **Tilde (~)** mientras arrastras — el clip de la línea primaria se desliza pero los clips conectados permanecen en su lugar.
- **Add to Audition:** Al arrastrar un clip desde el navegador sobre otro clip en la línea de tiempo, suelta y selecciona **"Add to Audition"** en el menú contextual. Luego haz doble clic en el ícono de foco (spotlight) para alternar entre versiones — ideal para mostrar opciones de B-roll o comparar correcciones de color.
- **Break apart compound clip:** Ve a **Clip > Break Apart Clip Items** (atajo: **Shift + Command + G**) para deshacer un compound clip y restaurar clips individuales. Precaución: los filtros aplicados al compound clip se pierden al romperlo.
- **Mover punto de conexión:** Presiona **Option + Command** simultáneamente y haz clic en la posición deseada dentro del clip conectado para reubicar el punto de anclaje. No funciona si **Caps Lock** está activado.
- **Rotación en incrementos de 45°:** En el Inspector de Video, mantén presionada la tecla **Shift** mientras giras la rueda de rotación — el clip gira en saltos de 45 grados.
- **PSD con capas editables:** Arrastra un archivo .psd directamente a la biblioteca y luego a la línea de tiempo. Haz doble clic en el clip para ver y activar/desactivar capas individuales de Photoshop, y aplicar filtros por separado.
- **Gather-in animation con tracking:** En el panel Titles & Generators, selecciona **Custom** (título). En el Title Inspector, ajusta **In Tracking** (ej. 50) e **In Spread** (ej. 50) para que las letras se junten desde posiciones separadas. Añade un cross-dissolve al inicio para suavizar.
- **Cambiar duración de múltiples transiciones:** Selecciona varias transiciones en la línea de tiempo, presiona **Control + D** e ingresa un nuevo valor en segundos — todas se ajustan a la misma duración.
- **Descargar efectos de sonido gratuitos:** Ve a **Final Cut Pro > Descargar contenido adicional** y actualiza. Luego accede a ellos desde el panel lateral **Photos, Videos, and Audio > Sound Effects**.
- **Estilos de texto predefinidos:** Con un título seleccionado, en el Text Inspector, abre el menú desplegable que dice **Normal** y elige entre estilos 2D y 3D preestablecidos para personalizar después.
- **Guardar efectos personalizados (presets):** Ajusta keyframes de escala/posición en el Inspector de Video, luego haz clic en **Guardar efecto preset** (icono de disquete). Nombra el efecto, elige una categoría (o crea una nueva con "New Category"), y decide si mantener el timing fijo ("Maintain Timing") o que se estire al clip.
- **Clip Skimming:** Ve a **View > Clip Skimming** (atajo: **Option + Command + S**) para ver el contenido de clips debajo de otros clips superpuestos al pasar el cursor sobre ellos.
- **Reproducción en cámara lenta:** Mantén presionada la tecla **K** y luego presiona **L** para avance lento; **K + J** para retroceso lento.
- **Duplicar clip con Option+arrastre:** Mantén **Option** y arrastra un clip en la línea de tiempo para crear una copia instantánea.
- **Limpiar rangos seleccionados:** En el navegador, presiona **Command + A** para seleccionar todos los rangos, luego ve a **Mark > Clear Selected Ranges** o usa **Option + X**.
- **Snapshot Project (vs. Duplicate):** Haz clic derecho en un proyecto en el navegador y selecciona **Snapshot Project**. A diferencia de duplicar, los cambios dentro de compound clips en un snapshot **no afectan** al proyecto original ni a otros snapshots.
- **Previsualizar efectos con intensidad ajustable:** En el panel Effects, mantén presionada la tecla **Option** y arrastra el cursor horizontalmente sobre el nombre del efecto (ej. Blur) — el visor muestra el efecto con intensidad variable. Suelta y haz doble clic para aplicar con ese valor predefinido.

## Reglas para agentes
- Usa **Option + clic con cuentagotas** en Color Board cuando quieras excluir tonos específicos de un ajuste de color.
- Usa **Tilde (~)** al hacer Slip edit si hay clips conectados que no deben moverse.
- Usa **Snapshot Project** en lugar de Duplicate cuando trabajes con compound clips y necesites versiones independientes.
- Usa **Option + arrastre horizontal** sobre efectos en el panel Effects para ajustar la intensidad antes de aplicar.
- Nunca uses **Caps Lock** al intentar mover el punto de conexión con **Option + Command** — no funcionará.
- Nunca rompas un compound clip con **Break Apart Clip Items** si le has aplicado filtros directamente, porque se perderán.
- Nunca uses **Duplicate Project** si planeas modificar compound clips sin afectar otras líneas de tiempo; usa Snapshot.
- Siempre prefiere **Option + arrastre** para duplicar clips en lugar de copiar y pegar.
- Siempre usa **Control + D** para uniformar la duración de múltiples transiciones seleccionadas.

## Errores comunes que evita o menciona
- **Manchas en la piel al saturar colores cercanos:** Al usar Color Mask, el cuentagotas afecta tonos similares en toda la imagen; la tecla Option permite deseleccionar áreas no deseadas (como piel) para mantenerlas intactas.
- **Slip edit que arrastra clips conectados:** Por defecto, al deslizar un clip de la línea primaria, los clips conectados se mueven con él; usar la tecla Tilde evita este comportamiento.
- **Perder filtros al romper compound clips:** Si aplicas un efecto a un compound clip y luego lo rompes, el filtro desaparece; se recomienda usar capas de ajuste si se necesita persistencia.
- **Punto de conexión mal ubicado:** Arrastrar un clip conectado sin reubicar su punto de anclaje puede causar desalineaciones; usar Option+Command+clic permite fijarlo donde se necesite.
- **Rotación imprecisa:** Girar la rueda de rotación sin Shift produce ángulos arbitrarios; con Shift se fuerza a incrementos de 45° para alineaciones exactas.
- **Proyectos duplicados que comparten compound clips:** Duplicar un proyecto hace que los cambios en compound clips se reflejen en todas las copias; Snapshot evita esta contaminación cruzada.
- **Efectos aplicados sin control de intensidad previa:** Arrastrar un efecto al clip aplica valores por defecto; usar Option en el panel Effects permite previsualizar y fijar la intensidad deseada antes de aplicar.