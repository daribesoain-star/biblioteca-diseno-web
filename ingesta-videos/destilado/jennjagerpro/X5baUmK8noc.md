# How to Edit Multiple Cameras in Final Cut
**Fuente:** jennjagerpro | https://youtu.be/X5baUmK8noc

## Qué enseña (2-3 líneas)
Este tutorial enseña a crear y editar clips multicámara en Final Cut Pro, sincronizando múltiples fuentes de video y audio mediante el audio de cada dispositivo. Explica dos configuraciones comunes: una con dos cámaras donde una tiene el audio principal, y otra con dos cámaras más un archivo de audio externo separado.

## Lecciones accionables
- **Asignar nombre de cámara a cada clip:** Selecciona el clip en el navegador → abre el Inspector (icono "i") → busca el campo **Camera Name** (bajo "General" o "Settings") → escribe un identificador único (ej: "A", "B", "C"). Solo necesitas llenarlo en un campo, se replica automáticamente.
- **Crear el clip multicámara:** Selecciona todos los clips sincronizados en el navegador → clic derecho → **New Multicam Clip** → en el pop-up, marca **Use audio for synchronization** → asigna un nombre (ej: "synced interview") → haz clic en OK.
- **Identificar el clip multicámara:** Busca el icono de **cuadrícula** en la esquina superior izquierda del clip en el navegador.
- **Abrir el ángulo viewer:** Ve a **View** → **Show in Viewer** → **Angles**, o presiona **Shift + Command + 7**.
- **Configurar el tipo de corte en el ángulo viewer:** Usa los tres iconos superiores:
  - **Primer icono (filmstrip + waveform):** Cambia video y audio simultáneamente. Úsalo cuando cada cámara tenga su propio micrófono y quieras cortar ambos juntos.
  - **Segundo icono (filmstrip solo):** Cambia solo el video, manteniendo el audio de la fuente original. Recomendado para el caso de una cámara con buen audio y otra con audio deficiente.
  - **Tercer icono (waveform solo):** Cambia solo el audio, manteniendo el video fijo. Útil para dos personas en un mismo plano con fuentes de audio separadas.
- **Cortar entre ángulos con el mouse:** Reproduce la línea de tiempo → cuando el cursor se convierta en **tijeras**, haz clic sobre la ventana del ángulo deseado en el ángulo viewer para hacer el corte.
- **Cortar entre ángulos con el teclado:** Reproduce la línea de tiempo → presiona la **tecla numérica** correspondiente al ángulo (ej: "2" para cámara B, "3" para cámara C). El ángulo 1 se reserva para el audio externo.
- **Editar el clip multicámara en la línea de tiempo:** Trátalo como un clip normal: usa la **Blade Tool (B)** para cortar secciones, arrastra las costuras para recortar, y mueve el playhead a un corte existente y haz clic en otro ángulo para cambiar la selección.
- **Aplicar corrección de color antes de cortar:** Expande el clip multicámara (doble clic) → aplica filtros o corrección de color a cada pista individualmente → usa el botón de retroceso para volver a la línea de tiempo principal.
- **Configuración para audio externo separado:** Asigna un nombre de cámara al archivo de audio (ej: "C") junto con los clips de video → al crear el multicam clip, el audio externo aparecerá como un ángulo adicional (ángulo 1) → en el ángulo viewer, selecciona el segundo icono (solo video) y usa las teclas "2" y "3" para cambiar entre cámaras, dejando el ángulo 1 (audio) fijo.

## Reglas para agentes
- Usa **Use audio for synchronization** al crear un nuevo multicam clip cuando los dispositivos tengan pistas de audio (aunque sea de baja calidad).
- Asigna un **Camera Name** único a cada clip (incluyendo archivos de audio externos) antes de crear el multicam clip.
- Usa el **segundo icono (filmstrip solo)** en el ángulo viewer cuando una cámara tenga el audio principal y las otras tengan audio deficiente.
- Usa el **primer icono (filmstrip + waveform)** solo cuando cada cámara tenga su propio micrófono y quieras cambiar tanto video como audio.
- Usa el **tercer icono (waveform solo)** solo cuando quieras cambiar fuentes de audio sin cambiar el video.
- Aplica **corrección de color y filtros** dentro del clip multicámara expandido (doble clic) antes de hacer los cortes en la línea de tiempo principal.
- Para cambiar entre ángulos con teclado, usa las **teclas numéricas (1, 2, 3...)** correspondientes al orden de los ángulos en el viewer.
- Nunca modifiques el ángulo de audio (ángulo 1) cuando uses una configuración con audio externo separado.

## Errores comunes que evita o menciona
- **No asignar nombres de cámara a los clips:** Si no se etiquetan con Camera Name, Final Cut no podrá sincronizarlos correctamente al crear el multicam clip.
- **No grabar audio en todos los dispositivos:** Final Cut usa el audio para sincronizar los clips; si un dispositivo no graba nada de audio, la sincronización fallará.
- **No iniciar/detener dispositivos al mismo tiempo:** Tener clips de longitudes muy diferentes dificulta la sincronización y el seguimiento en la edición multicámara.
- **Olvidar marcar "Use audio for synchronization":** Si esta casilla no está marcada al crear el multicam clip, los clips no se sincronizarán automáticamente.
- **Aplicar corrección de color después de hacer los cortes:** Hacerlo antes ahorra tiempo, ya que los ajustes se aplican a todo el clip multicámara de una vez.