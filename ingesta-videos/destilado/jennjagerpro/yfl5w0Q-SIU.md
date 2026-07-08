# Master the Magnetic Mask in FCP
**Fuente:** jennjagerpro | https://youtu.be/yfl5w0Q-SIU

## Qué enseña
Este tutorial explica en profundidad el uso de Magnetic Mask, la herramienta nativa de rotoscopia impulsada por IA en Final Cut Pro 11. Cubre desde la selección inicial y refinamiento manual hasta la aplicación de múltiples máscaras, combinación con máscaras de color/forma, y usos prácticos como corrección de color selectiva o aplicación de efectos.

## Lecciones accionables
- **Acceder a Magnetic Mask:** desde el navegador de efectos en "Masks & Keying", desde el menú de varita mágica en la parte inferior del visor, o desde el menú superior "Modify" > "Magnetic Mask".
- **Seleccionar un objeto:** coloca el cursor (se convierte en cuentagotas) sobre cualquier parte del objeto y haz clic una vez. La IA detecta la forma, no el color.
- **Añadir áreas a la selección:** haz clic en las zonas que la máscara no capturó inicialmente.
- **Deseleccionar áreas:** mantén presionada la tecla **Option** y haz clic en el área que quieras eliminar, o cambia a la herramienta de sustracción en el visor.
- **Ocultar líneas de selección:** haz clic en el botón de líneas discontinuas en el visor para desactivarlas y enfocarte en la superposición de color.
- **Analizar la máscara:** una vez satisfecho con la selección, haz clic en **"Analyze"** en la parte superior del visor. El análisis comienza desde la posición del cabezal de reproducción, avanza hacia adelante y luego retrocede.
- **Refinar el trazado manualmente:** en el inspector, haz clic en el icono de persona para volver a las herramientas de selección. Usa el **pincel de pintura** (suma o resta) y ajusta su tamaño con el control deslizante. Puedes pintar directamente sobre el fotograma para corregir bordes.
- **Análisis fotograma a fotograma:** para máxima precisión, usa los botones de avance/retroceso de fotograma en el editor de máscara magnética. Cada clic en "Frame" crea una marca en la línea de tiempo. Puedes analizar hacia adelante con las flechas dobles y luego retroceder desde la marca inicial.
- **Ajustar pluma (feather):** en el inspector, usa el control deslizante de "Feather" (valor máximo 100, pero puedes arrastrar más allá hasta 200 haciendo clic y arrastrando hacia adelante).
- **Aplicar múltiples máscaras magnéticas a un mismo clip:** en el inspector, haz clic en el icono de superposición, luego en **"Add Magnetic"** (en la línea superior del efecto) o en el botón correspondiente en el visor. Cada máscara tiene un color de superposición diferente (rojo, verde, azul, etc.) que puedes cambiar en el inspector.
- **Ver solo una máscara a la vez:** en el inspector, selecciona la máscara deseada y haz clic en el icono de ojo para aislar su visualización.
- **Combinar con máscaras de color o forma:** dentro del efecto Magnetic Mask en el inspector, despliega las opciones y selecciona **"Add Color Mask"** o **"Add Shape Mask"**. Usa el modo **"Subtract"** para excluir áreas específicas (ej. ojos y nariz) que la máscara magnética no puede diferenciar por color.
- **Arrastrar efectos directamente al visor:** desde el navegador de efectos, arrastra un efecto sobre un objeto en el visor; Magnetic Mask seleccionará automáticamente el área bajo el cursor.
- **Invertir la máscara:** en el inspector, marca la casilla **"Invert"** para aplicar el efecto al fondo en lugar del sujeto.
- **Aplicar máscara después de un efecto:** aplica un efecto a todo el clip, luego en el inspector del efecto, despliega y añade un Magnetic Mask para limitar el efecto solo al sujeto.

## Reglas para agentes
- Usa **Option + clic** para deseleccionar áreas no deseadas en lugar de cambiar manualmente a la herramienta de sustracción.
- Cuando necesites preservar colores originales (ej. ojos, nariz) dentro de un objeto seleccionado con Magnetic Mask, **nunca intentes refinarlo con pincel**; en su lugar, añade una **Color Mask en modo Subtract** dentro del mismo efecto.
- Si el análisis inicial no es perfecto, **siempre refina con las herramientas de pincel (suma/resta)** antes de reanalizar, especialmente en bordes complejos como pelos o bigotes.
- Para máxima precisión en movimientos complejos, usa el **análisis fotograma a fotograma** en lugar de confiar solo en el análisis automático.
- Cuando apliques múltiples máscaras magnéticas, **verifica que cada máscara esté seleccionada correctamente** en el inspector antes de editar su selección o visualización.

## Errores comunes que evita o menciona
- **No confundir Magnetic Mask con una máscara de color:** la IA se basa en la forma del objeto, no en diferencias cromáticas. Por eso, no intentes corregir selecciones de color dentro de la máscara magnética; usa una máscara de color adicional.
- **No ignorar las superposiciones de color:** las líneas de selección (marching ants) pueden distraer; es mejor desactivarlas y concentrarse en el área coloreada para evaluar la precisión.
- **No olvidar que el análisis comienza desde el cabezal de reproducción:** si el cabezal no está en el fotograma clave correcto, el análisis puede fallar.
- **No aplicar efectos directamente sobre la máscara sin verificar bordes:** objetos como bigotes o pelos finos pueden requerir refinamiento manual con pincel pequeño y análisis fotograma a fotograma.
- **No asumir que una sola máscara basta para objetos múltiples:** puedes añadir tantas máscaras magnéticas como el rendimiento de tu máquina permita, cada una para un sujeto diferente.