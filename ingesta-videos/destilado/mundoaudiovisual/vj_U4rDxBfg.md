# DJI MINI 2 - Procesando Fotografías HDRD 🌍 🏞
**Fuente:** mundoaudiovisual | https://youtu.be/vj_U4rDxBfg

## Qué enseña (2-3 líneas)
Explica cómo procesar las tres fotos (subexpuesta, correctamente expuesta, sobreexpuesta) que el DJI Mini 2 captura automáticamente en modo HDR (AEB). Muestra dos flujos de trabajo: uno manual con Adobe Photoshop usando máscaras de capa y Camera Raw, y otro automático con Adobe Lightroom mediante la función Photo Merge > HDR.

## Lecciones accionables
- **Configurar el dron:** En la opción de fotografía del DJI Mini 2, seleccionar el modo "A VE" (AEB) para que tome tres fotos automáticamente: una subexpuesta, una correctamente expuesta y una sobreexpuesta.
- **Flujo manual en Adobe Photoshop:**
  1. Abrir las tres fotos en Photoshop (desde Camera Raw o directamente).
  2. Desbloquear todas las capas y arrastrarlas a un mismo documento, apilándolas.
  3. Colocar la capa subexpuesta arriba, la correctamente expuesta en medio y la sobreexpuesta abajo.
  4. Crear una máscara de capa en la capa superior (subexpuesta). Usar pincel negro con dureza mínima para pintar el cielo y revelar la capa inferior (correctamente expuesta), dejando el cielo de la capa superior intacto.
  5. Crear otra máscara de capa para la capa del medio (correctamente expuesta). Con pincel negro más pequeño, pintar solo el castillo (o elemento central) para revelar la capa inferior (sobreexpuesta) y darle más detalle.
  6. Seleccionar las tres capas, hacer clic derecho y elegir "Convertir en objeto inteligente".
  7. Aplicar filtro Camera Raw: aumentar contraste, subir exposición ligeramente, bajar negros, reducir temperatura, quitar un poco de calima (Dehaze), y en detalle reducir ruido y granulado.
- **Flujo automático en Adobe Lightroom:**
  1. Importar las tres fotos (ejemplo: fotos 72, 73, 74).
  2. Ir al módulo Revelar (Develop).
  3. Seleccionar las tres fotos, ir a Foto > Combinación de fotos > HDR (Photo Merge > HDR).
  4. En el diálogo: dejar Auto Alinear activado, Auto Ajustar opcional, y en "Cantidad de eliminación de fantasmas" (Ghosting) probar "Ninguno" primero; si hay movimiento, usar "Medio" o "Alto".
  5. Hacer clic en "Combinar" (Merge). Se genera un nuevo archivo DNG con toda la información HDR.
  6. Ajustar: quitar calima (Dehaze), subir sombras para detalle del castillo, dejar altos como están. Si se desea más detalle, aplicar un filtro radial invertido sobre el castillo y ajustar exposición ligeramente. Enderezar horizonte si está torcido.

## Reglas para agentes
- Usa el modo AEB (A VE) en el DJI Mini 2 cuando necesites capturar escenas con alto rango dinámico (cielo brillante y paisaje oscuro).
- En Photoshop, siempre convierte las capas combinadas en un objeto inteligente antes de aplicar el filtro Camera Raw para mantener la edición no destructiva.
- En Lightroom, usa Photo Merge > HDR solo cuando tengas exactamente tres fotos (subexpuesta, correcta, sobreexpuesta) tomadas en ráfaga AEB.
- Nunca omitas la alineación automática (Auto Align) en Lightroom HDR para corregir micro-movimientos del dron.
- Nunca uses pincel con dureza alta (100%) en las máscaras de capa de Photoshop; usa dureza mínima para transiciones suaves.

## Errores comunes que evita o menciona
- **Error:** Pensar que una foto con exposición 0 en el medidor del dron es suficiente; el video aclara que a menudo el cielo se quema o el suelo queda oscuro, por eso se necesita HDR.
- **Error:** No usar máscaras de capa en Photoshop y simplemente mezclar las tres fotos; el video muestra que es mejor revelar selectivamente (cielo de una capa, castillo de otra) para controlar cada elemento.
- **Error:** No activar la eliminación de fantasmas (Ghosting) en Lightroom cuando hay movimiento (viento, ramas); el video recomienda probar "Ninguno" primero y luego subir si es necesario.
- **Error:** Olvidar enderezar el horizonte en Lightroom después de la fusión HDR; el video lo corrige al final del flujo automático.