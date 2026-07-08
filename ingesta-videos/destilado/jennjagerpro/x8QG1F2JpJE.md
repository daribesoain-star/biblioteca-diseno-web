# Data Dials for Final Cut Pro! 
**Fuente:** jennjagerpro | https://youtu.be/x8QG1F2JpJE

## Qué enseña
Cómo crear diales de datos animados como plantillas reutilizables en Apple Motion y publicarlas en Final Cut Pro. Cubre desde la construcción de círculos concéntricos con animación de "escritura", vinculación de valores numéricos, hasta la publicación de parámetros personalizables (valor, formato, decimales, colores, texto de apoyo). Incluye una versión avanzada con tres diales sincronizados.

## Lecciones accionables
- **Configurar proyecto en Motion:** 4K Ultra HD, duración 10 segundos, tipo "Final Cut Generator".
- **Crear círculo base:** Herramienta forma > círculo (Shift para perfecto). Inspector > Propiedades > Restablecer transformación. Shape > Activar relleno, desactivar contorno. Geometría > Radio 550.
- **Animar escala del círculo base:** Propiedades > Escala > Añadir parámetro > Comportamiento > Logarítmico. En línea de tiempo, acortar a 7 fotogramas (flecha derecha 7 veces + O). Valor inicial 0.
- **Crear anillo exterior:** Duplicar círculo base, renombrar "circle ring". Shape > Desactivar relleno, activar contorno, ancho 50. En línea de tiempo, mover 5 fotogramas después. Extender comportamiento logarítmico a 11 fotogramas.
- **Crear anillo de datos:** Duplicar "circle ring", renombrar "data ring". Shape > Ancho 100.
- **Aplicar colores con códigos hex:** Usar paleta de Color Cube. Shape > Relleno/Contorno > Selector de color > Pestaña deslizador > Ingresar hex. Círculo base: Opacidad 80% en Propiedades.
- **Animar "escritura" del anillo de datos:** Eliminar comportamiento logarítmico. Shape > Último desplazamiento de punto > Añadir a rig > Crear nuevo rig > Añadir a slider. Seleccionar primer pin > Iniciar modo edición > Bajar deslizador de último desplazamiento a 0 > Detener modo edición. Dejar segundo pin en 100.
- **Ajustar punto de inicio del anillo:** Propiedades > Rotación > Valor -90°.
- **Añadir comportamiento "Write On":** Seleccionar "data ring" > Behaviors > Shape > Write On. Duración 20 fotogramas (Shift + flecha derecha 2 veces para 10 fotogramas cada una + O).
- **Añadir generador de números:** Library > Generators > Numbers. Arrastrar dentro del grupo. Inspector > Tamaño 250, fuente Montserrat (Black), alineación centrada. Ajustar offset vertical para centrar en el eje Y.
- **Vincular número al slider del rig:** Generador > Desactivar "Animate". Valor > Añadir parámetro > Comportamiento > Link. Arrastrar "data ring" a "Source". Source parameter > Compatible parameters > Object > Shape > Outline > Last Point Offset.
- **Añadir rebote al número:** Propiedades > Escala > Añadir parámetro > Comportamiento > Overshoot. Valor inicial -100. Reducir "Ramp Duration" a ~15%. Ajustar en línea de tiempo para que empiece cuando el anillo comience a dibujarse.
- **Añadir texto explicativo:** Herramienta Texto > Escribir texto debajo del dial. Behaviors > Text > Basic > Track In. Centrar en X (Propiedades > X = 0).
- **Publicar parámetros para Final Cut Pro:**
  - Renombrar slider del rig a "Data Value".
  - **Formato de número:** Valor > Añadir a rig > Crear popup. Crear snapshots: "Percent" (formato percent), "Numbers" (formato number), "Currency" (formato currency).
  - **Decimales:** Valor > Añadir a rig > Checkbox. Desmarcado = 0 decimales, marcado = 2 decimales.
  - Publicar desde Project: "Data Value" (arriba), "Number Format" (popup), "Decimals" (checkbox). Valor por defecto: Percent.
  - Publicar desde generador de números: Font, Size, Alignment, Offset, Color (Appearance > Face Color).
  - Publicar desde texto: Face parameter, renombrar "Supporting Text".
  - Publicar colores de círculos: "Background Circle" (color + opacidad), "circle ring" (color), "data ring" (color).
