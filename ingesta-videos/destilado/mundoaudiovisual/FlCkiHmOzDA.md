# Curso de edición de video - Adobe Premiere Pro 2020  🎬  Cp.18 - Exportación de medios y renderizado.
**Fuente:** mundoaudiovisual | https://youtu.be/FlCkiHmOzDA

## Qué enseña (2-3 líneas)
Este capítulo explica el proceso completo de exportación y renderizado en Adobe Premiere Pro 2020, desde la verificación del timeline hasta la generación del archivo final. Se enfoca en la configuración óptima para subir videos a YouTube usando el preset H.264, y cubre la diferencia entre exportar desde el panel de exportación de Premiere versus usar Adobe Media Encoder.

## Lecciones accionables
- **Verificar el timeline antes de exportar:** Reproduce toda la secuencia para asegurarte de que no haya segmentos sin procesar (barras rojas o amarillas sobre el timeline). Si hay partes sin procesar, presiona "Process intro and out" (o "Renderizar intro y outro") para que toda la línea superior se vuelva verde.
- **Abrir el panel de exportación:** Ve a `File > Export > Media` o usa el atajo `Command+M` (Mac) / `Control+M` (Windows).
- **Configurar la fuente de exportación:** En el panel de exportación, asegúrate de que la opción "Source" esté en "Output" (no "Source"), para exportar el trabajo editado en el timeline, no el clip original.
- **Seleccionar el preset de formato:** En "Format", elige `H.264`. Luego, en "Preset", selecciona `YouTube 1080p Full HD` (o el preset que corresponda a tu plataforma de destino: Facebook 1080p, Vimeo 1080p, etc.).
- **Ajustar el nombre y destino del archivo:** Haz clic en "Output Name" para elegir la ubicación y el nombre del archivo exportado (ej: "Sierra de Madrid.mp4" en el escritorio).
- **Verificar parámetros básicos de video:** Confirma que "Frame Rate" sea `24 fps` (o el de tu secuencia), "Field Order" sea `Progressive`, "Pixel Aspect Ratio" sea `Square Pixels`. El tamaño debe ser `1920 x 1080` para Full HD.
- **Configurar "Encoding Settings":** En "Performance", selecciona `Hardware Acceleration` (para usar la GPU). En "Profile", elige `High`. En "Level", usa `4.2`. Deja "Use Maximum Render Quality" desactivado (no notas diferencia y ralentiza la exportación).
- **Ajustar el bitrate:** En "Bitrate Settings", deja "Target Bitrate" en `16 Mbps` y "Maximum Bitrate" en `16 Mbps` (o entre 16 y 17 Mbps). Esto ofrece buena calidad sin archivos excesivamente grandes.
- **Configurar "Time Interpolation":** Déjalo en `Frame Sampling` (no Optical Flow ni Frame Blending), ya que los efectos de cámara lenta ya se procesaron previamente en el timeline.
- **Exportar directamente desde Premiere:** Haz clic en el botón `Export` (no uses "Queue" para Adobe Media Encoder a menos que tengas múltiples archivos que exportar en lote).
- **Esperar a que termine la codificación:** Premiere primero codificará el audio y luego el video. Una vez finalizado, el archivo estará en la carpeta de destino especificada.

## Reglas para agentes
- Usa `H.264` como formato de exportación para la mayoría de los casos (YouTube, redes sociales, uso general).
- Usa el preset `YouTube 1080p Full HD` cuando el destino sea YouTube; no modifiques manualmente los parámetros a menos que sea estrictamente necesario.
- Nunca actives "Use Maximum Render Quality" a menos que tengas una razón específica (no mejora la calidad perceptible y ralentiza la exportación).
- Siempre verifica que el timeline esté completamente en verde (procesado) antes de exportar; si hay segmentos rojos o amarillos, reprodúcelos o usa "Renderizar intro y outro" primero.
- Siempre selecciona "Output" como fuente en el panel de exportación, no "Source".
- Nunca uses Adobe Media Encoder para exportar un solo archivo; úsalo solo cuando tengas múltiples archivos en cola.
- Siempre deja "Time Interpolation" en `Frame Sampling` a menos que hayas aplicado efectos de velocidad que requieran Optical Flow (y en ese caso, ya se aplicó en el timeline).

## Errores comunes que evita o menciona
- **No verificar el timeline antes de exportar:** Si hay partes sin procesar (rojas/amarillas), la exportación puede tener artefactos o saltos. Siempre revisa y renderiza primero.
- **Exportar desde "Source" en lugar de "Output":** Esto exportaría el clip original sin editar, no el trabajo del timeline. Cambia a "Output".
- **Usar "Use Maximum Render Quality" innecesariamente:** No mejora la calidad de forma perceptible y hace la exportación más lenta. Déjalo desactivado.
- **Modificar manualmente todos los parámetros:** Si usas un preset como "YouTube 1080p Full HD", los ajustes ya están optimizados. Cambiarlos sin necesidad puede degradar la calidad o aumentar el tamaño del archivo.
- **Subir el bitrate excesivamente:** Dejar el bitrate entre 16-17 Mbps es suficiente para buena calidad. Aumentarlo no mejora la calidad en plataformas como YouTube y solo agranda el archivo.
- **Usar Adobe Media Encoder para una sola exportación:** No es necesario; exporta directamente desde el panel de exportación de Premiere. Media Encoder es útil solo para procesar múltiples archivos en lote.