# Transform Appearances with FCP's New Auto Mask!
**Fuente:** jennjagerpro | https://youtu.be/8vynHJ0zimA

## Qué enseña
Cómo usar la máscara automática (Auto Mask) de Final Cut Pro para aislar elementos como piel, cabello, labios y ojos, y aplicar efectos específicos a cada uno sin necesidad de tracking manual. Incluye técnicas de capas, modos de fusión y corrección de color selectiva para transformar la apariencia de un sujeto en un clip.

## Lecciones accionables
- **Duplicar clip base:** Seleccionar clip, mantener presionada la tecla **Option**, arrastrar hacia arriba para apilar una copia sobre sí mismo. Deshabilitar el clip inferior temporalmente.
- **Agregar Auto Mask desde el visor:** Hacer clic en el **ícono de varita mágica** en la parte inferior del visor → seleccionar **Add Auto Mask**. En el visor, usar el **signo +** para ver elementos detectados o pasar el cursor sobre el frame y hacer clic en el área deseada (ej: skin). Marcar la casilla o hacer clic directo → **Add Auto Mask**.
- **Aplicar suavizado de piel:** Arrastrar **Gaussian Blur** desde el navegador de efectos sobre el clip con la máscara de piel. Habilitar el clip inferior. Cambiar el **blend mode** del clip superior de **Normal** a **Lighten**. Reducir el valor de blur (ej: **6**).
- **Recolorar cabello y cejas con Auto Mask desde Color Board:** Agregar un **Color Board** desde el inspector de color. Hacer clic en el **ícono de persona** dentro del inspector de color → **Add Auto Mask**. En el visor, seleccionar **hair** y **eyebrows** → **Add to Auto Masks**. Ajustar: **Saturation** bajar (no a cero), **Exposure** bajar highlights y midtones, subir shadows. Ajustar saturación nuevamente para tono chocolate.
- **Recolorar labios con Auto Mask desde Color Board:** Agregar otro **Color Board** → **Add Auto Mask** → seleccionar **lips**. En **Color**, elegir un tono berry. Reducir saturación ligeramente, bajar exposure.
- **Ajustar ojos con Hue/Saturation Curves:** Eliminar el tercer Color Board si se intentó. Agregar **Hue/Saturation Curves**. Usar **Hue vs Luma**: tomar el puck izquierdo y subirlo para aclarar el blanco de los ojos. Usar **Hue vs Saturation**: añadir puntos de control en las áreas rojas para bajar saturación y eliminar enrojecimiento; subir saturación de verdes y azules para hacer resaltar el iris.
- **Recuperar suavizado de piel tapado por capas superiores:** Ir al menú de varita mágica del clip superior → **Add Auto Mask** → reseleccionar todas las áreas modificadas (piel, cabello, labios, ojos). Esto expone el suavizado de piel de la capa inferior.
- **Máscara para sombra de cejas (Drop Shadow):** Duplicar el clip original, apilarlo debajo del clip superior pero encima del suavizado de piel. Arrastrar **Drop Shadow** sobre ese clip. **No** agregar Auto Mask desde el efecto. Ir al menú de varita mágica → seleccionar **eyebrows** → **Add Auto Mask**. Arrastrar manualmente el efecto **Auto Mask** por encima del efecto **Drop Shadow** en el inspector (el orden importa: máscara arriba, sombra abajo). Ajustar posición de la sombra debajo de los ojos, modificar perspectiva, subir opacidad y blur. Usar el cuentagotas para elegir color de piel como tono de sombra.
- **Renderizar:** No es necesario trackear nada; solo renderizar para ver el resultado final.

## Reglas para agentes
- Usa **Option + arrastrar** para duplicar clips apilados en la línea de tiempo.
- Cambia el **blend mode a Lighten** cuando apliques blur sobre una máscara de piel para que se mezcle naturalmente.
- Cuando uses **Drop Shadow** con Auto Mask, arrastra siempre el efecto **Auto Mask** por encima del **Drop Shadow** en el inspector; de lo contrario, la sombra no se aplica.
- Para ajustar ojos, prefiere **Hue/Saturation Curves** en lugar de Color Board para evitar afectar el blanco del ojo.
- Nunca uses **Drop Shadow** con Auto Mask agregado directamente desde el efecto; debes agregar la máscara desde la varita mágica y reordenar los efectos manualmente.
- Cuando una capa superior tape un efecto deseado (ej: suavizado de piel), agrega un nuevo Auto Mask en la capa superior seleccionando todas las áreas modificadas para exponer la capa inferior.

## Errores comunes que evita o menciona
- **Expansión del blur en la mandíbula:** El blur puede expandirse y cubrir el cabello. Se soluciona apilando una capa superior con máscara de cabello que tape esa línea.
- **Auto Mask en Drop Shadow no funciona por defecto:** Si se agrega Auto Mask desde el efecto, la sombra no aparece. La máscara debe estar arriba del efecto en el orden del inspector.
- **Color Board en ojos afecta también el blanco:** No usar Color Board para cambiar color de iris; usar Hue/Saturation Curves para control preciso.
- **Parpadeos arruinan sombras bajo ojos:** Si se usa máscara de ojos para sombras, cada parpadeo elimina la sombra. Solución: usar máscara de cejas en su lugar.
- **Perder suavizado de piel al apilar capas de color:** La capa superior con correcciones de color tapa el blur de piel. Se corrige agregando un Auto Mask en la capa superior que reseleccione todas las áreas modificadas.