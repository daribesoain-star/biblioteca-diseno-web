# Adobe Premiere Pro and After Effects Workflow: Dynamic Linking Best Practices
**Fuente:** Other World Computing | https://youtu.be/VieNlfxYxwU

## Qué enseña
Este tutorial enseña cómo transferir clips y composiciones entre Adobe Premiere Pro y After Effects mediante Dynamic Link, incluyendo métodos como reemplazar clips con composiciones, arrastrar comps desde AE, copiar y pegar clips entre programas, y cuándo es mejor renderizar en lugar de usar Dynamic Link para clips pesados.

## Técnicas accionables
- **Reemplazar clips de Premiere con composición de AE:** Seleccionar clips en la línea de tiempo de Premiere, hacer clic derecho y elegir "Replace with After Effects Composition". Antes, duplicar los clips originales presionando **Option** (Mac) o **Alt** (Windows) y arrastrándolos hacia arriba en la línea de tiempo para conservar una copia.
- **Arrastrar comp desde AE a Premiere:** En After Effects, hacer clic sobre el nombre del comp en el panel de proyecto y arrastrarlo directamente al panel de proyecto de Premiere (o a un bin específico). Luego arrastrar desde el bin a la línea de tiempo.
- **Importar comp desde AE usando Media Browser:** En Premiere, ir al panel **Media Browser**, navegar hasta la carpeta del proyecto de After Effects, abrir la carpeta "Comps", hacer clic derecho sobre el comp deseado y seleccionar "Import". Luego arrastrar desde el bin a la línea de tiempo.
- **Copiar y pegar un clip de Premiere a AE:** En Premiere, seleccionar el clip en la línea de tiempo, presionar **Command+C** (Mac) o **Control+C** (Windows) para copiar. En After Effects, presionar **Command+V** o **Control+V** para pegar. Nota: el clip se pegará en la misma posición temporal desde donde se copió y extenderá la duración del comp de AE.
- **Truco para pegar clips al inicio del comp de AE:** En Premiere, copiar el clip (**Command/Ctrl+C**), presionar **Home** para ir al inicio de la línea de tiempo, asegurarse de que el track patching esté activo en un track vacío (ej. video 6), pegar con **Command/Ctrl+V**. Luego cortar ese clip con **Command/Ctrl+X**, ir a After Effects y pegar con **Command/Ctrl+V**. Esto coloca el clip al inicio del comp de AE.
- **Recortar comp de AE a la duración deseada:** Después de pegar un clip, seleccionar la capa de texto o capa guía que marca la duración deseada, presionar **O** (letra) para ir al final de esa capa, presionar **N** para ajustar el final del área de trabajo al playhead, luego hacer clic derecho en el área de trabajo y elegir "Trim Comp to Work Area".
- **Renderizar comps pesados para usar en Premiere:** En After Effects, enviar el comp al **Render Queue**, elegir formato **ProRes 422**, definir destino de salida y renderizar. Luego importar el archivo renderizado en Premiere. Para editar el original, hacer clic derecho sobre el clip renderizado en Premiere y elegir "Edit Original" – esto abre el comp original en After Effects.
- **Configurar "Set to Frame Size" en Premiere para escalado correcto:** En Premiere, hacer clic derecho sobre el clip y elegir "Set to Frame Size" (no "Scale to Frame Size"). Esto ajusta la escala en el panel Effect Controls (ej. 50% para un clip 4K en un comp HD). Al copiar y pegar este clip a AE, la escala se mantiene (ej. 50%) y el clip se pega como capa directa, no como pre-composición.
- **Reemplazar pre-comp por footage original en AE:** Si al pegar un clip de Premiere aparece como pre-comp, hacer clic derecho sobre la capa, elegir "Reveal Layer Source in Project", localizar el footage original en el bin, mantener presionado **Option** (Mac) o **Alt** (Windows) y arrastrar el footage sobre la capa para reemplazarla.

## Reglas para el erudito
- **Duplica los clips originales en Premiere antes de reemplazarlos con una composición de AE**, porque el reemplazo los aplana y elimina los clips originales de la línea de tiempo.
- **Usa "Set to Frame Size" en Premiere** (no "Scale to Frame Size") cuando planees copiar clips a After Effects, para que la escala se transfiera correctamente y el clip no llegue como pre-comp.
- **Renderiza comps de AE a ProRes 422** cuando tengan efectos pesados (desenfoque, lens flare, grano) que ralenticen la reproducción en Premiere mediante Dynamic Link.
- **Usa "Edit Original" en Premiere** sobre un clip renderizado para volver al comp original en After Effects y hacer cambios.
- **Recuerda recortar el comp de AE después de pegar un clip de Premiere**, porque el comp se extiende automáticamente a la duración total del footage pegado.
- **Mantén organizados los linked comps** en un bin separado dentro de Premiere para evitar confusiones.

## Errores comunes que evita o menciona
- **No olvidar duplicar los clips antes de reemplazarlos con una composición de AE**, o se perderán los clips originales en la línea de tiempo.
- **No pegar clips de Premiere en AE sin ajustar su posición temporal**, porque se pegarán en el mismo punto de tiempo de donde se copiaron (ej. en el segundo 42), no al inicio del comp.
- **No usar Dynamic Link con comps que tienen efectos que renderizan lento** (desenfoque, lens flare, grano), porque la reproducción en Premiere se traba y no reproduce en tiempo real. En su lugar, renderizar a ProRes.
- **No asumir que el escalado de un clip de Premiere se transfiere automáticamente a AE** – si se usa "Scale to Frame Size", la escala se pierde y el clip llega a AE al 100% de tamaño, requiriendo re-escalado manual.
- **No ignorar que al pegar un clip de Premiere en AE puede llegar como pre-comp** en lugar de capa directa, lo que requiere reemplazar manualmente la fuente si se desea trabajar con el footage original.