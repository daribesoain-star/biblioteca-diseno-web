# Flora's Ideogram : Design typography with AI [ideogram]
**Fuente:** ola4-herramientas | https://youtu.be/kftlCzaP34Q

## Qué enseña
Muestra cómo usar el modelo Ideogram 2.0 dentro de la plataforma Flora (ph.a) para generar pósters tipográficos con IA. Explica el flujo de trabajo desde un nodo de texto hasta la generación de imágenes, incluyendo la edición de tipografía en imágenes existentes.

## Lecciones accionables
- Para iniciar un proyecto tipográfico en Flora, haz clic en el signo "+" y selecciona el nodo **"Text"** (no "Image" ni "Video").
- En el nodo de texto, escribe un prompt como: *"Write a prompt for creating typographic poster which says 'time is in'"* para que la IA genere automáticamente un prompt detallado para la imagen.
- Copia el prompt generado por la IA y pégalo en un nodo **"Image"**.
- En el nodo de imagen, cambia el modelo a **"Ideogram 2.0"** (el modelo especializado en tipografía).
- Ajusta los parámetros:
  - **Size:** elige "Portrait" para formato vertical.
  - **Number of generations:** establece en "3" para obtener tres variaciones.
- Haz clic en **"Generate"** para obtener los pósters tipográficos.
- Para modificar la tipografía de una imagen existente:
  1. Sube la imagen usando un nodo **"Image"** con la opción "Upload an image".
  2. Crea un nodo **"Text"** y escribe: *"Describe this poster design"* para obtener una descripción automática.
  3. Edita el texto de la descripción para cambiar el contenido (ejemplo: reemplazar "cherry on top" por "time is the medical healer").
  4. Conecta el nodo de texto modificado a un nuevo nodo **"Image"** con modelo Ideogram 2.0, tamaño Portrait y 3 generaciones.
- Para cambiar el estilo tipográfico de una imagen generada, crea un nodo de texto con un prompt como: *"Change the typography in the image to a bold"*.

## Reglas para agentes
- Usa **Ideogram 2.0** como modelo cuando el objetivo sea generar o modificar tipografía en imágenes.
- Cuando el prompt inicial sea vago (ej: "create a poster"), primero genera un prompt detallado usando un nodo de texto antes de pasarlo al nodo de imagen.
- Nunca uses el nodo "Text" para generar directamente la imagen; siempre debe pasar por un nodo "Image" con el modelo adecuado.
- Siempre especifica el número de generaciones (mínimo 3) para tener variaciones entre las cuales elegir.
- Cuando subas una imagen existente para modificar su tipografía, primero pide a la IA que la describa antes de editar el texto.

## Errores comunes que evita o menciona
- **Error:** Escribir directamente "create a poster typography poster" en el nodo de texto. **Solución:** Usar ese texto como prompt para que la IA genere un prompt detallado, no como instrucción directa para la imagen.
- **Error:** Esperar tipografía perfecta. **Advertencia:** La IA puede tener pequeños errores en el manejo de texto (letras mal formadas), pero estos se pueden corregir manualmente después.
- **Error:** Usar modelos genéricos en lugar de Ideogram 2.0 para tipografía. **Corrección:** Seleccionar explícitamente Ideogram 2.0 en el nodo de imagen.