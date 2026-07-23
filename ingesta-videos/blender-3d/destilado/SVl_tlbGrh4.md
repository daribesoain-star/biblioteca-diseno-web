# Beginner Modelling Tutorial Blender
**Fuente:** CBaileyFilm | https://youtu.be/SVl_tlbGrh4

## Qué enseña (2-3 líneas)
Tutorial introductorio de modelado 3D en Blender para principiantes absolutos, partiendo desde un cubo vacío hasta construir un caza TIE (Star Wars). Cubre herramientas esenciales de modelado, selección de loops, extrusión, biselado, inserciones, modificadores (Bevel, Mirror, Subdivision Surface) y corrección de normales.

## Técnicas accionables
- **Limpiar escena:** `A` para seleccionar todo, `X` para eliminar.
- **Agregar UV Sphere:** `Shift+A` → Mesh → UV Sphere. En el popup (triángulo desplegable), ajustar **Segments: 16**, **Rings: 8**.
- **Entrar/salir de Edit Mode:** `Tab`.
- **Seleccionar todo en Edit Mode:** `A`.
- **Rotar precisión:** `R` → `Y` → `90` (rota 90° en eje Y).
- **Cambiar modos de selección:** `1` (vértices), `2` (aristas), `3` (caras).
- **Seleccionar loop de aristas/caras:** `Alt` + clic izquierdo sobre una arista/cara.
- **Deseleccionar todo:** `Alt` + `A`.
- **Extruir:** `E`. Para cancelar movimiento sin deshacer extrusión: `Escape` (deja aristas duplicadas en su lugar).
- **Escalar:** `S`. Escalar en eje específico: `S` → `X`/`Y`/`Z`.
- **Mover:** `G`. Mover en eje específico: `G` → `X`/`Y`/`Z`.
- **Biselar aristas:** `Ctrl` + `B`, arrastrar para ajustar ancho.
- **Inset (insertar caras):** `I`. Para inserciones individuales por cara: en el popup, marcar **Individual**.
- **Loop Cut (corte de bucle):** `Ctrl` + `R`. En modo amarillo, rueda del mouse para múltiples cortes. Clic para confirmar posición, luego deslizar y clic de nuevo.
- **Grid Fill:** `F3` → escribir "Grid Fill". Ajustar **Offset** y probar **Simple Blending** on/off.
- **Duplicar:** `Shift` + `D` → `Escape` (deja duplicado en su lugar).
- **Escalar con valor exacto:** `S` → `Z` → `-1` (voltea en Z).
- **Snapping (magnetismo):** Activar icono de imán → desplegable → **Vertex**. Mover con `G` para que el vértice seleccionado se adhiera a otro vértice.
- **Merge por distancia:** `M` → **By Distance**. Verificar en popup cuántos vértices se eliminaron.
- **Recalcular normales:** En Edit Mode, `A` para seleccionar todo → Mesh → Normals → **Recalculate Outside**.
- **Face Orientation (depuración):** Menú desplegable de overlays (esfera con círculos) → **Face Orientation** (caras azules = correctas, rojas = invertidas).
- **Shade Auto Smooth:** Clic derecho sobre el objeto → **Shade Auto Smooth**.
- **MatCap + Cavity (vista de modelado):** Desplegable de shading (esfera) → **MatCap** → en el mismo menú, activar **Cavity** → tipo **Both** → subir **Valley** al máximo.
- **Modificador Bevel:** Pestaña de llave inglesa → Add Modifier → **Bevel**. Parámetros: **Segments: 2**. Si da resultados extraños, cambiar **Offset** a **Percent**.
- **Modificador Mirror:** Add Modifier → **Mirror**. Activar solo eje deseado (ej. Y). Activar **Clipping** y **Merge**.
- **Modificador Subdivision Surface:** Add Modifier → **Subdivision Surface**. Ajustar **Viewport Levels** y **Render Levels** (ej. 3).

## Reglas para el erudito (imperativas, "usa X cuando Y")
- Usa `Alt` + clic para seleccionar loops completos de aristas o caras solo cuando todas las caras del loop tengan 4 lados; si hay triángulos, la selección se detiene.
- Usa `E` + `Escape` cuando quieras extruir pero mantener las nuevas aristas/caras exactamente en la posición original (para luego escalarlas o moverlas por separado).
- Usa `I` con **Individual** activado cuando quieras inserciones independientes en cada cara seleccionada; desactívalo para una inserción grupal uniforme.
- Usa `Ctrl` + `R` con rueda del mouse para crear múltiples cortes paralelos de una sola vez.
- Usa `M` → **By Distance** siempre que tengas vértices duplicados (ej. tras duplicar y mover con snapping) para fusionarlos.
- Usa **Recalculate Outside** (Mesh → Normals) cuando notes sombreado extraño o modificadores (Bevel, Subdivision Surface) se comporten de forma errática.
- Usa **Face Orientation** para diagnosticar caras con normales invertidas (rojas) antes de aplicar modificadores.
- Usa **MatCap** + **Cavity** (tipo Both, Valley alto) para visualizar claramente aristas y cavidades durante el modelado.
- Usa **Shade Auto Smooth** después de aplicar modificadores para obtener un sombreado suave en superficies curvas y aristas marcadas automáticamente.
- Usa el modificador **Mirror** con **Clipping** activado para asegurar que los vértices en el eje de simetría se fusionen al acercarlos.
- Usa el modificador **Bevel** con **Percent** en lugar de **Offset** cuando el biselado produzca resultados deformes en geometría compleja.

## Errores comunes / gotchas
- **Olvidar atajos:** Si no recuerdas un hotkey, usa `F3` en el viewport y escribe el nombre de la herramienta (ej. "Extrude", "Merge").
- **Extrusión sin movimiento:** Si presionas `E` y luego `Escape`, las nuevas aristas quedan exactamente sobre las originales (duplicadas). Esto es útil, pero puede confundir si no se escala o mueve después.
- **Selección de loop rota:** `Alt` + clic no funciona en loops que contengan caras triangulares o de 5+ lados; en esos casos, selecciona manualmente con `Shift` + clic.
- **Normales invertidas tras duplicar y escalar negativo:** Al duplicar y escalar `-1` en un eje, las caras se voltean (normales hacia adentro). Solución: seleccionar todo en Edit Mode y usar **Recalculate Outside**.
- **Modificador Bevel deforma el mesh:** Generalmente indica normales invertidas. Activa **Face Orientation** para verificar (caras rojas) y corrige con **Recalculate Outside**.
- **Merge por distancia no funciona:** Asegúrate de que la distancia de merge (popup tras seleccionar **By Distance**) sea suficiente para alcanzar los vértices duplicados (default 0.1 suele bastar).
- **Grid Fill no genera resultado limpio:** Ajusta el **Offset** y prueba activar/desactivar **Simple Blending** para mejorar la interpolación.
- **Snapping no responde:** Verifica que el icono de imán esté activado y que el tipo de snapping (Vertex, Edge, Face) sea el correcto.
- **Olvidar activar Clipping en Mirror:** Sin Clipping, los vértices pueden cruzarse en el eje de simetría y no fusionarse, dejando un hueco.