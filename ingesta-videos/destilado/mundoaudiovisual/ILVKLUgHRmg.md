# DJI MINI 5 PRO - MOVIE-LIKE DRONE FOOTAGE - COLOR GRADING
**Fuente:** mundoaudiovisual | https://youtu.be/ILVKLUgHRmg

## Qué enseña (2-3 líneas)
Tres técnicas de corrección de color en DaVinci Resolve para transformar metraje de drone (DJI Mini 5 Pro) en video con aspecto cinematográfico: uso de slow motion, priorización del objeto principal mediante power windows, y ajustes de color selectivos en sombras y altas luces. Todo el proceso se realiza con software gratuito DaVinci Resolve.

## Lecciones accionables
- **Configuración de proyecto:** Crear proyecto en 4K y 25 fps (o 50 fps si se graba a 50 fps para slow motion)
- **Slow motion:** Si el clip está grabado a 50 fps y el proyecto a 25 fps, se puede reducir la velocidad hasta 50% para efecto cinematográfico
- **Primer nodo - Corrección base:**
  - Aplicar DJI LUT como punto de partida
  - Bajar sombras (Shadows) en Primary Colors
  - Aumentar saturación (Saturation) ligeramente
  - Ajustar color enhancement (valor sugerido: 4)
- **Segundo nodo - Temperatura de color:** Añadir nodo en serie y subir temperatura (Temperature) para tono más cálido y cinematográfico
- **Tercer nodo - Power Window para objeto principal:**
  - Dibujar power window circular alrededor del objeto principal
  - Duplicar nodo (Shift+S) y copiar efectos
  - Invertir máscara para que afecte solo al exterior
  - En nodo invertido: bajar sombras y exposición general
- **Cuarto nodo - Nitidez/Desenfoque:**
  - Nodo con máscara: añadir sharpness (nitidez) al objeto principal
  - Nodo invertido: añadir blur (desenfoque) al fondo
- **Quinto nodo - Color grading selectivo:**
  - Añadir nodo en serie para color
  - En sombras (Shadows): aumentar azules (Blues) sutilmente
  - Opcional: aplicar con máscara invertida para que solo afecte al fondo
- **Para paisajes abiertos (ej. lago con montaña):**
  - Bajar sombras en modo logarítmico (Logarithmic mode)
  - Añadir nodo con máscara rectangular para cielo: bajar luces, dar saturación y contraste
  - Añadir nodo con power window para agua: subir claridad, saturación, temperatura cálida
  - Añadir nodo para sombras: aumentar rojos (Reds) en lugar de azules
  - Activar panel de viñeteado (lens effect) invertido para efecto cinematográfico

## Reglas para agentes
- Usa DaVinci Resolve (gratuito) como software principal para color grading de drone
- Configura proyecto a 25 fps si grabas a 50 fps para permitir slow motion al 50%
- Aplica siempre el DJI LUT como primer paso en el primer nodo
- Usa power windows para aislar el objeto principal y aplicar ajustes diferenciales (nitidez al objeto, desenfoque al fondo)
- Invierte la máscara cuando quieras que los ajustes afecten solo al exterior del objeto principal
- Ajusta sombras en modo logarítmico para extraer detalles en zonas oscuras (ej. lagos)
- Nunca sobresatures: usa valores sutiles (color enhancement en 4, saturación ligera)
- Nunca apliques sharpness excesivo al objeto principal porque puede verse artificial
- Nunca olvides suavizar (soften) los bordes de las power windows para que la transición sea natural

## Errores comunes que evita o menciona
- No usar solo el LUT de DJI sin ajustes adicionales: el metraje queda plano y no cinematográfico
- No exagerar el desenfoque del fondo ni la nitidez del objeto principal
- No aplicar power windows sin suavizar los bordes (soften) para evitar cortes bruscos
- No olvidar invertir la máscara cuando se quiere afectar el exterior del objeto principal
- No saturar en exceso los colores, especialmente en cielos y reflejos de agua
- No usar tracking en tomas estáticas o con movimiento lineal simple (no es necesario)