# Advanced 3D After Effects Motion Graphics Tutorial
**Fuente:** Stephan Zammit | https://youtu.be/nE9l37cs8Fs

## Qué enseña
Cómo lograr que objetos 3D en After Effects reaccionen dinámicamente a la posición de un objeto controlador (affector), simulando comportamientos típicos de software 3D como Cinema 4D. Incluye atracción/repulsión, cambio de escala, color y activación de animaciones mediante expresiones y un preset personalizado.

## Técnicas accionables
- Crear una cuadrícula de capas de forma: dibujar un rectángulo con la herramienta Rectángulo, tamaño 160x160, redondez (roundness) 20. Duplicar 9 veces (10 cuadrados total), alinear con "Distribute Horizontally" (distribuir horizontalmente). Seleccionar todas las capas, presionar **Command + D** para duplicar filas y apilarlas formando una cuadrícula.
- Convertir todas las capas a 3D: seleccionar todas, activar el interruptor 3D. Crear una cámara: **Layer > New > Camera**, longitud focal (focal length) 230. Usar la herramienta Orbit (C) para rotar la vista.
- Crear un objeto nulo 3D: **Layer > New > Null Object**, activar 3D, renombrar exactamente a **"fector"** (nombre crítico para las expresiones).
- Configurar geometría 3D avanzada: seleccionar todas las capas de forma, ir a **Geometry Options**, cambiar **Bevel Style** a **Convex**, ajustar **Bevel Depth** y **Extrusion Depth** al gusto. Asegurarse de que el renderizador esté en **Advanced 3D** (no Classic 3D).
- Iluminación: crear una **Point Light** (Layer > New > Light), reducir su radio (Radius), aumentar intensidad a ~200%. Parentearla al "fector". Duplicar la luz (**Command + D**), quitar el parentesco (None), colocar otra luz en otra posición. Agregar una tercera luz. Reducir la intensidad de las luces no parentadas a ~1%.
- Añadir controles al "fector": aplicar **Effect > Expression Controls > Slider Control**, renombrar a **"radius"**. Duplicar (**Command + D**), renombrar a **"radius strength"**. Duplicar, renombrar a **"scale two"**. Agregar **3D Point Control**, renombrar a **"position XYZ"**. Agregar **Color Control**, renombrar a **"color from"**. Duplicar, renombrar a **"color to"**.
- Aplicar expresiones a un cuadrado base:
  - **Posición (P)**: Alt+clic en stopwatch, pegar expresión de posición (proporcionada en el sitio web del autor).
  - **Escala (S)**: Alt+clic en stopwatch, pegar expresión de escala.
  - **Color de relleno**: abrir **Contents > Rectangle > Fill > Color**, Alt+clic en stopwatch, pegar expresión de color.
- Propagar expresiones a todas las capas: cerrar propiedades, seleccionar la propiedad con expresión, usar **Edit > Copy Expression Only**, seleccionar todas las demás capas, pegar. Para color, repetir manualmente en cada capa (abrir Contents > Rectangle > Fill > Color, pegar).
- Configurar el "fector": ajustar **radius** a ~500, **radius strength** a 0 (gradual) o 400 (fuerte), **scale two** a 50 o 111, **position XYZ** (Z) para atraer/repeler (valores negativos atraen, positivos repelen). Cambiar **color from** y **color to** para definir colores.
- Vincular un orbe 3D al "fector": arrastrar un objeto 3D (esfera) a la composición, mantenerlo como capa 2D. En su propiedad **Position**, Alt+clic en stopwatch, pegar expresión que convierte coordenadas 3D del "fector" a 2D. Añadir **Effect > Stylize > Glow**, aumentar radio.
- Usar el preset Mograph: en **Effects & Presets**, buscar bajo **User Presets > Mograph Presets > Mograph Fector**, aplicar al "fector". En las capas de forma, aplicar **Mograph 3D Layer** (o 2D Layer según corresponda) para activar automáticamente las reacciones.
- Activar animación condicional con plugin Mega Motion: seleccionar capas, aplicar **Mega Motion** (plugin externo), elegir animación (ej. "3D Loop Bounce XR"), ajustar **Loop Duration** a 2 segundos. En **Animation Intensity**, aplicar **Mograph Special Property** desde el panel de efectos. Ajustar **Property 1** a 15 para que la animación se active solo cuando el "fector" pasa cerca.
- Invertir animación en filas específicas: en los controles de Mega Motion, activar **Flip Y Axis** para invertir la dirección.

## Reglas para el erudito (imperativas y verificables)
- Usa **Advanced 3D** renderer, nunca Classic 3D, para que funcionen las opciones de geometría (Bevel, Extrusion).
- Nombra el null object exactamente **"fector"** (sin mayúsculas, sin errores ortográficos) para que las expresiones lo referencien correctamente.
- Nombra los controles del "fector" exactamente como se indica: **radius**, **radius strength**, **scale two**, **position XYZ**, **color from**, **color to**.
- Aplica las expresiones de color ANTES de duplicar las capas para ahorrar tiempo; si ya están duplicadas, debes pegarlas manualmente en cada capa.
- Para que el orbe 2D siga al "fector" 3D, usa la expresión de conversión de coordenadas 3D a 2D en su posición; no lo conviertas a capa 3D.
- Ajusta **radius strength** a 0 para un efecto gradual, a valores altos (400+) para un efecto abrupto en todo el radio.
- Para activar animaciones solo al paso del "fector", usa **Mograph Special Property** sobre el parámetro **Animation Intensity** del plugin Mega Motion.

## Errores comunes que evita o menciona
- No olvidar cambiar el renderizador a Advanced 3D antes de ajustar Geometry Options; de lo contrario, las opciones de bisel y extrusión no estarán disponibles.
- No aplicar la expresión de color después de duplicar muchas capas; hacerlo antes ahorra trabajo manual.
- No usar el nombre incorrecto para el null object ("fector" debe ser exacto) o los controles, pues las expresiones dejarán de funcionar.
- No confundir la intensidad de las luces: las luces no parentadas al "fector" deben tener intensidad muy baja (~1%) para no arruinar la iluminación dinámica.
- Al usar el preset Mograph, el color no se aplica automáticamente; debe aplicarse manualmente con **Mograph Color Property** sobre la propiedad de color de cada capa.