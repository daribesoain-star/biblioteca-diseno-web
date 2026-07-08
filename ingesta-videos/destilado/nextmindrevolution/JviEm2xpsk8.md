# How to Use Google Whisk for Consistent AI Art (Full Guide)
**Fuente:** nextmindrevolution | https://youtu.be/JviEm2xpsk8
## Qué enseña (2-3 líneas)
Google Whisk permite crear arte AI consistente bloqueando referencias de **subject**, **scene** y **style** mediante casillas activadas/desactivadas.  
El flujo consiste en generar o subir sujetos, escenas y estilos, arrastrarlos a sus campos, y luego combinar solo las referencias marcadas para producir imágenes coherentes.

## Lecciones accionables
- En Whisk, usa los paneles de la izquierda: **subject**, **scenes** y **styles**. Todo personaje va en **subject**, toda ubicación en **scene**, y toda estética visual en **style**.
- Para crear un sujeto inicial, el prompt usado es: **"Photorealistic brunette woman wearing a red dress. Full body type of portrait. A hyperrealistic green plain background."**
- Usa un fondo verde o plano para sujetos reutilizables: ayuda al modelo a concentrarse en el personaje y facilita colocarlo luego en otras escenas.
- Antes de generar, elige formato: **square**, **portrait** o **landscape**. En el ejemplo se usa **landscape**.
- Después de generar el sujeto, arrastra la imagen al campo **subject**. Si la casilla queda marcada, Whisk intentará reutilizar exactamente ese sujeto en nuevas imágenes.
- Para reutilizar un sujeto sin redescribirlo, deja marcado el **subject** y escribe prompts simples como: **"woman walking on a stylish dinner party."**
- Si el sujeto está marcado, basta con decir **"woman"**; Whisk entiende que se refiere al personaje seleccionado.
- Para crear una imagen sin usar la referencia, desmarca el **subject** antes de ejecutar el prompt.
- En **settings**, la opción **precise reference** mantiene el resultado cerca de las referencias cargadas. Si está activa, incluso con referencias desmarcadas el resultado puede parecerse mucho al sujeto previo.
- Desactiva **precise reference** cuando quieras que el modelo sea más creativo o se aleje de las referencias anteriores.
- Para crear un segundo sujeto, usa un prompt similar al primero pero cambiando el personaje; el video menciona que la diferencia era que el nuevo sujeto era **a black man**. Luego arrastra esa imagen a otro campo **subject**.
- Puedes tener múltiples sujetos. Usa el botón **plus** para añadir más campos de **subject**.
- Para crear sujetos, escenas o estilos puedes usar **enter text**, **upload image** o **random**.
- Para crear una escena, desmarca los sujetos y genera una ubicación. Prompt usado: **"wide shot of a London street."**
- Para otra escena, prompt usado: **"White shot of a Martian terrain."**
- Después de generar ubicaciones, arrastra cada imagen al campo **scene** correspondiente.
- La lógica central de Whisk es marcar solo las referencias que quieres usar: sujetos, escenas y estilos. El output combina únicamente lo que esté marcado.
- Ejemplo de combinación: marca el sujeto mujer y la escena de calle; prompt usado: **"woman walking on the street"**. Resultado esperado: la misma mujer en esa calle específica.
- Para dos sujetos en una escena, marca ambos sujetos y una escena. Prompt usado: **"couple happily walking"** con mujer + hombre + terreno marciano.
- Whisk respeta la ropa y apariencia de los sujetos marcados aunque el prompt sea ilógico. Si pides personas caminando en Marte, no necesariamente añade trajes espaciales si los sujetos de referencia llevan otra ropa.
- Para estilo, puedes usar **enter text**, **upload image** o **random**. En el ejemplo se usa **random** para obtener algo más cartoonish.
- Si marcas los dos sujetos, la escena de Marte y un estilo, y usas **"couple happily walking"**, Whisk conserva la pareja y la escena, pero aplica la estética del estilo seleccionado.
- Para crear un estilo específico, desmarca sujetos y escenas, genera una imagen con estilo, y arrástrala a **styles**.
- Prompt de estilo usado: **"a wide shot of a man. Uh, and the real important part right here is that is in Wes Anderson style."**
- Si marcas un estilo tipo **Wes Anderson** y los sujetos, pero no marcas una escena, Whisk aplicará el estilo al fondo/ambiente generado, no necesariamente cambiará la ropa de los sujetos.
- Prompt usado para probar estilo con sujetos: **"couple happily sitting on a restaurant"**.
- En cada imagen generada puedes usar: **trash**, **like**, **dislike**, **flag**, **share**, **add to favorites** y **download**.
- La opción **animate** requiere cuenta pagada y **Google AI credits** para crear videos.
- **Edit** sirve para cambios drásticos. Ejemplo de instrucción: **"make the black men Asian."**
- **Refine** sirve para ajustes pequeños. Ejemplo de instrucción: **"make the sky purple."**
- Usa **Edit** cuando reemplaces elementos importantes de la imagen; usa **Refine** cuando ajustes color, detalles o variaciones menores.

## Reglas para agentes
- Usa **subject** cuando necesites consistencia de personaje.
- Usa **scene** cuando necesites mantener una ubicación específica.
- Usa **style** cuando necesites repetir una estética, mood o dirección visual.
- Genera sujetos sobre fondo plano cuando el personaje vaya a reutilizarse en muchas escenas.
- Desmarca todos los sujetos antes de generar una escena pura.
- Desmarca escenas y sujetos antes de generar una referencia de estilo pura.
- Marca únicamente las referencias que deben influir en la generación actual.
- Mantén **precise reference** activado cuando la prioridad sea consistencia.
- Desactiva **precise reference** cuando la prioridad sea variación creativa.
- Usa prompts simples si las referencias ya están marcadas; no redescribas todo el personaje.
- Usa **Edit** para cambios radicales de identidad, personaje u objeto.
- Usa **Refine** para cambios pequeños de color, cielo, detalle o ajuste visual.
- Nunca dejes marcado un sujeto si estás intentando generar una escena vacía.
- Nunca esperes que el estilo cambie automáticamente la ropa del sujeto; Whisk tiende a preservar la apariencia del sujeto marcado.
- Nunca marques referencias contradictorias si necesitas control claro del resultado.

## Errores comunes que evita o menciona
- Describir demasiado al personaje cuando ya está marcado como **subject**.
- Olvidar desmarcar sujetos antes de generar una ubicación.
- Creer que desmarcar una referencia siempre basta; con **precise reference** activo, el modelo aún puede mantenerse cerca de referencias previas.
- Usar **Refine** para cambios radicales que corresponden a **Edit**.
- Esperar que una escena como Marte fuerce trajes espaciales; Whisk prioriza la ropa y apariencia del sujeto marcado.
- Pensar que **style** cambia todo el sujeto; en el ejemplo, el estilo afecta sobre todo el fondo y la atmósfera.