# Video Editing Course - DaVinci Resolve - 🎬 Chapter 2 - Importing Media to the Project
**Fuente:** mundoaudiovisual | https://youtu.be/MAGoHagK9yg

## Qué enseña
Cómo importar archivos multimedia al proyecto en DaVinci Resolve desde la pestaña Edit o Media, y cómo organizarlos en bins (carpetas) para mantener el proyecto ordenado. También cubre el uso básico del monitor de origen para establecer puntos de entrada y salida (in/out points).

## Lecciones accionables
- **Crear un bin (carpeta) en el Media Panel:** Haz clic derecho en el panel Media → selecciona "Create Bin" (atajo: Ctrl+Shift+N en Windows, Cmd+Shift+N en Mac). Nómbralo inmediatamente (ej: "videos", "audio", "music", "sound effects").
- **Renombrar un bin:** Selecciona la carpeta → haz clic de nuevo sobre el nombre → escribe el nuevo nombre.
- **Evitar crear bins anidados accidentalmente:** Antes de crear un bin, asegúrate de que no tengas seleccionado otro bin; de lo contrario, el nuevo se creará dentro de ese. Para crear un bin en la raíz, haz clic en el espacio vacío del panel Media antes de hacer clic derecho.
- **Importar archivos desde la pestaña Edit:**
    1. Selecciona el bin destino en el Media Panel.
    2. Presiona Ctrl+I (Windows) o Cmd+I (Mac) → navega hasta los archivos → selecciona y haz clic en "Open".
    3. Alternativa: arrastra los archivos directamente desde el explorador de archivos al bin deseado.
- **Importar archivos desde la pestaña Media:**
    1. Ve a la pestaña Media (parte inferior).
    2. Navega por las unidades en el panel izquierdo hasta encontrar tus archivos.
    3. Arrástralos al bin correspondiente en el panel superior.
- **Establecer punto de entrada (In point):** En el monitor de origen (Source Monitor), coloca el cabezal de reproducción donde quieras que comience el clip → presiona la tecla **I** (o haz clic en el botón "In").
- **Establecer punto de salida (Out point):** Coloca el cabezal donde quieras que termine el clip → presiona la tecla **O** (o haz clic en el botón "Out").
- **Navegar fotograma a fotograma:** Usa las teclas de flecha izquierda/derecha para avanzar o retroceder un fotograma.
- **Arrastrar los handles del in/out point:** En el monitor de origen, arrastra los extremos del clip (handles) para ajustar manualmente los puntos de entrada y salida con mayor precisión.
- **Activar proxy mode para reproducción fluida:** En el monitor de origen, selecciona "Proxy Mode" y elige "Quarter Resolution" para reducir el salto de fotogramas al reproducir clips pesados.
- **Cambiar el color de un clip en el timeline:** En el panel de metadatos (Metadata), en la opción "Clip Color", elige un color (ej: naranja). Al arrastrar el clip al timeline, aparecerá con ese color.
- **Importar múltiples archivos a la vez:** Mantén presionada la tecla Ctrl (Windows) o Cmd (Mac) mientras seleccionas los archivos en el diálogo de importación.

## Reglas para agentes
- Usa **Ctrl+I** (Windows) o **Cmd+I** (Mac) para importar archivos desde la pestaña Edit, no desde la pestaña Media, a menos que necesites navegar por las unidades del sistema.
- Cuando el proyecto esté configurado en 1920x1080 y el clip sea 4K, **no** aceptes el mensaje "Change project frame rate" (Cambiar formato de fotogramas del proyecto) a menos que quieras cambiar la resolución del proyecto.
- Siempre crea bins antes de importar archivos para mantener la organización; nombra los bins con nombres descriptivos como "videos", "audio", "music", "sound effects".
- Para evitar bins anidados, haz clic en un espacio vacío del panel Media antes de crear un nuevo bin.
- Usa la tecla **I** para punto de entrada y **O** para punto de salida en el monitor de origen; no uses el mouse para esto a menos que sea necesario.
- No uses la función "Add Tasks" (Añadir tareas) en el panel Media; está diseñada para flujos de trabajo cinematográficos y no es necesaria para edición estándar.

## Errores comunes que evita o menciona
- **Crear bins dentro de otros bins accidentalmente:** Ocurre cuando se tiene seleccionado un bin antes de crear uno nuevo. Solución: hacer clic en un espacio vacío del panel Media antes de crear el bin.
- **Importar clips completos cuando solo se necesita una parte:** Se evita usando los puntos de entrada (I) y salida (O) en el monitor de origen antes de arrastrar el clip al timeline.
- **Reproducción entrecortada al previsualizar clips pesados:** Se soluciona activando "Proxy Mode" en "Quarter Resolution" en el monitor de origen.
- **Confundir la pestaña Edit con la pestaña Media para importar:** El instructor recomienda usar la pestaña Edit (con el Media Panel abierto) como método principal por ser más rápido y directo.