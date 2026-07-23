# The Complete AI Short Film Workflow Everyone's Missing
**Fuente:** hf_ola2 | https://youtu.be/tW40b122Rbs

## Que ensena sobre Higgsfield (2-3 lineas)
Higgsfield (Soul Cinema + Cinema Studio) permite generar cortometrajes completos sin cámara ni presupuesto, usando generación de imágenes cinematográficas por defecto y animación multi-shot con control de cámara. El flujo clave: crear personajes consistentes con Soul ID + character sheets, generar locaciones con prop sheets, y animar escenas completas con diálogo sincronizado usando Cinema Studio.

## Tips y flujos accionables

### Flujo completo paso a paso

1. **Brainstorming emocional (NO empezar con prompt)**
   - Pregunta: "¿Qué historia tiene apuestas emocionales reales?"
   - Estructura: 3 escenas (setup, midpoint, climax) en 3 oraciones
   - Ejemplo: "Un policía con depresión. Es su cumpleaños. Sus seres queridos intentan animarlo."

2. **Crear Soul ID (personaje principal)**
   - Ir a **HeyGen Field** → seleccionar **Character**
   - Subir **20 fotos** de ti mismo (diferentes ángulos, diferente iluminación)
   - Resultado: **Soul ID** personal que puedes usar en cualquier escena

3. **Generar hero shot en Soul Cinema**
   - Prompt simple: `"A close-up of an American policeman"`
   - Seleccionar **Soul ID** activado
   - Soul Cinema genera imágenes cinematográficas por defecto (grano, fondo desenfocado, textura de piel)

4. **Crear Character Sheet (consistencia)**
   - Usar **Nano Banana Pro** (o similar) para generar hoja de personaje
   - Prompt largo (dejado en descripción del video) que bloquea: cara, accesorios, ropa, cada detalle
   - **Regla:** Todo debe estar en el character sheet para que nada derive

5. **Generar personajes secundarios**
   - Mismo prompt pero **sin Soul ID**
   - Ejemplo: Dave el compañero (misma calidad cinematográfica por defecto)
   - Aplicar el mismo proceso de character sheet

6. **Generar locaciones**
   - **Soul Cinema** con prompt de escenario
   - Ejemplo: `"A wide shot of a locker room with blue lockers"`
   - Generar **Prop Sheet** con mismo prompt para consistencia ambiental entre tomas

7. **Animar en Cinema Studio - Multi-shot**
   - Ir a **Cinema Studio** → **Multi-shot**
   - Subir **character sheet** y **prop sheet** como referencias
   - Nombrar cada elemento, dar descripción y elegir tipo

8. **Configurar tomas individuales**
   - **Shot 1:** 7 segundos, **Handheld camera move** (temblor ligero para narrativa)
     - Prompt: `"policeman in uniform [ref character] enters the locker room with blue lockers [ref location], the policeman [ref again] stops in front of one of the lockers with his back to the camera"`
     - **Tip clave:** Describir la imagen PRIMERO, luego soltar la referencia (ancla al modelo antes de que tire de la referencia)
   - **Shot 2:** 5 segundos, **Static camera**
     - Prompt: `"POV shot from the bottle inside the policeman opens the locker, reaches for the bottle and then stops"`

9. **Truco de screenshot para continuidad**
   - Tomar screenshot de una escena generada
   - Usar como **prop sheet** para la siguiente escena
   - Ejemplo: POV desde dentro del locker → usar screenshot + prop sheet para que Cinema Studio complete el resto

10. **Flujo de diálogo en una toma**
    - Mantener misma configuración de cámara (handheld para conversaciones)
    - Prompt incluye diálogo: `"...Dave says teasingly 'Yeah, don't sound too excited...'"`
    - **Regla:** Una toma larga para intercambio completo, luego cortar en edición

### Flujo para escena de auto (look dash cam)

1. **Usar Claude para prompts**
   - Describir en palabras simples: `"Interior of a police car dashboard camera angle looks like cheap surveillance footage bright sunlight suburban neighborhood outside"`
   - Claude devuelve prompt optimizado: `"Police cruiser interior static wide shot from the dashboard..."`
   - Llevar a **Soul Cinema** y generar

