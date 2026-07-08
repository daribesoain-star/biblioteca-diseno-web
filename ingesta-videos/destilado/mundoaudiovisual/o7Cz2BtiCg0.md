# Curso de After Effects en español - 🎬 Capítulo 10 - Borrado de objetos en el plano.
**Fuente:** mundoaudiovisual | https://youtu.be/o7Cz2BtiCg0

## Qué enseña (2-3 líneas)
Este capítulo enseña dos métodos para eliminar objetos o personas de un video en After Effects: el método manual (usando máscaras, congelado de fotogramas y clonación) y el método automático (relleno según contenido o Content-Aware Fill). Se explica cómo animar máscaras para seguir al objeto en movimiento y cómo generar una capa de relleno que reconstruye el fondo automáticamente.

## Lecciones accionables
- **Método manual con máscara y congelado de fotograma (Freeze Frame):**
  1. Crear una máscara alrededor del objeto a eliminar (incluyendo mochila, etc.).
  2. Duplicar la capa (`Ctrl+D` / `Cmd+D`).
  3. En la capa superior: `Layer > Time > Freeze Frame` para congelar el fotograma actual.
  4. En la capa inferior: eliminar la máscara (seleccionar máscara y presionar `Supr`).
  5. Precomponer (`Ctrl+Shift+C` / `Cmd+Shift+C`) y desmarcar "Ajustar tamaño de composición".
  6. En la precomposición: animar la posición de la máscara para que cubra al objeto en movimiento.
- **Método manual con Clone Stamp (Tampón de clonar):**
  1. Seleccionar la capa, ir a `Window > Paint` o activar la herramienta `Clone Stamp` (atajo `Ctrl+B` hasta seleccionarla).
  2. Presionar `Alt` (Windows) / `Option` (Mac) y hacer clic en el área de origen (ej. césped, arbustos).
  3. Pintar sobre el objeto a eliminar con el pincel.
  4. Ajustar tamaño de pincel en `Paint` panel.
- **Método automático con Content-Aware Fill (Relleno según contenido):**
  1. Crear una máscara alrededor del objeto (herramienta Pluma o forma libre).
  2. Animar la máscara: desplegar `Mask 1 > Mask Path`, activar cronómetro y ajustar puntos clave en cada fotograma para seguir al objeto.
  3. Cambiar modo de máscara a `Subtract` (restar) en lugar de `Add`.
  4. Ir a `Window > Content-Aware Fill` para abrir el panel.
  5. En el panel: dejar `Object` seleccionado, ajustar `Alpha Expansion` si es necesario.
  6. Hacer clic en `Generate Fill Layer`.
  7. Esperar a que After Effects analice y procese los fotogramas.
- **Keywords exactas:** `Freeze Frame`, `Clone Stamp`, `Content-Aware Fill`, `Mask Path`, `Subtract`, `Generate Fill Layer`, `Alpha Expansion`.

## Reglas para agentes
- Usa `Freeze Frame` solo cuando el fondo detrás del objeto esté visible en algún fotograma y el objeto esté estático o tenga poca variación.
- Usa `Clone Stamp` con `Alt+clic` para definir origen antes de pintar; nunca pintes sin definir origen.
- Usa `Content-Aware Fill` cuando el objeto esté en movimiento y el fondo sea complejo; anima siempre `Mask Path` para que la máscara siga al objeto fotograma a fotograma.
- Cambia la máscara a modo `Subtract` antes de generar el relleno; nunca uses `Add` para borrar.
- Activa `Content-Aware Fill` desde `Window > Content-Aware Fill`; si no aparece, verifica que esté instalado.

## Errores comunes que evita o menciona
- No congelar el fotograma en el lugar correcto: si el objeto se mueve, el freeze frame debe hacerse en un fotograma donde el fondo esté completo.
- Olvidar eliminar la máscara de la capa inferior al usar el método manual con freeze frame, lo que deja visible el objeto.
- No animar la máscara en el método automático: si la máscara no sigue al objeto, el relleno falla.
- Usar `Add` en lugar de `Subtract` en la máscara para Content-Aware Fill, lo que oculta el fondo en lugar de borrar el objeto.
- No esperar el procesamiento completo de Content-Aware Fill (puede tardar varios segundos por fotograma).