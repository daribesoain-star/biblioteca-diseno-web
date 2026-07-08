# Curso de edición de video - Davinci Resolve - 🎬 Capítulo 8 - Títulos básicos y Títulos de Fusion.
**Fuente:** mundoaudiovisual | https://youtu.be/-8T3f2io9qs

## Qué enseña (2-3 líneas)
Este capítulo explica cómo añadir y personalizar títulos básicos y títulos de Fusion en DaVinci Resolve. Muestra las diferencias entre "Título básico" y "Título básico plus", y explora múltiples plantillas prediseñadas de Fusion con animaciones profesionales como neón, escritura automática y efectos de relleno con video.

## Lecciones accionables
- **Acceder a títulos:** Ir a "Biblioteca de efectos" → pestaña "Títulos". Arrastrar el título deseado a la línea de tiempo sobre el clip de video.
- **Configurar idioma si cambia:** Ir a Preferencias → "Usuario" → "Idioma" → seleccionar "Español" → Guardar cambios → Reiniciar DaVinci Resolve.
- **Personalizar título básico:** Seleccionar el título en línea de tiempo → ir a "Inspector" → pestaña "Video". Parámetros clave:
  - **Texto:** Escribir en el primer cuadro de texto.
  - **Fuente:** Elegir tipo (ej. "Osba"), estilo (ej. "Bold").
  - **Color:** Cambiar color del texto.
  - **Tamaño:** Ajustar escala del texto (no usar transformación para escala).
  - **Tracking:** Espaciado entre caracteres.
  - **Interlineado:** Espacio entre líneas (si hay múltiples líneas).
  - **Estilos básicos:** Subrayar, tachar, superíndice, mayúsculas/minúsculas, alineación (izquierda, centro, derecha, justificado).
  - **Stroke (borde):** Activar y ajustar grosor del borde del texto.
  - **Sombra:** Activar, ajustar color (ej. negro), opacidad, posición.
  - **Fondo:** Activar, ajustar altura, contorno, ancho, opacidad.
- **Personalizar título básico plus:** Mismos controles que título básico más:
  - **Write on:** Activar para animación de escritura automática.
  - **Force monospace:** Forzar espaciado uniforme entre caracteres.
  - **Kerning:** Ajustar kerning manual.
  - **Tabulador:** Definir espacios por tabulación.
  - **Layout:** Cambiar disposición del texto: "Point", "Frame", "Circle", "Pasillo" (corredor). En "Circle": ajustar centro, tamaño, parábola, perspectiva.
  - **Fondo:** Color sólido o degradado (ajustar colores y alfa).
  - **Transformación:** Rotar por caracteres, palabras o líneas en ejes X, Y, Z.
  - **Shear (inclinación):** Inclinar letras manteniendo punto de anclaje en eje X o Y.
  - **Size (tamaño):** Ajustar escala en eje X e Y por separado.
  - **Apariencia:** Elegir entre estilos visuales predefinidos.
  - **Composite:** Modo "Transparente", "Sólido" o "Composite" (recomendado).
  - **Motion Blur:** Activar en "Settings" para animaciones.
- **Usar títulos de Fusion prediseñados:** Arrastrar desde "Biblioteca de efectos" → "Títulos" → sección de Fusion. Ejemplos:
  - **Background bill:** Muestra el video dentro del texto (relleno con clip).
  - **Blower ser:** Similar a background bill con otra animación.
  - **Call out:** Marco con línea apuntadora. Ajustar tamaño, posición, exposición de línea. Animar posición con fotogramas clave.
  - **Centre ville:** Animación de texto centralizada.
  - **Clean and symbol:** Animación estilizada.
  - **Dropping, Drop blue, Blogger outs:** Textos con animaciones de entrada.
  - **Neón:** Elegir fuente fina, cambiar color (ej. azul), aumentar saturación para efecto neón.
- **Añadir sombra en Fusion:** Ir a pestaña "Fusion" → abrir nodos → añadir nodo de sombra → ajustar distancia, opacidad, desenfoque.
- **Mejorar visibilidad de títulos sobre video:** Seleccionar clip de video en línea de tiempo → en "Inspector" → bajar "Opacidad" del clip durante la entrada del título.

## Reglas para agentes
- Usa "Título básico plus" cuando necesites animación de escritura (Write on) o disposiciones circulares (Layout → Circle).
- Usa "Background bill" cuando quieras que el video se vea dentro del texto como relleno.
- Usa "Call out" cuando necesites un marco señalador para productos o elementos específicos en pantalla.
- Usa títulos de neón solo con fuentes finas para que el efecto se vea correctamente.
- Nunca uses la escala de "Transformación" en el inspector para cambiar el tamaño del texto; usa el parámetro "Tamaño" dentro de los controles de título.
- Nunca intentes añadir sombra a títulos de Fusion desde el inspector de edición; debes ir al módulo Fusion y añadir un nodo de sombra.
- Cuando un título de Fusion tenga fondo blanco y no se vea bien, baja la opacidad del clip de video subyacente en el momento de la entrada del título.

## Errores comunes que evita o menciona
- **Idioma cambiado tras actualización:** Al actualizar DaVinci Resolve, el idioma puede cambiar a inglés. Solución: Preferencias → Usuario → Lengua → Español → Guardar → Reiniciar.
- **Mover escala del texto con Transformación:** No se debe usar la escala de transformación general para cambiar el tamaño del texto; usar el control de "Tamaño" específico del título.
- **Fondo blanco en títulos de Fusion:** Algunos títulos de Fusion tienen fondo blanco que tapa el video. Solución temporal: bajar la opacidad del clip de video durante la entrada del título.
- **Sombra en títulos de Fusion desde el inspector:** No se puede añadir sombra a títulos de Fusion desde el inspector de edición; hay que ir al módulo Fusion y añadir nodos.