2. **Workflow alternativo en Cinema Studio**
   - Subir imagen generada como **start frame**
   - Añadir elementos: **character sheet** + **Dave's character sheet**
   - Prompt simple: `"Adele and Dave enter the car"`
   - Screenshot del frame donde ambos están sentados → usar como start frame para siguiente toma

3. **Configurar toma de auto**
   - **Static camera move**
   - Prompt largo: `"interior police cruiser daytime slight DVR body cam dash cam look soft overexposed sunlight through the windshield handheld vibration. The curly hair policeman on the left [ref myself] leans out the open door, pulls it shut shifts into the seat and starts the engine. The car comes to life. While this happens, the officer on the right, Dave, looks forward with a calm face and says in a deep sarcastic tone, 'You know where I celebrate my birthday every year?' I want a short beat, and the curly policeman, Adil, eyes still on the road, answers very dryly, 'No, why should I?' Natural police radio ambience, slight engine vibration, casual patrol energy."`

4. **Generar B-rolls con Claude**
   - Pedir a Claude descripciones de B-roll
   - Ejemplos:
     - `"dash cam POV of a suburban street, dry flat neighborhood, midday sun"`
     - `"extreme close-up of a police radio mic clipped to uniform, badge slightly out of focus, dark cinematic"`
     - `"a patrol car drives through a quiet suburban neighborhood, seen from the side window, dry grass, palm trees, midday heat"`
   - Llevar a **Soul Cinema** y generar

5. **Animar B-rolls**
   - Para radio: prompt con diálogo de dispatch: `"Unit 12, we got a 17 in progress, possible homicide. 1738 on scene."`
   - Para otros B-rolls: ejecutar "as is" sin prompt adicional

6. **Cerrar escena**
   - Prompt: `"Adele turns the wheel hard, they make sharp turn, dynamic shot, sudden shake. Dave holds the radio, listens, and then says at the end, '1738, roger that.'"`

### Flujo para escena final (suspense + sorpresa)

1. **Generar personaje secundario (Selena - la esposa)**
   - **Soul Cinema** sin Soul ID
   - Prompt: `"a close-up of a woman in her mid-20s"`
   - Generar **character sheet** para ella

2. **Transición escena 2 → escena 3**
   - Multi-shot donde salen del auto y entran al edificio
   - Usar **Claude** para prompt de locación: `"a dark hallway, closed door at the end, bright light leaking through all the edges of the door frame"`

3. **Configurar tomas de tensión**
   - **Shot 1:** `"a policeman with a police shotgun and just the door slowly, like he's on a mission. Lights inside the houses are off."`
   - **Shot 2 (revelación):** `"Light switches on quickly and the camera captures surprise party in the house. [ref house] and close-up of the woman [ref wife] with a cake with candles. Surprise, honey."`

### Post-producción

1. **Edición en DaVinci**
   - Recortar tomas, espejar si la composición funciona mejor invertida
   - **Si faltan tomas:** volver a generarlas con el mismo workflow (nada está bloqueado hasta que lo bloquees)

2. **Audio - Pixel Audio**
   - Dividir audio en pistas separadas (una por personaje)
   - **Para voz principal:** Subir track de ti hablando → usar **Change Voice** para procesar todo el track
     - **Nota:** Solo cambia la voz, NO las emociones, ritmo ni entrega
   - **Para otros personajes:** Seleccionar preset de voz (ej: "Dave")

### Prompts VERBATIM clave

- **Hero shot:** `"A close-up of an American policeman"`
- **Locación locker:** `"A wide shot of a locker room with blue lockers"`
- **Toma 1 escena 1:** `"policeman in uniform [ref character] enters the locker room with blue lockers [ref location], the policeman [ref again] stops in front of one of the lockers with his back to the camera"`
- **Toma auto (completa):** `"interior police cruiser daytime slight DVR body cam dash cam look soft overexposed sunlight through the windshield handheld vibration. The curly hair policeman on the left [ref myself] leans out the open door, pulls it shut shifts into the seat and starts the engine..."`
- **B-roll radio:** `"Close-up of a police radio clipped to an officer's vest inside a moving patrol car. The radio crackles and the dispatch voice comes through. Unit 12, we got a 17 in progress, possible homicide. 1738 on scene."`

