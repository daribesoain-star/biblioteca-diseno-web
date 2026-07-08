# Faster Editing for FCP | 2026 Update
**Fuente:** jennjagerpro | https://youtu.be/fupRtfM6PNA

## Qué enseña (2-3 líneas)
Técnicas para acelerar el flujo de trabajo en Final Cut Pro, desde la revisión de material en el navegador hasta la corrección de color y optimización del rendimiento del Mac. Incluye atajos de teclado, organización con favoritos, personalización del espacio de trabajo, y estrategias para reducir la carga del sistema.

## Lecciones accionables
- **Reproducción a doble velocidad en el navegador:** Presiona `L` dos veces para reproducir clips en cámara rápida y reducir el tiempo de revisión a la mitad.
- **Marcar favoritos:** Selecciona rangos en el navegador y presiona `F` para marcarlos como favoritos. Luego filtra por "Favoritos" para ver solo las mejores tomas.
- **Personalizar espacio de trabajo:** Cierra la línea de tiempo y el inspector al revisar clips para ver más archivos. Cierra el navegador al corregir color o añadir efectos para agrandar el visor. Expande el inspector a altura completa haciendo doble clic en su borde superior.
- **Usar la herramienta de rango en lugar de la cuchilla:** Presiona `R` para activar la herramienta de rango, selecciona el segmento no deseado (ej. una respiración) y presiona `Delete`. Reduce los pasos respecto a usar la cuchilla.
- **Atajos de teclado esenciales:**
  - `Comando + T`: añadir transición de fundido cruzado.
  - `Punto (.)` y `Coma (,)`: mover clips fotograma a fotograma.
  - `V`: deshabilitar clips.
- **Agrupar clips en historias conectadas:** Selecciona múltiples clips con marquesina y presiona `Comando + G` para agruparlos. Permite reposicionar, reordenar y recortar sin afectar otras capas.
- **Corrección de color con clip de ajuste:** Añade un clip de ajuste sobre los fragmentos de una entrevista y aplica la corrección de color allí. Afecta a todo el material debajo sin necesidad de copiar efectos.
- **Corrección de color con clip compuesto:** Arrastra toda la entrevista a la línea de tiempo, aplica corrección de color, selecciona el clip y presiona `Comando + O` para crear un clip compuesto. Este aparece en el navegador; al usarlo, los fragmentos ya están corregidos. Si modificas el compuesto, todos los usos se actualizan.
- **Guardar presets de corrección de color:** Aplica la corrección (pueden ser varios efectos apilados), haz clic en el botón "Guardar preset de efectos", selecciona los atributos y la categoría donde quieres que aparezca.
- **Deshabilitar renderizado en segundo plano:** Ve a `Final Cut Pro > Ajustes > Reproducción` y desactiva "Renderizado en segundo plano". Para forzar el renderizado, presiona `Control + Mayús + R`.
- **Análisis estratégico durante la importación:** Desmarca "Búsqueda visual" en clips de una sola persona (ej. entrevistas). Desmarca "Transcripción" en clips que son solo B-roll.
- **Mejorar rendimiento de reproducción:** En el menú `Ver`, cambia de "Mejor calidad" a "Mejor rendimiento". No afecta la exportación.
- **Crear medios optimizados o proxy:** Selecciona los clips en el navegador, haz clic derecho y elige "Transcodificar medios". Elige "Optimizado" (alta calidad) o "Proxy" (baja resolución). En el menú `Ver > Reproducción de medios`, selecciona "Proxy preferido" para que Final Cut use proxies cuando existan.

## Reglas para agentes
- Usa `L` dos veces para reproducir clips a doble velocidad en el navegador cuando revises material largo.
- Usa `F` para marcar favoritos en el navegador y filtra por "Favoritos" para acceder a las mejores tomas.
- Usa `R` (herramienta de rango) para eliminar segmentos no deseados en lugar de la cuchilla.
- Usa `Comando + T` para añadir transiciones de fundido cruzado.
- Usa `Comando + G` para agrupar clips en historias conectadas.
- Usa un clip de ajuste para aplicar corrección de color a múltiples fragmentos de una entrevista.
- Usa `Comando + O` para crear un clip compuesto con corrección de color aplicada antes de editar.
- Guarda presets de corrección de color para proyectos con condiciones de iluminación repetitivas.
- Desactiva el renderizado en segundo plano en `Ajustes > Reproducción` para evitar procesos innecesarios.
- Desmarca "Búsqueda visual" en clips de una sola persona y "Transcripción" en clips de B-roll durante la importación.
- Cambia a "Mejor rendimiento" en el menú `Ver` si la reproducción es lenta.
- Crea medios proxy y selecciona "Proxy preferido" en `Ver > Reproducción de medios` para editar con fluidez.
- Nunca uses "Proxy solo" si hay clips sin proxy, ya que aparecerán como medios faltantes.

## Errores comunes que evita o menciona
- **Usar la cuchilla para eliminar segmentos pequeños:** La herramienta de rango (`R`) reduce los pasos a la mitad.
- **Aplicar corrección de color a cada clip individualmente:** Usa un clip de ajuste o un clip compuesto para aplicar cambios globales.
- **No personalizar el espacio de trabajo según la tarea:** Cierra paneles innecesarios para maximizar la visibilidad.
- **Dejar el renderizado automático activado:** Consume recursos; desactívalo y renderiza solo cuando sea necesario.
- **Analizar todas las opciones de importación sin criterio:** Desmarca procesos irrelevantes para ahorrar tiempo.
- **Usar "Proxy solo" sin tener proxies para todos los clips:** Causa errores de medios faltantes; prefiere "Proxy preferido".