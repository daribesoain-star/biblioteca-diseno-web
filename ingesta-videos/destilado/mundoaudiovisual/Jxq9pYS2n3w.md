# 🔵 NUEVO CURSO 2 0 DE DAVINCI RESOLVE 18 🎬 Capítulo 5: Los Clips de Vídeo
**Fuente:** mundoaudiovisual | https://youtu.be/Jxq9pYS2n3w

## Qué enseña (2-3 líneas)
Gestión de clips de vídeo en DaVinci Resolve 18, centrándose en el redimensionado de archivos con resoluciones diferentes a la del proyecto, el cambio de color de clips para organización visual, y la aplicación de máscaras con Magic Mask para efectos de texto detrás del sujeto. Todo demostrado desde la versión iPad Pro.

## Lecciones accionables
- **Renombrar pistas de audio y vídeo:** Haz clic derecho sobre el nombre de la pista (ej. "Audio 2", "Video 1") y escribe el nuevo nombre (ej. "Música", "Vídeo Principal", "Efectos de Sonido").
- **Configurar redimensionado de clips al proyecto:** Ve a *Proyect Settings* (rueda de engranaje inferior) → *Image Scaling* → *Resize Filter*. En "Input Scaling", selecciona una opción:
  - **"Adjust image to match"**: Ajusta el clip al tamaño del proyecto (ej. 4K a 1080p) sin recortar, mostrando barras negras si la relación de aspecto no coincide.
  - **"Crop center without adjustment"**: Recorta el centro del clip para llenar el frame del proyecto, permitiendo reescalar sin perder píxeles (útil para saber cuánto puedes ampliar un 4K en un proyecto 1080p).
  - **"Enlarge image with crop"**: Estira la imagen hasta eliminar las barras negras laterales, llenando toda la pantalla (distorsiona la relación de aspecto).
- **Cambiar color de un clip completo:** Haz clic derecho sobre el clip en la línea de tiempo → *Clip Color* → selecciona un color (ej. naranja). Aplica a todo el clip original incluso si tiene cortes.
- **Cambiar color de un segmento de clip:** Corta el clip con *Command-B* (Mac) o *Control-B* (Windows) → haz clic derecho en el segmento → *Clip Color* → selecciona un color. Solo afecta al segmento seleccionado.
- **Usar cambio de color para organizar capas en efectos:** Al duplicar un clip para aplicar Magic Mask (ej. texto detrás del sujeto), cambia el color del clip superior (el que recibirá la máscara) para identificarlo fácilmente en la página *Color*.
- **Aplicar Magic Mask en iPad:** En la página *Color*, selecciona el nodo del clip → haz clic en *Magic Mask* (icono de varita) → pinta sobre el sujeto (ej. Carlos) → ajusta calidad → añade *Alpha Output* (en iPad: clic en el nodo y arrastra a la salida Alpha) → haz clic en *Track Forward/Backward* para rotoscopiar.
- **Verificar máscara en Edición:** Desactiva la pista inferior para ver el recorte perfecto del sujeto.
- **Añadir texto detrás del sujeto:** En *Edición*, coloca el clip con máscara en una pista superior, deja una pista libre debajo → *Effects* → *Titles* → *Basic Title* → arrastra el título a la pista libre entre ambos clips → el texto aparecerá detrás del sujeto.

## Reglas para agentes
- Usa "Adjust image to match" como opción predeterminada de Input Scaling para mantener la relación de aspecto original.
- Nunca uses "Enlarge image with crop" porque distorsiona la relación de aspecto y estira la imagen.
- Cambia el color de los clips superiores al duplicar para efectos de máscara, para identificarlos rápidamente en la página Color.
- Cuando uses Magic Mask, añade siempre Alpha Output al nodo para que la máscara funcione correctamente en la línea de tiempo.
- Al renombrar pistas, haz clic derecho directamente sobre el nombre de la pista, no sobre el clip.

## Errores comunes que evita o menciona
- No usar "Adjust image to match" puede causar que clips con resolución diferente al proyecto se vean recortados o distorsionados.
- Usar "Enlarge image with crop" estira la imagen y cambia la relación de aspecto, lo que el instructor nunca recomienda.
- Olvidar añadir Alpha Output al nodo de Magic Mask hace que la máscara no se aplique correctamente en la línea de tiempo.
- No renombrar las pistas puede causar confusión al trabajar con múltiples pistas de audio y vídeo.
- Cambiar el color de un clip después de hacer cortes solo afecta al segmento seleccionado, no al clip original completo.