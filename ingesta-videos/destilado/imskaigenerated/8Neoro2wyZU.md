# How To Make AI Games Using Claude + Higgsfield (Full Tutorial)
**Fuente:** imskaigenerated | https://youtu.be/8Neoro2wyZU

## Qué enseña (2-3 líneas)
Este tutorial enseña a convertir cualquier imagen en un videojuego jugable usando Higgsfield Games, sin necesidad de motores de juego ni instalaciones. Muestra cómo un agente de IA planifica el juego, genera el arte, escribe el código y lo publica online con un solo prompt, cubriendo desde plataformeros 2D hasta shooters y mundos 3D explorables.

## Lecciones accionables
- **Paso 1:** Abrir Higgsfield, ir a "Supercomputer" → hacer clic en "Games" → describir el juego deseado y subir una imagen como base.
- **Paso 2:** Subir una imagen de personaje limpia sobre fondo liso (el tool extrae el personaje y construye el mundo alrededor). Prompt usado: *"A bright platformer where we run and jump platforms collecting coins"*.
- **Paso 3:** Si no se especifica estilo artístico en el prompt, el tool pausa y pregunta; elegir entre presets de estilo y ambientación o escribirlos directamente en el prompt.
- **Paso 4:** Para personajes oscuros, usar modelo "Nano Banana Pro" (rápido, maneja cualquier estilo). Prompt usado: *"a lone knight in dark armor"*.
- **Paso 5:** En juegos oscuros, agregar instrucción en el prompt para mantener elementos jugables brillantes: *"keep the gameplay elements bright"* → personaje y fragmentos brillan, peligros en colores de advertencia.
- **Paso 6:** Para cambiar de género, crear personaje nuevo (ej: sci-fi soldier) y pedir "top-down shooter style" → el tool reorienta automáticamente la perspectiva del personaje (de frente a vista cenital).
- **Paso 7:** Para fotorealismo, usar "Higgs Field Soul 2.0" (modelo para personas fotorrealistas). Prompt usado: *"a rugged male adventurer in a worn leather jacket"*.
- **Paso 8:** Para juegos fotorrealistas 3D, pedir "a fully photorealistic 3D action game that's as lifelike as possible" → el tool advierte que un modelo 3D realista de una foto sale mal y ofrece alternativa: usar imágenes renderizadas reales en lugar de modelos 3D.
- **Paso 9:** Para endless runner, crear personaje cute y pedir "endless runner" → el personaje corre solo, se salta tocando, velocidad aumenta con tiempo.
- **Paso 10:** Para mundo 3D explorable, crear personaje blocky simple y pedir "a full 3D world that we can actually explore" → el tool construye modelo 3D real y lo coloca en mundo navegable.
- **Paso 11:** Si los controles están invertidos, decirle al agente: *"our controls are inverted"* y pedir solución → el modelo lo corrige en segundos sin reiniciar.
- **Paso 12:** Publicar el juego → obtiene URL permanente en "Higgs Field Games Marketplace" → cualquiera puede jugar en navegador (PC y móvil), remezclar el juego y crear su propia versión.
- **Paso 13:** Para multijugador en tiempo real, crear un mundo (ej: isla 3D) y habilitar multiplayer → un solo link permite a personas en distintos dispositivos explorar juntos.

## Reglas para agentes
- Usa una imagen de personaje sobre fondo liso y limpio cuando subas arte al tool; el tool levanta el personaje y construye el mundo alrededor.
- Especifica siempre el estilo artístico en el prompt o selecciona un preset cuando el tool lo pida; si no lo haces, el tool pausa y pregunta antes de construir.
- Cuando crees juegos oscuros, incluye la instrucción "keep the gameplay elements bright" en el prompt para que elementos clave (personaje, monedas, peligros) sean visibles.
- Si pides un juego fotorrealista 3D con un personaje de foto real, acepta la alternativa del tool de usar imágenes renderizadas en lugar de modelos 3D; el tool te advertirá que un modelo 3D realista de una foto sale mal.
- Para mundos 3D explorables, usa personajes blocky y simples; el tool puede construir modelos 3D reales solo con este tipo de personajes.
- Si los controles salen invertidos, comunica el problema directamente al agente (ej: "our controls are inverted") y pide solución; no necesitas reiniciar ni cambiar configuraciones.
- Publica siempre los juegos terminados para obtener un link permanente y permitir que otros jueguen, remezclen y compartan.

## Errores comunes que evita o menciona
- **No usar imágenes con fondos complejos:** el tool funciona mejor cuando el personaje está sobre fondo liso, porque extrae al personaje y construye el mundo a su alrededor.
- **No pedir modelos 3D fotorrealistas de personajes reales:** el tool advierte que una foto real convertida a modelo 3D se ve como "un maniquí derretido"; ofrece en su lugar usar imágenes renderizadas reales.
- **No ignorar las advertencias del tool:** cuando el tool se detiene y pregunta o sugiere una ruta alternativa, es porque está evitando un resultado fallido; hay que aceptar su recomendación.
- **No dejar los controles rotos:** si los controles están invertidos, no hay que empezar de cero; basta con decirle al agente el problema y lo corrige automáticamente.
- **No olvidar publicar:** los juegos solo son compartibles y permanentes cuando se publican en el Marketplace; de lo contrario no tienen URL accesible.