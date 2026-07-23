# Blender to Unity with Materials: AP GameTools!
**Fuente:** Alex Pearce | https://youtu.be/jQXG9IbwHwI

## Qué enseña (2-3 líneas)
Este tutorial explica cómo usar el add-on AP GameTools para exportar objetos desde Blender a Unity con materiales y shaders configurados automáticamente. Cubre la instalación del importador UniGLTF, el flujo de exportación no destructiva con modificadores, y la transferencia de texturas. También advierte sobre limitaciones con objetos con padres y materiales complejos.

## Técnicas accionables
- Instala UniGLTF en Unity: descarga el paquete .unitypackage, ve a **Assets > Import Package > Custom Package**, selecciona el archivo y presiona **Import**.
- Guarda el archivo de Blender (.blend) en la misma carpeta que el proyecto de Unity para que la exportación actualice automáticamente mallas y materiales.
- Selecciona los objetos a exportar y presiona **Export for Game Engine** (o **Export for Game Engine (Reset Location)** para centrar en 0,0,0).
- Para exportación no destructiva, añade modificadores como **Subdivision Surface** o **Decimate**; el add-on los aplica automáticamente al exportar.
- Para evitar que un material se sobrescriba al reexportar, duplica el material en Unity, renómbralo y reasínalo al objeto.
- Si un material complejo (ej. de Polygon) no exporta correctamente, simplifícalo o usa el add-on **Simple Bake** para hornear texturas: difuso, rugosidad y normal.
- Para ver el progreso de la exportación, abre la consola en Blender con **Window > Toggle System Console** (en Windows).
- Para cancelar una exportación en curso, haz clic en la ventana de la consola y presiona **Ctrl + C**.

## Reglas para el erudito (imperativas, "usa X cuando Y")
- Usa **Export for Game Engine (Reset Location)** cuando necesites que el objeto se centre en el origen (0,0,0) en Unity.
- Usa **Export for Game Engine** (sin reset) cuando quieras preservar la posición original del objeto en el espacio 3D.
- Usa **Simple Bake** (u otro add-on de horneado) cuando el material de origen tenga nodos complejos que no se traduzcan correctamente a Unity.
- Duplica el material en Unity antes de reexportar si quieres mantener una versión personalizada sin que se sobrescriba.
- Guarda el archivo .blend dentro de la carpeta del proyecto de Unity para que la reexportación actualice automáticamente mallas y materiales.

## Errores comunes / gotchas
- **Objetos con padres:** No se exportan correctamente; debes limpiar las relaciones de padre antes de exportar.
- **Materiales complejos:** Materiales con nodos avanzados (ej. de Polygon) pueden no exportarse bien; requieren simplificación u horneado de texturas.
- **Archivo .blend fuera del proyecto Unity:** Si arrastras el modelo manualmente, la reexportación no actualizará automáticamente mallas ni materiales; tendrás que reimportar manualmente.
- **Exportar toda la escena:** Seleccionar todos los modelos puede causar tiempos largos de exportación e importación según la complejidad.
- **Consola cerrada:** Si no ves el progreso, abre la consola con **Window > Toggle System Console** (Windows) para monitorear y poder cancelar con **Ctrl + C**.