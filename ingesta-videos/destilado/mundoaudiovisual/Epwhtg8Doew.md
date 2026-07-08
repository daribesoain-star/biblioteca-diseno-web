# Curso - Final Cut pro X - 2020 - 🎬 * Cap. 11-  Corrección de color y Etalonaje
**Fuente:** mundoaudiovisual | https://youtu.be/Epwhtg8Doew

## Qué enseña (2-3 líneas)
Diferencia entre corrección de color (balance de blancos, ajuste de blancos/negros puros para realismo) y etalonaje (look creativo: cálido, frío, oscuro, etc.). Muestra herramientas de Final Cut Pro X: monitores de luminancia y RGB, ruedas de color y curvas de color, y cómo copiar ajustes entre clips.

## Lecciones accionables
- **Balance de blancos manual:** Seleccionar clip → `Modificar` > `Balance de color` > en inspector desactivar automático → elegir modo "balance de blancos" (icono gota) → hacer clic sobre un objeto que deba ser blanco puro (ej. coche de policía blanco).
- **Abrir/cerrar navegador:** `Control + Comando + 1` para ocultar o mostrar el navegador.
- **Abrir monitor de luminancia:** `Comando + 7`.
- **Ver solo luminancia en monitor:** Hacer clic en icono pequeño del monitor → seleccionar "Luminancia".
- **Ajustar contraste con ruedas de color:** En inspector, expandir menú desplegable → seleccionar "Ruedas de color" → en sombras, medios tonos y altas luces: arrastrar para añadir o reducir contraste y luz.
- **Ver canales RGB combinados:** En monitor, hacer clic en botón inferior → seleccionar "Combinación" → "RGB".
- **Ajustar canales individuales con curvas de color:** En inspector, menú desplegable → "Curvas de color" → pestañas: Luminancia, Rojo, Verde, Azul.
- **Desactivar "Preservar luminancia" en curvas:** Desmarcar la casilla "Preservar luminancia" para modificar un canal sin que los otros se ajusten automáticamente.
- **Copiar efectos de color a otro clip:** Seleccionar clip corregido → `Edición` > `Copiar efectos` (o `Ctrl + C`) → seleccionar clip destino → `Edición` > `Pegar efectos`.
- **Añadir segunda corrección para look creativo:** Añadir nuevo "Balance de color" desde inspector → en ruedas de color, en altas luces desplazar hacia azul para look frío; en sombras desplazar hacia rojo/naranja para look cálido.
- **Deshacer hasta estado anterior con receta:** `Comando + Z` para revertir cambios no deseados.

## Reglas para agentes
- Usa siempre "Balance de blancos" manual (no automático) cuando el clip tenga un objeto blanco de referencia.
- Activa el monitor de luminancia (`Comando + 7`) antes de ajustar contraste para verificar que los valores se mantengan entre 0 y 100.
- Desmarca "Preservar luminancia" en curvas de color cuando necesites modificar un solo canal (rojo, verde o azul) sin afectar los demás.
- Copia efectos de color entre clips solo si fueron grabados en las mismas condiciones de iluminación y cámara.
- Graba siempre en color nativo/neutro en cámara; nunca apliques ajustes de color en la cámara si planeas corregir en postproducción.

## Errores comunes que evita o menciona
- Confundir corrección de color (realismo, balance de blancos) con etalonaje (look creativo). No son lo mismo.
- Aplicar ajustes de color en la cámara durante la grabación: dificulta la corrección en postproducción y empeora el resultado.
- Dejar "Preservar luminancia" activado al ajustar un canal individual: provoca que los otros canales se modifiquen automáticamente, arruinando el ajuste fino.
- No verificar el monitor de luminancia: puede generar valores por encima de 100 o por debajo de 0, perdiendo detalle en altas luces o sombras.