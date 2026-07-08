# Kling Motion Control Full Deep dive: "Matches Image" vs. "Matches Video" Explained
**Fuente:** nextmindrevolution | https://youtu.be/wVII4Z2WiC0
## Qué enseña (2-3 líneas)
Explica en detalle el funcionamiento de la herramienta Motion Control de Kling, que transfiere el movimiento de un video de referencia a un personaje en una imagen estática. Desglosa la diferencia crítica entre los modos "Character Orientation: Matches Video" y "Matches Image", incluyendo cómo manejan la cámara, la orientación del sujeto y las limitaciones del modelo. También cubre reglas de proporción entre imagen y video, y el uso de prompts de texto.

## Lecciones accionables
- **Regla fundamental de proporciones:** La imagen y el video de referencia deben coincidir en tamaño y distancia del sujeto. Si el video muestra a una persona de cuerpo entero, la imagen debe tener al sujeto en una escala similar. Kling **no cambia el tamaño del sujeto**, solo replica el movimiento.
- **Uso de "Character Orientation: Matches Video":** Fuerza a que el sujeto de la imagen adopte la misma orientación (frontal, perfil, etc.) que el sujeto del video de referencia. No soporta movimiento de cámara. Ejemplo: si el video es frontal y la imagen es de perfil, el resultado mostrará al sujeto frontal.
- **Uso de "Character Orientation: Matches Image":** Transfiere el movimiento del video pero **mantiene la orientación original del sujeto en la imagen**. Soporta movimiento de cámara automático (zoom in, zoom out, camera up, camera down, stationary). Para controlar la cámara, debes escribir el prompt exacto: `zoom in`, `zoom out`, `camera up`, `camera down`, o `stationary`.
- **Prompt de texto:** Tiene prioridad baja. El modelo procesa primero el movimiento y la cámara, luego el texto. Para añadir elementos (ej: "a plane appears flying in the sky", "suddenly a dog appears", "people dancing in the back"), se necesitan múltiples generaciones; es errático.
- **Sin prompt:** Puedes dejar el campo de texto vacío. Kling usará solo el movimiento del video y la imagen.
- **Configuración de calidad:** "Standard" cuesta 25 créditos; "Professional" cuesta 50 créditos. El creador usó Standard para todas las pruebas.
- **Requisito del video de referencia:** El movimiento debe venir de una forma **humanoide** (cara, dos brazos, dos piernas). No funciona con monstruos de 10 tentáculos (ej: kraken).
- **Transferencia de cámara desde video:** Solo funciona con movimientos de cámara **simples** (zoom in lento, zoom out, mover arriba/abajo). Movimientos salvajes (cámara rotando, muy dinámicos) no se transfieren correctamente.
- **Fondo:** El modelo se enfoca en el movimiento, no en el fondo. Usa imágenes con fondos simples para evitar resultados extraños (personas deformadas, fondos falsos). Evita calles concurridas o patrones complejos.

## Reglas para agentes
- **Usa "Matches Video"** cuando quieras que el sujeto de la imagen se reoriente para coincidir exactamente con la pose/ángulo del video de referencia, y no necesites movimiento de cámara.
- **Usa "Matches Image"** cuando quieras preservar la orientación original del sujeto en la imagen, y necesites movimiento de cámara automático o controlado por prompt.
- **Nunca** uses un video de referencia con un sujeto no humanoide (sin cara, dos brazos, dos piernas) para Motion Control.
- **Siempre** verifica que la escala y distancia del sujeto en la imagen coincidan con el video de referencia para evitar que el movimiento se vea incompleto (ej: cabeza nunca sale del frame).
- **Nunca** esperes que el prompt de texto tenga alta prioridad; el movimiento y la cámara dominan. Para añadir elementos, ejecuta múltiples generaciones.
- **Usa fondos simples** (sin multitudes, patrones complejos) para evitar artefactos en el fondo.
- **Para cámara en "Matches Image"**, escribe el prompt exacto: `zoom in`, `zoom out`, `camera up`, `camera down`, o `stationary`.
- **Nunca** intentes transferir movimientos de cámara muy dinámicos (rotaciones, movimientos bruscos) desde el video de referencia; no funcionan.

## Errores comunes que evita o menciona
- **Error: Mala coincidencia de proporciones entre imagen y video.** Si el video muestra a alguien caminando hacia la cámara hasta que la cabeza sale del frame, pero la imagen tiene al sujeto muy lejos, el resultado mostrará al sujeto caminando pero la cabeza nunca sale del frame. Solución: la imagen debe tener al sujeto a la misma distancia que en el video.
- **Error: Usar un video de referencia con orientación diferente a la imagen sin considerar el modo.** Si el video es frontal y la imagen es de perfil, con "Matches Video" el sujeto se reorienta a frontal (puede ser deseado o no). Con "Matches Image" se mantiene el perfil pero se añade cámara automática.
- **Error: Esperar que un prompt de texto funcione consistentemente.** El modelo prioriza el movimiento; añadir elementos como "a plane appears" o "people dancing in the back" rara vez funciona en el primer intento.
- **Error: Usar fondos complejos o con mucha gente.** El modelo descuida el fondo al enfocarse en el movimiento, generando personas deformadas o comportamientos extraños en el fondo.
- **Error: Intentar transferir movimientos de cámara salvajes (rotación, cámara muy dinámica).** El modelo no puede manejarlos; solo funciona con movimientos simples como zoom lento o desplazamiento vertical.
- **Error: Usar "Matches Video" cuando se necesita movimiento de cámara.** Este modo no soporta movimiento de cámara; si el video tiene cámara, no se transferirá correctamente (el resultado será estático en cámara).