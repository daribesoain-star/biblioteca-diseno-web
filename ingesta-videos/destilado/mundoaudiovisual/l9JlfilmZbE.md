# Curso de efectos de Video - Fusion - Davinci Resolve - 🎬 Capítulo 9 - Tracking o Rastreo Puntual
**Fuente:** mundoaudiovisual | https://youtu.be/l9JlfilmZbE

## Qué enseña (2-3 líneas)
Enseña a realizar tracking puntual (Point Tracker) en Fusion de DaVinci Resolve para rastrear el movimiento de un objeto en un video y vincular otros elementos (texto, formas, máscaras) a ese movimiento. Muestra cómo seleccionar un área de alto contraste, analizar el movimiento hacia adelante, y aplicar el tracking a posición, rotación y escala.

## Lecciones accionables
- **Añadir el nodo Tracker:** Con el nodo `MediaIn` seleccionado, presiona `Espacio` + `Bloq Mayús`, escribe `tracker` y elige `Tracker` (el último de la lista, el puntero). Haz clic en `Add`.
- **Seleccionar área de tracking:** En el visor, ajusta el cuadrado interior (patrón a seguir) sobre un área de alto contraste (ej. una esquina del objeto, un logo con blanco y rojo). El cuadrado exterior define la zona de búsqueda en fotogramas siguientes.
- **Analizar movimiento:** Con el tracker configurado, haz clic en `Track Forward` (flecha hacia adelante) para analizar desde el fotograma actual hacia el final. Si el resultado es deficiente, prueba con otra zona de contraste y repite.
- **Configurar operación del tracker:** En la pestaña `Operation` del nodo Tracker, selecciona `Match Move` para que el tracking aplique `Position`, `Rotation` y `Scale`.
- **Vincular un elemento al tracking:** Añade un nodo `Text+` (o `Background` con máscara). Conecta la salida del nodo Tracker al nodo de texto. Ajusta posición y escala del texto en el visor; el texto seguirá automáticamente el movimiento rastreado.
- **Duplicar tracker para múltiples elementos:** Si ya tienes un tracker analizado, duplícalo (Ctrl+D) y conéctalo a otro nodo (ej. otro texto o forma) para que herede el mismo movimiento sin reanalizar.
- **Animar aparición de elementos:** Usa keyframes en el nodo `Transform` o en los parámetros del texto: en el fotograma de inicio pon `Size` en `0` (o `Opacity` en `0`), avanza unos fotogramas y pon el valor deseado (ej. `1` o `100`).

## Reglas para agentes
- **Usa siempre un área de alto contraste** para el patrón de tracking (esquinas, logos, bordes nítidos); evita zonas uniformes o sin detalle.
- **Nunca uses tracking hacia atrás sin verificar** que el patrón no haya cambiado drásticamente; prefiere `Track Forward` desde un punto estable.
- **Cuando el tracking se pierda**, cambia el área de búsqueda (cuadrado exterior) o selecciona un nuevo patrón en otro fotograma clave.
- **Para vincular tracking a un elemento**, conecta la salida del nodo `Tracker` directamente a la entrada del nodo destino (ej. `Text+`, `Background`, `Merge`).
- **Si necesitas que un elemento aparezca progresivamente**, usa keyframes en `Size` o `Opacity` del nodo `Transform` o del propio nodo de texto.

## Errores comunes que evita o menciona
- **Elegir un área de tracking con poco contraste** (ej. superficie lisa del disco duro) provoca que el tracker se pierda rápidamente.
- **No ajustar el cuadrado exterior de búsqueda** hace que el tracker no encuentre el patrón en fotogramas siguientes si el movimiento es amplio.
- **Olvidar configurar la operación en `Match Move`** (Position, Rotation, Scale) hace que el elemento vinculado solo herede la posición, no la rotación ni escala.
- **No duplicar el tracker** cuando se necesita aplicar el mismo movimiento a varios elementos; reanalizar desde cero es innecesario.
- **No animar la aparición del elemento** (ej. texto que aparece de golpe) rompe la ilusión; se recomienda keyframes de opacidad o escala para una entrada suave.