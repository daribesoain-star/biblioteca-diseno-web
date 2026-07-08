# If You Can Shop on Amazon, You Can Use Apple Motion
**Fuente:** jennjagerpro | https://youtu.be/VGhOoYEsXFk

## Qué enseña (2-3 líneas)
Cómo modificar plantillas de títulos de Final Cut Pro usando Apple Motion, publicando parámetros adicionales para tener más control sobre animaciones de texto. La metáfora central es que el proceso es tan sencillo como comprar en Amazon: "añadir al carrito" (publish) y "pagar" (guardar).

## Lecciones accionables
- **Abrir una copia de una plantilla en Motion:** En Final Cut Pro, haz clic derecho sobre cualquier plantilla de título (ej. "Text Spacing 3D") y selecciona "Open a Copy in Motion". Esto crea una copia sin modificar el original.
- **Identificar el comportamiento a modificar:** En el panel de proyecto de Motion, despliega el texto y localiza el comportamiento "Fade In" (o el que quieras ajustar).
- **Publicar parámetros a Final Cut Pro:** En el inspector de Motion, sobre la línea que deseas exponer (ej. "Animate", "Direction", "Spread"), pasa el mouse hasta que aparezca una flecha desplegable y selecciona "Publish". Esto equivale a "añadir al carrito" en Amazon.
- **Guardar y volver a Final Cut Pro:** Presiona **Command + S** para guardar (el "checkout" o pago). Automáticamente aparece una nueva plantilla en el navegador de Final Cut Pro con el sufijo "copy".
- **Ajustar los nuevos parámetros en Final Cut Pro:** Selecciona la copia en la línea de tiempo y en el inspector de título encontrarás los parámetros publicados. Por ejemplo:
  - **Animate:** cambia de "All" a "Character" para que los caracteres aparezcan uno por uno.
  - **Direction:** cambia de "Forward" a "Center to Ends" para que el fade comience desde el centro.
  - **Spread:** reduce el valor para controlar cuántos caracteres se ven afectados simultáneamente.
- **Parámetros originales que ya existían:** "Duration" del fade in/out, "Spacing" inicial de las letras y "Speed" de reunión.

## Reglas para agentes
- Usa "Open a Copy in Motion" cuando quieras modificar una plantilla de título sin dañar el original.
- Publica solo los parámetros que necesites exponer en Final Cut Pro; no publiques todos sin criterio.
- Guarda siempre con **Command + S** después de publicar para que la copia aparezca en el navegador de Final Cut Pro.
- Nunca modifiques directamente la plantilla original en Motion; siempre trabaja sobre una copia.
- Cuando quieras que los caracteres no aparezcan todos a la vez, cambia "Animate" de "All" a "Character".

## Errores comunes que evita o menciona
- **No modificar el original:** El tutorial aclara que los cambios en Motion no dañan la plantilla original de Final Cut Pro, así que se puede experimentar sin miedo.
- **No confundir la interfaz:** Motion tiene un inspector similar al de Final Cut Pro pero con más opciones; hay que buscar el comportamiento específico (ej. "Fade In") en el panel de proyecto.
- **No olvidar guardar:** Si no se presiona Command + S después de publicar, la copia no aparecerá en Final Cut Pro.
- **No publicar de más:** Solo se deben publicar los parámetros que se quieran controlar desde Final Cut Pro; el resto permanece oculto.