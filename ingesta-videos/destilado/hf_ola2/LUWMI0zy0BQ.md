# We Made a K-Pop Action Series Using Seedance 2.0
**Fuente:** hf_ola2 | https://youtu.be/LUWMI0zy0BQ

## Que ensena sobre Higgsfield (2-3 lineas)
Higgsfield (Seedance 2.0) permite dirigir escenas con control de personalidad, física y cámara mediante prompts detallados. El flujo clave es separar la creación de personajes (cara + outfit) en Soul Cinema, fusionarlos en Nana Banana Pro, y luego usar Seedance para animar con prompts que describan comportamiento de cámara y consecuencias físicas, no solo acciones.

## Tips y flujos accionables

### Flujo de creación de personajes (3 pasos exactos)
1. **Soul Cinema para la cara**: Usa un mismo prompt base para generar variaciones. Busca estructura ósea, ojos, presencia. No incluyas outfit aquí.
2. **Soul Cinema para el outfit**: Prompt separado. Si un accesorio (cinturón, banda en la nariz) desaparece entre generaciones, agrégalo explícitamente al prompt. Ejemplo de prompt de outfit: *"chica en top amarillo, banda en la nariz, jeans"*.
3. **Nana Banana Pro para fusionar**: Carga el asset de cara + asset de outfit. Genera una imagen de referencia única (el "screen test"). Ese es el master asset contra el que Seedance verificará consistencia.

### Construcción del mundo
- **Ciudades/escenarios**: Usa Claude primero para expandir un mood a lenguaje cinematográfico. Luego itera: si la primera pasada no es lo suficientemente destruida, añade *"debris, overgrowth, time having passed"*.
- **Monstruos/criaturas**: Genera múltiples variaciones, luego combínalas en Nana Banana Pro. Si una generación no termina de convencer, mézclala con otra.
- **Mechs/vehículos**: Asigna una paleta de colores por personaje (ej: Reina = lavanda, azul oscuro, plata; Dior = blanco, teal). El color debe identificar al personaje antes de que se abra la cabina.

### Dirección de animación en Seedance 2.0
- **Estructura de escenas**: Cada personaje se presenta dos veces: una en cabina (quién es) y una en acción (qué puede hacer). Planea esto antes de generar.
- **Prompts de acción**: No escribas solo la acción. Escribe la física y la cámara. Ejemplo de prompt para un puñetazo: *"El peso del cuerpo, la consecuencia del impacto, la secuela visual específica. Lo que la fuerza hace al cuerpo"*. Esto fuerza a Seedance a generar física, no solo movimiento.
- **Prompts de personalidad**: Incluye rasgos de personalidad en el prompt. Ejemplo: *"arrogante, independiente"* para Reina. Seedance entiende personalidad y entrega emociones si usas el lenguaje correcto.
- **Diálogos como stage direction**: Escribe la línea de diálogo como parte del prompt. Ejemplo: *"Espero ser la MVP hoy"* escrito como stage direction. Seedance genera la entrega.
- **Música sincronizada**: Para secuencias coreografiadas (K-pop), genera la pista musical por separado y súbela a Seedance como elemento junto con la letra. La música es parte de la generación, no se añade después.
- **Coreografías**: Para bailes grupales, usa solo el término *"K-pop"* en el prompt. No añadas pasos específicos. Seedance sabe lo que significa: formación sincronizada, aislamientos corporales, cámara adecuada. Menos control = mejor resultado.

### Parámetros y valores recomendados
- **Cámara**: Describe comportamiento específico. Ejemplo: *"La mandíbula, el reestablecimiento, la estabilización después del impacto"*.
- **Física**: Para movimientos de máquinas grandes, describe cómo reacciona el suelo. Ejemplo: *"El suelo cediendo ligeramente bajo cada paso, no explotando, no rebotando"*.
- **Recoil/retroceso**: Describe la fuerza moviéndose a través del cuerpo. Ejemplo: *"pelo hacia atrás, manos firmes"*.

### Prompts VERBATIM del video
- Para la intro de Haro (mech caído, chupetín en boca): *"La mandíbula, el reestablecimiento, la estabilización después del impacto"*.
- Para la intro de Zero (mech caminando): *"Cámara tracking baja y amplia para capturar la enormidad"*.
- Para la secuencia K-pop: *"K-pop"* (solo eso).
- Para el cierre (monstruo nuevo): *"Cinco en formación, humo entrando, luces desde arriba"*.

## Reglas para el erudito de Higgsfield
- **Para crear personajes consistentes**: usa Soul Cinema para cara y outfit por separado, luego fusiónalos en Nana Banana Pro.
- **Para que no alucine accesorios**: verifica cada generación de outfit y añade explícitamente cualquier detalle que desaparezca (cinturones, bandas, straps).
- **Para look cinematográfico**: escribe el comportamiento de cámara y las consecuencias físicas en el prompt, no solo la acción.
- **Para peleas con impacto**: describe el peso, la masa y la secuela visual (ej: "el suelo cediendo", "el cuerpo siendo desplazado").
- **Para coreografías grupales**: usa el preset "K-pop" sin añadir pasos específicos; Seedance maneja la sincronización.
- **Para diálogos con emoción**: incluye la línea como stage direction en el prompt.
- **Para escenas con música**: sube la pista como elemento antes de generar; la música guía el ritmo del movimiento.
- **Para combinar ideas visuales**: si una generación no termina de gustar, combínala con otra en Nana Banana Pro.

## Errores comunes / que evitar
- **Generar cara y outfit en el mismo prompt**: pierdes control y especificidad. Hazlos por separado.
- **Escribir solo la acción sin física**: "Meg golpea al monstruo" es un caption, no dirección. Escribe cómo la fuerza afecta al cuerpo y al entorno.
- **Añadir música después de generar**: la sincronización se pierde. La música debe ser parte de la generación.
- **Sobreescribir coreografías**: para K-pop, menos es más. Un solo término ("K-pop") funciona mejor que instrucciones detalladas de pasos.
- **Ignorar detalles pequeños**: una banda en la nariz o un cinturón que desaparece rompe la consistencia. Revísalos en cada generación.
- **No planificar la estructura de escenas**: cada personaje necesita dos intros (quién es + qué hace). Sin esa estructura, las escenas se sienten inconexas.
- **Usar prompts genéricos**: "una chica en top amarillo" deriva. "Hada Mean con banda en la nariz" ancla el personaje.