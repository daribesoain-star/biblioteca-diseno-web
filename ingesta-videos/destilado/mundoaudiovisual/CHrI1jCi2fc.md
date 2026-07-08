# Curso de After Effects en español - 🎬 Capítulo 15 - Efecto llama de fuego en la mano.
**Fuente:** mundoaudiovisual | https://youtu.be/CHrI1jCi2fc

## Qué enseña
Cómo crear el efecto de una llama de fuego que aparece en la mano de una persona mediante tracking de movimiento, superposición de capas y ajustes de iluminación y temperatura de color en After Effects.

## Lecciones accionables
- **Importar recursos:** Importa el clip de video base y el clip de la llama (enlace en descripción del video) al panel Project.
- **Aplicar tracking con Mocha AE:** Ve a `Window > Effects & Presets`, busca y añade el efecto "Mocha AE" al clip base. Dentro de Mocha, usa la herramienta "X-Spline" para trazar la silueta de la mano. Haz clic en "Track Forward" para capturar el movimiento.
- **Exportar datos de tracking a un null:** En Mocha, ve a "Track Data", crea un nuevo null (nómbrale "Manu Movement"), selecciona "Export" y elige "Transform" para aplicar el movimiento al null. Haz clic en "Apply".
- **Posicionar la llama:** Arrastra el clip de la llama a la línea de tiempo. Posiciónala sobre la mano al inicio del clip. Duplica la capa de la llama con `Ctrl/Cmd + D` para cubrir la duración total del efecto. Selecciona las tres capas de llama y haz `Pre-compose` (nombra la composición "Flama Final").
- **Ajustar modo de fusión:** En la capa precompuesta, cambia el modo de fusión a "Add" para que la llama se integre con la escena.
- **Vincular movimiento:** En la línea de tiempo, asigna el null "Manu Movement" como padre de la capa "Flama Final" (usa el selector de pick whip).
- **Animar opacidad de aparición:** Selecciona la capa "Flama Final", presiona `T` para mostrar opacidad. Coloca un keyframe en 0% justo antes de que la llama deba aparecer, y otro keyframe en 100% en el fotograma donde aparece.
- **Animar opacidad de desaparición:** Coloca un keyframe en 100% donde la llama aún está visible, y otro keyframe en 0% donde debe desaparecer.
- **Crear luz de ambiente:** Crea una nueva forma (elipse) desde el menú `Layer > New > Shape Layer`. Color: naranja claro. Modo de fusión: "Add". Precompón la elipse. Dentro de la precomposición, aplica una máscara con `M` y ajusta el "Mask Feather" para suavizar los bordes. Ajusta opacidad y escala para simular un resplandor.
- **Ajustar temperatura de color del clip base:** Selecciona el clip base, ve a `Effect > Color Correction > Color Temperature`. Coloca un keyframe al inicio de la llama (valor más cálido, ej. 5500K) y otro keyframe después de que la llama desaparezca (valor normal, ej. 6500K).
- **Ajustar exposición del clip base:** En el mismo clip base, ve a `Effect > Color Correction > Exposure`. Coloca un keyframe en -6 justo antes de que aparezca la llama, y otro keyframe en 0 después de que la llama se estabilice.
- **Añadir destello final:** Crea una nueva capa sólida blanca, modo de fusión "Add". Anima su opacidad de 0% a 100% y luego a 0% en el momento del destello. Ajusta escala y posición manualmente.

## Reglas para agentes
- Usa Mocha AE para tracking de movimiento cuando el objeto a seguir tenga bordes definidos y movimiento no lineal.
- Aplica modo de fusión "Add" a capas de fuego, luces o destellos para integrarlos con la escena base.
- Precompón (Pre-compose) grupos de capas que compartan un mismo efecto o máscara para mantener el proyecto organizado.
- Anima opacidad con keyframes para controlar la aparición y desaparición de elementos sin cortes bruscos.
- Ajusta temperatura de color y exposición del clip base para simular iluminación ambiental realista cuando aparece la llama.
- Nunca uses tracking automático si el movimiento es errático o la superficie no tiene contraste suficiente; prefiere Mocha con trazado manual.

## Errores comunes que evita o menciona
- No posicionar la llama exactamente sobre la mano al inicio, lo que rompe la ilusión de realismo.
- Olvidar duplicar la capa de llama para cubrir toda la duración del efecto, causando que desaparezca antes de tiempo.
- No ajustar el modo de fusión a "Add", haciendo que la llama se vea opaca y artificial sobre el fondo.
- No sincronizar los keyframes de opacidad, temperatura y exposición, generando desfases visuales.
- No usar feather en la máscara de la luz de ambiente, resultando en bordes duros y poco naturales.