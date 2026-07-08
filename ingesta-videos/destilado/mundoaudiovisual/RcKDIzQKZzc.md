# 📸 Free Adobe Photoshop Course - Module 3 - Chapter 3 - Smart Objects.
**Fuente:** mundoaudiovisual | https://youtu.be/RcKDIzQKZzc

## Qué enseña (2-3 líneas)
Este capítulo explica qué son los objetos inteligentes (Smart Objects) en Photoshop: capas especiales que contienen un proyecto independiente dentro de sí mismas. Muestra cómo usarlos para aplicar transformaciones complejas (como perspectiva) a múltiples elementos a la vez, sin degradar la calidad ni tener que ajustar cada objeto individualmente.

## Lecciones accionables
- **Crear un rectángulo de referencia para perspectiva:** Usa la herramienta Regla (en el menú Cuentagotas) para medir el ancho y alto aproximados de la cara del cubo donde aplicarás la perspectiva. Crea un rectángulo con esos valores exactos (ej. 750 px de ancho x 1200 px de alto).
- **Convertir a objeto inteligente:** Haz clic derecho sobre la capa del rectángulo y selecciona "Convertir en objeto inteligente". Verifica que aparezca el ícono de objeto inteligente en la miniatura de la capa.
- **Aplicar Distorsión al objeto inteligente:** Con la capa del objeto inteligente seleccionada, ve a Edición > Transformar > Distorsionar. Ajusta manualmente los vértices del rectángulo para que coincidan con los vértices de la cara del cubo en la imagen.
- **Editar el contenido interno del objeto inteligente:** Haz doble clic en la miniatura del objeto inteligente para abrir una nueva pestaña con el proyecto interno. Allí coloca todos los elementos (texto, logotipos, imágenes) sin preocuparte por la perspectiva. Cierra la pestaña y guarda los cambios (Ctrl+S / Cmd+S).
- **Ocultar el rectángulo de referencia:** Dentro del objeto inteligente, desactiva la visibilidad de la capa del rectángulo o hazla transparente antes de cerrar. Así solo se verán los elementos colocados, con la perspectiva ya aplicada automáticamente.
- **Repetir el proceso para otras caras:** Para cada cara del cubo, mide sus dimensiones, crea un nuevo rectángulo, conviértelo a objeto inteligente, distorsiónalo para que coincida con esa cara, y edita su contenido interno por separado.

## Reglas para agentes
- Usa "Convertir en objeto inteligente" ANTES de aplicar cualquier transformación (Distorsionar, Escalar, etc.) para preservar la calidad original de la capa.
- Cuando midas con la herramienta Regla, anota los valores exactos de ancho y alto (en píxeles) que aparecen en la barra de opciones superior antes de crear el rectángulo.
- Al editar el contenido interno del objeto inteligente, ignora completamente la perspectiva de la escena principal; trabaja siempre en un plano perfectamente recto (horizontal/vertical).
- Desactiva la visibilidad de la capa del rectángulo de referencia dentro del objeto inteligente antes de cerrarlo, para que no aparezca en el proyecto principal.
- Guarda los cambios del objeto inteligente (Ctrl+S / Cmd+S) cada vez que cierres su pestaña interna; Photoshop preguntará si deseas guardar.

## Errores comunes que evita o menciona
- **No convertir a objeto inteligente antes de distorsionar:** Si aplicas Distorsionar directamente a una capa normal, los píxeles se degradan y es difícil ajustar múltiples elementos por separado. El objeto inteligente mantiene la nitidez y permite editar el contenido interno sin perder la transformación.
- **Ajustar la perspectiva elemento por elemento:** Intentar dar perspectiva manualmente a cada texto, logo o imagen por separado es tedioso y casi imposible de alinear correctamente. Con un objeto inteligente, todos los elementos internos heredan la misma transformación automáticamente.
- **Olvidar ocultar el rectángulo de referencia:** Si no desactivas la capa del rectángulo dentro del objeto inteligente, este aparecerá como un fondo opaco o de color en el proyecto principal, arruinando el resultado final.