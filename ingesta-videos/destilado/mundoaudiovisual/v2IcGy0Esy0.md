# Curso de Motion 5 tutorial en español - 🎬 * Capítulo 9 - Las Luces en Motion
**Fuente:** mundoaudiovisual | https://youtu.be/v2IcGy0Esy0

## Qué enseña
Este capítulo explica cómo usar los distintos tipos de luces en Motion 5 dentro de un entorno 3D para iluminar escenas, destacar objetos, crear profundidad y jugar con sombras. Cubre la creación, posicionamiento, ajuste de parámetros y combinación de luces puntuales, concentradas y ambientales.

## Lecciones accionables
- Para añadir una luz: haz clic en el botón "Añadir luz" en la interfaz o ve a menú **Objeto > Nueva luz**.
- Para reposicionar la cámara al origen: selecciona la cámara, ve a **Inspector > Propiedades** y pon todas las posiciones en **cero**.
- Para ocultar barras de la interfaz y ver mejor el lienzo: pulsa **Comando + 7** y **Comando + 8**.
- Para mover una luz en el espacio 3D: usa la flecha de dirección en la vista 3D; arrastra en **X, Y y Z**.
- Para cambiar el tipo de luz: selecciona la luz, ve a **Inspector** y elige entre **Puntual**, **Concentrada** o **Ambiental**.
- Para ajustar la intensidad de una luz: modifica el parámetro **Intensidad** en el Inspector.
- Para cambiar el color de una luz: usa el selector de **Color** en el Inspector (ej. amarillo para luz de bombilla, azul para tono frío).
- Para controlar el alcance de una luz puntual: ajusta el parámetro **Atenuación** (disminuye el radio de iluminación).
- Para una luz concentrada (spotlight): ajusta el **Ángulo del cono** para definir la apertura del haz.
- Para rotar una luz concentrada: usa los controles de rotación en el Inspector o en la vista 3D (ej. rotar -90° en X para apuntar al suelo).
- Para duplicar una luz: selecciónala y pulsa **Comando + D**.
- Para mezclar colores de luces: coloca dos luces de distinto color en la misma zona; el color resultante se mezcla automáticamente.
- Para suavizar el borde de una luz concentrada: ajusta el parámetro **Contorno suave** (valor 1 para borde difuso).
- Para que un objeto no sea afectado por las luces: selecciona el objeto, ve a **Inspector > Propiedades** y desactiva **Iluminación**.
- Para activar sombras en una luz: en el Inspector de la luz, activa la opción **Sombras**.
- Para cambiar el tamaño de una sombra: aleja o acerca el objeto de la superficie donde se proyecta (más lejos = sombra más grande).
- Para iluminar solo una zona específica: usa una luz puntual con **Atenuación** baja y colócala cerca del área deseada.
- Para crear una luz ambiental tenue: añade una luz **Ambiental**, pon **Intensidad** muy baja (casi invisible) y color blanco.

## Reglas para agentes
- Usa **luz puntual** cuando quieras simular una bombilla o luz natural que ilumina en todas direcciones.
- Usa **luz concentrada** cuando necesites un haz direccional tipo foco teatral o spotlight.
- Usa **luz ambiental** solo para iluminación base de toda la escena, siempre con intensidad baja.
- Activa **Sombras** solo en las luces que necesiten proyectar sombras para evitar sobrecarga visual.
- Desactiva **Iluminación** en objetos que deban verse siempre brillantes (ej. neones, logos autoiluminados).
- Pon todos los valores de posición de cámara a **cero** antes de empezar a trabajar con luces para tener un punto de referencia.
- Ajusta el **Ángulo del cono** al máximo (ej. 35°) para cubrir áreas grandes con luz concentrada.
- Duplica luces en lugar de crearlas desde cero cuando necesites simetría (ej. dos luces laterales a +700 y -700).

## Errores comunes que evita o menciona
- No olvidar que sin ninguna luz añadida, la escena aparece completamente iluminada al 100%; al agregar la primera luz, el resto de la escena se oscurece automáticamente.
- No confundir la posición de la luz con la de la cámara; la luz se mueve independientemente en los ejes X, Y, Z.
- No dejar la luz dentro de un objeto sólido (ej. pared) porque la luz desaparece al atravesarlo.
- No usar solo una luz puntual para toda la escena; combínala con luces concentradas para destacar zonas específicas.
- No olvidar que al activar sombras, la posición de la luz respecto al objeto y la superficie afecta el tamaño y dirección de la sombra.
- No ignorar el parámetro **Atenuación** en luces puntuales; sin ajustarlo, la luz puede iluminar áreas no deseadas.