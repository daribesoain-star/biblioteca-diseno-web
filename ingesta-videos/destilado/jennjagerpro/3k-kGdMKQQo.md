# FCP Running Slow?
**Fuente:** jennjagerpro | https://youtu.be/3k-kGdMKQQo

## Qué enseña (2-3 líneas)
Explica por qué Final Cut Pro se ralentiza (archivos incompatibles o demasiado pesados) y cómo solucionarlo usando **optimized media** (Apple ProRes 422) y **proxy media** (copias de baja resolución). Muestra el proceso de creación, activación, edición y eliminación de estos archivos para acelerar el flujo de trabajo.

## Lecciones accionables
- Al importar clips, en la ventana **Media Import**, activa **"Creating optimized media"** y **"Creating proxy media"** en la sección **Transcode**.
- Para proxy media, elige **ProRes proxy** como formato y selecciona el **frame size**: **Same as source**, **50%**, **25%** o **12.5%** (usa menor escala si el equipo tiene más problemas).
- Si ya importaste clips sin transcodificar, selecciona el clip en el **Browser**, haz clic derecho y elige **Transcode Media** → aparecen las mismas opciones de optimized/proxy.
- Monitorea el progreso de la transcodificación en **Background Tasks** (menú Window > Background Tasks).
- Para editar con proxies: ve al menú **View** (en el visor) y selecciona **Proxy Preferred** (la calidad del video se reduce visiblemente).
- Antes de **color correction** o **export**, regresa a **View > Optimized & Original** para que Final Cut use los archivos de máxima calidad.
- Para archivar el proyecto y ahorrar espacio: selecciona la **Library** en el sidebar, ve a **File > Delete Generated Library Files**, marca **Render files**, **Optimized media** y **Proxy media**.
- Los archivos transcodificados se almacenan en la carpeta **Transcoded Media** dentro del paquete de la biblioteca (accesible con clic derecho > **Show Package Contents**).

## Reglas para agentes
- Usa **optimized media** (Apple ProRes 422) cuando los archivos nativos tengan codecs no ideales para Final Cut (ej. XAVC de Sony a73).
- Usa **proxy media** (ProRes proxy, escala 25% o menor) cuando el Mac se ralentice, especialmente en **multi-cam editing**.
- Nunca elimines manualmente archivos de las carpetas **Original Media** o **Transcoded Media** dentro del paquete de la biblioteca; usa siempre **Delete Generated Library Files**.
- Siempre cambia la vista a **Optimized & Original** antes de **color correction** y **export**.
- Siempre elimina **render files**, **optimized media** y **proxy media** al archivar el proyecto para reducir el tamaño de la biblioteca.

## Errores comunes que evita o menciona
- No transcodificar al importar y luego olvidar que se puede hacer con clic derecho en el clip (Transcode Media).
- No ajustar la escala de proxy al nivel adecuado (usar 25% o 12.5% si el equipo tiene muchas dificultades).
- Olvidar cambiar la vista de **Proxy Preferred** a **Optimized & Original** antes de colorizar o exportar, lo que resulta en baja calidad final.
- No eliminar los archivos generados (optimized/proxy/render) al archivar, lo que infla innecesariamente el tamaño de la biblioteca.
- Asumir que los archivos transcodificados reemplazan a los originales: en realidad son **adicionales** y ocupan más espacio (ej. original 321 MB, optimized mucho más grande, proxy fracción del tamaño).