# I Spent $10K On AI Video - Here's What Actually Works
**Fuente:** imskaigenerated | https://youtu.be/8sUN0ulse7c
## Qué enseña (2-3 líneas)
Enseña un flujo completo para crear video con IA sin gastar créditos inútilmente: imágenes base, consistencia de personajes/props, realismo, movimiento, emoción, sonido y edición.  
La idea central es tratar cada prompt como una dirección cinematográfica precisa, no como una descripción genérica.
## Lecciones accionables
- Usa **Higgsfield** para imágenes y video; para imágenes: entra a **Image** y selecciona **Nano Banana 2**.
- Antes de escribir prompts de locación, busca referencias en **Shot Deck** y úsalas como blueprint visual de mood, encuadre y luz.
- Toda locación necesita un **anchor**: construye la escena alrededor de un objeto principal, por ejemplo **workbench**, **chair** o **locker**.
- Prompt malo citado: `Futuristic workshop, cinematic`.
- Para mejorar una locación, define el objeto focal, la posición de shelves/lockers alrededor, ángulo de cámara, lente, dirección de luz, polvo atmosférico y film grain.
- No hagas solo character sheets: crea también **prop sheets** para props importantes, especialmente si están pegados al personaje o cambian según el ángulo.
- Character sheet recomendado: **full turnaround sheet** en un canvas **16:9**, con paneles **front, side, back, close-up face**.
- Bloquea detalles del personaje: textura de piel, outfit, diseño del brazo cibernético y proporciones.
- Añade negative prompt para evitar que el modelo vuelva la imagen **3D** o **CGI**.
- Para el brazo cibernético, crea un prop sheet separado con vistas completas desde hombro hasta dedos, más close-ups de muñeca y mano.
- Para evitar el look plástico de IA, añade siempre **light atmospheric haze** y especifica dirección de iluminación: key light, fill light y practical lights.
- Prompt malo citado: `A clean, evenly lit rooftop shot with no haze and no grain.`
- Prompt bueno descrito: cyborg con **dramatic rim lighting from a neon billboard**, lluvia en cuadro, atmospheric haze, reflejos en concreto mojado y **analog film grain**.
- Construye **scene sheets**: une un wide shot y un reverse view en una sola imagen **16:9** para que el modelo entienda el espacio.
- Flujo para scene sheet: genera un hallway futurista, súbelo como referencia, pide un reverse view del mismo hallway con la misma iluminación, luego combina ambas vistas.
- No sobre-edites una imagen: cada edición degrada el resultado. Cuando encuentres la mejor versión, pide a un LLM que describa el layout completo y regenera desde cero.
- Usa **Higgsfield Canvas** para organizar character sheets, prop sheets y scene sheets.
- Para video, usa **Seedance** dentro de Higgsfield: abre la pestaña **Video** y cambia el modelo a **Seedance**.
- Trata el prompt de video como **shot list** o guion de dirección, no como una descripción general.
- Para shots largos, divide la acción por timestamps: qué pasa al inicio, qué pasa después y cómo termina.
- Ejemplo técnico: de **0-2s**, el cyborg repara su brazo, aprieta bolts y rota el wrist assembly; de **2-5s**, activa el brazo, los dedos flexionan y las luces pasan de rojo a azul; de **5-7s**, mira el brazo reparado y dice: `It's ready.`
- Ancla de cámara del ejemplo: `camera locked low beside the scratched toolbox next to the workbench`.
- Diseña secuencias multi-shot: entrada por puertas de saloon, caminata entre mesas de poker, bartender congelado, close-up de mano cibernética flexionando con servo movement, close-up final con diálogo: `Where is Rake?`
- En escenas de diálogo, empieza con un **establishing shot**; una sola generación puede contener establishing shot, línea de diálogo y reacción.
- Ancla siempre la cámara a algo físico: toolbox, bartender’s counter, broken wardrobe o la mesa entre dos personajes.
- Para fallos recurrentes, incrusta restricciones explícitas en el prompt: `Don't mirror the character, don't swap arm sides, and don't change the cybernetic arm design.`
- Si el prompt se vuelve largo y confuso, reescríbelo desde cero o usa **Claude** para comprimirlo y optimizarlo.
- Para actuación emocional, no escribas solo la acción: incluye situación, qué acaba de pasar, qué carga emocional tiene el personaje y comportamiento físico específico.
- En una escena de duelo: cyborg solo en ruinas quemadas de su workshop, noche, humo entre vigas rotas, embers en oscuridad, foto dañada en escombros, hombros caídos, cabeza baja, inmóvil.
- Para close-up emocional: jaw tightens, corners of his eyes glisten, lower lip trembles almost imperceptibly; debe verse heartbroken, not dramatic.
- No uses etiquetas simples como sad, tired o relieved; describe postura, respiración, tensión muscular y microgestos.
- Para alivio tras batalla: cuerpo rígido al inicio, shoulders raised, back locked, dedos cibernéticos se descrispan lentamente, exhala, sin sonrisa ni triunfo.
- En diálogo, escribe fonéticamente si necesitas controlar pronunciación, ritmo o entrega.
- Ejemplos citados de pronunciación: `where is rake`; `upstairs room save own`; `it's ready`.
- En generaciones, pide **environmental sounds only** y evita música incrustada.
- Sonidos ambientales útiles: workshop hums, tool clicks, servo motors, distant ventilation fans, saloon ambience, wooden floor creaks, glasses clinking, room tone, subtle environmental movement.
- Añade música después en edición para controlar timing, volumen e impacto emocional.
- Edita mientras generas: pon cada clip en timeline con música debajo para detectar pacing y shots de transición faltantes.
- Usa **L cut** para unir cortes: deja que audio del clip anterior, como puerta, servo o room tone, continúe sobre el primer frame del siguiente clip.
- Si dos clips chocan, inserta un medium o wide establishing shot entre ellos.
- Revisa clips fallidos antes de borrarlos: rescata movimientos de mano, reaction shots, cutaways o frames útiles.
- Para ahorrar créditos, invierte tiempo en prompts detallados antes de generar; una buena generación vale más que cinco regeneraciones vagas.
- Para iteración temprana usa **annual billing** y modelos **unlimited pass** de Higgsfield: **Seedance unlimited** y **Seedance fast** para probar composición y ángulos antes de gastar créditos finales.
## Reglas para agentes
- Usa un anchor físico cuando generes locaciones; nunca describas un espacio solo con estilo y género.
- Usa character sheets y prop sheets cuando haya continuidad visual; nunca confíes en que el modelo conservará props complejos por memoria.
- Usa canvas 16:9 para turnaround sheets y scene sheets.
- Añade haze, dirección de luz y film grain en prompts realistas; nunca aceptes iluminación plana si buscas look cinematográfico.
- Divide clips largos por timestamps verificables.
- Ancla la cámara a un objeto físico en cada shot.
- Especifica fallos recurrentes dentro del prompt desde la siguiente generación.
- Comprime prompts sobrecargados antes de seguir iterando.
- Describe emociones mediante cuerpo, respiración, mirada y microgestos; nunca uses solo etiquetas emocionales.
- Pide solo sonidos ambientales en generación; nunca incrustes música si después necesitas editar con control.
- Edita en paralelo a la generación y revisa el timeline antes de gastar más créditos.
- Revisa cada clip fallido completo antes de descartarlo.
- Usa modelos unlimited o fast para pruebas; reserva créditos para shots finales.
## Errores comunes que evita o menciona
- Prompts genéricos como `Futuristic workshop, cinematic`.
- Locaciones sin punto fijo ni estructura espacial.
- Depender solo de character sheets y olvidar prop sheets.
- Brazos, manos o props rediseñados entre generaciones.
- Look plástico de IA: superficies demasiado suaves, limpias y uniformemente iluminadas.
- Editar la misma imagen 20 veces hasta degradarla.
- Subir referencias separadas sin scene sheet y confundir al modelo.
- Prompts de video sin timestamps que hacen que la acción ocurra demasiado rápido.
- Cámara flotante o drifting por no estar anclada a un objeto físico.
- Personajes espejados o con brazos cambiados de lado.
- Prompts demasiado largos que confunden al modelo.
- Actuaciones planas por describir acciones sin motivación emocional.
- Música generada dentro del clip, difícil de remover en postproducción.
- Esperar al final para editar y descubrir tarde que faltan transiciones.
- Borrar generaciones fallidas sin rescatar segundos, frames o cutaways útiles.
- Quemar créditos por prompts vagos y pruebas hechas en modelos de pago.