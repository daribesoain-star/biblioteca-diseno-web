# TOMAS DE DRON 
**Fuente:** mundoaudiovisual | https://youtu.be/RkFRLGlg1VU

## Qué enseña
Cómo aplicar *speed ramps* (cambios progresivos de velocidad) en clips de dron usando DaVinci Resolve para lograr un efecto visual profesional y dinámico. Explica el flujo completo: ajuste de velocidad, interpolación de fotogramas clave, sincronización con música y adición de efectos de sonido.

## Lecciones accionables
- **Atajo para abrir keyframes de velocidad:** presiona `Control + R` (Windows) sobre el clip en la línea de tiempo para mostrar los triángulos de control de velocidad.
- **Añadir punto de velocidad:** haz clic derecho en el triángulo → selecciona "Add Speed Point" en la posición exacta donde quieres que cambie la velocidad.
- **Ajustar velocidad manualmente:** arrastra el borde del clip entre dos puntos de velocidad hacia adentro (para acelerar) o hacia afuera (para ralentizar); el valor porcentual se actualiza en tiempo real en la parte inferior.
- **Zoom en la línea de tiempo:** mantén presionada la tecla `Alt` y gira la rueda del ratón para acercarte y ajustar con precisión los puntos de velocidad.
- **Generar archivos optimizados:** haz clic derecho sobre el clip → selecciona "Generate Optimized Files" para que la reproducción sea fluida sin necesidad de renderizar cada vez.
- **Interpolación de fotogramas clave para transiciones orgánicas:** presiona `Shift + C` para abrir el panel de interpolación → selecciona el punto de velocidad → haz clic en el botón de curva (icono de curva) para transformarlo de lineal a progresivo → arrastra los manejadores para suavizar la aceleración y desaceleración.
- **Sincronizar con música:** coloca la pista de audio en la línea de tiempo → identifica los picos de la forma de onda (cambios rítmicos) → sitúa los puntos de velocidad en esos momentos para que el cambio coincida con el beat.
- **Añadir efectos de sonido (WAS):** descarga sonidos cortos desde artlist.io → colócalos en una pista de audio justo en el punto donde ocurre el cambio de velocidad → ajusta la duración para que coincida con el movimiento.
- **Ajustes de color rápidos (opcional):** en la pestaña "Color", sube el contraste, baja las sombras, ajusta gamma y saturación para mejorar la calidad del clip antes de aplicar el speed ramp.

## Reglas para agentes
- Usa `Control + R` para abrir los keyframes de velocidad siempre que necesites modificar la velocidad de un clip.
- Añade al menos dos puntos de velocidad (inicio y fin del tramo rápido) para definir claramente la sección que se acelerará.
- Activa la interpolación de curva (`Shift + C` y botón de curva) en cada punto de velocidad para que la transición sea suave y orgánica, no abrupta.
- Genera archivos optimizados (clic derecho → "Generate Optimized Files") antes de reproducir el clip con speed ramp para evitar saltos o congelamientos.
- Sincroniza los cambios de velocidad con los beats de la música usando la forma de onda como guía visual.
- Nunca cambies la dirección de vuelo del dron en medio de un clip; sigue la trayectoria original para que el speed ramp se vea natural.
- Usa efectos de sonido cortos (WAS) en el punto exacto del cambio de velocidad para reforzar el impacto visual.

## Errores comunes que evita o menciona
- **Transiciones abruptas:** no dejar los puntos de velocidad en lineal (sin curva) hace que el cambio de lento a rápido sea brusco y poco orgánico; se corrige aplicando interpolación de curva.
- **No generar archivos optimizados:** intentar reproducir el speed ramp sin generar optimized files provoca saltos y mala fluidez en la vista previa.
- **Usar clips mal grabados sin editar:** el creador muestra que incluso un clip que "no dice nada" puede transformarse con un speed ramp bien aplicado y color corregido.
- **No sincronizar con música:** aplicar speed ramps sin considerar el ritmo de la banda sonora hace que el efecto pierda impacto; se recomienda alinear los cambios con los beats.