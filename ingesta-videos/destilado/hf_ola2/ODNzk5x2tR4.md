# I Made a Cinematic Ad Using Claude Fable 5 + Higgsfield AI (Full Workflow)
**Fuente:** hf_ola2 | https://youtu.be/ODNzk5x2tR4

## Que ensena sobre Higgsfield (2-3 lineas)
Higgsfield permite crear comerciales cinematográficos completos desde cero usando assets generados en su plataforma (imágenes y video). El flujo clave es: generar assets en **Soul Cinema** (personajes, locaciones, props), luego usar **Seedance 2.0** para generar las escenas con control de cámara, movimiento y estilo consistente. La herramienta se opera desde **Colab** (proyectos unificados) y permite iterar rápidamente con batches de bajo costo.

## Tips y flujos accionables

### 1. Creación de Assets (Etapa 1)
- **Para personajes:** Usa **Soul Cinema** → selecciona "character" → sube **20+ imágenes** de la persona desde distintos ángulos y condiciones de luz. El modelo crea un avatar virtual que mantiene consistencia facial.
- **Para character sheet:** Prompt exacto usado: *"give me a character sheet, two panels, left full body and right close up of the face. Format, 16 by 9, 2K quality"*. Activa **prompt enhancer** para mayor variedad. Usa **40 batches** (8 imágenes = 1 crédito).
- **Para locaciones:** Usa **Soul Cinema** (genera imágenes que parecen fotogramas de película por defecto). Prompt exacto usado: *"modern New York street empty sunny day clear blue sky cinematic anamorphic lens shallow depth of field film grain"*. El **lente anamórfico** crea campo cinematográfico amplio; el **grano de película** elimina el look digital demasiado limpio. Genera **10 opciones**.
- **Prueba crítica:** Antes de lockear, prueba personaje + locación juntos en **Seedance 2.0** con 5 segundos y 1 generación. Prompt de prueba: *"[personaje] from image one walks down the street from image two on a hot day thirsty something in the distance catches his eye use dynamic camera movement and a creative camera angle like a Dutch angle"*.
- **Para props (robots, balón, portería):** Usa **Claude** para generar prompts detallados estructurados. Luego pégalos en **Soul Cinema** con prompt enhancer activo. Ejemplo robot: *"Make a prompt for robot's character sheet. Two full-body views, front and back. Mostly white and red armor. And I want number seven on the chest."*
- **Para props que aparecen una sola vez** (ej. reloj): No necesitas crear asset separado. Menciónalo en el prompt y el modelo lo genera solo.

### 2. Framework de Prompts (Etapa 2)
- **Usa el "Claude Skill"** (descargable del video): Sube el skill a Claude → en nuevo chat, adjunta el script PDF y todos los assets (personaje, locación, robots, props). Da contexto con nombres exactos: *"@Adil's top up, Adil civilian outfit. City location, deserted NYC Avenue, midday sun. Adil's robot, Adil full XO armor, human scale. Robo player two, opponent robot, black plus gunmetal. Ball prop, regular football, 22 cm. Top up, the soda can, product prop, and goal shield, electric round shield, energy field goal."*
- **Estructura de prompt en Claude:** Describe la escena en **lenguaje plano** (ej. "Scene one, a guy is walking down an empty city street. He notices the can floating in front of him. The soda lands in its hand. The camera movement should be handheld shots. Add a shaking camera effect."). Claude genera el prompt detallado automáticamente.
- **Estilo header consistente:** Todos los prompts deben compartir el mismo estilo de header (iluminación, lente, estilo de actuación, física) para mantener coherencia entre escenas.
- **Regla de sonido:** Incluye en el prompt *"no music and only environmental sound effects"* porque la música se añade en postproducción.

### 3. Generación de Escenas (Etapa 3)
- **Configuración en Colab:** Crea un proyecto nuevo → usa el botón "+" para añadir **elements** (assets). Nombra cada elemento **exactamente igual** que en Claude (ej. "Adil's top up", "city location"). Cuando pegues el prompt de Claude, los elementos se **adjuntan automáticamente**.
- **Ajustes de generación en Seedance 2.0:** Formato **16:9**, calidad **1080p**, duración **15 segundos**. Corre **4 batches** por escena.
- **Iteración como director:** No edites prompts manualmente. Mira el resultado, da notas a Claude como un director: *"you should keep moving fast during the transformation. Add creative camera movements, handheld, some Dutch angles. Also, the point important, he runs forward not backwards. And fix the face. Natural smile. Alive eyes. No color change."* Claude reescribe.
- **Para escenas complejas:** Divide en **partes más pequeñas**. Ej: escena 8 partida en dos prompts (parte 1: caída y reacción; parte 2: carrera, agarre de lata, transformación).
- **Para escenas de acción (robots jugando):** Corre **muchos batches** (no solo 2). Toma **diferentes fases** de cada generación y edítalas juntas para que se vea orgánico.
- **Para problemas de posicionamiento:** Cuando los objetos aparecen en lugares aleatorios, crea un **esquema de locación**. Usa **GPT Image 2.0**: sube la locación, prompt *"High angle wide shot of the location"*. Dibuja círculos donde deben ir los objetos. Luego adjunta esa imagen + el prop sheet y genera: *"Put the goal shields into image one where the circles are located and create a location scheme with goal shields."* Añade ese esquema como nuevo elemento en Colab y en Claude declara: *"scheme is a location scheme for the goal shields. In every generation, the goals must appear exactly according to the scheme. Also, use goal shields as a reference on a keyframe."*
- **Reutilización de material:** Guarda tomas buenas de escenas anteriores. Ej: la transformación de escena 2 se reutiliza en escena 8; los dribblings de escena 5 se usan en escena 9.

