# Curso de edición de video - Adobe Premiere Pro 2020 - 🎬 * Capítulo 12 - Chroma Key o Pantalla Verde
**Fuente:** mundoaudiovisual | https://youtu.be/kcH-JzRD5ss

## Qué enseña
Cómo eliminar un fondo verde (chroma key) en Adobe Premiere Pro 2020 usando el efecto Ultra Key, combinado con máscaras de opacidad para recortar áreas no deseadas. Explica la importancia de la iluminación del fondo verde durante la grabación para facilitar la postproducción.

## Lecciones accionables
- **Crear una máscara de opacidad para recortar bordes:** Selecciona el clip en la línea de tiempo, ve a "Effect Controls", usa la herramienta "Pen" (pluma) o "Freehand Bezier" para dibujar puntos alrededor del sujeto, eliminando áreas del encuadre que no tienen fondo verde. Ajusta la opacidad del clip al 75% temporalmente para ver el fondo mientras dibujas.
- **Aplicar el efecto Ultra Key:** En el panel "Effects", busca "Ultra Key" (en "Video Effects" > "Keying") y arrástralo al clip. En "Effect Controls", usa el cuentagotas (pen tool) para seleccionar el color verde del fondo en el visor.
- **Cambiar la vista a Alpha Channel:** En "Ultra Key" > "Output", selecciona "Alpha Channel" para ver en blanco lo que se conserva y en negro lo que se vuelve transparente.
- **Ajustar el pedestal (Pedestal):** En "Matte Generation", aumenta el valor de "Pedestal" para que el efecto capture más tonos de verde (sombra, iluminación desigual) y el fondo se vuelva completamente negro en el canal alfa.
- **Ajustar tolerancia (Tolerance):** En "Matte Generation", modifica "Tolerance" para refinar la selección, eliminando restos de verde sin afectar la visibilidad del sujeto (debe permanecer blanco en el canal alfa).
- **Refinar bordes con Cleanup:** Si el cabello o bordes no se ven bien, usa "Smooth" para suavizar, "Contrast" para definir bordes, y "Midpoint" para ajustar la transición entre sujeto y fondo.
- **Ajustar la máscara de opacidad:** Si quedan restos de fondo verde visibles, regresa a la máscara de opacidad y mueve los puntos de ancla para cubrir esas áreas, asegurando que el sujeto nunca salga del área enmascarada durante el movimiento.
- **Verificar con zoom:** Acerca la vista al 200% para inspeccionar bordes y cabello, y confirma que no haya artefactos verdes.

## Reglas para agentes
- Usa "Ultra Key" como efecto principal para chroma key en Premiere Pro, no otros efectos de keying.
- Selecciona el color verde con el cuentagotas directamente desde el visor, no manualmente.
- Cambia a "Alpha Channel" en Output para diagnosticar y ajustar la transparencia antes de volver a "Composite".
- Ajusta "Pedestal" primero para eliminar sombras y variaciones de verde, luego "Tolerance" para refinar.
- Nunca uses "Highlighting" porque no afecta el resultado del chroma key.
- Crea una máscara de opacidad con la herramienta Pen antes de aplicar Ultra Key para recortar áreas sin fondo verde.
- Verifica que el sujeto esté completamente blanco en el canal alfa; cualquier área gris indica transparencia no deseada.

## Errores comunes que evita o menciona
- **No iluminar bien el fondo verde durante la grabación:** El instructor enfatiza que una mala iluminación del fondo (sombras, iluminación desigual) complica la postproducción y requiere más ajustes en "Pedestal" y "Tolerance".
- **No recortar bordes del encuadre con máscara de opacidad:** Si no se eliminan áreas del clip que no tienen fondo verde (por ejemplo, bordes del estudio), el chroma key no funcionará correctamente en esas zonas.
- **Ajustar parámetros sin ver el canal alfa:** Trabajar solo en "Composite" sin cambiar a "Alpha Channel" dificulta identificar áreas que aún son transparentes o semitransparentes.
- **Mover la máscara sin verificar el movimiento del sujeto:** Si el sujeto se mueve fuera de la máscara de opacidad, aparecerán restos de fondo verde; hay que ajustar la máscara para cubrir todo el rango de movimiento.