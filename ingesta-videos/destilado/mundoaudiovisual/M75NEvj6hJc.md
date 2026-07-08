# 🔵 NUEVO CURSO 2 0 DE DAVINCI RESOLVE 18 🎬 Capítulo 14: LA JERARQUÍA DE LOS NODOS
**Fuente:** mundoaudiovisual | https://youtu.be/M75NEvj6hJc

## Qué enseña
Explica el orden jerárquico de los nodos en Fusion dentro de DaVinci Resolve 18, centrándose en cómo funcionan los nodos Merge y MultiMerge, la diferencia entre fondo (background) y primer plano (foreground), y el uso de nodos de máscara (círculo, bezier) para crear composiciones multicapa.

## Lecciones accionables
- **Identificar colores de triángulos en nodos Merge:** El triángulo **amarillo** = fondo (background), el triángulo **verde** = primer plano (foreground), el triángulo **azul** = máscara (mask).
- **Conectar un Merge correctamente:** Desconecta cualquier selección previa, añade el nodo Merge, conecta el nodo de fondo al triángulo amarillo y el nodo de primer plano al triángulo verde. Luego conecta la salida del Merge al MediaOut.
- **Añadir texto sobre un fondo:** Crea un nodo Background (color rojo), un nodo Text+ (escribe "Hello"), añade un Merge, conecta Background al amarillo y Text+ al verde. Ajusta tamaño y posición del texto en el Inspector.
- **Usar MultiMerge para múltiples capas:** Añade el nodo MultiMerge (icono con múltiples entradas). Conecta el fondo al triángulo amarillo. Luego conecta cada elemento adicional (Text+, Background, etc.) a las entradas verdes sucesivas. Puedes añadir tantos elementos como necesites.
- **Crear un círculo con borde usando máscaras:**
    1. Añade un nodo Background (color azul claro) y un nodo Ellipse (máscara circular).
    2. Selecciona el nodo Ellipse, presiona Command+C para copiar, luego selecciona el nodo Background y pega con Command+V (esto aplica la máscara al fondo).
    3. En el Inspector del Background, cambia el modo de "Solid" a "Border Width" y ajusta el grosor del borde.
    4. Añade un Merge: conecta MediaIn al triángulo amarillo, el Background con borde al triángulo verde, y la salida del Merge al MediaOut.
- **Suavizar bordes de máscara:** Selecciona el nodo de máscara (Ellipse, Bezier, etc.), ve al Inspector y ajusta el parámetro "Soft Edge" para difuminar el borde.
- **Crear máscaras Bezier:** Con el nodo MediaIn seleccionado, haz clic en el nodo Bezier (icono de pluma). Dibuja la forma deseada en el visor. Puedes modificar los puntos posteriormente.

## Reglas para agentes
- Usa el triángulo **amarillo** del Merge **siempre** para el fondo (background).
- Usa el triángulo **verde** del Merge **siempre** para el elemento que va encima (foreground).
- Usa el triángulo **azul** del Merge **solo** para conectar nodos de máscara (Ellipse, Rectangle, Bezier, etc.).
- Nunca conectes un elemento de primer plano al triángulo amarillo ni un fondo al triángulo verde, o el elemento quedará oculto.
- Cuando uses MultiMerge, conecta el fondo **únicamente** al primer triángulo amarillo; todos los demás elementos van a entradas verdes.
- Para aplicar una máscara a un nodo, copia el nodo de máscara (Command+C) y pégalo (Command+V) sobre el nodo que quieres enmascarar.

## Errores comunes que evita o menciona
- **Invertir fondo y primer plano en el Merge:** Si conectas el texto al amarillo y el fondo al verde, el texto quedará detrás del fondo y no será visible.
- **No desconectar selecciones previas al añadir un Merge:** Si tienes un nodo seleccionado al añadir un Merge, DaVinci puede conectarlo automáticamente de forma incorrecta. Es mejor añadirlo sin nada seleccionado.
- **Confundir los triángulos del Merge:** El color amarillo siempre es fondo, verde es frente, azul es máscara. No importa la posición física de los triángulos en el nodo.