# Runway Aleph Tutorial: AI Camera Angles & VFX Secrets
**Fuente:** runway | https://youtu.be/SZt2HQ77l2s

## Que enseña (2-3 lineas)
Cómo usar Runway Aleph (ALF) para generar nuevos ángulos de cámara, reemplazar elementos de escena masivos (como llenar un estadio vacío) y modificar iluminación en video ya filmado o generado, todo sin CGI ni rodajes adicionales. Integra el flujo de postproducción con Premiere Pro para entregar planos listos.

## Lecciones accionables

### Prompts estructurados con `task:` (formato clave)
- **Sintaxis recomendada:** `task: [acción principal]. add: [nuevos elementos]. keep: [lo que se conserva]. restyle: [look deseado].`
- **Ejemplo para crowd replacement:** `task: fill seats, add cheering fans. keep: player, framing, lighting.`
- **Ejemplo para reemplazo de objeto:** `task: replace the parked car with a food cart. keep: lighting and shadows natural.`

### Prompts VERBATIM para ángulos de cámara
- **Para cobertura faltante (close-up dinámico):** `close-up from back of head, slow orbit to side profile, match original lighting, style, grade, palette, subject, 85 mm lens, cinematic realism`
- **Resultado:** Reencuadra y reimagina la composición como si hubiera una segunda cámara rodando el mismo día.

### Parámetros técnicos clave
- **Duración máxima del clip ALF:** ~5 segundos (sin sonido).
- **Focal usada en prompt:** `85 mm lens` (para close-ups con compresión natural).
- **Movimiento de cámara:** `slow orbit` (órbita lenta alrededor del sujeto).
- **Consistencia:** `match original lighting, style, grade, palette, subject` (obligatorio para no perder coherencia).

### Flujo de trabajo en Premiere Pro
1. Sube el clip original a Runway ALF.
2. Prompt con `task:` + detalles de cámara/luz.
3. Exporta el clip ALF.
4. Regresa a Premiere Pro o After Effects.
5. Aplica `color match` para integrar con otros planos.
6. Añade diseño de sonido y ajusta la gradación.

### Uso de imagen de referencia para iluminación
- Sube una foto como referencia de luz.
- ALF puede **reiluminar todo el video** para que coincida con ese estilo (control tipo Photoshop para video).

## Reglas para el director de fotografía IA

- **Usa `task:` al inicio del prompt** cuando combines acciones (add, keep, restyle) para que el modelo priorice la acción principal antes que detalles secundarios.
- **Siempre incluye `match original lighting, style, grade, palette, subject`** en prompts de reencuadre para evitar que ALF alucine cambios de iluminación o vestuario.
- **Para no alucinar en video IA:** especifica explícitamente qué debe permanecer (`keep: player, framing, lighting`) y qué debe cambiar (`add: cheering fans`). No asumas que el modelo infiere lo obvio.
- **Usa focales reales en el prompt** (ej. `85 mm lens`, `35 mm lens`) para forzar una compresión/descompresión coherente con la escena original.
- **Exporta y coloriza manualmente** en Premiere/After Effects: ALF no entrega color match automático entre clips; el ojo del director de fotografía sigue siendo necesario.
- **Acepta múltiples intentos:** ALF puede requerir varios prompts para lograr el resultado deseado; no te conformes con el primer render.

## Errores comunes que evita o menciona

- **No asumir que ALF entiende contexto implícito:** si no escribes `keep: player, framing, lighting`, el modelo puede eliminar al sujeto principal o cambiar la iluminación drásticamente.
- **No usar prompts sin estructura:** prompts sueltos como "add crowd" sin `task:` ni `keep:` generan resultados inconsistentes.
- **No esperar clips largos:** ALF solo produce ~5 segundos; planifica la edición en consecuencia.
- **No saltarse el color match en post:** el clip ALF necesita integración manual con la gradación del proyecto original.
- **No confiar en un solo intento:** algunos resultados requieren re-prompting; es parte del flujo de trabajo actual.