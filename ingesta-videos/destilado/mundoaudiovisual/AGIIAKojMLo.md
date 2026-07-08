# FOTOGRAMETRÍA CON EL DJI AIR 3
**Fuente:** mundoaudiovisual | https://youtu.be/AGIIAKojMLo

## Qué enseña
El video explica cómo realizar fotogrametría con el DJI Air 3 usando sus 48 megapíxeles efectivos y la función de waypoints del controlador RC2, sin necesidad de aplicaciones de terceros. También compara este método con el uso de la app DJI DroneLink en el Mini 3 Pro, y muestra el procesamiento en Agisoft Metashape para generar un modelo 3D, ortomosaico y mediciones.

## Lecciones accionables
- Para fotogrametría con DJI Air 3, usa el controlador RC2 (no el de pantalla) y conecta un teléfono móvil para instalar apps de terceros cuando el SDK esté desbloqueado.
- Configura la cámara en modo RAW, resolución de 48 megapíxeles (efectivos, no nativos), y disparo con temporizador de 5 segundos (mínimo para 48 MP).
- Vuela a 65 metros de altura con inclinación de cámara de 75° para capturar el área deseada.
- Crea una ruta de waypoints manualmente: abre el mapa en vista satélite, coloca puntos de trayectoria (waypoints) cubriendo toda el área, ajustando la orientación del dron en cada punto.
- Configura la velocidad de los waypoints entre 15 y 17 km/h para que coincida con el intervalo de 5 segundos entre fotos.
- Guarda la ruta con nombre (ej. "flight field"), cambia la batería si es necesario, y ejecuta la misión presionando "Go".
- Procesa las fotos en Agisoft Metashape: importa las 335+ imágenes (resolución 8000x4000), genera el modelo teselado (tile model) y el ortomosaico.
- Usa la herramienta de regla en el modelo 3D para medir distancias reales (ej. recorrido FPV de 500 metros).

## Reglas para agentes
- Usa 48 megapíxeles efectivos para fotogrametría, no el modo HDR (que combina tres fotos).
- Configura siempre el temporizador a 5 segundos mínimo cuando uses 48 megapíxeles en el Air 3.
- Ajusta la velocidad de los waypoints a 15-17 km/h para garantizar solapamiento de fotos con intervalo de 5 segundos.
- Nunca uses el controlador con pantalla (RC) para instalar apps de terceros en el Air 3; usa el RCN2 con teléfono.
- Nunca combines fotos de 48 MP con modo HDR; son procesos distintos (48 MP = píxel procesado 4 veces; HDR = combinación de 3 exposiciones).

## Errores comunes que evita o menciona
- Confundir los 48 megapíxeles efectivos del Air 3 con nativos: el sensor es de 12 MP pero cada píxel se procesa cuatro veces para lograr 48 MP efectivos.
- Pensar que el Air 3 puede usar apps de terceros como DroneLink sin desbloquear el SDK: actualmente no es posible, solo el Mini 3 Pro con Calibre LS lo permite.
- No planificar la velocidad de vuelto adecuada: si es demasiado rápida, las fotos no tendrán suficiente solapamiento para el modelo 3D.
- Olvidar cambiar la batería antes de ejecutar la misión larga (23+ minutos) para evitar que el dron se quede sin energía.