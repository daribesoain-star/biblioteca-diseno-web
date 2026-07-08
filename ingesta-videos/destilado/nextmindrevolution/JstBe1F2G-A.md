# Stop Copy-Pasting Prompts in Midjourney, use iterators instead
**Fuente:** nextmindrevolution | https://youtu.be/JstBe1F2G-A
## Qué enseña (2-3 líneas)
Enseña a usar iteradores en Midjourney con llaves `{}` para ejecutar múltiples variaciones de un mismo prompt sin copiar y pegar.  
Muestra cómo iterar sujetos, objetos, ubicaciones y listas anidadas para generar lotes completos manteniendo la misma estética.
## Lecciones accionables
- Usa llaves `{}` con elementos separados por comas para que Midjourney ejecute una generación por cada elemento: `portrait of a {dog, cat, mouse, cow} floating in space`.
- Prompt base mostrado: `portrait of a dog floating in space`.
- Configuración mencionada para el ejemplo inicial: `1:1`, `standard 8.1`, sin estética adicional, es decir, valores por defecto.
- Para cambiar solo el sujeto manteniendo el resto del prompt, reemplaza el término variable por una lista entre llaves: `portrait of a {dog, cat, mouse, cow} floating in space`.
- Para iconos, usa el mismo prompt visual y solo itera el objeto: `{guitar, speakers, phone, hat} vector illustration linear icon Adobe XD minimalist, black background outline styled blue outline color`.
- Prompt de icono mencionado: `guitar vector illustration linear icon Adobe XD minimalist, black background outline styled blue outline color`.
- Para ubicaciones, itera lugares dentro de la misma escena: `a woman walking in {New York City, London, Paris}`.
- Midjourney no distingue si iteras sujetos, objetos o lugares: toma el prompt completo y lanza una variación por cada elemento dentro de `{}`.
- Puedes anidar iteradores para combinar listas: `{cat, dog} walking on {a street, the mountains, Mars}`.
- En iteradores anidados, Midjourney recorre el primer elemento contra todos los elementos de la segunda lista antes de pasar al siguiente: `cat + street`, `cat + mountains`, `cat + Mars`, luego `dog + street`, `dog + mountains`, `dog + Mars`.
- Puedes usar tres listas anidadas: `{cat, dog} wearing {sunglasses, hat} floating in {water, space}`.
- Con tres listas, el orden mostrado es: `cat, sunglasses, water`; `cat, sunglasses, space`; `cat, hat, water`; `cat, hat, space`; luego repite el mismo patrón con `dog`.
- Cada elemento adicional multiplica la cantidad de generaciones, por lo que las listas anidadas pueden consumir muchas `fast hours`.
## Reglas para agentes
- Usa `{}` cuando necesites ejecutar el mismo prompt con múltiples sujetos, objetos, estilos, ubicaciones o atributos.
- Separa cada opción dentro de `{}` con comas.
- Mantén fuera de `{}` todo lo que deba permanecer constante en la generación.
- Usa iteradores anidados cuando necesites combinar varias dimensiones variables, por ejemplo sujeto + accesorio + entorno.
- Calcula el total de generaciones antes de ejecutar: multiplica la cantidad de elementos de cada lista.
- Advierte al usuario cuando una combinación anidada pueda consumir muchas `fast hours`.
- Nunca copies y pegues prompts casi idénticos si solo cambia una palabra o una categoría controlable con `{}`.
- Nunca uses iteradores anidados sin revisar el número total de combinaciones resultantes.
## Errores comunes que evita o menciona
- Copiar y pegar manualmente el mismo prompt para cambiar solo el sujeto.
- Cambiar prompts uno por uno cuando una lista entre llaves puede generar todo el lote.
- Perder consistencia estética en sets de iconos al escribir prompts separados.
- No entender que los iteradores funcionan con cualquier parte del prompt, no solo sujetos.
- Subestimar el costo de listas anidadas, que pueden consumir rápidamente las `fast hours`.