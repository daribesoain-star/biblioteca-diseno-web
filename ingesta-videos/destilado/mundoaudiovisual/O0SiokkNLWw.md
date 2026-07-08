# 🚀 Chapter 18: Take Your Edits to the Next Level with the SPOT TRACKER
**Fuente:** mundoaudiovisual | https://youtu.be/O0SiokkNLWw

## Qué enseña
Uso del rastreador puntual (Point Tracker) en el módulo Fusion de DaVinci Resolve para seguir movimientos complejos con desenfoque de movimiento, donde el rastreador inteligente (Intelligent Track) falla. Muestra dos técnicas: texto que sigue completamente un objeto en movimiento y un punto de anclaje móvil con texto fijo.

## Lecciones accionables
- **Recortar el clip exacto donde se aplicará el efecto:** presionar Command-B (Mac) o Control-B (Windows) para cortar solo el fragmento del clip donde se quiere crear el efecto de tracking. No rastrear todo el timeline.
- **Ir al módulo Fusion** con el clip recortado seleccionado.
- **Agregar el rastreador puntual (Point Tracker):** con Media In activado (borde rojo), presionar Mayús + Espacio, buscar "Tracker" o "Point Tracker" y agregarlo entre Media In y Media Out.
- **Configurar el punto de seguimiento:**
    - Cuadrado pequeño (esquina superior izquierda): mueve el punto a seguir.
    - Cuadrado interior sólido: área donde está el punto a rastrear.
    - Cuadrado exterior con línea discontinua: espacio donde buscará el punto en el siguiente fotograma (ajustar más grande si hay movimientos rápidos).
- **Ajustar tamaño del área de búsqueda:** en Inspector, modificar "Width" y "Height" de la forma. Para movimientos muy rápidos, extender el cuadrado exterior.
- **Iniciar el tracking:** en Inspector > pestaña "Trackers", usar botones de flecha para rastrear hacia adelante y hacia atrás.
- **Seleccionar operación:** en Inspector > pestaña "Operation", elegir "Match Motion" para que cualquier elemento conectado siga el movimiento rastreado.
- **Conectar texto al tracker:** agregar nodo Text+, combinarlo con Background (fondo blanco), agregar Rectangle Mask (borde con "Border Width" ajustado), agregar Paint para trazos (Stroke Paint) para crear línea conectora.
- **Publicar punto de polilínea en el tracker:** hacer clic derecho sobre un punto de la máscara/polilínea > "Polyline" > "Publish" > "Tracker Point 3 Position P" para que solo ese punto siga el movimiento mientras el texto permanece fijo.

## Reglas para agentes
- **Usa el Point Tracker (rastreador puntual clásico) cuando** el movimiento tenga desenfoque de movimiento severo o cambios rápidos de posición; el Intelligent Track falla en esos casos.
- **Nunca** intentes rastrear todo el clip original; siempre recorta primero el fragmento exacto donde aplicarás el efecto.
- **Ajusta el cuadrado exterior de búsqueda** proporcionalmente a la velocidad del movimiento: más grande para movimientos rápidos, más pequeño para movimientos lentos.
- **Verifica visualmente** que cada fotograma tenga un punto de seguimiento válido; si hay errores, detén el tracking, agranda el área de búsqueda y vuelve a rastrear.

## Errores comunes que evita o menciona
- **Intelligent Track falla con motion blur:** el rastreador inteligente con IA no funciona en movimientos muy rápidos con desenfoque; usar Point Tracker clásico.
- **No recortar el clip antes de trackear:** rastrear todo el timeline hace que el sistema busque el mismo punto en todo el metraje, lo que es incorrecto e ineficiente.
- **No ajustar el área de búsqueda:** si el cuadrado exterior es demasiado pequeño para movimientos rápidos, el tracker pierde el punto y genera errores frame a frame.