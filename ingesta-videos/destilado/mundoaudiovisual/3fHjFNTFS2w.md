# DJI - Ronin SC -  Mucho más que un estabilizador. Crea efectos increíbles.
**Fuente:** mundoaudiovisual | https://youtu.be/3fHjFNTFS2w

## Qué enseña (2-3 líneas)
El tutorial enseña a crear un efecto de clonación o múltiples copias de una persona en un mismo plano usando el estabilizador DJI Ronin SC, sin necesidad de trípode. Explica cómo programar movimientos de cámara repetitivos exactos mediante la función de puntos de referencia en la app, y luego combinar las tomas en edición con máscaras y keyframes.

## Lecciones accionables
- **Programar movimiento repetitivo en app DJI Ronin:**
  - Ir a "Create" > "Virtual Joystick" > "Re-center"
  - Presionar "+" para agregar puntos de referencia (waypoints) en la posición deseada del estabilizador
  - Configurar cada punto: duración del movimiento entre puntos (ej. 10 segundos) y duración en el punto (0 segundos para movimiento continuo sin pausa)
  - Ajustar puntos para que el recorrido sea de ida y vuelta (ej. punto 1 → punto 2 → punto 3 → punto 4 → punto 1)
- **Grabación de tomas para clonación:**
  - Grabar tantas secuencias como clones se deseen (ej. 4 tomas para 4 clones)
  - Cada toma debe tener exactamente el mismo movimiento de cámara programado
  - El talento cambia de posición en cada toma
- **Edición en Adobe Premiere:**
  - Sincronizar todas las tomas por el fotograma donde comienza el movimiento
  - Cortar cada clip para que solo muestre la parte del movimiento deseada
  - En cada clip, ir a "Opacity" > crear máscara para aislar al sujeto
  - Ajustar keyframes de la máscara para que siga el movimiento del sujeto fotograma a fotograma
  - Anidar (nest) todos los clips
  - Aplicar "Speed/Duration" > 99% > "Optical Flow" para suavizar el movimiento
- **Herramientas y parámetros clave:**
  - App DJI Ronin: puntos de referencia, duración de movimiento (10s), duración en punto (0s)
  - Adobe Premiere: Opacity, máscara, keyframes, Nest, Speed/Duration, Optical Flow

## Reglas para agentes
- Usa la función de puntos de referencia en la app DJI Ronin cuando necesites repetir exactamente el mismo movimiento de cámara múltiples veces
- Configura la duración en cada punto de referencia a 0 cuando quieras movimiento continuo sin pausas entre waypoints
- Siempre sincroniza todas las tomas por el mismo fotograma de inicio del movimiento antes de aplicar máscaras
- Aplica Optical Flow (99% speed) al clip anidado para suavizar las transiciones de movimiento del estabilizador
- Nunca uses trípode para este efecto; el estabilizador permite movimiento de cámara que el trípode no puede lograr

## Errores comunes que evita o menciona
- No conectar el cable de la cámara si el modelo no es compatible (el efecto funciona igual sin cable)
- No dejar duraciones largas en los puntos de referencia (evita pausas no deseadas en el movimiento continuo)
- No olvidar ajustar los keyframes de la máscara fotograma a fotograma para que siga al sujeto en movimiento
- No saltarse el paso de anidar (nest) los clips antes de aplicar Optical Flow