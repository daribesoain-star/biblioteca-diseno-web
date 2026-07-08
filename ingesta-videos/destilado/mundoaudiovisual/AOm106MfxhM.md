# Magic Mask 2.0 DaVinci Resolve 20 - TUTORIAL
**Fuente:** mundoaudiovisual | https://youtu.be/AOm106MfxhM

## Qué enseña (2-3 líneas)
Este tutorial enseña a usar la herramienta Magic Mask (rotoscopia con IA) en DaVinci Resolve 20 para aislar personas u objetos. Muestra aplicaciones prácticas como cambiar fondos, ajustar balance de color selectivo, simular desenfoque de fondo (efecto bokeh) y superponer texto detrás del sujeto.

## Lecciones accionables
- **Acceder a Magic Mask:** Ve al módulo **Color**, haz clic en el icono de Magic Mask (varita mágica).
- **Crear la máscara inicial:** Dibuja puntos sobre el sujeto (persona, objeto) para indicar qué aislar. Usa el botón de visualización (ojo) para ver las áreas rojas seleccionadas. Añade más puntos para incluir detalles como cabello, orejas, micrófono.
- **Configurar calidad:** Antes de tracking, activa la opción **"High Quality"** para cortes precisos.
- **Trackear la máscara:** Usa el botón **"Track forwards and backwards"** (flechas adelante/atrás) para que la IA siga al sujeto en todo el clip. El tiempo depende del equipo.
- **Añadir Alpha Output:** Crea un nodo **Alpha Output** para separar al sujeto del fondo. Esto permite trabajar con el sujeto aislado.
- **Invertir la máscara:** Añade un nodo **Inverted** para aplicar efectos a todo EXCEPTO al sujeto (ej: desenfoque de fondo).
- **Aplicar desenfoque de fondo (bokeh simulado):** En el nodo invertido, ve a **Blur** y aumenta la intensidad. Útil para videos de móvil sin desenfoque natural.
- **Ajuste selectivo de color:** Con la máscara hecha, aplica correcciones de color (ej: balance de blancos) solo al sujeto o solo al fondo usando nodos separados.
- **Superponer texto detrás del sujeto:** Coloca un clip de texto entre el clip con máscara (Alpha Output) y el clip original sin máscara. Anima la posición del texto con keyframes en **Transform**.
- **Cambiar fondo por imagen:** Crea un Alpha Output, coloca una imagen (ej: fondo sin el sujeto, editado en Photoshop con relleno generativo) debajo del clip con máscara.
- **Renderizar previsualización:** Usa el botón de renderizado rápido para ver el efecto en tiempo real.

## Reglas para agentes
- Usa **Magic Mask** solo en la versión **Studio** (paga) de DaVinci Resolve 20.
- Cuando quieras aislar un sujeto, dibuja **múltiples puntos** sobre todas las partes relevantes (cuerpo, accesorios) para mejorar la precisión de la IA.
- Activa **"High Quality"** antes de trackear para obtener bordes más limpios.
- Para efectos de fondo (desenfoque, cambio de color), usa un **nodo Inverted** después de la máscara.
- Para superponer elementos detrás del sujeto, coloca el elemento **entre** el clip con Alpha Output y el clip original.
- Nunca apliques correcciones de color globales si solo quieres modificar el fondo o el sujeto; usa nodos separados con la máscara.
- Nunca olvides trackear la máscara en todo el clip antes de añadir efectos, o los cambios no seguirán al sujeto en movimiento.

## Errores comunes que evita o menciona
- **No dibujar suficientes puntos:** Si solo haces clic una vez, la IA puede no capturar todo el sujeto (ej: cabello, bordes). Añade puntos adicionales.
- **Aplicar correcciones de color globales sin máscara:** Cambiar el balance de blancos de toda la imagen afecta al sujeto (ej: piel se vuelve rosada, ropa cambia de color). Usa la máscara para aplicar solo al fondo.
- **No usar Alpha Output:** Sin este nodo, no puedes separar al sujeto del fondo para efectos como texto detrás o cambio de fondo.
- **Exagerar el desenfoque:** Un blur muy intenso se ve artificial. Ajusta la intensidad con moderación para un efecto natural.
- **Olvidar que es solo para Studio:** La herramienta no está disponible en la versión gratuita de DaVinci Resolve.