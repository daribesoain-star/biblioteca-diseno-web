# Whisk AI: Why is Seed and Precise Reference important for consistency
**Fuente:** nextmindrevolution | https://youtu.be/7vLf1NoTt80
## Qué enseña (2-3 líneas)
Explica cómo `seed` y `precise reference` controlan la consistencia visual en Whisk.  
Muestra que bloquear el `seed` no copia una imagen al 100%, sino que reduce la variación y conserva identidad visual, composición o “vibe”.  
`Precise reference` sirve para mantener una referencia casi idéntica y hacer ediciones puntuales sobre ella.
## Lecciones accionables
- En Whisk, abre `settings` en la parte inferior para acceder a dos controles clave: `seed` y `precise reference`.
- Cada imagen generada por IA parte de un `seed`: un número inicial de ruido visual, descrito como el “ADN” que el modelo usa para construir la imagen.
- Si generas con el mismo prompt y el `seed` desbloqueado, Whisk asigna un número nuevo cada vez; por eso el mismo prompt produce variaciones.
- Prompt usado como ejemplo: `a woman walking on the street`.
- Con `seed` desbloqueado y el prompt `a woman walking on the street`, las imágenes mantienen la misma idea general, pero cambian sujeto, pose, encuadre, composición, ángulo de cámara y fondo.
- Bloquear el `seed` y repetir exactamente el mismo prompt no devuelve una copia perfecta. Mantiene una identidad visual parecida: look, vibe, layout, fondo o composición.
- Para trabajar con una referencia de sujeto: arrastra una imagen generada al slot de `subject`, asegúrate de que el `subject` esté marcado, y luego controla `seed` y `precise reference` desde `settings`.
- Con `subject` bloqueado, `seed` desbloqueado y `precise reference` apagado, Whisk conserva bastante el sujeto, pero permite cambios pequeños en fondo, pelo, composición y encuadre.
- Con `subject` bloqueado, `seed` bloqueado y `precise reference` apagado, las generaciones quedan mucho más cerca entre sí: el fondo, la luz, la calle mojada, el layout y la composición tienden a repetirse, aunque la pose todavía puede variar.
- `Precise reference` indica a Nano Banana cuánto puede desviarse de un `subject`, escena o layout bloqueado.
- Con `subject` bloqueado, el mismo `seed` bloqueado y `precise reference` encendido, Whisk genera imágenes casi idénticas a la referencia: mismo sujeto, taxis, ciudad, hombre de fondo, encuadre y composición, con cambios mínimos.
- La combinación más restrictiva es: `subject` bloqueado + `seed` bloqueado + `precise reference` encendido. Esto reduce al máximo la creatividad del modelo.
- Para hacer una edición específica conservando la imagen base, cambia solo el prompt y mantén bloqueados `subject`, `seed` y `precise reference`.
- Prompt de edición usado: `a woman wearing a red dress walking on the street`.
- Resultado esperado con ese prompt y todo bloqueado: misma imagen base, mismo fondo, mismo encuadre y composición, pero la mujer aparece con vestido rojo.
- Si apagas `precise reference` pero mantienes `subject` y `seed` bloqueados, aumenta la variación: el sujeto sigue siendo parecido, pero ya no es exactamente el mismo.
- Si además desbloqueas el `seed`, el modelo recibe mucha más libertad: puede cambiar sujeto, ropa, zapatos, pantalones, fondo o ciudad.
- Aunque se desbloqueen controles, Whisk sigue intentando mantener consistencia porque está entrenado para eso.
## Reglas para agentes
- Usa `seed` bloqueado cuando necesites conservar look, vibe, layout, fondo o composición entre generaciones.
- Nunca asumas que bloquear el `seed` produce una copia 100% idéntica.
- Usa `subject` bloqueado cuando la identidad del sujeto deba mantenerse como referencia principal.
- Usa `precise reference` encendido cuando necesites hacer una edición puntual sobre una imagen casi idéntica a la referencia.
- Mantén `subject` + `seed` + `precise reference` bloqueados cuando el objetivo sea cambiar solo un detalle del prompt, como ropa o color.
- Apaga `precise reference` cuando quieras más variación sin soltar por completo la consistencia del sujeto.
- Desbloquea el `seed` cuando quieras explorar variaciones más creativas de la misma idea.
- Nunca desbloquees `seed` y `precise reference` si la tarea exige continuidad estricta entre imágenes.
- Registra el número de `seed` cuando una generación sea útil, porque ese número permite recuperar una dirección visual similar.
- Verifica visualmente sujeto, pose, fondo, composición y encuadre después de cada cambio de `seed` o `precise reference`.
## Errores comunes que evita o menciona
- Creer que repetir el mismo prompt siempre genera la misma imagen.
- Creer que bloquear el `seed` equivale a duplicar exactamente una imagen.
- Usar `seed` bloqueado esperando una copia perfecta en lugar de una consistencia de identidad visual.
- Apagar `precise reference` cuando se necesita una edición localizada y controlada.
- Desbloquear demasiados controles y luego esperar consistencia estricta.
- No guardar o recordar el número de `seed` de una generación útil.
- Confundir variación controlada con inconsistencia: Whisk puede mantener una referencia general aunque cambien detalles.