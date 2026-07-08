# SPEED RAMPS have CHANGED in DaVinci Resolve 20! - Updated Tutorial
**Fuente:** mundoaudiovisual | https://youtu.be/70rgyfk2Aqk

## Qué enseña (2-3 líneas)
Este tutorial actualiza el método para crear speed ramps en DaVinci Resolve 20, explicando que la función con la tecla "C" mayúscula ha sido eliminada y reubicada. Muestra cómo usar los puntos de velocidad y el editor de curvas desde la parte superior del timeline para lograr transiciones de velocidad suaves y cinematográficas.

## Lecciones accionables
- **Abrir controles de velocidad:** Presiona `Command + R` (Mac) o `Control + R` (Windows) en el clip del timeline para mostrar los triángulos de cambio de velocidad.
- **Agregar puntos de velocidad:** Haz clic en el triángulo superior del clip y selecciona "Add Speed Point" para crear una barra divisoria. Coloca el cabezal de reproducción donde quieras el cambio y repite para crear múltiples sectores.
- **Comprimir/expandir velocidad:** Arrastra la barra del punto de velocidad hacia la izquierda para comprimir el clip (aumenta velocidad) o hacia la derecha para expandirlo (disminuye velocidad). El porcentaje de velocidad se actualiza en tiempo real.
- **Abrir editor de curvas:** Haz clic en el botón de curva (ícono de línea curva) en la parte superior del timeline (junto al botón de keyframes). Si no ves nada, selecciona "Speed Processing" en el menú desplegable para mostrar solo las curvas de velocidad.
- **Suavizar transiciones:** Selecciona los dos keyframes que flanquean el cambio de velocidad (haz clic en uno, luego Shift + clic en el otro), haz clic derecho y elige "Curve". Luego arrastra los manejadores de la curva para hacer la transición más gradual (ej: de 100% a 2900% de forma progresiva).
- **Ajustar punto final del cambio:** Arrastra la parte inferior de la barra del punto de velocidad (no la superior) para mover el punto donde termina el cambio de velocidad, adelantándolo o retrasándolo en el clip.
- **Método alternativo (editor inferior):** Haz clic en el botón pequeño en la parte inferior del timeline (ícono similar al de curvas) para abrir un editor similar al anterior con tecla "C". Luego haz clic en "Curves" y selecciona las curvas a incluir.
- **Sincronizar con sonido:** Descarga efectos de sonido desde plataformas como Artlist (el presentador usa Arly) y alinea el efecto con el punto de máxima velocidad o el final del speed ramp para mayor impacto.

## Reglas para agentes
- Usa `Command + R` (Mac) o `Control + R` (Windows) para abrir los controles de velocidad en cualquier clip.
- Siempre agrega al menos dos puntos de velocidad (inicio y fin del cambio) antes de ajustar la compresión.
- Nunca cambies la velocidad directamente desde el menú de propiedades del clip; usa los puntos de velocidad y arrastra las barras superiores.
- Cuando suavices transiciones, selecciona ambos keyframes adyacentes antes de aplicar "Curve" con clic derecho.
- Usa el botón de curva en la parte superior del timeline como método principal; el editor inferior es alternativo pero menos recomendado.
- Alinea los efectos de sonido con el punto de máxima velocidad o el final del speed ramp para sincronización audiovisual.

## Errores comunes que evita o menciona
- **No usar la tecla "C" mayúscula:** En versiones anteriores de DaVinci Resolve se usaba Shift + C para abrir el editor de curvas inferior; en Resolve 20 esa función ha sido eliminada y reubicada en el botón de curva superior.
- **Transiciones abruptas:** Cambiar la velocidad directamente sin curvas produce cortes bruscos; siempre aplica "Curve" y ajusta los manejadores para un efecto orgánico.
- **Confundir arrastre superior e inferior:** Arrastrar la barra superior comprime/expande la velocidad; arrastrar la parte inferior mueve el punto de cambio en el tiempo sin alterar la velocidad.
- **No mostrar solo Speed Processing:** Si el editor de curvas muestra demasiados parámetros, usa el menú desplegable para filtrar solo "Speed Processing" y ver únicamente las curvas de velocidad.