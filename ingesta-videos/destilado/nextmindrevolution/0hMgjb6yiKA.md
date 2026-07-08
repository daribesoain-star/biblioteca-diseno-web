# Kling AI Expand Tutorial: Stop Stretching Your Images! Use Kling AI Expansion
**Fuente:** nextmindrevolution | https://youtu.be/0hMgjb6yiKA
## Qué enseña (2-3 líneas)
Enseña a usar la función **Expand** de Kling AI para extender una imagen más allá de sus bordes originales sin estirarla ni deformarla.  
Muestra cómo trabajar en modo libre o con ratios predefinidos, cómo reposicionar la imagen original dentro del nuevo lienzo y cuándo usar prompts, inpainting u otra herramienta para detalles específicos.
## Lecciones accionables
- Para abrir **Expand**, pasa el cursor sobre la imagen y usa la opción **Expand** que aparece debajo, o abre la página de la imagen y busca la función **Expand** en la esquina inferior derecha.
- Dentro de **Expand**, arrastra los bordes del lienzo para definir cuánto quieres extender la imagen hacia la izquierda, derecha, arriba o abajo.
- Puedes arrastrar la imagen original dentro del nuevo marco para controlar la composición antes de generar la expansión.
- Si expandes manualmente sin ratio fijo, Kling usa **free mode**; el resultado aparece con **Aspect ratio: Free**.
- Usa los presets de ratio de la parte inferior cuando necesites bloquear el lienzo a un formato estándar.
- Para convertir una imagen vertical **9:16** a horizontal **16:9**, selecciona **16:9**; Kling bloqueará el movimiento vertical y permitirá expandir hacia izquierda o derecha.
- Para convertir una imagen horizontal **16:9** a vertical **9:16**, selecciona **9:16**, reposiciona la imagen original dentro del marco y deja espacio arriba o abajo para que Kling imagine contenido nuevo.
- Antes de ejecutar, revisa siempre el número de outputs: Kling no recuerda la configuración previa y puede volver por defecto a **4 outputs** aunque hayas usado **1 output** antes.
- Si solo necesitas una variante, cambia el ajuste a **one single output** antes de hacer clic en **Expand**.
- Si dejas el prompt vacío, Kling rellena automáticamente los espacios nuevos usando el contexto visual de la imagen original.
- Prompt simple probado: `trees and monkeys`.
- Prompt complejo probado: `A monkey at the right side, a tree at the left side and a balloon floating in the sky ultra realistic`.
- El prompt complejo sí intentó generar los elementos pedidos, pero el resultado fue peor: árboles, monos y globo aparecieron, aunque con baja calidad.
- Para mejores resultados, primero expande con prompt mínimo o sin instrucciones; después edita detalles concretos con **inpaint tool** en Kling o con **OPI one** para ajustar elementos específicos.
## Reglas para agentes
- Usa **Expand** cuando necesites cambiar el encuadre o extender una imagen sin estirarla.
- Usa **free mode** cuando el resultado no necesite un ratio estándar.
- Usa presets como **9:16** o **16:9** cuando el destino sea una plataforma o formato específico.
- Reposiciona la imagen original dentro del lienzo antes de generar para controlar dónde aparecerá el contenido inventado.
- Verifica siempre el número de outputs antes de ejecutar; si solo se necesita una versión, configúralo en **one single output**.
- Deja el prompt vacío cuando quieras que Kling complete la escena según el contexto original.
- Usa prompts cortos y naturales cuando quieras guiar la expansión.
- Nunca pidas demasiados objetos específicos en una sola expansión si la calidad visual importa.
- Para añadir objetos concretos, primero expande con poco o ningún prompt y luego usa **inpaint**.
- No uses expansión como sustituto de edición precisa cuando el objetivo sea colocar elementos específicos con control fino.
## Errores comunes que evita o menciona
- Estirar una imagen para adaptarla a otro formato en vez de expandir el lienzo.
- No revisar que Kling vuelve a **4 outputs** por defecto.
- Usar prompts demasiado complejos para la expansión.
- Esperar que Expand coloque objetos específicos con precisión.
- No reposicionar la imagen original antes de generar.
- Usar un ratio fijo cuando en realidad se necesita libertad compositiva.
- Intentar pasar de **16:9** a **9:16** sin dejar espacio suficiente para que Kling imagine el contenido nuevo.