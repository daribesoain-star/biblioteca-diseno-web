# 10 Ways to Get Faster in After Effects
**Fuente:** Ben Marriott | https://youtu.be/whFa347JtDE

## Qué enseña
El video presenta diez consejos prácticos para optimizar el flujo de trabajo en After Effects, abarcando desde mejoras de hardware y plugins hasta organización de proyectos, atajos de teclado y configuración de auto-guardado. El objetivo es reducir tiempos de renderizado, navegación y edición repetitiva.

## Técnicas accionables
- **Hardware:** Priorizar un buen CPU (múltiples núcleos no ayudan tanto); más RAM permite más RAM previews pero no acelera el render final; usar SSD para todos los archivos.
- **Plugins recomendados:**
  - **FX Console** (gratuito): permite buscar efectos con un atajo de teclado, guardar favoritos, guardar imágenes y copiar la composición al portapapeles para pegarla en otro software.
  - **Ease Copy** (gratuito): copia la influencia de easing de múltiples keyframes y la pega en otros keyframes.
  - **K Bar**: guarda tareas frecuentes en una barra de herramientas personalizada.
  - **Labels**: cambia el color de cualquier capa con un solo clic.
  - **Overlord**: copia y pega elementos vectoriales de Illustrator a After Effects rápidamente.
- **Eliminar pantalla de inicio:** Ir a *Edit > Preferences > General* y desmarcar *Enable Home screen*.
- **Pre-renderizar:** Renderizar un elemento complejo (ej. fondo con Wave Warp) como archivo de video, reimportarlo y usarlo en lugar de mantener todas las capas y efectos activos. Para el render final, se puede desactivar la capa pre-renderizada y renderizar de nuevo para máxima calidad.
- **Organización del proyecto:** Crear carpetas como "Assets" y "Comps" con subcarpetas específicas. Usar una plantilla de proyecto en blanco que se cargue automáticamente al abrir After Effects: *Edit > Preferences > New Project*, marcar *New project loads template*, elegir el archivo .aep de plantilla.
- **Mini Flowchart:** Atajo de teclado: **` (tecla de acento grave)**. Muestra un diagrama con la composición actual, las composiciones donde aparece (a la izquierda) y las composiciones internas (a la derecha). Hacer clic en una comp para abrirla; la línea azul indica la comp de origen.
- **Configurar espacios de trabajo:** Usar espacios de trabajo predeterminados (Motion Tracking, Color) o crear uno propio: *Window > Workspace > Save as New Workspace*. Ejemplo: "Marriott one screen" para uso diario, "Marriott record" para tutoriales.
- **Plantillas de render:** Ir a *Composition > Add to Render Queue*, personalizar ajustes, hacer clic en la flecha desplegable junto a *Render Settings* o *Output Module*, seleccionar *Make Template*. Ejemplos de plantillas: PNG sequence, ProRes 422, H.264 al 70% de calidad.
- **Atajos de teclado:** Ir a *Edit > Keyboard Shortcuts*. Aprender al menos uno nuevo por semana. Ejemplo: **Command + Shift + D** para dividir capas.
- **Auto-guardado:** Ir a *Edit > Preferences > Auto-Save*. Cambiar el intervalo de 20 minutos (predeterminado) a 5-10 minutos. Aumentar *Maximum Project Versions* de 5 a 15.

## Reglas para el erudito (imperativas y verificables)
- **Usa FX Console** cuando necesites buscar efectos rápidamente o guardar imágenes de composiciones.
- **Usa Ease Copy** cuando quieras copiar el easing de varios keyframes y aplicarlo a otros.
- **Usa Overlord** cuando transfieras vectores desde Illustrator a After Effects.
- **Usa el Mini Flowchart** (tecla **`**) para navegar entre composiciones anidadas sin buscarlas en el panel de proyecto.
- **Configura el auto-guardado** entre 5 y 10 minutos, con máximo de 15 versiones, para evitar pérdidas de trabajo.
- **Nunca diseñes y animes al mismo tiempo en After Effects**: diseña primero en Illustrator o Photoshop, luego anima en AE.
- **Pre-renderiza** elementos complejos que no cambiarán (ej. fondos con Wave Warp) para acelerar RAM previews.
- **Crea plantillas de render** para formatos que uses más de dos veces (PNG sequence, ProRes 422, H.264 al 70%).
- **Elimina la pantalla de inicio** desmarcando *Enable Home screen* en Preferencias Generales.

## Errores comunes que evita o menciona
- **No gastar en GPU de gama alta** si no es necesario, pues no mejora tanto el rendimiento como un buen CPU.
- **No mantener la pantalla de inicio activa**, ya que casi nadie la usa y retrasa la apertura del programa.
- **No diseñar y animar simultáneamente en After Effects**, porque ralentiza ambos procesos y da resultados comprometidos.
- **No dejar el auto-guardado en 20 minutos** (valor por defecto), ya que es mucho tiempo para perder trabajo; reducirlo a 5-10 minutos.
- **No usar múltiples capas con efectos pesados** sin pre-renderizar, ya que consumen recursos innecesariamente durante la edición.