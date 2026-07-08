# The Vignette in FCP is Terrible. Let's fix it.
**Fuente:** jennjagerpro | https://youtu.be/9HCia_o1BJc

## Qué enseña
Cómo construir un efecto de viñeta personalizado en Apple Motion con controles avanzados (color, blend mode, escala X/Y independiente, rotación) y publicarlo como efecto para Final Cut Pro, superando las limitaciones del viñete nativo de FCP.

## Lecciones accionables
- Crear un proyecto en Apple Motion: seleccionar "Final Cut effect", preset 4K 24fps, duración 10 segundos.
- En el proyecto, hacer clic derecho sobre "effect Source" → "Group" para agruparlo, luego deshabilitar el grupo.
- Dibujar un cuadrado centrado en el frame (Shape tool → Square), resetear parámetros en Inspector → Properties → Reset Parameter.
- Agrupar el cuadrado en su propio grupo en Project pane.
- Aplicar filtro al cuadrado: Filters → Distortion → Twirl. Subir el valor Twirl para ver los controles en pantalla, luego resetear los parámetros del Twirl.
- Renombrar el filtro Twirl como "osc" (onscreen control).
- En el cuadrado, bajar Fill Opacity a 0% para ocultarlo.
- Dibujar un círculo (Shape tool → Circle) que llene el frame, cambiar de Outline a Fill, resetear propiedades, mantener Option para centrar y Shift para mantener aspecto al escalar.
- Añadir comportamiento Link al círculo: seleccionar círculo → twirl down en Position → Add Parameter Behavior → Link.
- En Source Object del Link, arrastrar el rectángulo invisible. En Compatible Parameters, seleccionar "filters → osc → Center → X". Apply Mode: "Add to Source".
- Duplicar ese Link, cambiar Target Parameters a "Properties → Transform → Position → Y". Compatible Parameters: "filters → osc → Center → Y".
- Cero en X e Y del círculo para centrarlo.
- Para escala: twirl down en Scale del círculo → Add Parameter Behavior → Link. Source Object: rectángulo. Compatible Parameters: "filters → osc → Amount". Apply Mode: "Multiply by Source".
- Duplicar ese Link, cambiar Target Parameters a "Transform → Scale → Y". Compatible Parameters: "filters → osc → Amount".
- Ajustar escala X e Y del círculo hasta llenar el frame como inicialmente.
- Para rotación Z: Add Parameter Behavior → Link. Source Object: rectángulo. Compatible Parameters: "filters → osc → Twirl". Apply Mode: "Add to Source".
- En el filtro osc, poner Twirl a 0 para nivelar.
- En el Link de rotación, escalar el valor a 4 (Scale slider) para que los incrementos sean de 90°.
- En el círculo, Shape tab: marcar "Fixed Feather", subir Feather a 500.
- Ajustar escala X e Y del círculo para recuperar dimensiones.
- Añadir generador: Library → Generators → Color Solid, arrastrarlo encima del círculo en el grupo. Escalarlo para que tenga un perímetro visible.
- Habilitar el grupo del effect Source, seleccionar effect Source, presionar K para crear Clone Layer. Arrastrar Clone Layer debajo del Color Solid.
- Al Clone Layer: Filters → Stylize → Vignette. Ajustar: Size a 1.5, Falloff a 0, Blur Amount a 0, Darken a 0.
- Seleccionar Color Solid + Clone Layer → clic derecho → Group. Sobre ese grupo: clic derecho → Add Image Mask. En Mask Source, arrastrar el círculo. Marcar "Invert".
- Publicar parámetros: Color Solid → publicar Color, Opacity, Blend Mode. Clone Layer → publicar Blur Amount del filtro Vignette. Círculo → publicar Rotation, Scale, Falloff (Shape tab), Radius (Geometry tab). Filtro osc → marcar "Publish OSC".
- En Project tab del proyecto, renombrar "Radius" a "Size". Reordenar: Size debajo de Blend Mode, Falloff debajo de Size, Scale arriba de Rotation. Cerrar Scale y Rotation.
- Guardar: File → Save As, nombrar, categoría "gens effects".

## Reglas para agentes
- Usa "Add to Source" en el Apply Mode del Link cuando quieras que el control en pantalla sume su valor al parámetro existente.
- Usa "Multiply by Source" en el Apply Mode del Link para Scale cuando quieras preservar la relación de aspecto personalizada al escalar con controles en pantalla.
- Nunca uses el viñete nativo de Final Cut Pro si necesitas control de color, blend mode, escala X/Y independiente o rotación.
- Siempre agrupa el effect Source al inicio del proyecto y deshabilita el grupo hasta que necesites crear el Clone Layer.
- Siempre marca "Fixed Feather" en el círculo antes de subir el valor de Feather para evitar distorsiones.
- Siempre escala el Link de rotación a 4 para que los incrementos sean de 90° y se sientan naturales.

## Errores comunes que evita o menciona
- El viñete nativo de FCP no permite cambiar color, blend mode, escala X/Y independiente ni rotación.
- No se puede enlazar directamente Scale del círculo al filtro osc porque el filtro no expone Scale como parámetro compatible; hay que enlazar X e Y por separado usando "Amount" y "Multiply by Source".
- Si no se escala el Link de rotación a 4, los giros se sienten contra intuitivos (un giro completo da 90° en lugar de 360°).
- Olvidar invertir la máscara en el grupo del Color Solid + Clone Layer hace que la viñeta se aplique al centro en lugar de los bordes.
- No publicar el parámetro "Publish OSC" en el filtro twirl impide que los controles en pantalla aparezcan en Final Cut Pro.