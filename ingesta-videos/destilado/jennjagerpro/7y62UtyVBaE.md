# 3D Metal Logos in Apple Motion
**Fuente:** jennjagerpro | https://youtu.be/7y62UtyVBaE

## Qué enseña
Transforma un logotipo 2D en un logotipo 3D metálico (dorado) en Apple Motion usando un gradiente personalizado, el replicador con profundidad Z, una cámara 3D y sombras. Además, anima un efecto de luz móvil con keyframes en el gradiente y la rotación.

## Lecciones accionables
- **Crear el gradiente metálico base:** Ve a *Library > Generators > Gradient*. Arrástralo al panel de proyecto. En el inspector, selecciona *Generator* y despliega el gradiente. Cambia el primer color a un amarillo dorado oscuro. Cambia el último color usando el *eyedropper* sobre el lienzo para que coincida con el primer color. Haz clic en el centro de la barra de color para añadir un nuevo punto, selecciónalo y súbele el *value* (brillo) para que sea más claro. Ajusta *Start* y *End* en el inspector: sube el valor Y de *Start* a ~200 (arrastra el ratón hacia adelante) y baja el valor Y de *End* a ~-200 (arrastra hacia atrás). Rota el gradiente modificando los valores X de *Start* y *End*.
- **Aplicar máscara de imagen al gradiente:** Selecciona el gradiente en el panel de proyecto. Ve a *Object > Add Image Mask*. En el inspector, en *Image Mask*, haz clic en el campo *Mask Source*, luego arrastra (manteniendo presionado el botón del ratón) el logotipo desde el panel de proyecto hasta ese campo.
- **Convertir a 3D y replicar:** Ve a *Add Object > Camera* y confirma *Switch to 3D*. Selecciona el gradiente (no el logotipo) y haz clic en *Replicate* (esquina superior derecha). En el inspector, pestaña *Replicator*, cambia *Shape* de *Rectangle* a *Line*. Ajusta *Start* X a 0 y *End* X a 0. Marca la casilla *3D*. Despliega *End Point* y aumenta el valor Z (arrastra el ratón hacia adelante desde el 0) para dar profundidad. Ajusta *Points* a 20 o más para rellenar el volumen (si se pierde definición, reduce el valor).
- **Añadir sombra:** En el panel de proyecto, selecciona el gradiente original (el que está desactivado/muted tras crear el replicador). En el inspector, pestaña *Properties*, activa *Drop Shadow* y ajusta sus parámetros.
- **Animar luz móvil:** Con el playhead al inicio de la línea de tiempo, selecciona el gradiente original (muted). En el inspector, pestaña *Generator*, crea keyframes en *Start* y *End* (valores X). Mueve el playhead más adelante, cambia los valores X de *Start* y *End* y crea nuevos keyframes. Luego selecciona el *Replicator* en el panel de proyecto, ve a *Properties*, crea un keyframe en *Rotation Y* al inicio. En el mismo punto donde cambiaste los keyframes del gradiente, crea otro keyframe en *Rotation Y* con valor 14 (positivo) para que gire y la luz cambie.

## Reglas para agentes
- Usa *Add Image Mask* sobre el gradiente, no sobre el logotipo, y arrastra el logotipo al campo *Mask Source* manteniendo presionado el botón del ratón.
- Siempre selecciona el gradiente (no el logotipo) antes de hacer clic en *Replicate*.
- Cuando crees el gradiente metálico, usa el *eyedropper* para que el último color coincida exactamente con el primero y añade un punto intermedio más brillante.
- Para la profundidad 3D, marca la casilla *3D* en el replicador y ajusta el valor Z de *End Point*; nunca uses valores Z negativos para la profundidad.
- Para animar la luz, keyframea los valores X de *Start* y *End* del gradiente y la *Rotation Y* del replicador en los mismos fotogramas clave.

## Errores comunes que evita o menciona
- No seleccionar el gradiente en lugar del logotipo antes de replicar, lo que impide crear el efecto 3D correcto.
- Usar demasiados *Points* en el replicador (ej. 20+), lo que hace que el logotipo pierda definición, especialmente en texto pequeño; recomienda mantener un valor constructivo.
- Olvidar que al crear un replicador, el gradiente original se desactiva (muted) y es esa versión la que se debe usar para ajustar sombras y keyframes.
- No ajustar los valores *Start* y *End* del gradiente para feathering (difuminado) y rotación, resultando en un aspecto metálico menos realista.