# DJI MINI 5 PRO 🔥 MAPEO 🔥 FOTOGRAMETRÍA PROFESIONAL 🟡 GRATIS Y SIN SDK LIBRE
**Fuente:** mundoaudiovisual | https://youtu.be/7Q5OOXYKT9U

## Qué enseña
Cómo realizar mapeo y fotogrametría profesional con el DJI Mini 5 Pro (o cualquier dron DJI con controlador RC2) sin necesidad de SDK desbloqueado, usando la web gratuita WaypointMap para generar rutas automáticas y trucando el controlador para importar los waypoints. Incluye el flujo completo desde la planificación hasta el modelo 3D en Agisoft Metashape.

## Lecciones accionables
- Usar **waypointmap.com** (gratuito) para planificar la misión: marcar el perímetro del área a mapear, configurar altitud (ej. 60 m), velocidad, ángulo de gimbal (ej. -75° para terrenos con relieve), y hacer clic en "Generate" para crear la ruta automática con puntos de paso.
- Descargar el archivo de ruta como **KMZ** desde waypointmap.com (botón "Download KMZ file").
- En el controlador RC2: crear manualmente **dos waypoints** en la misma zona del mapa (para que DJI guarde un archivo de referencia en la carpeta interna).
- Conectar el RC2 al ordenador vía USB. En Mac usar **Open MTP** (Android no se reconoce nativamente); en Windows funciona directo.
- Navegar a la ruta interna del RC2: `Android/data/dji.go.v5/files/waypoint/`. Allí aparece una carpeta por cada waypoint guardado.
- Copiar el archivo de waypoint generado por DJI (el de referencia) a una carpeta externa, **anotar su nombre exacto**, y eliminar ese archivo del RC2.
- Mover el archivo KMZ descargado de waypointmap.com a la misma carpeta `waypoint/` del RC2.
- **Renombrar** el archivo KMZ importado con el mismo nombre exacto que tenía el archivo original de DJI (para engañar al sistema).
- Reiniciar el RC2. Al abrir Waypoint en la app DJI Fly, cargar el waypoint guardado: aparecerán los 53 puntos (o los que tenga la ruta) generados automáticamente.
- En campo, antes de ejecutar: configurar **velocidad global** (ej. 9 km/h), **fin de vuelo** en RPO, **orientación personalizada** a "Seguir ruta", y **foto con temporizador** cada 5 segundos.
- En cámara: resolución **50 megapíxeles efectivos**, formato **JPG** (no RAW).
- Para cambiar de batería: anotar el último punto completado (ej. punto 32), al reanudar cargar el mismo waypoint, seleccionar "Iniciar desde punto 32" y continuar.
- En Agisoft Metashape: importar todas las fotos (Workflow > Add Photos). Ir a **Tools > Camera Calibration > Rolling Shutter Compensation** y seleccionar **"Full"** (compensación por obturador electrónico del dron en movimiento).
- Workflow > Orient Photographs: calidad **máxima**, marcar "Save project after each stage".
- Workflow > Build Dense Cloud: calidad **Ultra High**.
- Workflow > Build Mesh: calidad media o extra fina (según tiempo disponible).

## Reglas para agentes
- Usa **waypointmap.com** (versión gratuita) para generar rutas de mapeo automáticas cuando no tengas acceso a SDK o apps de pago.
- Siempre crea **dos waypoints manuales** en el RC2 antes de importar archivos externos, para que DJI genere la estructura de carpeta y el archivo de referencia.
- Renombra el archivo KMZ importado con el **nombre exacto** del archivo de waypoint original de DJI (incluyendo extensión) antes de copiarlo a la carpeta `waypoint/`.
- Reinicia el RC2 después de copiar archivos para que reconozca el nuevo waypoint.
- En Agisoft Metashape, activa siempre **Rolling Shutter Compensation > Full** antes de orientar fotos tomadas con drones de obturador electrónico.
- Guarda el proyecto de Metashape **después de cada etapa** (orientación, nube densa, malla) para evitar pérdidas por tiempos de procesamiento largos.
- Nunca uses formato RAW para fotogrametría con este método; usa JPG a máxima resolución (50 MP).

## Errores comunes que evita o menciona
- No conectar el RC2 a internet antes de la misión para cargar mapas satelitales en el campo (el video muestra que lo olvidó y tuvo que conectarse en el momento).
- No guardar el proyecto en Metashape después de cada etapa: si el proceso se interrumpe, se pierde todo el trabajo de horas.
- Usar calidad máxima en Metashape sin considerar que el procesamiento puede tomar casi un día completo (el video usa calidad media para agilizar el tutorial).
- En Mac con chips M1/M2/M3/M4/M5, Metashape **no puede crear texturas finales**; el video recomienda usar Windows para esa etapa o conformarse con modelo sombreado en Mac.
- No ajustar el ángulo del gimbal a -75° en terrenos con relieve y árboles (el valor por defecto -90° puede no capturar bien las elevaciones).