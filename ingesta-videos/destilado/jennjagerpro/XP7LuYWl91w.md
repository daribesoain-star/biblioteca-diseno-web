# Adjustment Clips in Final Cut Pro 
**Fuente:** jennjagerpro | https://youtu.be/XP7LuYWl91w

## Qué enseña (2-3 líneas)
Este video explica en profundidad la nueva función de Adjustment Clips en Final Cut Pro, mostrando cómo aplican efectos a todo el material que queda debajo de ellos en la línea de tiempo. Enseña flujos de trabajo avanzados para corrección de color por múltiples hablantes, animaciones con keyframes sobre varios clips, letterboxing y exportación multitrack sin efectos.

## Lecciones accionables
- Para añadir un Adjustment Clip: presiona **Option + A** (por defecto dura 10 segundos)
- Para aplicar un efecto a un rango exacto: usa la **Range Tool** (tecla R) para seleccionar el área, luego ve al navegador de efectos, selecciona el efecto y presiona **Option + A** — el Adjustment Clip se crea con la duración exacta del rango y el efecto ya aplicado
- Para duplicar un Adjustment Clip: mantén presionada la tecla **Option** y arrastra el clip
- Para subir un clip en la línea de tiempo: selecciona el clip y presiona **Option + Flecha Arriba**
- Para bajar un clip: **Option + Flecha Abajo**
- Para separar un "connected storyline" en clips individuales: selecciona el storyline y presiona **Shift + Command + G**
- Para crear un Compound Clip: selecciona los clips y presiona **Option + G**
- Para deshacer un Compound Clip: selecciona el compound y presiona **Shift + Command + G**
- Para renombrar un Adjustment Clip: ve al **Index** (Command + 4), navega a la pestaña **Clips**, selecciona el clip en la línea de tiempo, se resalta en el Index, haz clic en el nombre y renómbralo
- Para exportar sin los efectos de Adjustment Clips: ve a **Share > Export File**, en **Roles** cambia de "QuickTime Movie" a **Multitrack QuickTime Movie**, luego haz clic en la X junto a los Adjustment Clips para excluirlos
- Para aplicar un letterboxing global: añade un Adjustment Clip en la parte superior de la línea de tiempo, aplica un **Crop** (Top and Bottom) y ajusta el valor Y de clips individuales si es necesario
- Para animar zooms sobre múltiples fotos fijas: añade un Adjustment Clip sobre el grupo de fotos, keyframe la **Scale** en el Inspector (ej. 100% al inicio, 112% al final), luego duplica el Adjustment Clip e invierte los valores (112% → 100%)

## Reglas para agentes
- Usa **Option + A** para crear un Adjustment Clip, no arrastres desde el navegador de efectos
- Aplica efectos solo al Adjustment Clip, nunca directamente a los clips de video que están debajo
- Cuando tengas múltiples hablantes que aparecen repetidamente, usa el flujo de trabajo de "lift from storyline" + Adjustment Clips duplicados + Compound Clips
- No realices el proceso de "lift from storyline" y Compound Clips hasta que estés satisfecho con la ubicación de todos los clips en la línea de tiempo
- Si necesitas reordenar clips después de crear Compound Clips, primero deshaz los compounds con **Shift + Command + G**, deshabilita los Adjustment Clips, reordena, y luego vuelve a crear los compounds
- Para efectos que cruzan dos clips sin dividirlos, usa la **Range Tool** para seleccionar el área que abarca ambos clips, luego aplica el efecto con **Option + A**
- Nombra los Adjustment Clips en el Index para distinguir efectos duplicados (ej. "pink" y "teal" para diferentes versiones de Colorize)

## Errores comunes que evita o menciona
- No uses un solo Adjustment Clip para toda la línea de tiempo si tienes múltiples hablantes que requieren corrección de color diferente — eso aplicaría el mismo efecto a todos
- No copies y pegues efectos manualmente en cada clip cuando puedas usar Adjustment Clips — si cambias de opinión, tendrías que modificar cada clip individualmente
- No olvides que los Adjustment Clips afectan solo a los clips que están **debajo** de ellos en la línea de tiempo, no a los que están encima
- No asumas que los Adjustment Clips funcionan como capas de ajuste de terceros — los Adjustment Clips nativos permiten crear efectos desde un rango seleccionado y renombrarlos automáticamente
- No confíes en los nombres por defecto de los Adjustment Clips duplicados (todos se llaman igual que el primer efecto) — usa el Index para renombrarlos y distinguirlos visualmente