### 4. Pack Shot Final (Escena 12)
- Prompt inicial: *"I need a pack shot. The can falls from the sky, and when it lands on the ground, it cracks the ground and chunks of asphalt fly off. Then the name Top Up appears with a tagline, power up your day."*
- Correcciones vía Claude: *"When the can drops, the shot's too static. Do the dolly in. Also, match sunlight to scene one. The name build isn't strong either. When the letters appear, do a slow camera pull back. The letters should build up from different pieces of metal locking together. Once the name is fully built, add electrical lightning strike at the end."*

### 5. Ahorro de Créditos
- **8 imágenes = 1 crédito** en Soul Cinema. Para 40 batches (personajes) = 5 créditos.
- **Pruebas rápidas:** Usa 5 segundos y 1 generación en Seedance.
- **No generes escenas completas si solo necesitas un momento.** Ej: para el slide tackle final, genera solo ese shot y edítalo con la toma de gol de escena 5.

## Reglas para el erudito de Higgsfield

1. **Para crear personajes consistentes:** usa **Soul Cinema** con **20+ imágenes** de referencia y **prompt enhancer** activo. Genera **40 batches** para variedad.
2. **Para locaciones cinematográficas:** usa **Soul Cinema** con prompt que incluya *"cinematic anamorphic lens shallow depth of field film grain"*. Genera **10 opciones**.
3. **Para probar assets antes de lockear:** usa **Seedance 2.0** con **5 segundos**, **1 generación**, y prompt que pida *"dynamic camera movement"* y *"creative camera angle like a Dutch angle"*.
4. **Para generar escenas:** usa **Seedance 2.0** con formato **16:9**, calidad **1080p**, duración **15 segundos**, **4 batches**.
5. **Para corregir generaciones:** no edites prompts manualmente. Da **notas a Claude** como un director (qué falló, qué debe cambiar).
6. **Para problemas de posicionamiento de objetos:** crea un **esquema de locación** con **GPT Image 2.0** dibujando círculos donde deben ir los objetos. Añádelo como elemento en Colab.
7. **Para escenas complejas:** **divide en partes más pequeñas** y genera cada parte por separado.
8. **Para ahorrar créditos:** **reutiliza tomas buenas** de generaciones anteriores en lugar de regenerar.
9. **Para el pack shot final:** usa **dolly in**, **slow camera pull back** para el nombre, y **electrical lightning strike** al final.
10. **Para mantener consistencia:** todos los prompts deben compartir el mismo **estilo header** (iluminación, lente, estilo de actuación, física).

## Errores comunes / que evitar

- **No probar personaje + locación juntos antes de lockear:** Siempre haz una prueba rápida en Seedance 2.0 (5 seg, 1 gen) para ver si funcionan juntos.
- **Sobrecargar prompts con información innecesaria:** Usa Claude para generar prompts estructurados. No edites manualmente.
- **No usar el mismo naming para assets en Claude y en Colab:** Los nombres deben ser **idénticos** para que el auto-attachment funcione.
- **Generar escenas completas cuando solo necesitas un momento:** Ej: para el slide tackle, genera solo ese shot y edítalo con material previo.
- **No usar esquema de locación cuando los objetos aparecen en lugares aleatorios:** Un mapa (esquema) funciona mejor que un párrafo de descripción.
- **No iterar como director:** Mira el resultado, da notas a Claude, no edites el prompt tú mismo.
- **No dividir escenas complejas:** Si hay mucha acción, parte en prompts más pequeños.
- **No reutilizar material bueno de escenas anteriores:** Ahorra créditos y tiempo.
- **No incluir "no music and only environmental sound effects" en el prompt:** La música se añade en postproducción.
- **No generar suficientes batches para escenas de acción:** Corre muchos batches y toma las mejores fases de cada uno.