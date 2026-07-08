# Best Multicam Audio Workflow in Final Cut Pro
**Fuente:** jennjagerpro | https://youtu.be/y9OUbGOfTzE

## Qué enseña (2-3 líneas)
Este video enseña el flujo de trabajo óptimo para editar componentes de audio en proyectos multicámara dentro de Final Cut Pro. Explica cómo configurar el audio en el campo para simplificar la edición, cómo fijar una sola fuente de audio (cámara B) mientras se cambian libremente los ángulos de video, y cómo expandir, ajustar y aplicar efectos como Voice Isolation a los canales de audio individuales en la línea de tiempo.

## Lecciones accionables
- **Configuración en campo:** Conecta todos los micrófonos de solapa (lavalier) a una sola cámara para que todo el audio limpio esté en una única fuente. Esto simplifica la edición en Final Cut Pro.
- **Deshabilitar canales innecesarios dentro del multicam clip:** Abre el multicam clip, selecciona el ángulo con el audio bueno, y en el inspector de audio deshabilita el canal del micrófono de la cámara (ej. "Dialogue 3") para no usarlo.
- **Recortar dentro de la línea de tiempo (no en el navegador):** Arrastra el multicam clip completo a la línea de tiempo. Luego, con el clip seleccionado, activa "Audio Switching Only" (icono de altavoz) y cambia la fuente de audio a la cámara que tiene el buen sonido. Después, cambia a "Video Only Switching" (icono de cámara) para que, al cambiar de ángulo visualmente, el audio siempre provenga de esa cámara fija.
- **Expandir componentes de audio:** Selecciona todos los clips en la línea de tiempo (Cmd+A), haz clic derecho y elige "Expand Audio Components". Así verás cada canal de audio por separado debajo del video.
- **Ajustes por canal:** En la línea de tiempo expandida, puedes:
  - Silenciar o eliminar canales individuales (ej. deshabilitar "Dialogue 3" si aparece).
  - Ajustar el volumen de cada canal por separado.
  - Usar la herramienta Rango (Range Tool) para hacer audio ducking en secciones específicas.
  - Crear J-cuts y L-cuts moviendo los clips de audio independientemente del video.
- **Aplicar Voice Isolation a todos los clips:** Selecciona todos los clips de audio en la línea de tiempo, ve al inspector de audio y activa "Voice Isolation". Esto reduce el ruido de fondo y la captación cruzada entre micrófonos.
- **Atajos de teclado mencionados:** Cmd+A para seleccionar todo, Space Bar para reproducir/previsualizar audio de un canal.

## Reglas para agentes
- Usa "Audio Switching Only" primero para fijar la fuente de audio a la cámara con el mejor sonido, luego cambia a "Video Only Switching" para que los cambios de ángulo no afecten el audio.
- Nunca recortes multicam clips en el navegador; arrastra el clip completo a la línea de tiempo y recorta ahí para evitar tener que reconfigurar la fuente de audio múltiples veces.
- Siempre deshabilita los canales de audio innecesarios (como el micrófono de cámara) dentro del multicam clip antes de editar en la línea de tiempo.
- Cuando expandas componentes de audio, verifica en el inspector de audio que los canales deshabilitados sigan deshabilitados; si aparece uno nuevo, desactívalo manualmente.
- Aplica Voice Isolation solo después de tener todos los clips en la línea de tiempo y con los canales correctos.

## Errores comunes que evita o menciona
- **No recortar en el navegador:** Si recortas el multicam clip antes de llevarlo a la línea de tiempo, tendrás que reconfigurar la fuente de audio fija para cada fragmento, lo que duplica trabajo.
- **No deshabilitar el micrófono de cámara:** Dejar activo el canal del micrófono interno de la cámara introduce ruido ambiental innecesario; hay que deshabilitarlo dentro del multicam clip.
- **No expandir componentes de audio:** Sin expandir, no puedes hacer ajustes finos por canal (volumen, ducking, J/L-cuts) ni aplicar Voice Isolation correctamente.
- **No usar Voice Isolation:** Si dejas todos los micrófonos habilitados sin aislamiento de voz, se captará ruido de fondo y conversaciones cruzadas entre los micrófonos de diferentes personas.