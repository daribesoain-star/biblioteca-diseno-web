# Why Does Final Cut Pro Do That!?!
**Fuente:** jennjagerpro | https://youtu.be/CSUuroK-s3g

## Qué enseña (2-3 líneas)
Explica por qué ciertos comportamientos aparentemente erráticos en Final Cut Pro ocurren debido a cómo fueron creados los efectos, títulos y transiciones en Apple Motion. Enseña a distinguir entre onscreen controls y transform tools, a copiar efectos sin duplicarlos, y a eliminar efectos sin borrar el clip.

## Lecciones accionables
- **Para recuperar onscreen controls perdidos:** si los onscreen controls de un título, efecto o transición desaparecen del visor, desactiva las **transform tools** haciendo clic en el icono de flecha/transformación en la parte inferior del visor o en el inspector. No pueden estar visibles simultáneamente.
- **Para saber si un título afecta el video subyacente:** en el navegador de títulos, pasa el cursor sobre la miniatura. Si ves una escena de montaña (imagen predeterminada) detrás del texto, el título modificará el video de abajo. Si ves fondo negro, no lo hará.
- **Para redimensionar texto sin recortar:** no uses el inspector de video (parámetro **Scale**) para cambiar el tamaño del texto. En su lugar, ve al **inspector de texto** (Text inspector) y ajusta el tamaño, fuente, etc. desde allí. Esto evita que el texto se recorte al moverlo cerca de los bordes del encuadre.
- **Para copiar efectos de color de un clip a otro sin duplicar:** antes de pegar con **Shift + Command + V**, desactiva (desmarca) o elimina los efectos de color existentes en el clip destino desde el inspector. De lo contrario, los efectos se añaden a los ya presentes, duplicándolos.
- **Para eliminar efectos sin borrar el clip:** selecciona los efectos en el inspector asegurándote de que tengan un **recuadro amarillo** alrededor (no blanco). El clip en la línea de tiempo debe tener recuadro blanco. Luego presiona **Delete**. Si tanto el clip como los efectos tienen recuadro amarillo, se eliminará todo.

## Reglas para agentes
- **Usa el inspector de texto (Text inspector)** para redimensionar títulos, nunca el parámetro Scale del inspector de video, para evitar recortes al mover el texto.
- **Desactiva o elimina los efectos existentes** en el clip destino antes de pegar efectos copiados con Shift + Command + V, para evitar duplicación.
- **Verifica el color del recuadro** (amarillo = seleccionado para eliminar, blanco = no seleccionado) antes de presionar Delete en el inspector, para no borrar accidentalmente el clip completo.
- **Desactiva las transform tools** (icono de flecha en el visor o inspector) cuando quieras ver los onscreen controls de un título, efecto o transición.

## Errores comunes que evita o menciona
- **Onscreen controls desaparecen:** el usuario cree que se perdieron, pero en realidad están ocultos porque las transform tools están activas.
- **Títulos que mueven el video de fondo:** no todos los títulos afectan el video subyacente; depende de si el desarrollador habilitó el fondo en Apple Motion. Se identifica por la miniatura en el navegador.
- **Texto recortado al moverlo:** ocurre cuando se reduce el tamaño del título usando el parámetro Scale del inspector de video, lo que reduce el encuadre completo. La solución es usar el inspector de texto.
- **Efectos duplicados al pegar:** copiar y pegar efectos con Shift + Command + V los añade a los existentes en lugar de reemplazarlos. Hay que limpiar el clip destino primero.
- **Eliminar efectos borra el clip:** si el clip y los efectos tienen recuadro amarillo al presionar Delete, se elimina todo. Solo los elementos con recuadro amarillo son borrados.