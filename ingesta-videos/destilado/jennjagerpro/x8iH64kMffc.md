# Intro to Apple Motion
**Fuente:** jennjagerpro | https://youtu.be/x8iH64kMffc

## Qué enseña
Este video ofrece una introducción general a Apple Motion, explicando su propósito, su interfaz y cómo se diferencia de otras aplicaciones de gráficos en movimiento. Muestra cómo crear animaciones usando behaviors en lugar de keyframes, cómo trabajar con texto animado y cómo exportar títulos personalizados a Final Cut Pro con parámetros publicados.

## Lecciones accionables
- Al abrir Apple Motion, en el **Project Browser**, selecciona "Standard Motion Project" y configura resolución (ej. 4K), framerate (ej. 24 fps) y duración (ej. 10 segundos).
- Para dibujar formas, usa los **shape tools** en la parte inferior del canvas; mantén presionada la tecla **Shift** mientras dibujas para crear un cuadrado perfecto.
- Para cambiar la apariencia de una forma, ve al **Inspector** (pestaña derecha), navega a la sección **Shape**, activa/desactiva **Fill** y **Outline**, y cambia el color sólido por un **Gradient**.
- Para animar con keyframes: coloca el playhead al inicio, en el Inspector bajo **Properties** > **Position**, haz clic en el botón de keyframe; mueve el playhead más adelante, modifica el valor de **X** o **Y**, y reproduce.
- Para usar **behaviors**: selecciona el objeto en el **Project Pane**, haz clic en el botón **Behaviors** (centro superior de la UI), elige una categoría (ej. **Basic Motion** > **Motion Path**). Ajusta la duración del behavior en la línea de tiempo arrastrando su extremo.
- Para animación oscilante: selecciona el objeto, ve a **Behaviors** > **Parameter** > **Oscillate**. En el Inspector, en "Apply to", elige **Properties** > **Transform** > **Position** > **X**. Ajusta **Amplitude** (distancia) y **Speed** (velocidad).
- Para combinar behaviors: duplica el behavior Oscillate en el Project Pane, cambia el parámetro en el Inspector a **Properties** > **Transform** > **Rotation** > **Z**, y reduce la **Amplitude**.
- Para agregar gravedad: selecciona el objeto, ve a **Behaviors** > **Simulations** > **Gravity**. Ajusta **Acceleration** para controlar la velocidad de caída.
- Para animar texto: selecciona la capa de texto, ve a **Behaviors** > **Text Animation** > **Text Energetic** > **Bounce In**. En el Inspector, cambia **Animate Line** de "All" a "Word" y aumenta **Spread** para un efecto más dinámico.
- Para agregar un segundo behavior de texto: selecciona el texto, ve a **Behaviors** > **Text Highlighter** > **Pirouette**. Reordena la duración del behavior en la línea de tiempo arrastrándolo.
- Para convertir un proyecto en título de Final Cut: ve a **File** > **Convert Project To** > **Title**. En "Title Source", crea un nuevo placeholder y haz clic en **Convert**. Luego, **File** > **Save As**, nombra el título, elige una **Category** (o crea una nueva al final de la lista), deja **Theme** como "None", y haz clic en **Publish**.
- Para publicar parámetros y hacerlos editables en Final Cut: selecciona el título en Motion, en el Inspector, haz clic en el botón de **disclosure** (triángulo) junto al parámetro deseado (ej. **Animate Line**, **Spread**, **Direction**, **Speed**) y selecciona **Publish**.
- Para agregar un filtro de desenfoque al fondo del título: selecciona la capa **Title Background**, ve a **Filters** (en la parte superior del Inspector), aplica un **Blur**, y publica el parámetro **Amount**.
- Para actualizar el título en Final Cut: elimina la versión anterior del timeline, arrastra el título actualizado desde el navegador de títulos, y los parámetros publicados aparecerán en el **Title Inspector**.
- Motion soporta archivos de video, objetos 3D en formato **USDZ** (descargables de sitios como Sketchfab), y tiene funciones de **cámara** para efectos 3D y **motion tracking**.

## Reglas para agentes
- Usa **Behaviors** en lugar de keyframes cuando necesites animaciones repetitivas, oscilantes o complejas (ej. ping-pong, gravedad) para facilitar ajustes posteriores.
- Publica siempre los parámetros que quieras que el usuario pueda modificar en Final Cut (ej. Animate Line, Spread, Speed, Amount de blur) usando el botón **Publish** en el Inspector.
- Nunca guardes un título sin antes convertir el proyecto a **Title** mediante **File** > **Convert Project To** > **Title**; de lo contrario, no aparecerá en el navegador de títulos de Final Cut.
- Cuando dibujes formas, mantén presionada la tecla **Shift** para mantener proporciones (ej. cuadrado perfecto).
- Para que un behavior afecte a un objeto, asegúrate de seleccionar el objeto en el **Project Pane** antes de aplicar el behavior.
- Si un behavior no produce efecto visible, verifica en el Inspector que el parámetro "Apply to" esté correctamente configurado (ej. Properties > Transform > Position > X).

## Errores comunes que evita o menciona
- No confundir la simplicidad de un behavior básico (Motion Path) con keyframes; la ventaja real de behaviors aparece en animaciones complejas como oscilación o gravedad.
- No olvidar configurar el parámetro "Apply to" en behaviors como Oscillate; si no se asigna, el behavior no tendrá efecto.
- No pasar por alto la publicación de parámetros antes de guardar el título; sin publicar, el usuario en Final Cut no podrá ajustar la animación ni el desenfoque.
- No asumir que los cambios en Motion se reflejan automáticamente en Final Cut; es necesario eliminar la instancia anterior del título y arrastrar la nueva versión desde el navegador.
- No subestimar la capacidad de Motion para crear títulos, efectos, transiciones y generadores personalizados; todos los elementos preinstalados de Final Cut se construyen en Motion.