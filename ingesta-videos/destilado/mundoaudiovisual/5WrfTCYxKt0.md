# Keyframes in DaVinci Resolve 20 Explained (and HOW to USE Them)
**Fuente:** mundoaudiovisual | https://youtu.be/5WrfTCYxKt0

## Qué enseña (2-3 líneas)
Explica el nuevo panel de keyframes en DaVinci Resolve 20, cómo crear animaciones con parámetros como zoom y posición, y cómo usar curvas paramétricas para lograr movimientos orgánicos en lugar de lineales. También muestra cómo aplicar keyframes a máscaras, velocidad (speed ramp) y objetos como mapas o formas.

## Lecciones accionables
- Para crear un keyframe: ubícate en el timeline, ve al parámetro deseado (ej. Zoom) y haz clic en el botón de keyframe (rombo/diamante). Avanza en el timeline, añade otro keyframe y cambia el valor del parámetro.
- Para abrir el panel de keyframes: haz clic en el botón "Keyframe" (nuevo en v20) que abre un panel expandible donde puedes ver y editar todos los keyframes.
- Para acceder a las curvas paramétricas: haz clic en el botón con forma de curva (junto al panel de keyframes). Allí verás la línea que representa el cambio del parámetro a lo largo del tiempo.
- Para hacer una animación orgánica (curva en S): en el panel de curvas paramétricas, selecciona un keyframe y arrastra los manejadores para crear una curva. Alternativamente, haz clic derecho sobre un keyframe y selecciona "initial acceleration" (aceleración inicial) o "final acceleration" (aceleración final).
- Para animar la velocidad (speed ramp): presiona Command+R para mostrar los triángulos de cambio de velocidad. Añade "add speed point" en los puntos deseados, luego comprime o expande la sección. Para suavizar, ve al panel de curvas paramétricas, selecciona "Retime Speed", y convierte los keyframes a curvas arrastrando los manejadores.
- Para animar una máscara: aplica una máscara (ej. rectángulo) a un clip, luego en el parámetro de la máscara añade un keyframe al inicio y otro más adelante, cambiando la posición/tamaño de la máscara.
- Para animar posición de objetos: selecciona el objeto (ej. forma, imagen), activa keyframe en "Position", mueve el objeto en el timeline, cambia su posición y se creará automáticamente un nuevo keyframe.

## Reglas para agentes
- Usa el panel de curvas paramétricas cuando necesites animaciones orgánicas (no lineales) en lugar de depender solo de keyframes lineales.
- Nunca uses keyframes lineales para movimientos que imiten física real (como caídas o rebotes); siempre aplica curvas en S (aceleración inicial + aceleración final).
- Cuando trabajes con speed ramp, convierte los keyframes de "Retime Speed" a curvas paramétricas para evitar cambios abruptos de velocidad.
- Usa el botón de keyframe (rombo) en cualquier parámetro que tenga un diamante disponible para animar ese atributo específico.
- Para animaciones múltiples sincronizadas (ej. varios objetos), copia los keyframes de un objeto y pégalos en los demás para mantener consistencia.

## Errores comunes que evita o menciona
- No confundir el nuevo panel de keyframes (v20) con el método antiguo de Command+C para mostrar keyframes en el timeline (ese método ya no funciona en v20).
- Evitar animaciones lineales para movimientos que requieran naturalidad (ej. caída de una pelota): el cambio debe ser más lento al inicio y más rápido al final.
- No olvidar que el panel de curvas paramétricas permite manipular manualmente los manejadores para personalizar la curva, no solo usar las opciones predefinidas de aceleración.
- Tener cuidado al mover los manejadores en el panel de curvas: es fácil desplazar accidentalmente el keyframe y alterar la animación.
- No asumir que la versión beta de Resolve 20 está completamente estable; algunos botones o funciones pueden no funcionar como se espera.