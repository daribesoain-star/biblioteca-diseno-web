# 🔴 GENERATIVE FILL FOR VIDEO WITH ARTIFICIAL INTELLIGENCE🔴
**Fuente:** mundoaudiovisual | https://youtu.be/YB8hxc5qyjk

## Qué enseña
Cómo usar la función Generative Fill de Adobe Photoshop Beta para modificar fondos, reencuadrar planos y eliminar objetos en videos, combinando la exportación de fotogramas desde DaVinci Resolve con la edición generativa por IA. Muestra tres casos prácticos: cambio de escenario completo, reencuadre de encuadre y eliminación de elementos no deseados.

## Lecciones accionables
- **Instalar Adobe Photoshop Beta:** En Adobe Creative Cloud, ir a la sección "Beta Applications" y descargar "Adobe Photoshop Beta".
- **Preparar el video en DaVinci Resolve:**
  - Hacer cortes en la línea de tiempo donde se cambiará el fondo.
  - Usar la herramienta de recorte o máscaras para aislar la parte del video que se mantendrá (ej. el presentador).
  - Exportar un fotograma clave como JPG desde el módulo Delivery (Formato: JPG, calidad máxima).
- **Generar el relleno en Photoshop Beta:**
  - Abrir el JPG exportado en Photoshop Beta.
  - Seleccionar el área a rellenar con la herramienta Lazo (Lasso Tool) o selección rectangular.
  - Hacer clic en "Generative Fill" (relleno generativo).
  - **Prompt VERBATIM usado en el tutorial:** "medieval castles" (para generar castillos medievales).
  - **Nota clave:** Los prompts deben escribirse en inglés; la función no funciona en español.
  - Elegir entre las 3 variantes generadas (clic en las miniaturas o en el panel derecho).
  - Si no gusta el resultado, presionar Ctrl+Z y repetir con un prompt diferente.
  - Guardar como JPG: File > Save a Copy > seleccionar JPG.
- **Integrar en DaVinci Resolve:**
  - En el módulo Edit, arrastrar la imagen generada a una pista de video superior.
  - Ajustar la duración de la imagen para que coincida con el segmento del video.
  - Si hay línea de corte visible, recortar ligeramente el borde y aplicar atenuación (softness) de 100 en las máscaras.
- **Eliminar objetos no deseados:**
  - En DaVinci Resolve, crear una máscara alrededor del objeto (ej. un árbol) en el módulo Color.
  - Exportar ese fotograma con la máscara aplicada como JPG.
  - En Photoshop Beta, seleccionar el área del objeto y aplicar Generative Fill sin prompt (dejar vacío) para que la IA lo elimine automáticamente.
  - Guardar y reemplazar en la línea de tiempo.

## Reglas para agentes
- Usa siempre Adobe Photoshop Beta (no la versión estable) para acceder a Generative Fill.
- Escribe los prompts exclusivamente en inglés; la función no procesa español.
- Exporta los fotogramas desde DaVinci Resolve en formato JPG para mantener el color procesado (LUT, corrección) sin cambios.
- Selecciona solo el área a rellenar (fondo) y no el sujeto principal antes de aplicar Generative Fill.
- Si el resultado no es satisfactorio, presiona Ctrl+Z y genera de nuevo con un prompt más específico.
- Nunca uses Generative Fill en el sujeto principal si quieres mantenerlo intacto; selecciona solo el fondo.
- Aplica atenuación (softness) de al menos 100 en los bordes de la imagen generada para disimular la transición en el video.

## Errores comunes que evita o menciona
- **No usar la versión Beta:** La función Generative Fill solo está disponible en Adobe Photoshop Beta, no en la versión estable.
- **Escribir prompts en español:** La IA solo interpreta prompts en inglés; si se escribe en español, no genera el resultado deseado.
- **No exportar en JPG:** Exportar en otros formatos puede alterar la corrección de color aplicada en DaVinci Resolve.
- **Seleccionar incorrectamente:** Si se selecciona parte del sujeto, la IA lo modificará; hay que aislar solo el fondo.
- **No ajustar la atenuación:** Sin suavizado en los bordes, la imagen generada deja una línea de corte visible en el video.
- **Confiar en la primera generación:** La IA ofrece 3 variantes; es necesario revisarlas todas y regenerar si ninguna es adecuada.