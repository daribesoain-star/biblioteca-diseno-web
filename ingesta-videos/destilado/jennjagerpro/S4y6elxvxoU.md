# Beauty Effects for FCP
**Fuente:** jennjagerpro | https://youtu.be/S4y6elxvxoU

## Qué enseña
Cómo usar el efecto **Beauty Studio** de **Boris FX Continuum** (parte del paquete **Beauty Essentials**) para suavizar la piel de forma realista en Final Cut Pro, combinando dos máscaras de color con tracking **Mocha** para aislar únicamente la piel y preservar detalles como ojos, labios y fondo.

## Lecciones accionables
- Aplica el efecto **Beauty Studio** haciendo doble clic sobre el clip en la línea de tiempo.
- En la sección **Matte**, usa los dos selectores de color: **Color A** para zonas claras (ej. frente) y **Color B** para sombras (ej. pómulo) — esto captura variaciones tonales de la piel.
- En la sección **Smoothing**, ajusta **Master Amount** para controlar la intensidad del suavizado; sube para eliminar imperfecciones, baja para conservar detalles finos como pecas.
- Ajusta **Luma Softness** y **Hue Softness** en **Matte** para refinar la selección de color.
- Para aislar solo la piel, haz clic en el botón **Mocha mask**.
- Coloca el cabezal en un fotograma donde el rostro esté completo y usa la **herramienta de selección magnética** (icono de imán) para trazar el contorno facial desde la línea del cabello.
- Haz clic en la **flecha hacia adelante** para trackear hacia adelante, luego coloca el cabezal en el marcador verde y haz clic en la **flecha hacia atrás** para trackear en reversa.
- Para corregir desviaciones, usa **lasso drag** para seleccionar múltiples puntos y moverlos en conjunto.
- Para restar ojos y labios de la máscara, selecciona la herramienta **X + spline tool** (icono con X y spline) y traza alrededor de cada ojo y la boca.
- Guarda el trabajo en Mocha presionando el botón en la esquina superior izquierda de la ventana emergente y ciérrala.
- De vuelta en Final Cut, despliega **Pixel Chooser Mocha** > **Mask** y aumenta **Feather** ligeramente para suavizar bordes.
- Activa la casilla de verificación en **Mask** para visualizar la máscara en tiempo real y ajustar el feathering sin excederse.

## Reglas para agentes
- Usa **dos selecciones de color** en el matte (Color A y Color B) cuando el tono de piel tenga variaciones entre luces y sombras.
- Siempre **resta ojos y labios** de la máscara Mocha para preservar detalles nítidos en esas áreas.
- Nunca apliques feathering excesivo en la máscara — usa solo un ligero aumento para evitar bordes artificiales.
- Cuando corrijas desviaciones del tracking, usa **lasso drag** para mover puntos en grupo, nunca rehagas el track completo.
- Guarda el trabajo en Mocha antes de cerrar la ventana emergente para que los cambios persistan.

## Errores comunes que evita o menciona
- No aplicar máscara Mocha provoca que el suavizado afecte también al fondo y la ropa, generando borrosidad no deseada.
- Usar una sola máscara de color en lugar de dos no captura correctamente las variaciones tonales de la piel.
- No corregir las pequeñas desviaciones del tracking con lasso drag acumula errores que arruinan la máscara.
- Olvidar restar ojos y labios de la máscara hace que pierdan nitidez y detalles importantes.
- Excederse en el feathering crea bordes visibles y poco naturales entre la piel tratada y el resto del rostro.