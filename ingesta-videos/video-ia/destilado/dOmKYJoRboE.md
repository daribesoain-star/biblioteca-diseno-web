# How to Make Long AI Videos with Consistent Characters (2026)
**Fuente:** Isa does AI | https://youtu.be/dOmKYJoRboE

## Qué enseña
Flujo completo para generar videos largos de IA (hasta ~1 minuto) con personaje y entorno consistentes, usando OpenArt como plataforma unificada. La clave es crear tres activos fijos (personaje entrenado, imagen de cuerpo completo con vestuario, y ubicación) antes de generar cualquier clip, y luego encadenar clips usando el video anterior como referencia en lugar de la ubicación.

## Técnicas accionables
- **Plataforma usada:** OpenArt (all-in-one: story, video, image, character, world, audio)
- **Paso 1 – Crear personaje consistente:** En OpenArt, click en "character" → "create character" → "start from an image". Subir foto frontal o 3/4. Nombrar (ej: "Isa"). El entrenamiento toma minutos. Se genera un tag único (ej: `@Isa`). Ese tag debe incluirse en TODOS los prompts de generación posteriores.
- **Paso 2 – Imagen de cuerpo completo con vestuario:** En OpenArt, click en "image". Modelo: `GPT image 2`. Aspect ratio: `16:9`. Prompt de estilo (ej: "Isa in jungle combat gear, full body shot, tactical vest, boots, backpack"). Incluir `@Isa` para que herede el rostro. Generar 2 variaciones, elegir la mejor. Esta imagen es la referencia visual de vestuario para todos los clips.
- **Paso 3 – Imagen de ubicación:** Mismo flujo de imagen, mismo modelo `GPT image 2`, mismo aspect ratio `16:9`. Prompt detallado (ej: "jungle temple interior, stone walls, overgrown vines, torch lighting, ancient carvings, cinematic"). Generar. Esta imagen ancla el entorno.
- **Paso 4 – Generar clip 1:** En OpenArt, click en "video". Modelo: `SeaDance 2.0`. Subir como referencias: **imagen 1** (personaje vestido) + **imagen 2** (ubicación). Duración: `15 seconds`. Prompt narrativo multi-shot (ej: "Isa pushes through dense jungle foliage towards the temple entrance, camera follows from behind, then cuts to a low angle shot of her stepping onto the stone steps, torchlight flickers on her face"). Generar.
- **Paso 5 – Generar clip 2:** En `SeaDance 2.0`, NO subir la ubicación. Subir como referencias: **imagen 1** (personaje vestido) + **video 1** (el clip anterior como referencia de video). Prompt narrativo que continúe la acción (ej: "Isa walks through the dark corridor, camera pans right to reveal hieroglyphics on the wall, she stops and looks around cautiously"). Generar.
- **Paso 6 – Generar clip 3:** Misma lógica: referencias = **imagen 1** + **video 2**. Prompt que lleve al clímax (ej: "Isa enters the inner sanctum, a glowing artifact on the pedestal, she reaches for it, camera zooms in slowly, dramatic lighting shift"). Generar.
- **Paso 7 – Edición final:** Usar cualquier editor (en el tutorial usan CapCut). Importar los 3 clips en orden. Agregar pista musical de fondo para unificar el audio (el audio de escena ya viene incluido en cada clip de SeaDance 2.0).

## Reglas para el erudito
- Usa `SeaDance 2.0` cuando necesites clips de hasta 15 segundos con múltiples planos y audio integrado; ningún otro modelo maneja esa duración con consistencia narrativa.
- Usa una imagen de referencia de personaje en **16:9** (mismo aspect ratio que los videos) para que el modelo traduzca la información visual sin distorsión.
- Usa el **video anterior como referencia** (no la ubicación) a partir del segundo clip; esto fuerza al modelo a continuar la escena en lugar de reiniciarla.
- Incluye el tag del personaje entrenado (`@Nombre`) en TODAS las generaciones de imagen y video para mantener el rostro.
- Genera la descripción de escena por escrito (en Claude o similar) ANTES de tocar cualquier herramienta de generación; eso unifica todas las decisiones creativas.

## Errores comunes / limitaciones que menciona
- **Error:** Abrir el generador de video y escribir un prompt directamente sin planificación previa. Resultado: personaje y entorno cambian en cada clip, el video final parece una colección aleatoria de escenas.
- **Error:** Confiar solo en el tag del personaje entrenado para mantener la consistencia. El tag fija el rostro pero NO el vestuario, peinado ni estilo general. Se necesita una imagen de cuerpo completo como referencia visual adicional.
- **Error:** Usar la misma imagen de ubicación como referencia en todos los clips. Esto hace que cada clip reinicie el entorno desde cero. La solución es reemplazar la ubicación por el video anterior a partir del segundo clip.
- **Limitación:** Modelos de video que generan solo 5-10 segundos por clip (como la mayoría) fuerzan a usar más clips, lo que multiplica los puntos de ruptura de consistencia. SeaDance 2.0 con 15 segundos reduce ese riesgo.
- **Limitación:** En escenas de acción intensa, SeaDance 2.0 puede tener "minor flaws" (pequeños errores visuales), pero el tutorial lo considera el mejor modelo disponible para este flujo.