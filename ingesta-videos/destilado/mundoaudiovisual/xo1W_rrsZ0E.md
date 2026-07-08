# Curso - Final Cut pro X - 2020 - 🎬 * Cap. 5 - Balance de Blancos y Correspondencia de color
**Fuente:** mundoaudiovisual | https://youtu.be/xo1W_rrsZ0E

## Qué enseña (2-3 líneas)
Explica cómo corregir dominantes de color en video usando la herramienta de balance de blancos y la correspondencia de color en Final Cut Pro X. Muestra cómo seleccionar un punto de referencia blanco para restaurar colores reales y cómo igualar la paleta cromática entre clips grabados en distintas condiciones de luz.

## Lecciones accionables
- **Abrir balance de blancos:** seleccionar el clip → ir a menú superior `Modify` → `Color Balance` (aparece automáticamente el cursor en forma de gota de agua).
- **Seleccionar punto de referencia blanco:** hacer clic con la gota sobre un elemento que sepas que es blanco puro en la escena (ej: pared blanca, mesa blanca, camisa blanca, hierros blancos).
- **Ajustar exposición:** en el inspector de color, mover el control deslizante de `Exposure` → enfocarse en `Light Areas` para recuperar detalle en zonas claras.
- **Ajustar saturación:** usar el control `Saturation` → trabajar específicamente en `Dark Shadow Areas` para intensificar colores sin sobresaturar las luces.
- **Correspondencia de color (Color Match):** seleccionar el clip a corregir → ir a `Modify` → `Color Match` → Final Cut analiza automáticamente el clip de referencia (el que tenga mejores colores) y aplica la corrección.
- **Verificar cambios:** desactivar/activar el efecto desde el inspector marcando/desmarcando la casilla del efecto `Color Balance` o `Color Match` para comparar antes/después.
- **Aumentar calidad de previsualización:** usar el control de calidad de visualización para ver el clip en su resolución completa durante la corrección.

## Reglas para agentes
- Usa `Modify > Color Balance` como primer paso antes de cualquier ajuste manual de blancos.
- Selecciona siempre un punto de referencia que sea blanco neutro real (sin sombras ni reflejos de color) al usar la herramienta de gota.
- Ajusta exposición solo en `Light Areas` cuando el clip esté subexpuesto; no toques sombras si no es necesario.
- Aplica saturación únicamente en `Dark Shadow Areas` para evitar quemar las luces.
- Usa `Modify > Color Match` solo cuando tengas un clip de referencia grabado en mejores condiciones de luz (día soleado vs. nublado).
- Nunca uses la gota de balance de blancos sobre superficies que no sean blancas reales (ej: ropa de color, objetos reflectantes).
- Nunca sobresatures: si el rojo de referencia (ej: logo Coca-Cola) se ve artificial, reduce saturación en sombras.

## Errores comunes que evita o menciona
- No usar balance de blancos automático de la cámara si se busca un resultado profesional; prefiere el ajuste manual en postproducción.
- No seleccionar un blanco que esté bajo luz amarillenta (sol directo) o azulada (sombra) porque la corrección será incorrecta.
- No aplicar saturación general sin distinguir entre luces y sombras; hacerlo puede arruinar el contraste natural.
- No confiar solo en el balance automático de Final Cut; siempre refinarlo con la gota de blancos para eliminar dominantes sutiles.
- No usar correspondencia de color entre clips con condiciones de luz muy diferentes esperando un milagro; mejora colores pero no cambia la iluminación original.