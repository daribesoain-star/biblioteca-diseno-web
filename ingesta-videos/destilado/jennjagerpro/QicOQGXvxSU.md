# 3D Objects in Apple Motion
**Fuente:** jennjagerpro | https://youtu.be/QicOQGXvxSU

## Qué enseña
Cómo importar, posicionar, animar y sombrear objetos 3D (formato USDZ) en Apple Motion, incluyendo la creación de sombras realistas mediante duplicación, máscaras de imagen y desenfoque con keyframes sincronizados.

## Lecciones accionables
- Para importar objetos 3D externos, usa archivos **USDZ**; búscalos en **Sketchfab** filtrando por "USDZ" o por objeto + "animated".
- Para rotar un objeto 3D: selecciona el objeto → Inspector → **Properties** → desplegar **Rotation** → ajustar **Y axis** para vista 360°.
- Para animar el objeto con keyframes: selecciona en el panel de proyecto → Inspector → **Properties** → crear keyframes en **Position**, **Rotation** y **Scale** en los fotogramas clave.
- Para crear una sombra realista:
  1. Selecciona el objeto 3D original → clic derecho → **Duplicate**.
  2. Clic derecho sobre el duplicado → **Group** (para no alterar keyframes originales).
  3. Selecciona **Group 1** → dibuja un **Rectangle** grande en el centro.
  4. En Inspector → **Shape**: desactivar **Outline**, activar **Fill**, color **Black**.
  5. Con el rectángulo seleccionado → menú **Object** → **Add Image Mask** → en **Source** elegir el grupo que contiene la copia del drone.
  6. Ajusta la posición y escala de la copia del drone (no del grupo) en Properties para que coincida con los keyframes del original, pero con valores menores (sombra más pequeña cuanto más cerca del suelo).
  7. Aplica **Filters** → **Blur** → **Gaussian Blur** a la copia; keyframe el blur: alto cuando el drone está lejos (sombra difusa), bajo cuando está cerca (sombra nítida).
  8. Añade keyframes en **Opacity** de la copia: baja opacidad cuando el drone está lejos, súbela cuando está cerca.
- Para que la sombra cubra toda la línea de tiempo: arrastra el rectángulo al inicio del timeline.

## Reglas para agentes
- Usa **USDZ** como formato obligatorio para objetos 3D externos en Apple Motion.
- Cuando dupliques un objeto 3D animado para sombra, **agrúpalo inmediatamente** antes de modificar su posición para no alterar los keyframes del original.
- Al crear una sombra con Image Mask, el **Source** debe ser el grupo que contiene la copia, no la copia misma.
- Sincroniza siempre los keyframes de la sombra (posición, escala, blur, opacidad) con los keyframes del objeto original.
- Aplica **Gaussian Blur** a la copia para suavizar la sombra; keyframe el valor de blur inversamente proporcional a la distancia al suelo.

## Errores comunes que evita o menciona
- No usar objetos 3D nativos de la biblioteca de Motion si no se ajustan al proyecto; se pueden importar USDZ externos.
- No olvidar agrupar la copia del objeto antes de ajustar su posición, o se modifican los keyframes originales.
- No dejar el rectángulo de la sombra sin extender al inicio del timeline, o la sombra no aparecerá desde el primer fotograma.
- No aplicar blur constante; la sombra debe ser más difusa cuando el objeto está lejos y más nítida cuando está cerca del suelo.
- No ignorar la opacidad de la sombra: debe ser más tenue a mayor distancia y más intensa al acercarse.