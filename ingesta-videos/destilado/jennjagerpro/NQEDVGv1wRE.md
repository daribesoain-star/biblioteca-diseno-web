# FCP Tips for Beginners
**Fuente:** jennjagerpro | https://youtu.be/NQEDVGv1wRE

## Qué enseña (2-3 líneas)
Errores comunes que cometen los principiantes en Final Cut Pro y cómo evitarlos. Cubre organización de librerías, gestión de importación de medios, atajos de teclado esenciales, respaldo de archivos, eliminación de archivos renderizados y el uso de Apple Motion como complemento.

## Lecciones accionables
- **Crear una librería separada por cada cliente o proyecto grande:** No acumular todo en una sola librería. En el Finder, organizar las librerías con nombres de cliente o proyecto (ej: "ClienteX_ProyectoY.fcpbundle").
- **Al importar medios, seleccionar "Copiar archivos a la librería":** En la ventana de importación (Media Import), elegir la opción "Copy to library" para que los clips se ingieran dentro del archivo .fcpbundle. Esto garantiza que al mover la librería a otro equipo, todo el material viaje con ella.
- **Si ya importaste con "Leave files in place", consolidar después:** Ir a menú `File > Consolidate Project Media`, seleccionar "Original Media" y hacer clic en OK. Esto copia todos los clips referenciados externamente dentro de la librería.
- **Usar un mouse externo con rueda de desplazamiento en lugar del trackpad:** Recomendado para laptops. Modelo sugerido: Logitech (varios tamaños, ergonómico, con rueda). Evitar el Magic Mouse de Apple por falta de rueda.
- **Memorizar estos 8 atajos de teclado básicos:**
  - `I` = marcar punto de entrada (in) en el navegador
  - `O` = marcar punto de salida (out) en el navegador
  - `W` = insertar clip en la línea de tiempo
  - `E` = añadir clip al final de la línea de tiempo (append)
  - `Q` = conectar clip encima de la línea de tiempo (connect)
  - `A` = herramienta de selección (cursor flecha)
  - `B` = herramienta de cuchilla (blade) para dividir clips
  - `T` = herramienta de recorte (trim)
- **Realizar un curso estructurado de Final Cut Pro:** Opciones mencionadas: LinkedIn Learning (antes Lynda), curso "Final Cut Rockstar" en jenjager.com, o cursos virtuales en vivo con instructor.
- **Respaldar los archivos de medios en un disco separado:**
  - Opción 1: Desde la tarjeta de memoria, copiar la carpeta original (sin renombrar) a una nueva carpeta con nombre descriptivo en un disco externo.
  - Opción 2: Una vez importado y copiado a la librería, arrastrar todo el archivo .fcpbundle a otro disco.
- **Acceder a los backups automáticos de Final Cut:** Ir a `~/Movies/Final Cut Backups/`. Allí están las copias de la estructura del proyecto (sin medios). Son archivos pequeños (ej: 68 MB) que contienen solo la línea de tiempo y organización.
- **Eliminar archivos renderizados para reducir tamaño de librería:**
  1. Seleccionar la librería en el panel de Librerías de FCP.
  2. Ir a `File > Delete Generated Library Files`.
  3. Marcar "Delete Render Files" y seleccionar todas las opciones disponibles.
  4. Hacer clic en OK. Ejemplo: una librería de 175 GB se redujo a 125 GB.
- **Usar Apple Motion como complemento:** Una vez cómodo con FCP, explorar Apple Motion para crear animaciones y gráficos en movimiento más avanzados que los nativos de FCP.

## Reglas para agentes
- **Crea una nueva librería por cada cliente o proyecto grande** — no acumules todo en una sola librería.
- **Siempre selecciona "Copy to library" al importar medios** — a menos que estés colaborando con otros desde un servidor compartido.
- **Consolida los medios si ya importaste con "Leave files in place"** — usa `File > Consolidate Project Media`.
- **Usa un mouse externo con rueda** cuando edites en laptop — no uses solo el trackpad.
- **Aprende y usa los 8 atajos de teclado básicos** (I, O, W, E, Q, A, B, T) antes de arrastrar clips manualmente.
- **Respaldar los archivos de medios originales en un disco separado** — no confíes solo en el auto-guardado de FCP.
- **Elimina los archivos renderizados** antes de archivar un proyecto o cuando la librería esté muy pesada.
- **No ignores Apple Motion** — intégralo después de dominar FCP para mejorar animaciones.

## Errores comunes que evita o menciona
- **Usar una sola librería para todos los proyectos:** Provoca que el archivo crezca enormemente, ralentice el equipo y agote el espacio en disco.
- **Importar medios con "Leave files in place" sin entender las consecuencias:** Si la librería está en un disco y los medios en otro, necesitarás ambos discos conectados siempre para editar.
- **Usar solo el trackpad en laptop para editar:** Dificulta la navegación, el clic derecho y es menos ergonómico.
- **No aprender atajos de teclado:** Depender solo de arrastrar y soltar ralentiza el flujo de trabajo.
- **No tomar un curso formal:** Aprender de forma desorganizada (YouTube "a salto de mata") dificulta la retención y el dominio del programa.
- **No respaldar los archivos de medios:** FCP auto-guarda la estructura del proyecto, pero NO los archivos de video/audio originales. Si el disco falla o el proyecto se corrompe, los medios se pierden.
- **No eliminar archivos renderizados al archivar:** Los render files ocupan mucho espacio innecesariamente (ej: 50 GB en una librería de 175 GB).
- **Ignorar Apple Motion:** Limita la calidad y creatividad de las animaciones y gráficos en los proyectos de FCP.