# Kling Omni One Doodle Tool: Directional Commands & Layout Control
**Fuente:** nextmindrevolution | https://youtu.be/-P-KZJwIiIg

## Qué enseña (2-3 líneas)
El video muestra cómo usar **Doodle Tool** en **Kling Omni One** para dibujar guías sobre una imagen de referencia y controlar dónde agregar, editar o dirigir elementos.  
La herramienta funciona especialmente bien para **posicionar objetos nuevos** y dar **dirección corporal o espacial**, pero es menos confiable para eliminar elementos específicos.

## Lecciones accionables
- Para activar **Doodle Tool**, entra en la sección de creación de imágenes, ve a **Images**, selecciona una imagen desde **History**, abre la imagen de referencia y pulsa **Doodle**.
- El doodle funciona como una guía visual para el modelo: dibuja encima de la imagen para indicar **ubicación**, **forma aproximada**, **dirección** o **elemento seleccionado**.
- En la interfaz de Doodle puedes:
  - cambiar el **color** del trazo;
  - cambiar el **brush size** para hacerlo más grueso;
  - usar **undo** y **redo**;
  - usar **erase** para borrar todo;
  - pulsar **Confirm** para aplicar el doodle a la imagen de referencia.
- Para agregar un objeto en una ubicación concreta, dibuja una forma aproximada donde quieres que aparezca. Ejemplo usado: un círculo rojo en el centro de una mesa para colocar una pizza.
- Prompt usado para la pizza: `use that image` + `at a pizza on top of the table`.
- Configuración usada en el ejemplo: **aspect ratio 16:9** y **one single output**.
- El doodle reduce ambigüedad: si solo pides una pizza, el modelo puede ponerla en cualquier lugar; si dibujas el círculo sobre la mesa y además escribes “on top of the table”, Omni One entiende mejor ubicación y objeto.
- Para agregar varios objetos, usa **colores distintos** en el doodle. Ejemplo: rojo para la pizza y azul para una taza.
- Prompt usado para múltiples objetos: `I want that image, but I want and I want to add a pizza at the top of the table, just like we did before, and I want a coffee cup on top of the counter`.
- Usar colores diferentes ayuda al modelo a separar intenciones: un color para un objeto, otro color para otro objeto.
- Para eliminar elementos, la documentación sugiere dibujar un **square / box** alrededor del elemento o usar una **arrow**, pero el autor obtuvo resultados mixtos.
- Prompt de eliminación usado: `delete the selected car`.
- En el ejemplo de Times Square, dibujar una caja alrededor de un taxi y pedir `delete the selected car` provocó que el modelo eliminara varios taxis, no solo el seleccionado.
- Para eliminar con doodle, al autor le funcionó mejor **pintar/brush** directamente sobre todo el objeto que se quiere borrar, en vez de solo rodearlo con una caja o apuntarlo con una flecha.
- Aun usando brush sobre el auto, Omni One eliminó más autos de los esperados; el resultado fue mejor que con la caja, pero no totalmente preciso.
- Para eliminación precisa, el autor recomienda usar la herramienta estándar **Remove / OG remove**, porque es más confiable que Doodle Tool para borrar objetos.
- Para cambios de pose o dirección, usa doodles como flechas, brazos dibujados o guías visuales, pero acompáñalos con un prompt fuerte.
- Ejemplo de dirección corporal: dibujar brazos elevados y una flecha hacia arriba para indicar que el hombre debe levantar los brazos y mirar hacia arriba.
- Prompt usado para pose/dirección: `the man has his arms high and he's looking up according to the doodle`.
- El autor advierte que no conviene escribir algo genérico como “do what the doodle says”; es mejor describir explícitamente la acción y añadir que debe seguir el doodle.

## Reglas para agentes
- Usa **Doodle Tool** cuando necesites controlar la ubicación exacta de un objeto nuevo dentro de una imagen de referencia.
- Usa **colores distintos** cuando haya varios objetos o instrucciones visuales en el mismo doodle.
- Refuerza siempre el doodle con un prompt textual explícito: describe objeto, ubicación y acción.
- Usa formato tipo `objeto + ubicación` cuando agregues elementos, por ejemplo: `add a pizza on top of the table`.
- Usa **brush sobre el objeto completo** si intentas eliminar algo con Doodle Tool.
- Usa **Remove / OG remove** cuando la tarea principal sea borrar un objeto con precisión.
- Nunca dependas solo de flechas o cajas para seleccionar un objeto si hay elementos similares cerca.
- Nunca uses solo “do what the doodle says”; escribe la instrucción completa y usa el doodle como referencia adicional.
- Confirma el doodle con **Confirm** antes de ejecutar el prompt.
- Verifica visualmente la imagen de referencia después de confirmar: el doodle debe quedar visible sobre la imagen antes de correr la tarea.

## Errores comunes que evita o menciona
- Pedir agregar un objeto sin indicar ubicación: el modelo puede colocarlo en la mesa, el piso, el mostrador o cualquier otra zona.
- Usar un solo color para múltiples objetos: puede confundir qué trazo corresponde a cada elemento.
- Dibujar una caja alrededor de un objeto y esperar eliminación precisa: puede borrar todos los objetos similares.
- Usar flechas para borrar sin un prompt fuerte: el modelo puede ignorarlas o aplicarlas de forma inconsistente.
- Confiar en Doodle Tool para eliminación fina: el autor menciona resultados mixtos y recomienda **Remove**.
- Escribir prompts vagos como “do what the doodle says”: produce resultados impredecibles.