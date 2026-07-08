# Apple Motion Logo Reveal
**Fuente:** jennjagerpro | https://youtu.be/cmz-H9hKnMg

## Qué enseña
Cómo crear una animación de revelación de logotipo 3D en Apple Motion usando un replicador con máscara de imagen, gradiente de color personalizado y movimiento de cámara con rotación y zoom. El tutorial usa un tema Barbie como ejemplo, pero la técnica es aplicable a cualquier logotipo con una forma complementaria.

## Lecciones accionables
- Configuración del proyecto: preset 4K, 24 fps, duración 6 segundos
- Crear un color sólido: Library > Generators > Color Solid, color blanco puro
- Añadir máscara de imagen: seleccionar color sólido > Object > Add Image Mask > arrastrar forma (starburst) al "mask source well" > marcar "Invert"
- Escalar el logotipo original: seleccionar logotipo > Inspector > Properties > Scale = 60%
- Activar 3D: añadir cámara > seleccionar "Switch to 3D" en ventana emergente
- Replicar el color sólido enmascarado: seleccionar color sólido > botón "Replicate" (esquina superior derecha)
- Ajustes del replicador:
  - 3D: marcar casilla
  - Shape: Box
  - Columns: 1
  - Row: 1
  - Ranks: 10
  - Size > Depth: 3600
  - Origin: Back
- Posicionar replicador en Z: seleccionar replicador > Properties > Position Z = 2300
- Color mode: cambiar de "Original" a "Over Pattern"
- Crear gradiente de color: usar cuentagotas para tomar colores de referencia (hot pink del logotipo, light pink del convertible, blue sky del póster)
- Posiciones del gradiente: primer color en 0%, segundo en 10%, tercero en 20%, luego duplicar con Option+arrastre hasta 10 tags espaciados uniformemente
- Escala del replicador: Cell Controls > Scale = 14%, Scale End = 400%
- Drop shadow en color sólido original: Properties > añadir Drop Shadow
- Añadir fondo blanco: nuevo Color Solid blanco, arrastrar logotipo Barbie encima
- Keyframe de cámara (zoom):
  - Playhead en frame 14 > Properties > Scale > añadir keyframe = 130
  - Shift + flecha derecha 3 veces (30 frames) > reducir Scale hasta 9 (nuevo keyframe)
- Keyframe de rotación de cámara:
  - Playhead a mitad del movimiento > Properties > Rotation Z > añadir keyframe
  - Ir al último keyframe de Scale > Rotation Z = 360
- Ajustar altura del color sólido original: Generator > Height para llenar huecos
- Sincronizar logotipo Barbie: playhead en keyframe de rotación > seleccionar logotipo > tecla I (inicio)
- Fade in del logotipo: Behaviors > Basic Motion > Fade In/Fade Out > Fade In = 5, Fade Out = 0
- Radio blur en logotipo: Filters > Blur > Radio Blur
  - Keyframe en Angle: inicio = 130, 20 frames después = 0
  - Recortar duración del filtro: tecla O en el frame final
- Overshoot en logotipo: Properties > Z Rotation > Add Parameter Behavior > Overshoot
  - Duración: 1 segundo 5 frames
  - Start Value: 30, End Value: 0, Ramp Duration: 5.11
- Interpolación de cámara: Keyframe Editor > seleccionar keyframes de Scale > Interpolation > Bézier > ajustar tangentes en curva S
- Cubierta inicial: nuevo Color Solid hot pink > Z Position hasta frente de todo > tecla O para recortar salida > Fade In/Fade Out > Fade In = 0, Fade Out = 6

## Reglas para agentes
- Usa "Add Image Mask" desde el menú Object cuando necesites crear un recorte con forma de logotipo
- Marca "Invert" en la máscara de imagen para que el recorte sea negativo (agujero en el sólido)
- Cambia a vista "Left" (3D) cuando necesites posicionar elementos en el eje Z
- Usa Option+arrastre para duplicar tags de color en el gradiente y mantener consistencia
- Aplica "Over Pattern" como color mode del replicador para usar gradientes personalizados
- Usa tecla I para alinear el inicio de un clip con la posición del playhead
- Usa tecla O para recortar el final de un clip en la posición del playhead
- Activa el botón de mostrar keyframes en la línea de tiempo para visualizar y navegar keyframes
- Cambia la interpolación a Bézier y ajusta tangentes en curva S para movimientos de cámara suaves
- Usa "Add Parameter Behavior > Overshoot" para añadir rebote a rotaciones

## Errores comunes que evita o menciona
- No olvidar que aumentar Scale en la cámara ZOOMEA HACIA AFUERA (efecto contrario a lo esperado)
- No dejar huecos visibles al rotar la cámara: ajustar Height del color sólido original para cubrir todo el frame
- No dejar que el overshoot dure todo el clip: acortar su duración para que el rebote sea más enérgico
- No olvidar que el color sólido original permanece modificable aunque esté deshabilitado por la máscara o replicador
- No confundir la pronunciación de "Bézier" (corregida en el video)