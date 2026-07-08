# 🔵 NEW DAVINCI RESOLVE 18 COURSE 20 🎬 Chapter 1: First Steps
**Fuente:** mundoaudiovisual | https://youtu.be/alR9ljtc6-I

## Qué enseña (2-3 líneas)
Este capítulo introduce la interfaz de DaVinci Resolve 18, explicando la diferencia entre la versión gratuita y Studio, cómo crear y gestionar proyectos y bibliotecas, y la configuración inicial del proyecto (resolución, frame rate). También recorre los módulos principales (Media, Cut, Edit, Fusion, Color, Fairlight, Delivery) y recomienda comenzar desde el módulo Edit.

## Lecciones accionables
- **Descargar DaVinci Resolve:** Ir a la web oficial de Blackmagic Design (buscar "DaVinci Resolve" en Google). Para principiantes, descargar la versión gratuita. La versión Studio cuesta 275 USD (licencia vitalicia).
- **Crear una biblioteca de proyectos:** Ir a "File" > "Project Manager". Hacer clic en "New Library". Asignar nombre (ej. "DaVinci Resolve Course"). Elegir ubicación en disco (ej. disco D, carpeta "Library").
- **Crear un proyecto nuevo:** En el Project Manager, hacer clic en "Create a New Project" o doble clic en "Untitled Project". Nombrarlo (ej. "David's Course").
- **Configurar proyecto (imprescindible antes de editar):** Hacer clic en el icono de engranaje (⚙️) en la esquina inferior derecha. En "Master Settings":
  - **Timeline Resolution:** Cambiar de 1920x1080 a 3840x2160 (4K) si se graba en 4K.
  - **Timeline Frame Rate:** Seleccionar 25 fps (si la cámara graba a 25 fps). Explicación: debe coincidir con la frecuencia de grabación de la cámara.
  - **Playback Frame Rate:** Dejar en 25 fps.
  - **Video Bit Depth:** Dejar en "Auto" o "10-bit" según proyecto.
  - **Optimized Media and Render Cache:** Dejar en "DNxHR HQ" o "ProRes 422 HQ".
  - Hacer clic en "Save".
- **Navegar entre módulos:** Usar los botones en la parte inferior: Media, Cut, Edit, Fusion, Color, Fairlight, Delivery. El curso recomienda empezar desde el módulo Edit (ignorar Media y Cut).
- **Gestionar vista de proyectos:** En Project Manager, usar botón de vista (iconos o lista). Ordenar proyectos por nombre, fecha, etc. Usar botón de búsqueda (lupa) para localizar proyectos.
- **Ocultar/mostrar paneles:** Usar botón de flecha en la esquina superior izquierda para ocultar el panel de bibliotecas. Usar botón de flecha en la esquina superior derecha del módulo para expandir/contraer el área de trabajo.
- **Abrir ubicación de biblioteca:** En Project Manager, hacer clic derecho sobre una biblioteca > "Open Folder Location" para ver dónde se almacenan los archivos del proyecto.
- **Restaurar copia de seguridad:** En Project Manager, usar botón "Restore Archive" (icono de cinta) para recuperar proyectos desde un backup.
- **Preferencias iniciales:** Ir a "DaVinci Resolve" > "Preferences" > "System" > "GPU Processing Mode": seleccionar "CUDA" si se tiene tarjeta gráfica NVIDIA compatible. Ajustar "GPU Memory Limit" según capacidad de la GPU.

## Reglas para agentes
- **Usa el módulo Edit como punto de partida** para edición, ignorando Media y Cut a menos que se indique lo contrario.
- **Configura siempre el proyecto antes de empezar a editar** usando el engranaje (⚙️) en la esquina inferior derecha.
- **Selecciona Timeline Resolution y Frame Rate** que coincidan con la cámara de grabación (ej. 3840x2160 a 25 fps para Sony).
- **Usa CUDA como GPU Processing Mode** si el hardware lo soporta; de lo contrario, usar OpenCL o Metal.
- **Nunca crees proyectos sin definir primero la biblioteca** donde se almacenarán.
- **Nunca ignores la diferencia entre versión gratuita y Studio** para funciones de IA (solo Studio).

## Errores comunes que evita o menciona
- **No configurar la resolución del timeline** antes de editar: por defecto es 1920x1080, pero si se graba en 4K hay que cambiarlo a 3840x2160.
- **No coincidir el frame rate del timeline con el de la cámara**: si la cámara graba a 25 fps, el timeline debe ser 25 fps para evitar problemas de sincronización.
- **Usar el módulo Media o Cut innecesariamente**: el curso recomienda empezar directamente desde Edit para simplificar el flujo de trabajo.
- **No crear una biblioteca propia**: los proyectos se guardan en la biblioteca por defecto; es mejor crear una nueva biblioteca organizada (ej. "DaVinci Resolve Course").
- **No ajustar la GPU en Preferencias**: dejar el modo por defecto puede causar bajo rendimiento; usar CUDA si se tiene GPU NVIDIA.