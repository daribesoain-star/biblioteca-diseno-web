# Cycles optimization - render like a pro
**Fuente:** Robin Squares | https://youtu.be/MzJ-w6Zmpco

## Qué enseña
Estrategias para optimizar renders en Cycles reduciendo el uso de VRAM y tiempo de renderizado, desde la gestión de texturas y materiales hasta el uso de view layers y ajustes de ruido. Explica cómo diagnosticar cuellos de botella (crash por VRAM, ruido excesivo, tiempos de carga) y solucionarlos sin degradar la calidad visual donde importa.

## Técnicas accionables
- **Liberar VRAM:** Abre el Administrador de tareas con `Control + Shift + Escape` y monitorea el gráfico de VRAM. Si se llena y crash, reduce texturas: en el outliner activa "Data API" view para ver imágenes, luego redimensiona las más pesadas a 1K (usa el add-on "Optimize Tools" para seleccionar y presionar "Resize").
- **Renderizar por view layers:** Crea view layers separados (pestaña "View Layer") para dividir la escena en profundidades (fondo, primer plano) y renderiza una capa a la vez, así el límite de VRAM deja de ser problema.
- **Ajustar noise threshold:** En las propiedades de render (pestaña "Render"), baja el valor de "Noise Threshold" (ej. 0.1, 0.05, 0.01) según el compromiso calidad/velocidad. Alternativa: activa "Scrambling Distance" en automático y baja el slider para reducir aleatoriedad entre muestras (no recomendado para animaciones por parpadeo).
- **Reducir ray bounces:** En "Render Properties > Light Paths > Max Bounces", baja el número (ej. de 12 a 4) y experimenta hasta encontrar el punto justo donde la calidad aún es aceptable.
- **Usar temporal denoising:** En "Render Properties > Denoising", selecciona "Temporal" en vez de "OpenImageDenoise" para reducir el "boiling" (hervido) en animaciones.
- **Aplicar upscaling e interpolación:** Reduce la resolución a la mitad (ej. 1920x1080 → 960x540) para reducir el tiempo de render por factor de 4. Para animaciones, renderiza solo fotogramas pares e interpola los impares.
- **Activar "Persistent Data":** En "Render Properties > Performance > Memory", marca "Persistent Data" para mantener archivos en RAM entre fotogramas (desactivar si hay bugs o necesitas liberar RAM).
- **Diagnosticar ruido excesivo:** Usa la herramienta de anotación (Annotation tool) para rodear áreas ruidosas. Crea un nuevo view layer con "Material Override" (un material blanco simple) en "View Layer Properties > Override". Si el ruido desaparece, el problema son materiales; si persiste, son luces.
- **Aislar luces con Light Groups:** En "View Layer Properties > Light Groups", crea grupos. Luego, en el panel de objeto de cada luz (pestaña "Object Data" > "Light Groups"), asigna la luz a un grupo. Así puedes ver qué luz genera ruido.
- **Obtener log de tiempos de carga:** Usa el gestor de renders "Flamenco" (gratuito, de Blender para estudios). Al renderizar desde Flamenco, se genera un archivo de texto con los tiempos de cada carga. Conviértelo a hoja de cálculo (ej. con Python) y ordena por duración para identificar archivos pesados o lentos.

## Reglas para el erudito
- Usa "Optimize Tools" (add-on) para redimensionar texturas masivamente y eliminar duplicados con un clic.
- Cuando un material sea pesado, revisa si tiene nodos de "Noise Texture", "Bevel" o "Ambient Occlusion" de alta resolución; reduce su detalle o suéltalos.
- Para interiores, abre una pared o elimina el techo completo para acelerar el render (menos geometría que tracer).
- Si usas niebla volumétrica (fog), renderiza en Cycles solo los pases "Direct" y "Indirect" de volumen, luego mezcla con un "Mist Pass" (pase de niebla) y desenfoca la imagen; alternativa: renderiza el volumen en Eevee y combínalo en postproducción.
- Para stills, usa "Scrambling Distance" automático y baja el slider; para animaciones, evítalo y prefiere "Temporal Denoising".
- Si un render crashea por VRAM, presiona `Windows + Control + Shift + B` para reiniciar el GPU y liberar memoria.
- Revisa que todas las normales estén azules (en "Viewport Overlays > Face Orientation"); normales mal orientadas arruinan el render.

## Errores comunes / gotchas
- **Crash por VRAM sin saberlo:** No monitorear el Administrador de tareas (`Control + Shift + Escape`) lleva a pensar que el problema es otro. La VRAM llena es la causa más común.
- **Texturas 4K/8K innecesarias:** Usar imágenes de alta resolución y bit depth (16bit/32bit) en objetos de fondo o pequeños; redimensiona a 1K o menos.
- **Noise threshold demasiado bajo:** Valores como 0.01 pueden alargar el render sin mejora visible; usa la cheat sheet del video para decidir.
- **Scrambling Distance en animaciones:** Causa parpadeo entre fotogramas; solo usarlo en stills.
- **Ray bounces muy altos:** Aumentan el tiempo sin beneficio notable; bajar a 4-6 suele ser suficiente.
- **Persistent Data activado con bugs:** Si hay errores o necesitas liberar RAM, desactívalo.
- **Fog volumétrico en Cycles:** Es extremadamente lento; mejor usar el truco de mezclar pases direct/indirect con Mist Pass o renderizar el volumen en Eevee.
- **Fireflies por luces pequeñas y fuertes:** Luces pequeñas, potentes y cerca de superficies generan puntos brillantes; hazlas más grandes, más débiles o aléjalas (no alteres los valores de luz si daña la estética).
- **Ignorar el log de carga:** No revisar qué archivos tardan en cargarse (texturas comprimidas, disco lento, archivos enormes) alarga innecesariamente el render.