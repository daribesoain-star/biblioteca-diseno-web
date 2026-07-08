# Apple Motion Rotoscoping Tutorial
**Fuente:** jennjagerpro | https://youtu.be/f56gZkHiOuc

## Qué enseña (2-3 líneas)
Tutorial completo de rotoscopia en Apple Motion para aislar una mano y superponer efectos visuales (humo y explosión de bola de fuego) debajo del recorte. Explica el proceso cuadro por cuadro usando la herramienta B-Spline (BZA), creación de máscaras de imagen y aplicación de emisores de partículas con comportamientos de fundido.

## Lecciones accionables
- **Seleccionar punto de inicio:** Ubicar en la línea de tiempo el rango exacto donde se necesita rotoscopiar (ej. desde 2 segundos hasta 10 segundos) para no trabajar sobre toda la duración del clip.
- **Identificar qué enmascarar:** Analizar el encuadre y seleccionar solo las partes mínimas necesarias para ocultar los efectos debajo (ej. el pulgar y la parte carnosa de la palma). "Less is more in rotoscoping".
- **Separar máscaras complejas:** Si hay múltiples elementos complicados, hacerlos en piezas separadas; no intentar abarcar grandes porciones de una sola vez.
- **Crear el contorno con BZA:** Seleccionar la herramienta BZA (B-Spline) en el panel de herramientas. Hacer clic para puntos lineales; hacer clic y arrastrar para puntos suaves con manejadores.
- **Configurar la máscara en el Inspector:** Cambiar el BZA de "Outline" a "Fill". Reducir la opacidad del relleno para ver la imagen subyacente. Cambiar el color del relleno (ej. azul) para contrastar con el tono de piel.
- **Ajustar puntos de control:** Acercar el zoom en el lienzo y refinar manualmente cada punto de control para que no asome piel ni se invada el fondo.
- **Keyframing cuadro por cuadro:** En el Inspector > Shape, agregar un keyframe en el primer fotograma. Avanzar un fotograma con la flecha derecha y mover los puntos de control. Al mover el primer punto se genera automáticamente un nuevo keyframe.
- **No saltar fotogramas:** No intentar "hacer trampa" saltando frames; la precisión requiere keyframes en cada fotograma individual. Agregar keyframes después entre fotogramas espaciados da un resultado descuidado.
- **Agregar suficientes puntos de control iniciales:** No se pueden agregar puntos de control después sin generar desorden. Asegurarse de tener suficientes desde el principio.
- **Keyframe manual en fotogramas sin movimiento:** Si el plano no parece moverse entre fotogramas, agregar manualmente un keyframe en los puntos de control desde la ventana del Inspector.
- **Mover grupos de puntos:** Mantener presionada la tecla Shift y hacer clic en los puntos de control que se quieran mover como grupo, luego arrastrarlos juntos.
- **Duplicar clip y aplicar Image Mask:** Seleccionar el clip de video original en el panel de proyecto, hacer clic derecho y duplicar. Ir a Objeto > Agregar Image Mask. En el campo "Mask Source", arrastrar el BZA creado.
- **Restaurar opacidad del BZA:** Seleccionar el BZA, ir a Inspector > Style y subir la opacidad del relleno al 100%.
- **Agregar efectos visuales:** Ir a Biblioteca > Particle Emitters > Smoke, seleccionar "Smokey Variation". Arrastrarlo al panel de proyecto sobre el clip de pantalla completa y debajo del clip recortado del pulgar. Posicionarlo en la línea de tiempo al inicio del BZA.
- **Ajustar duración del efecto:** Mover el emisor de humo para que termine cuando los dedos comiencen a separarse.
- **Agregar comportamiento de fundido:** Seleccionar el emisor, ir a Behaviors > Basic Motion > Fade In/Fade Out para que se desvanezca al final.
- **Agregar explosión:** Ir a Biblioteca > Particle Emitters > Pyro, seleccionar "Big Blast". Arrastrarlo sobre el clip de pantalla completa pero debajo del clip recortado. Reposicionarlo en la palma.
- **Ajustar opacidad del efecto:** Seleccionar "Big Blast" en la línea de tiempo, ir a Inspector > Properties y reducir la opacidad para que no esté tan saturado.
- **Suavizar bordes del BZA:** Seleccionar el BZA en el panel de proyecto, ir a Inspector > Shape y aumentar el valor de "Feather" ligeramente. Subir "Fall Off" por encima de 100 para obtener un borde más suave.

## Reglas para agentes
- Usa la herramienta BZA (B-Spline) para crear contornos de rotoscopia, no otras herramientas de máscara.
- Cuando necesites precisión en curvas, usa clic y arrastra para crear puntos suaves con manejadores.
- Agrega un keyframe en cada fotograma individual de la línea de tiempo; nunca saltes fotogramas.
- Duplica el clip original antes de aplicar Image Mask; nunca apliques Image Mask directamente sobre el clip original.
- Coloca los emisores de partículas (smoke, pyro) en el panel de proyecto sobre el clip de pantalla completa y debajo del clip recortado con máscara.
- Ajusta el valor de Feather y Fall Off en el Inspector > Shape del BZA para suavizar bordes; nunca dejes bordes duros sin suavizar.
- Usa Behaviors > Basic Motion > Fade In/Fade Out para transiciones suaves de efectos; no cortes efectos abruptamente.

## Errores comunes que evita o menciona
- **Saltar fotogramas durante el rotoscopiado:** Intentar espaciar los keyframes y luego agregar intermedios da un resultado descuidado; requiere paciencia y trabajo cuadro por cuadro.
- **No tener suficientes puntos de control desde el inicio:** No se pueden agregar puntos de control después sin generar desorden en la máscara.
- **Hacer máscaras demasiado grandes o complejas:** Intentar enmascarar grandes porciones de una sola vez es ineficiente; hay que hacer el mínimo necesario y separar elementos complejos en piezas distintas.
- **Olvidar restaurar la opacidad del BZA después de usar Image Mask:** Si no se sube la opacidad del relleno al 100% en Inspector > Style, el recorte quedará semitransparente.
- **No ajustar Feather y Fall Off:** Dejar bordes duros en la máscara hace que el efecto se vea poco natural; es necesario suavizar los bordes.