## Reglas para el erudito de Higgsfield

- **Para consistencia facial del personaje principal:** usa **Soul ID** con 20 fotos de diferentes ángulos e iluminación en **HeyGen Field**
- **Para que el personaje se vea igual en cada ángulo:** genera **Character Sheet** en **Nano Banana Pro** con prompt que bloquee cara, accesorios, ropa y cada detalle
- **Para mantener consistencia ambiental entre tomas:** genera **Prop Sheet** con el mismo prompt de la locación
- **Para animación con diálogo fluido:** usa **Cinema Studio → Multi-shot** con 7 segundos para tomas narrativas y 5 segundos para tomas de reacción
- **Para look cinematográfico por defecto:** usa **Soul Cinema** (grano, fondo desenfocado, textura de piel) en lugar de Nano Banana Pro que da resultados "plásticos"
- **Para look dash cam/raw:** usa **Static camera** con prompt que incluya `"slight DVR body cam dash cam look soft overexposed sunlight"` y `"handheld vibration"`
- **Para que el modelo entienda mejor el prompt:** describe la imagen PRIMERO y luego suelta la referencia (ej: `"policeman in uniform [ref character] enters..."` en lugar de `"[ref] policeman enters..."`)
- **Para continuidad entre escenas:** toma **screenshot** de la escena generada y úsalo como **start frame** o **prop sheet** para la siguiente toma
- **Para prompts complejos:** describe la sensación deseada a **Claude** en palabras simples y deja que él construya el prompt optimizado
- **Para B-rolls rápidos:** pide a Claude descripciones de 3-4 tomas, genera en Soul Cinema, y anima en Cinema Studio con o sin prompt adicional
- **Para voz de personaje principal:** usa **Pixel Audio → Change Voice** con un track de ti hablando (solo cambia la voz, no la emoción/ritmo)
- **Para voces secundarias:** usa **presets de voz** en Pixel Audio (ej: preset "Dave")
- **Para edición flexible:** edita en **DaVinci** y si faltan tomas, vuelve a generarlas con el mismo workflow (nada está bloqueado hasta que lo bloquees)

## Errores comunes / que evitar

- **NO empezar con un prompt:** empieza con un sentimiento y una historia de 3 oraciones (personaje, locación, momento)
- **NO usar más de 3 escenas para un corto:** estructura mínima: setup, midpoint, climax
- **NO subir menos de 20 fotos para Soul ID:** menos variedad = peores resultados
- **NO usar Nano Banana Pro para imágenes cinematográficas:** da resultados "plásticos"; usa Soul Cinema que da grano, textura y desenfoque por defecto
- **NO olvidar el Character Sheet:** sin él, el personaje deriva entre tomas (cara, ropa, accesorios cambian)
- **NO describir la imagen después de la referencia:** el orden correcto es describir PRIMERO, luego soltar la referencia
- **NO generar cada toma por separado sin contexto:** usa **Multi-shot** para encadenar tomas con diferentes ángulos y movimientos de cámara en una misma escena
- **NO ignorar el movimiento de cámara:** handheld para tensión narrativa, static para POV/dash cam
- **NO generar locaciones nuevas para cada toma:** usa **Prop Sheet** para mantener consistencia ambiental
- **NO esperar que todas las generaciones sean perfectas:** itera (cambia una o dos cosas en el prompt y regenera)
- **NO editar sin antes verificar si faltan tomas:** la ventaja es que puedes generar tomas faltantes en post-producción con el mismo workflow
- **NO procesar audio sin separar pistas por personaje:** cada personaje necesita su propio track para aplicar voces diferentes
- **NO usar Change Voice esperando que cambie emociones:** solo cambia la voz, no el ritmo ni la entrega emocional