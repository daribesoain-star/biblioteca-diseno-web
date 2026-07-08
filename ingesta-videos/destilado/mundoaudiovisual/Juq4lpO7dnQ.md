# 📸 Curso Gratis de Adobe Photoshop - Módulo 3 - Capítulo 6 - Las Máscaras
**Fuente:** mundoaudiovisual | https://youtu.be/Juq4lpO7dnQ

## Qué enseña (2-3 líneas)
Explica qué son las máscaras en Photoshop (vectoriales y de recorte), cómo ocultan o revelan partes de una capa para mostrar lo que está debajo. Muestra tres métodos prácticos: máscara vectorial con pluma, máscara de recorte (clipping mask) sobre texto o formas, y conversión de texto a trazado para crear máscaras.

## Lecciones accionables
- **Crear máscara vectorial con la pluma:** Dibuja un trazado con la herramienta Pluma (Pen Tool) sobre la capa deseada. Ve a `Layer > Vector Mask > Current Path` para que el trazado oculte todo lo que está fuera de él y muestre solo el interior.
- **Ajustar propiedades de máscara vectorial:** En el panel Propiedades (Properties) de la máscara, modifica `Feather` (desvanecer bordes) y `Density` (densidad, para abrir o cerrar la máscara). Para desvincular máscara y capa, haz clic en el icono de cadena entre ellos; así puedes mover la imagen independientemente de la máscara.
- **Aplicar máscara de recorte (Clipping Mask):** Coloca la capa que actuará como máscara (ej. texto o forma) debajo de la capa que quieres recortar. Selecciona la capa superior y ve a `Layer > Create Clipping Mask` (atajo: Ctrl+Alt+G / Cmd+Option+G). La capa superior se ajustará al contenido visible de la capa inferior.
- **Convertir texto en trazado para máscara vectorial:** Selecciona la capa de texto, haz clic derecho y elige `Create Work Path`. Luego, con la capa inferior seleccionada, ve a `Layer > Vector Mask > Current Path`. Desvincula la máscara si deseas mover la imagen independientemente.
- **Usar formas como máscara de recorte:** Dibuja una forma (ej. círculo) con la herramienta Elipse (Eliipse Tool) en modo `Shape`. Colócala debajo de la capa a recortar y aplica `Create Clipping Mask` desde el menú `Layer`.
- **Invertir máscara vectorial:** Con la máscara seleccionada, usa el botón `Pathfinder` en la barra de opciones (icono de círculo con cuadrado) para invertir la visibilidad (mostrar lo oculto y ocultar lo visible).

## Reglas para agentes
- Usa `Layer > Vector Mask > Current Path` cuando quieras crear una máscara a partir de un trazado de pluma o de un trazado de texto convertido.
- Usa `Layer > Create Clipping Mask` cuando necesites que una capa superior se recorte exactamente al contenido de la capa inferior (texto, forma o imagen).
- Nunca olvides desvincular la máscara vectorial de la capa (clic en icono de cadena) si necesitas mover la imagen sin mover la máscara.
- Siempre convierte la capa de fondo en capa normal (clic en candado) antes de aplicar máscaras, para poder editarla libremente.
- Usa `Feather` en las propiedades de la máscara solo cuando necesites bordes suaves; ajusta `Density` para controlar la opacidad de la máscara.

## Errores comunes que evita o menciona
- No confundir máscara vectorial con máscara de recorte: la primera usa trazados, la segunda usa la transparencia de la capa inferior.
- Al convertir texto en trazado, no olvides desactivar la capa de texto original para ver solo el trazado y aplicar la máscara en la capa correcta.
- Si mueves la imagen y la máscara se mueve junta, es porque están vinculadas; desvincúlalas para moverlas por separado.
- Al usar `Create Clipping Mask`, asegúrate de que la capa inferior tenga contenido visible (texto, forma o imagen); de lo contrario, no se verá el recorte.