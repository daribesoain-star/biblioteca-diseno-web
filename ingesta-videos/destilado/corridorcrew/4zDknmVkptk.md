# VFX Artists React to Bad & Great CGi 231
**Fuente:** corridorcrew | https://youtu.be/4zDknmVkptk
## Qué enseña (2-3 líneas)
El episodio muestra cómo los efectos visuales dependen de decisiones cinematográficas previas: bloqueo de cámara, sombras, luz interactiva, composición y estética de color. La lección central es que un plano puede ser técnicamente complejo, pero si la cámara, la luz o la dirección visual no sostienen el efecto, el resultado se rompe.

## Lecciones accionables
- En un **one shot** con truco óptico, busca evidencia de integración real: sombras compartidas, objetos que proyectan sombra entre capas, ausencia de **micro jitter** independiente y continuidad de cámara.
- Para efectos tipo gigante/personaje escalado, considera **forced perspective**, pero verifica que los sujetos no parezcan estar a la misma distancia de cámara si el truco depende de profundidad.
- Un **mirror shot / in-camera composite** puede construirse con vidrio o espejo frente a cámara, raspando selectivamente la plata del espejo para combinar dos sets en una sola exposición.
- En un **in-camera comp**, la ventaja es que todo comparte el mismo movimiento o vibración de cámara; no aparecen capas con jitter separado como en dos placas filmadas aparte.
- Si haces composición práctica, bloquea cámara y arte: **“Nobody touch the camera”**, **clean plate**, no mover almohadas, props ni pliegues que definan la línea de empalme.
- Las sombras son la prueba más dura: una baranda proyectando sombra sobre actores, una enfermera proyectando sombra sobre cama o cama proyectando sombra sobre piernas obliga a que la luz y la geometría estén perfectamente sincronizadas.
- En blanco y negro, compón por **luminance** antes que por color: contraste, silueta, rango tonal y jerarquía de brillo importan más que el hue.
- No mezcles objetivos visuales sin decidir prioridad: iluminar para **black and white noir** no es igual que iluminar para color; una calle azul y una pared roja son decisiones de color, no solo de valor tonal.
- Para fuego CG, el fuego debe ser la fuente más brillante del plano y debe generar **interactive light / practical lighting** sobre piel, ropa y entorno.
- Si una mano tiene fuego pero el rostro no recibe luz, el efecto pierde credibilidad aunque la simulación sea detallada.
- El **color falloff** del fuego es complejo: blanco en el núcleo, amarillo, naranja y rojo en los bordes; en blanco y negro ese problema se reduce, pero exige valores de luminancia correctos.
- Escala del fuego: si la llama es pequeña, debe moverse rápido; si se mueve lento y con demasiado detalle, parece una simulación miniaturizada o fuera de escala.
- Referencia clave para fuego nocturno: **real fire at night**, alto brillo, movimiento rápido, humo visible y lenguas de llama menos detalladas de lo que una simulación suele producir.
- Para electricidad, un **strobe light on set** o luz práctica parpadeante aporta gran parte de la integración; no dependas solo del efecto añadido en post.
- La electricidad funciona mejor cuando ilumina localmente el punto de contacto: manos, cara, ropa y superficies cercanas.
- En estética noir/comic, puedes permitir efectos menos realistas si la dirección visual es consistente: alto contraste, textura gráfica, luz dura y composición estilizada.
- Para partículas como arena, la interacción debe tener colisiones creíbles: **particle simulation**, partículas con radio, clumps, loose grains, **collision object**, atracción entre granos y desprendimiento por peso.
- La técnica no salva una mala dirección estética: un rostro humano sobre pez puede tener animación facial avanzada, pero caer en **uncanny valley** si el diseño exige demasiado realismo.
- Si un diseño es perturbador, ocultarlo con movimiento constante solo disimula el problema; la solución cinematográfica real sería estilizar, cambiar silueta o reducir realismo facial.
- Prompts útiles para video IA: `locked-off camera`, `one shot`, `in-camera composite`, `mirror shot`, `forced perspective`, `black-and-white noir lighting`, `high contrast luminance`, `practical firelight on face`, `interactive strobe light`, `real fire at night`, `visible smoke`, `fast-moving small flames`, `no separate layer jitter`, `consistent cast shadows`.

## Reglas para el director de fotografía IA
- Usa **locked-off camera** cuando el plano dependa de composición, escala falsa o continuidad exacta entre capas.
- Usa **one shot** solo si puedes mantener sombras, perspectiva y props constantes durante todo el plano.
- Usa **forced perspective** cuando el tamaño relativo dependa de profundidad real; verifica que las líneas del set y los puntos de contacto no contradigan la distancia.
- Usa **mirror shot / in-camera composite** cuando necesites que dos espacios compartan el mismo jitter físico de cámara.
- Para no alucinar en video IA, exige sombras coherentes: toda fuente de luz visible debe proyectar sombra y toda sombra debe tener dirección consistente.
- Para fuego, ordena siempre luz interactiva: el sujeto debe iluminarse con parpadeo cálido desde la posición exacta de la llama.
- Para fuego pequeño, usa movimiento rápido, menos detalle fino y humo proporcional; no aceptes llamas lentas y sobredefinidas.
- Para blanco y negro, dirige por valores: separa personaje, fondo y efecto por luminancia antes de pensar en color.
- Si el proyecto es noir, prioriza **black-and-white high contrast** desde rodaje/prompt; no conviertas color genérico a monocromo al final.
- Si usas electricidad, añade **practical strobe light** en set o en prompt para que el efecto toque físicamente al actor y al entorno.
- No pidas color y blanco y negro como prioridades iguales si la escena depende de iluminación diseñada; elige una versión dominante.
- Cuando un efecto toque arena, polvo, tela, agua o humo, pide interacción física explícita: colisión, desplazamiento, caída, clumps y partículas secundarias.
- Si un personaje CG tiene rasgos humanos, estiliza antes de perseguir realismo facial extremo; evita quedar a mitad de camino en el **uncanny valley**.
- Si necesitas esconder un diseño débil, no confíes solo en cámara inquieta o motion blur; corrige silueta, iluminación y nivel de realismo.

## Errores comunes que evita o menciona
- Confiar en una simulación detallada aunque no respete escala, velocidad ni luz.
- Añadir fuego o electricidad en post sin luz interactiva sobre el actor.
- Iluminar una escena para color y luego esperar que funcione igual en blanco y negro.
- Hacer dos versiones estéticas sin comprometerse con una dirección visual principal.
- Romper un truco práctico moviendo cámara, props, almohadas o pliegues entre tomas.
- Ignorar micro-jitters entre capas compuestas.
- Usar demasiada textura en fuego pequeño, haciéndolo parecer lento y falso.
- Creer que dificultad técnica equivale a buen resultado visual.
- Forzar realismo humano en criaturas o híbridos y caer en uncanny valley.