- **Guardar y publicar:** File > Save As > Nombre "Data Dial Single" > Categoría nueva "Data Dial".
- **Versión de tres diales:**
  - Colapsar grupo, renombrar "Dial Center". Rig renombrar "Dial Center Rig".
  - Escalar grupo al 75%.
  - Duplicar dos veces: "Dial Left" (X = -1050), "Dial Right" (X = 1050).
  - Texto: Layout > Tipo > Párrafo. Margen izquierdo 500, derecho 500.
  - Cambiar colores de cada dial con paletas diferentes.
  - Ajustar timing: Desplazar grupos en línea de tiempo para que entren escalonados (izquierdo primero, centro después, derecho al final).
  - **Re-riggear dials duplicados:** Cada dial necesita su propio rig. Seleccionar "data ring" del dial izquierdo > Shape > Last Point Offset > Quitar de widget "Data Value" > Añadir a rig > Crear nuevo rig > Añadir a slider. Repetir proceso de configuración del slider (primer pin a 0, segundo a 100). Renombrar rigs ("Dial Left Rig", "Dial Right Rig"). Publicar todos los parámetros nuevamente.

## Reglas para agentes
- Usa "Logarithmic" como comportamiento de escala para animaciones suaves de círculos que crecen desde cero.
- Cuando dupliques objetos con rigs en Motion, crea nuevos rigs manualmente para cada duplicado; los rigs no se duplican automáticamente.
- Publica siempre los parámetros desde el panel "Project" (no desde el objeto individual) para que aparezcan en el inspector de Final Cut Pro.
- Nombra los parámetros publicados con nombres descriptivos (ej. "Data Value", "Number Format", "Decimals") para que el usuario entienda su función en FCP.
- Para texto de apoyo, publica solo el parámetro "Face" y deja que el editor de texto de FCP maneje el resto del formato.
- Usa el comportamiento "Overshoot" en la escala de los números para dar un efecto de rebote; ajusta "Ramp Duration" a ~15% para un rebote más notorio.
- Cuando uses el generador "Numbers", desactiva "Animate" para controlar la animación manualmente con behaviors.
- Para centrar texto verticalmente en un dial, arrastra una regla al punto cero del eje Y y ajusta el offset hasta que el centro de los caracteres coincida con la línea.
- En la versión de múltiples diales, cambia el tipo de texto a "Párrafo" y ajusta los márgenes izquierdo/derecho para evitar superposición de texto entre diales.

## Errores comunes que evita o menciona
- **Rigs que controlan múltiples diales:** Al duplicar grupos con rigs, el slider del rig original controla todos los diales. Solución: crear nuevos rigs individuales para cada dial duplicado y re-vincular los parámetros.
- **Punto de inicio incorrecto en el anillo:** El "Write On" comienza desde la derecha por defecto. Solución: rotar el anillo -90° en Propiedades para que empiece desde arriba.
- **Texto superpuesto en múltiples diales:** Al escalar y posicionar varios diales, los textos se solapan. Solución: cambiar el layout del texto a "Párrafo" y definir márgenes izquierdo/derecho (ej. 500) para que el texto se ajuste al ancho del dial.
- **Números que no coinciden con el dial:** Si el valor del slider no se refleja en el número, verificar que el "Link" behavior esté apuntando al "Last Point Offset" del "data ring" correcto (no al de otro dial).
- **Olvidar publicar opacidad:** El círculo base tiene opacidad reducida (80%), pero si no se publica ese parámetro, el usuario no podrá ajustarlo en FCP.