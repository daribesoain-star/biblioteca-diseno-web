# How to Install Motion Array Plugins in Final Cut
**Fuente:** jennjagerpro | https://youtu.be/-e94lSVTXkA

## Qué enseña
El video explica el proceso paso a paso para instalar plantillas descargadas desde Motion Array en Final Cut Pro, incluyendo cómo identificar la carpeta correcta (efectos, títulos, generadores o transiciones) según el tipo de archivo. También cubre cómo solucionar errores comunes cuando una plantilla no aparece en el lugar esperado.

## Lecciones accionables
- Descarga la plantilla desde Motion Array (botón "Download") y obtendrás un archivo ZIP en tu carpeta de Descargas.
- Haz doble clic en el ZIP para descomprimirlo y abre la carpeta resultante.
- Busca dentro de la carpeta descomprimida la subcarpeta con el nombre exacto del efecto o plantilla descargada.
- Abre una nueva ventana del Finder (atajo `Control + N`) y navega a: `Macintosh HD > Usuarios > [tu usuario] > Películas > Motion Templates`.
- Alternativamente, busca "Motion Templates" directamente en el Finder.
- Dentro de `Motion Templates` encontrarás las carpetas: `Effects`, `Generators`, `Titles` y `Transitions`.
- Arrastra la carpeta de la plantilla a la carpeta correspondiente:
  - Si el archivo `.moti` dentro de la plantilla dice "project" → va en `Generators`.
  - Si el archivo `.moti` dice "titles" → va en `Titles`.
  - Si el archivo `.moti` dice "effects" → va en `Effects`.
  - Si el archivo `.moti` dice "transitions" → va en `Transitions`.
- Abre Final Cut Pro y revisa el navegador de efectos, títulos, generadores o transiciones para ver la plantilla instalada.
- Para eliminar una plantilla, simplemente sácala de la carpeta correspondiente en `Motion Templates` y muévela a otra ubicación o bórrala.

## Reglas para agentes
- Usa la carpeta `Generators` cuando el archivo `.moti` dentro de la plantilla diga "project", incluso si Motion Array la etiqueta como título.
- Nunca modifiques la estructura interna de archivos de la plantilla descargada; solo arrastra la carpeta completa.
- Siempre verifica el tipo de archivo `.moti` dentro de la carpeta descomprimida antes de decidir la carpeta destino.
- Si una plantilla no aparece en Final Cut después de instalarla, prueba moverla a otra carpeta de `Motion Templates` (por ejemplo, de `Titles` a `Generators`).

## Errores comunes que evita o menciona
- **Error:** Colocar una plantilla etiquetada como "title" en Motion Array dentro de la carpeta `Titles` y que no aparezca en Final Cut. **Solución:** Revisar el archivo `.moti`; si dice "project", debe ir en `Generators`.
- **Error:** No encontrar la carpeta `Motion Templates`. **Solución:** Buscar directamente "Motion Templates" en el Finder o navegar manualmente a `Macintosh HD > Usuarios > [tu usuario] > Películas`.
- **Error:** Confundir la carpeta correcta porque Motion Array no especifica claramente el tipo de plantilla. **Solución:** Usar prueba y error: abrir la carpeta descomprimida, localizar el archivo `.moti` y leer su nombre (project, titles, effects, transitions).