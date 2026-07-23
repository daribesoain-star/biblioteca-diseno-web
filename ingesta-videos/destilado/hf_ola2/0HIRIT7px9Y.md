# This is How I Made an Ultra Realistic AI Short Film Using Seedance 2.0 in 4K (Full Workflow)
**Fuente:** hf_ola2 | https://youtu.be/0HIRIT7px9Y

## Que ensena sobre Higgsfield
Enseña a usar **Cinema Studio** como hub central para generar personajes, locaciones y videos con **Seedance 2.0 en 4K**. Muestra el flujo completo: crear character sheets en **Soul Cinema** (modelo de imagen), guardarlos como **Elements** para reutilizarlos, y luego generar videos con **Seedance 2.0** usando prompts que incluyen tecnicas de direccion cinematografica (Dutch angle, whip pan, speed ramp, handheld). Revela que **Seedance 2.0** asigna automaticamente una voz unica a cada personaje basada en su character sheet.

## Tips y flujos accionables

### Flujo completo paso a paso

1. **Estructura de guion:** Pide a Claude Fable 5 un script de 2 minutos con cada shot de maximo 15 segundos, siguiendo estructura: Setup → Rising Action → Climax → Resolution. Especifica genero (drama).

2. **Creacion de personajes (Character Sheet):**
   - Usa **Cinema Studio** → modelo **Soul Cinema**
   - Prompt: "front view, back view, separate close-up headshot on plain gray background"
   - Aspect ratio: **16:9**, resolucion: **2K**
   - Requisito: luz **suave**, sin sombras duras en rostro, sin reflejos en cabello
   - Genera varias opciones (cuesta <0.5 creditos cada una)
   - Guarda como **Element** (click derecho → "create element" → nombrarlo)

3. **Creacion de locaciones:**
   - Usa **Cinema Studio** → modelo **Soul Cinema**
   - Prompt incluye: **"3/4 angle"** para profundidad y volumen
   - Especifica paleta de colores: "warm tones" o "cold tones", clima, hora del dia
   - Para flashbacks: tonos frios; para escenas nostalgicas: tonos calidos

4. **Creacion de props:**
   - Usa **GPT Image 2** para modificar detalles (cambiar numeros, logos)
   - Prompt: "prop sheet on plain gray background" para objetos recurrentes (balon, copa)
   - Guarda como **Element**

5. **Generacion de videos con Seedance 2.0:**
   - En **Cinema Studio**: selecciona **Seedance 2.0** → resolucion **4K** → duracion **15 segundos**
   - Los **Elements** se cargan automaticamente en el prompt
   - **NO uses negative prompts** (Seedance no los entiende, causa confusion)
   - En su lugar, describe lo que QUIERES ver: "anxious look" en vez de "not crying"

### Tecnicas de camara (prompts exactos)

| Tecnica | Prompt a incluir | Uso |
|---------|------------------|-----|
| **Dutch angle** | "dutch angle, tilted camera" | Tensión, incomodidad, perdida de control |
| **Push in** | "push in shot" | Elevar emocion, intimidad |
| **Handheld** | "handheld camera movement" | Sensacion de camara real, documental |
| **Whip pan** | "whip pan from [subject A] to [subject B], duration [X] seconds" | Transicion rapida entre escenas |
| **Speed ramp** | "slow motion with speed ramp during [action]" | Congelar momento crucial |
| **Close-up** | "close-up, minimal space between character and frame edge" | Sensacion de atrapamiento |
| **Wide establishing shot** | "wide establishing shot" | Posicionar personajes correctamente desde el inicio |

### Trucos para look cinematografico

- **Match cut:** Usa el ultimo frame de la escena anterior como referencia para la siguiente (misma posicion del personaje)
- **Pausas de 1-2 segundos** despues de flashbacks antes de dialogo
- **Divide escenas largas** en shots de 15 segundos (scene 8 → 8A, 8B, 8C)
- **Para personajes que aparecen solo una vez:** no necesitas crear character sheet, describelos en el prompt
- **Para voz en off:** genera un shot separado solo para capturar la linea de dialogo, especifica tono de voz y pausas en el prompt

### Prompt builder skill (atajo)

1. Descarga el skill personalizado del creador (link en descripcion del video)
2. En Claude → Customize → Skills → "+" → upload skill
3. El skill divide automaticamente escenas en shots, asigna framing (close-up, medium shot, wide)

## Reglas para el erudito de Higgsfield

- **Para crear personajes:** usa **Cinema Studio** → modelo **Soul Cinema** → resolucion **2K** → aspect ratio **16:9** → prompt con "front view, back view, separate close-up headshot on plain gray background"
- **Para guardar personajes/locaciones/props:** usa **"create element"** en Cinema Studio, nombralo, y se cargara automaticamente en prompts futuros
- **Para generar video cinematico:** usa **Seedance 2.0** en **4K** con duracion **15 segundos**
- **Para profundidad en locaciones:** incluye **"3/4 angle"** en el prompt de locacion
- **Para transiciones whip pan:** especifica **duracion** y etiqueta sujetos como **A, B, C**
- **Para que Seedance entienda emociones:** describe lo que QUIERES ver, NUNCA uses negacion ("not crying" → "anxious look")
- **Para consistencia de personajes en escena:** empieza con un **"wide establishing shot"** para fijar posiciones
- **Para voz automatica:** crea el character sheet primero; Seedance asigna voz basada en el aspecto visual
- **Para modificar props (numeros, logos):** exporta la imagen a **GPT Image 2** con instrucciones especificas de cambio

## Errores comunes / que evitar

- **NO uses negative prompts** en Seedance 2.0: el modelo no las entiende y hace lo opuesto
- **NO generes character sheets con sombras duras o reflejos:** arruina la consistencia del personaje en videos posteriores
- **NO saltes directo a dialogo despues de un flashback:** necesita pausa de 1-2 segundos para que el personaje procese
- **NO uses whip pan entre diferentes tipos de shot:** debe terminar en el mismo tipo de shot que empezo (medium → medium, close-up → close-up)
- **NO confies en que Seedance posicione personajes correctamente sin establishing shot:** usa wide shot primero para fijar posiciones
- **NO generes escenas de 15 segundos con demasiada accion:** se siente apresurado, divide en shots separados
- **NO asumas que objetos extra (tercera silla, objetos flotantes) se corrigen solos:** el problema esta en el prompt, no en el modelo
- **NO uses el mismo prompt si las 4 variaciones salen mal:** el prompt necesita mas especificidad en movimientos y emociones