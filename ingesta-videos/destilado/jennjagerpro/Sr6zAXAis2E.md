# The Best FCP Color Correction Tool You're Not Using
**Fuente:** jennjagerpro | https://youtu.be/Sr6zAXAis2E

## Qué enseña
Cómo usar el **Comparison Viewer** (Visor de Comparación) en Final Cut Pro para igualar el color entre tomas con fondos y exposiciones diferentes, especialmente cuando copiar y pegar atributos no da resultados uniformes. Muestra el flujo para guardar un fotograma de referencia y ajustar colores específicos con máscaras de color.

## Lecciones accionables
- Accede al Comparison Viewer desde: **Window > Show in Workspace > Comparison Viewer** o atajo **Control + Command + 6**
- Usa el modo **"Saved"** (no "Timeline") para tener un fotograma fijo de referencia que no cambie al mover el cursor
- Para guardar un fotograma: coloca el playhead en el frame deseado en el visor principal, haz clic en **"Save Frame"** en el Comparison Viewer
- Los fotogramas guardados aparecen en el **Frame Browser** (hasta **30 frames por Library**)
- Para eliminar un fotograma guardado: selecciónalo en el Frame Browser y presiona **Delete**
- Aplica una **Color Board** con **Color Mask** para ajustar solo el color de fondo (ej. azul) mientras comparas con el fotograma guardado
- Usa los **Scopes** (Vectoscopio / Formas de Onda) para verificar que los tonos de piel estén en la línea correcta antes de guardar la referencia
- El Comparison Viewer en modo **"Timeline"** muestra el edit anterior o siguiente automáticamente, pero es menos flexible que el modo "Saved"

## Reglas para agentes
- Usa el Comparison Viewer en modo **Saved** cuando necesites una referencia fija entre tomas no adyacentes
- Guarda un fotograma de la toma base (la que tiene el color correcto) antes de empezar a corregir las demás
- Aplica **Color Mask** dentro de la **Color Board** para aislar y corregir solo el fondo o un color específico, no toda la imagen
- Nunca copies y pegues atributos de color entre tomas con diferentes exposiciones o complexiones sin verificar con el Comparison Viewer
- Siempre verifica los **Scopes** (especialmente el Vectoscopio) para confirmar que los tonos de piel estén alineados antes de usar la toma como referencia

## Errores comunes que evita o menciona
- **Copiar y pegar atributos de color** entre tomas con diferentes sujetos (distinta exposición, altura, tono de piel) produce fondos que no combinan aunque cada toma se vea bien individualmente
- **Confiar solo en el modo "Timeline"** del Comparison Viewer: es limitado porque solo muestra el edit anterior o siguiente, no permite comparar con una toma arbitraria
- **No guardar un fotograma de referencia** antes de empezar a corregir: obliga a navegar constantemente entre tomas y perder la referencia visual estable
- **Ajustar el color globalmente** cuando solo el fondo necesita corrección: usar una máscara de color evita alterar los tonos de piel ya balanceados