# 🚀 Chapter 19: Learn Advanced Tracking with the Shot Tracker in DaVinci Resolve
**Fuente:** mundoaudiovisual | https://youtu.be/1b7kI1fk6Jo

## Qué enseña
Uso del nodo **Planar Tracker** en el módulo **Fusion** de DaVinci Resolve para rastrear superficies planas en movimiento y aplicar transformaciones, textos o gráficos 3D que sigan esa perspectiva. Incluye configuración de puntos de referencia, creación de nodos de transformación planar y combinación con elementos 3D como texto extrusionado con iluminación y sombras.

## Lecciones accionables
- **Agregar el nodo Planar Tracker:** En Fusion, presiona **Caps Lock + Espacio**, escribe `planar tracker` y selecciona el nodo. Conéctalo entre **MediaIn** y **MediaOut**.
- **Configurar puntos de seguimiento:** Coloca el centro del tracker sobre el área a rastrear. Usa el ratón para **pan** y **zoom** en el visor. Haz clic para marcar puntos en las esquinas del plano (ej. edificio): coloca un punto en cada esquina, ajustándolos a elementos geométricos como ventanas.
- **Establecer fotograma de referencia:** En los controles del Planar Tracker, localiza `Reference Time` y haz clic en **Set** para fijar el fotograma actual como referencia. Sin esto, el tracker no funciona.
- **Ejecutar el seguimiento:** Presiona **Play** para que el tracker analice el movimiento del plano desde el inicio hasta el final del clip.
- **Crear nodo de transformación planar:** Una vez completado el tracking, haz clic en **Create Planar Transformation**. Esto genera un nodo que captura el movimiento.
- **Aplicar texto 2D al movimiento:** Conecta un nodo **Text+** al nodo **Planar Transform**. Luego añade un **Merge** (Media Merge) con el Planar Transform como fondo y el texto como foreground. El texto seguirá el movimiento del plano.
- **Mover el texto sin desajustar el tracking:** No muevas el **Merge** ni el **Planar Transform**. En su lugar, selecciona directamente el nodo **Text+** y ajusta su posición en el visor. Así el tracking se mantiene estable.
- **Agregar texto 3D con profundidad:** Inserta un nodo **Text3D**, conéctalo a un **Renderer3D** y luego al **Merge**. Ajusta la extrusión en los controles del Text3D (parámetro `Extrusion Depth`).
- **Redimensionar y reposicionar texto 3D:** Añade un nodo **Transform** entre el **Renderer3D** y el **Merge**. Úsalo para escalar (`Size`) y mover (`X/Y Offset`) el texto 3D sin afectar el tracking.
- **Iluminar el texto 3D:** Agrega un nodo **PointLight** (Caps Lock + Espacio, escribe `point light`). Conecta el Text3D y el PointLight a un nodo **Merge3D**. En el **Renderer3D**, activa `Enable Lighting` y `Enable Shadows`.
- **Ajustar color de luz:** Selecciona el **PointLight** y cambia el parámetro `Color` (ej. a rojizo).
- **Crear efecto de texto incrustado en la superficie:** Añade un nodo **Rectangle Mask** al **Renderer3D**. Ajusta tamaño y rotación para cubrir parcialmente el texto. Activa **Invert** en la máscara para que el texto parezca estar dentro del edificio.

## Reglas para agentes
- **Siempre** establece el fotograma de referencia (`Reference Time > Set`) antes de iniciar el tracking planar; sin esto el tracker falla.
- **Nunca** muevas el nodo **Merge** o **Planar Transform** para reposicionar el elemento trackeado; mueve directamente el nodo del elemento (Text+, Renderer3D, etc.).
- **Usa** `Create Planar Transformation` solo después de que el tracking esté completo y verificado.
- **Activa** `Enable Lighting` y `Enable Shadows` en el **Renderer3D** cuando uses luces 3D; de lo contrario no se verán.
- **Aplica** una máscara invertida (`Invert`) al texto 3D para simular que está dentro de una superficie.

## Errores comunes que evita o menciona
- **No establecer el fotograma de referencia:** Si no se presiona `Set` en `Reference Time`, el planar tracker no funcionará correctamente.
- **Mover el Merge en lugar del elemento:** Mover el Merge o el Planar Transform para reposicionar el texto desajusta el tracking; siempre se debe mover el nodo del elemento (Text+, Renderer3D).
- **Olvidar activar iluminación y sombras en el Renderer3D:** Sin activar `Enable Lighting` y `Enable Shadows`, las luces añadidas no tienen efecto visual.