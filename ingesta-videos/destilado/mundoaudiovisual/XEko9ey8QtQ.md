# Adobe Premiere Pro 2020 - 🎬 * Chapter 19 - Integrating After Effects with Adobe Premiere
**Fuente:** mundoaudiovisual | https://youtu.be/XEko9ey8QtQ

## Qué enseña (2-3 líneas)
Cómo reemplazar un elemento estático en un clip de video (un cuadro de Nueva York) por un elemento animado (texto o sólido) usando la integración entre Adobe Premiere Pro y After Effects. Explica el flujo de trabajo: enviar un clip a After Effects, realizar tracking de cámara 3D, añadir sólidos y texto con seguimiento, y reimportar automáticamente a Premiere.

## Lecciones accionables
- **Enviar clip a After Effects:** Seleccionar clip en línea de tiempo de Premiere → clic derecho → "Replace with After Effects Composition" → guardar proyecto .aep con nombre (ej. "Premiere Tutorial").
- **Preparación previa en Premiere:** No aplicar efectos directamente al clip que se enviará a After Effects. En su lugar, crear una "Adjustment Layer" (Capa de ajuste) sobre el clip para aplicar correcciones de color (contraste, exposición) sin modificar el clip original.
- **Tracking de cámara 3D en After Effects:**
  1. Seleccionar capa del clip → menú Animation → Track Camera (o clic derecho → Track Camera).
  2. Esperar a que finalice "Background Analysis" y aparezcan puntos de seguimiento.
  3. Seleccionar puntos de seguimiento que correspondan al área del elemento a reemplazar (ej. puntos del marco del cuadro).
  4. Clic derecho sobre los puntos seleccionados → Create Solid → Create Camera.
- **Posicionar sólido en el espacio 3D:**
  1. Seleccionar el sólido creado.
  2. Añadir efecto "Corner Pin" (Position Edges en la transcripción) desde Effects & Presets.
  3. Ajustar los cuatro puntos del efecto Corner Pin para que coincidan con las esquinas del área a cubrir (ej. el marco del cuadro).
  4. Ajustar posición Z y rotación para que el sólido siga la perspectiva y sombras del plano original.
- **Cambiar color del sólido:** Capa → Solid Settings → elegir color (ej. rojos no saturados).
- **Añadir texto con tracking:**
  1. Seleccionar puntos de seguimiento en el área deseada → clic derecho → Create Text.
  2. Escribir texto deseado (ej. "because I want to and because I feel like it").
  3. Ajustar posición, escala y rotación del texto para que coincida con la perspectiva 3D.
- **Efecto de brillo (glow) en texto:**
  1. Duplicar capa de texto (Ctrl+D).
  2. En la capa duplicada inferior: Effects & Presets → Gaussian Blur → aplicar.
  3. Ajustar cantidad de desenfoque (Blurriness) para crear efecto de resplandor.
  4. Opcional: duplicar nuevamente para intensificar el brillo.
- **Guardar y actualizar en Premiere:** En After Effects → File → Save (Ctrl+S) → volver a Premiere → reprocesar entrada y salida del clip (renderizar) para ver los cambios.
- **Re-editar composición desde Premiere:** Abrir el archivo .aep guardado → modificar (ej. añadir Stroke al sólido: Effects → Stroke) → guardar → en Premiere re-renderizar entrada/salida.

## Reglas para agentes
- **Usa "Replace with After Effects Composition"** cuando necesites integrar efectos complejos (tracking 3D, compositing) que After Effects maneja mejor que Premiere.
- **Nunca apliques efectos directamente al clip** que será enviado a After Effects; usa Adjustment Layers para correcciones de color en Premiere.
- **Usa el efecto Corner Pin** para ajustar sólidos o imágenes a superficies con perspectiva en planos con movimiento de cámara.
- **Usa Gaussian Blur en capas duplicadas** para crear efectos de glow o resplandor en texto o sólidos.
- **Guarda el proyecto .aep** antes de cerrar After Effects para que los cambios se reflejen automáticamente en Premiere al reabrir.
- **Reprocesa (renderiza) entrada y salida** en Premiere después de cada modificación en After Effects para visualizar los cambios.

## Errores comunes que evita o menciona
- Aplicar efectos de color directamente al clip antes de enviarlo a After Effects: ralentiza el proceso y complica la edición. Solución: usar Adjustment Layers en Premiere.
- No seleccionar suficientes puntos de tracking: el seguimiento 3D será impreciso. Solución: seleccionar varios puntos distribuidos en el área a reemplazar.
- Olvidar guardar en After Effects antes de volver a Premiere: los cambios no se actualizan automáticamente.
- No ajustar la sombra del sólido para que coincida con la iluminación original: el efecto se ve artificial. Solución: usar las sombras naturales del plano como referencia al posicionar el sólido con Corner Pin.