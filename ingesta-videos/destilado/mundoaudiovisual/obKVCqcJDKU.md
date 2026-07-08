# Curso de After Effects en español - 🎬 Capítulo 13 - Visión de Rayos X.
**Fuente:** mundoaudiovisual | https://youtu.be/obKVCqcJDKU

## Qué enseña
Cómo crear un efecto de rayos X o visión láser que emana de los ojos usando el plugin Saber, combinando tracking de movimiento, rotoscopia, ajustes de color con Lume Tree y destellos (flares) para lograr un resultado realista.

## Lecciones accionables
- **Trackear un ojo:** Abre la ventana Tracker, selecciona "Track Motion", coloca el punto de seguimiento sobre el ojo, ajusta el área de búsqueda (zoom para precisión), presiona "Analyze Motion". Renombra el clip como "main shot" para organización.
- **Crear un Null Object para el movimiento:** Ve a Layer > New > Null Object, renómbralo como "Right Eye Motion". En el tracker, haz clic en "Edit Target", selecciona el Null Object, presiona "OK", luego "Apply" y elige "Apply X Dimensions".
- **Añadir el efecto Saber:** Crea un nuevo sólido negro (Layer > New > Solid), nómbralo "Right Eye Laser". Aplica el efecto Saber (Effects > Video Copilot > Saber). Cambia el modo de fusión a "Screen". Selecciona el preset "Kryptonite".
- **Vincular el inicio del láser al ojo:** En los controles del efecto Saber, localiza "Core Start". Presiona P para mostrar la posición del Null Object "Right Eye Motion". Haz clic en el icono de reloj de "Core Start" y arrastra el pick whip hacia la posición del Null Object. El punto de inicio seguirá al ojo.
- **Animar la longitud del láser:** Coloca un keyframe en "Core End" cuando el láser debe comenzar (valor cercano al ojo). Avanza unos fotogramas y ajusta "Core End" para que el láser se extienda (ej. valor más alto). Aplica F9 para suavizar los keyframes.
- **Añadir un destello de inicio (flash):** En "Core Intensity", coloca un keyframe con valor alto (ej. 100) al inicio del láser. Avanza unos fotogramas y reduce a valor original (ej. 54). Ajusta para que parezca un fogonazo.
- **Animar movimiento orgánico del láser:** En "Core End", añade keyframes adicionales para que el láser suba y baje ligeramente durante la animación. Selecciona todos los keyframes y presiona F9 para suavizar.
- **Rotoscopiar el ojo para colorearlo:** Duplica la capa principal (Ctrl+D), renómbrala como "Right Eye Color". Con la capa seleccionada, usa la herramienta Rotobrush (Alt+W) para pintar sobre el ojo. Ajusta: aumenta "Feather" (suavizado) y "Edge Displacement" (desplazamiento de borde). Presiona "Freeze" para generar la máscara.
- **Aplicar color verde al ojo rotoscopiado:** Selecciona la capa "Right Eye Color", ve a Effects > Color Correction > Lume Tree. Ajusta: en "White Balance" desplaza hacia verde, aumenta "Exposure", en "Curves" realza los tonos verdes y la luminancia. Reduce "Shadows" para no sobresaturar.
- **Animar la opacidad del ojo coloreado:** Presiona T para mostrar opacidad. Coloca keyframes: al inicio del efecto opacidad 0%, cuando el láser aparece opacidad 100%, y al final opacidad 0%. Aplica F9 para suavizar.
- **Añadir un flare (destello):** Importa el archivo de flare desde la carpeta de materiales. Colócalo sobre la composición, cambia modo a "Screen". Vincúlalo al Null Object de movimiento (pick whip desde posición del flare a posición del Null Object). Reduce opacidad (ej. 50%).
- **Colorear el flare de verde:** Aplica Lume Tree al flare. Ajusta "Focus" hacia verde, baja "Blacks" para eliminar imperfecciones, aumenta "Shadows", "Highlights" y "Whites" para potenciar el brillo.
- **Copiar keyframes de opacidad entre capas:** Selecciona todos los keyframes de opacidad de una capa (ej. ojo derecho), cópialos (Ctrl+C), selecciona la capa destino (ej. flare derecho) y pégalos (Ctrl+V). Ajusta valores máximos si es necesario.
- **Repetir proceso para el ojo izquierdo:** Realiza el mismo tracking, null object, Saber, rotoscopia, color y flare para el ojo izquierdo. Renombra todo como "Left Eye..." para mantener organización.
- **Sincronizar la aparición/desaparición del efecto:** Para cada capa (Saber, color de ojo, flare), coloca keyframes de opacidad en el momento exacto donde el efecto debe comenzar y terminar. Usa F9 en todos.
- **Añadir tinte verde general a la escena:** Selecciona la capa principal "main shot", aplica Lume Tree. Coloca keyframes en "Tint" o "White Balance": en el momento del efecto, desplaza a verde; antes y después, valor neutro (0).
- **Añadir destellos ambientales:** Importa el archivo "myth" (efecto de luz ambiental). Colócalo sobre la composición, modo "Add". Aplica Lume Tree, baja "Blacks" para que solo se vean los brillos, ajusta a verde claro. Opacidad alrededor de 50%. Duplica para el otro ojo y ajusta posición.

## Reglas para agentes
- Usa el preset "Kryptonite" del plugin Saber cuando quieras un color verde neón para láseres.
- Vincula siempre "Core Start" del Saber a la posición del Null Object del tracking para que el láser siga al ojo.
- Aplica F9 a todos los keyframes de opacidad y movimiento para transiciones suaves y orgánicas.
- Cambia el modo de fusión a "Screen" para todos los efectos Saber y flares cuando trabajes sobre fondo oscuro.
- Renombra cada capa con un prefijo descriptivo ("Right Eye...", "Left Eye...") para mantener el proyecto ordenado con múltiples capas.
- Usa Lume Tree en lugar de efectos de color básicos cuando necesites control fino sobre tonos verdes y luminancia.
- Nunca dejes keyframes de opacidad sin suavizar (F9) en efectos que deben aparecer/desaparecer gradualmente.

## Errores comunes que evita o menciona
- No olvidar renombrar las capas a medida que se crean, especialmente al duplicar, para evitar confusiones con múltiples elementos.
- No aplicar el efecto Saber sin cambiar el modo de fusión a "Screen", de lo contrario el fondo negro del sólido tapará el video.
- No dejar el láser estático: el tutorial enfatiza añadir pequeños movimientos arriba/abajo en "Core End" para que no se vea artificial.
- No omitir la rotoscopia del ojo: sin ella, el color verde se aplicaría a toda la cara y no solo al ojo iluminado.
- No copiar keyframes de opacidad sin ajustar los valores máximos (ej. flare no debe estar al 100% sino alrededor de 50-80%).
- No olvidar sincronizar la desaparición de todos los elementos (Saber, color de ojo, flare) cuando el personaje deja de mirar.