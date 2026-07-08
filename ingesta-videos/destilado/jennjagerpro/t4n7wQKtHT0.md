# REAL Keyframes in Final Cut Pro, Finally!
**Fuente:** jennjagerpro | https://youtu.be/t4n7wQKtHT0

## Qué enseña
Este video presenta el plugin **Keyframe Toolbox** (disponible en la App Store por $19.99) que soluciona las limitaciones del keyframing nativo de Final Cut Pro. Muestra cómo crear movimientos de cámara dinámicos y transiciones personalizadas usando gráficos de curvas Bezier, copia de keyframes entre parámetros y presets guardables.

## Lecciones accionables
- **Instalar Keyframe Toolbox:** Arrastra el efecto desde el panel de efectos sobre el clip en la línea de tiempo.
- **Ajustar inspector:** Haz doble clic en la parte superior del inspector para que ocupe toda la altura de la interfaz.
- **Agregar keyframes:** Haz doble clic directamente sobre la línea del gráfico (escala, posición X/Y, rotación, blur, opacidad) para crear keyframes.
- **Mover keyframes sin cambiar valor:** Mantén presionada la tecla **Shift** mientras arrastras el keyframe horizontalmente.
- **Ver valor numérico de un keyframe:** Haz doble clic sobre el keyframe en el gráfico.
- **Aumentar el límite máximo de escala:** Haz doble clic sobre el número máximo (ej. 400) y escribe el nuevo valor (ej. 500).
- **Revelar manejadores Bezier:** Selecciona un keyframe, mantén presionada la tecla **Command** y arrastra hacia los lados.
- **Mantener manejadores Bezier horizontales:** Mientras arrastras con Command, mantén presionada también la tecla **Shift**.
- **Zoom al gráfico:** Haz doble clic sobre el gráfico para acercar; desliza la barra inferior para navegar. Vuelve a hacer doble clic para alejar.
- **Copiar keyframes entre parámetros:** Con la tecla **Shift**, haz marquee selection (arrastra un rectángulo) alrededor de los keyframes deseados → clic derecho → **Copy Keyframes** → selecciona el gráfico destino (ej. Position Y) → clic derecho → **Paste Graph**.
- **Ajustar valores después de pegar:** Después de pegar, los valores copiados pueden no coincidir. Haz doble clic en cada keyframe y escribe el valor correcto (ej. 0 para posición inicial/final).
- **Mover keyframes verticalmente sin desplazarlos horizontalmente:** Mantén presionada la tecla **Shift** mientras arrastras hacia arriba/abajo.
- **Desactivar Live Scrubbing:** Usa el botón de "live scrubbing" en el panel de Keyframe Toolbox si el movimiento del playhead en el gráfico te distrae.
- **Usar presets:** El plugin incluye presets aplicables desde el menú dentro del gráfico. También puedes guardar tus propios presets.
- **Crear transición push con Keyframe Toolbox:**
    1. Coloca dos clips apilados (uno sobre otro en la línea de tiempo).
    2. Ajusta la escala de ambos al 50% (en un timeline 4K).
    3. En el clip superior, asigna **X Position = 960** (centro derecha). En el clip inferior, **X Position = -960** (centro izquierda).
    4. Agrega un **Adjustment Clip** sobre ambos, de la misma duración que la pila.
    5. Aplica Keyframe Toolbox al Adjustment Clip.
    6. En el gráfico de **Scale**, selecciona ambos keyframes por defecto y cámbialos a **200**.
    7. En el gráfico de **X Position**, primer keyframe = **1920**, segundo keyframe = **-1920**.
    8. Revela manejadores Bezier en ambos keyframes (Command + Shift + arrastre horizontal) para suavizar la transición.

## Reglas para agentes
- Usa **Keyframe Toolbox** cuando necesites curvas Bezier personalizadas, easing controlado o movimientos dinámicos que el keyframing nativo de FCP no puede lograr.
- Siempre mantén presionada la tecla **Shift** al mover keyframes horizontalmente si no quieres alterar su valor.
- Siempre mantén presionada la tecla **Shift** al mover keyframes verticalmente si no quieres alterar su posición temporal.
- Usa **Command + Shift + arrastre** para crear manejadores Bezier perfectamente horizontales.
- Después de pegar keyframes entre gráficos (Copy Keyframes → Paste Graph), verifica y corrige manualmente los valores numéricos de cada keyframe, ya que se copian los valores del origen.
- Nunca uses el keyframing nativo de FCP para movimientos que requieran curvas suaves y controlables; Keyframe Toolbox es la alternativa recomendada.

## Errores comunes que evita o menciona
- **Movimiento con "wobble" y aceleración abrupta:** Ocurre con keyframes nativos en modo "smooth". Keyframe Toolbox permite controlar las curvas Bezier para eliminarlo.
- **Falta de control de easing:** En FCP nativo solo se puede cambiar entre "smooth" y "linear", sin ajuste fino. Keyframe Toolbox ofrece manejadores Bezier completos.
- **Desplazamiento accidental de keyframes al cambiar valores:** Usar Shift al arrastrar evita modificar el valor o la posición temporal involuntariamente.
- **Valores incorrectos tras pegar keyframes:** Copiar keyframes de un gráfico a otro (ej. de Scale a Position Y) transfiere los valores numéricos, que deben reajustarse manualmente al contexto del nuevo parámetro.
- **Límite de zoom en escala:** Por defecto, el gráfico de escala solo llega a 400. Si necesitas más zoom, haz doble clic en el número máximo y escríbelo manualmente.