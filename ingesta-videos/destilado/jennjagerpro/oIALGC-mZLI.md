# Motion Tracking Text in Final Cut Pro | Hyper Realistic Tutorial for FCP
**Fuente:** jennjagerpro | https://youtu.be/oIALGC-mZLI

## Qué enseña
Dos técnicas avanzadas de motion tracking en Final Cut Pro: cómo crear texto hiperrealista que parezca pintado sobre una superficie texturizada, y cómo generar texto 3D con apariencia de realidad aumentada que se integre perfectamente en la escena, incluyendo sombras y desenfoque de profundidad de campo.

## Lecciones accionables
- Para motion tracking básico: seleccionar el clip B-roll → ir a "Trackers" → presionar "+" para añadir un tracker → elegir un punto contrastante en la imagen (ej: un gancho en el arte de fondo) → posicionar el tracker exactamente sobre ese punto → presionar "Analyze" → seleccionar el texto en la línea de tiempo → activar "Transform Tools" → asignar el tracker como "Object Track" → desmarcar rotación, mantener solo posición.
- Para que el sujeto quede delante del texto: mantener presionada la tecla Option, hacer clic y arrastrar el clip original para duplicarlo y apilarlo encima del texto → en el navegador de efectos buscar "Keeper" → aplicar el efecto Keeper al clip superior → ajustar calidad a "High" y engrosar bordes para un key limpio.
- Para texturizar el texto como pintado en la pared: eliminar el tracking del texto → resetear posición en la línea de transformación → seleccionar el clip original → Option + arrastrar para duplicar el texto y colocarlo sobre el título → en efectos buscar "Image Mask" → aplicar al nuevo clip → en "Mask Source" seleccionar el texto → seleccionar el clip del medio (con Image Mask) → ir a herramientas de color → aplicar "Color Adjustments" → subir brillo y subir el punto negro hasta igualar el blanco del arte de fondo, manteniendo visible la textura de la pared.
- Para suavizar bordes del texto: aplicar "Gaussian Blur" al clip con Image Mask → reducir el valor hasta que los bordes de las letras coincidan con el desenfoque del arte de fondo.
- Para integrar todo como una sola capa: añadir una "Adjustment Layer" debajo del clip superior → aplicar "Gaussian Blur" a la adjustment layer → reducir el blur al mínimo para que el fondo se sienta horneado como una sola capa.
- Para texto 3D con apariencia de realidad aumentada: seleccionar el texto → ir al inspector de texto → en "3D Text" → cambiar "Substance" de "Plastic" a "Generic" para colores más realistas → en "Lighting Style" cambiar de "Standard" a "Above" para que coincida con iluminación cenital → ajustar intensidad.
- Para textura superficial del texto 3D: en inspector → "Options" → añadir capa → seleccionar "Finish" → ir a "Textured" → cambiar "Type" de "Combed" a "Eggshell" → ajustar "Depth" para más o menos textura.
- Para rotar y posicionar texto 3D: en inspector → "Rotation" → ajustar "Y Rotation" para alinear con el ángulo del equipo de fondo → ajustar posición en X e Y → añadir profundidad al texto 3D para que se sienta más sustancial.
- Para crear sombra realista en texto 3D: duplicar el texto (Option + arrastrar) → en inspector de texto → desactivar "3D Text" → cambiar color de "Face" a negro → rotar en "X Axis" hasta que esté completamente volteado → reposicionar hacia abajo en el suelo → reducir "Y Scale" para aplastar la sombra → aplicar "Gaussian Blur" al texto de sombra → ajustar cantidad de blur para sombra más o menos definida.
- Para desenfoque de profundidad de campo: seleccionar el texto original → en efectos buscar "Focus Blur" → aumentar "Height" para que toda la altura esté enfocada → reposicionar el control en pantalla alineado con la cabeza del sujeto → reducir "Width" al mínimo → subir el control hasta donde empiece a desenfocarse → ajustar "Amount" y "Softness" hasta que se vea realista.

## Reglas para agentes
- Usa "Keeper" plugin cuando necesites separar un sujeto del fondo y apilarlo sobre texto trackeado.
- Usa "Image Mask" con el texto como fuente cuando quieras transferir la textura del fondo a las letras.
- Cambia "Substance" a "Generic" en texto 3D cuando necesites colores fieles a la realidad.
- Cambia "Lighting Style" a "Above" cuando la iluminación de la escena venga desde arriba.
- Nunca uses "Drop Shadow" integrado para sombras de texto 3D en perspectiva; en su lugar, duplica el texto, aplánalo, coloréalo de negro, rotaciónalo y aplícale blur.
- Nunca dejes el texto sin textura superficial; siempre ajusta "Finish" y "Textured" para que coincida con la superficie del objeto de referencia.
- Nunca omitas el desenfoque de profundidad de campo ("Focus Blur") en texto 3D cuando la cámara tenga un plano focal definido.

## Errores comunes que evita o menciona
- No detenerse después de hacer el key con Keeper: el texto aún se ve como un sticker, no integrado.
- No olvidar que el texto necesita la misma textura y desenfoque de bordes que el fondo para verse realista.
- No usar el Drop Shadow por defecto para sombras de texto 3D porque no coincide con la perspectiva ni la dirección de la luz.
- No dejar el material del texto 3D en "Plastic" si se busca un color preciso; cambiarlo a "Generic" da colores más verdaderos.
- No ignorar la iluminación de la escena: el "Lighting Style" debe coincidir con la dirección de la luz real (ej: "Above" si la luz viene del techo).