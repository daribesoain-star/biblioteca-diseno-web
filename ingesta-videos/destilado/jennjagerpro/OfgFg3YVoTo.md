# Final Cut Color Correction Hacks
**Fuente:** jennjagerpro | https://youtu.be/OfgFg3YVoTo

## Qué enseña (2-3 líneas)
Seis trucos de corrección cromática en Final Cut Pro: desde máscaras de color y curvas matiz/saturación hasta el botón de balance automático, un plugin de balance de blancos, técnicas para reemplazar cielos grises y cómo cambiar el color de logotipos sin software externo.

## Lecciones accionables
- **Aislar colores con máscara de color:** En el inspector, ve a `Color Board` → icono de máscara → `Add Color Mask`. Usa el cuentagotas para seleccionar el color objetivo (ej. púrpura de remolachas). Ajusta saturación (mids, lights, darks) y exposición (brighten lights, darken darks). Juega con `Softness` para expandir/contraer la máscara.
- **Plugin White Balance Plug-in 2 (fcp-effects.com, $20):** Arrástralo al clip. En el inspector usa `White Balance Selector` para elegir un blanco de referencia. Ajusta `Blacks` (sube para mejorar saturación), `Brightness` (sube para iluminar), evita `Contrast` (prefiere Brightness + Blacks para más control). Usa `Temperature` (azul/naranja) para cambiar la hora del día: azul = mañana temprano, naranja = atardecer/happy hour.
- **Corregir un rango de color con curvas Matiz/Saturación:** En el inspector, selecciona `Hue/Saturation Curves`. Enfócate en `Hue vs Saturation`. Haz clic en la barra de color en los rojos y baja la saturación de ese rango. Añade más puntos en la línea para mantener la saturación de otros colores (piel, etc.) intacta.
- **Balance automático con un clic:** En el inspector, despliega el menú y presiona `Balance Color`. Corrige instantáneamente dominantes de color (ej. elimina tono amarillo, equilibra pieles).
- **Reemplazar cielo gris por azul:** Duplica el clip (Option + arrastrar hacia arriba). En el clip superior, ve a `Color Board` → `Add Color Mask` → selecciona el cielo gris. En la pestaña `Color` → `Master`, ajusta a azul, sube exposición y softness. Luego ve a `Masks` → `Draw Mask`, traza el contorno del cielo. Marca `Invert Mask` para que solo afecte al cielo y no a otros elementos (ej. camisa).
- **Cambiar color de logotipo a blanco o negro:** En `Effects` → `Color` → `Colorize`, arrastra al clip. En el inspector, remapea `Remap Blacks` y `Remap Whites` a blanco. Ajusta `Intensity` para solidificar el color. Útil para convertir logotipos multicolor a blanco sin Photoshop/Illustrator.

## Reglas para agentes
- Usa `Add Color Mask` cuando quieras ajustar un color específico sin afectar el fondo.
- Usa `Hue vs Saturation` curve cuando haya múltiples tonos del mismo color (ej. rojos que sangran) y el cuentagotas no sea preciso.
- Prefiere ajustar `Brightness` y `Blacks` en lugar de `Contrast` para tener control independiente sobre luces y sombras.
- Duplica el clip y usa `Draw Mask` + `Invert Mask` cuando una máscara de color afecte áreas no deseadas (ej. ropa).
- Usa `Balance Color` como primer paso rápido antes de ajustes manuales.
- Usa `Colorize` + remapeo a blanco/negro para cambiar color de logotipos sin software externo.

## Errores comunes que evita o menciona
- Evita usar `Contrast` porque aclara y oscurece al mismo tiempo sin control fino; mejor usa `Brightness` y `Blacks` por separado.
- No uses el cuentagotas de máscara de color cuando hay muchos tonos del mismo color (ej. rojos variados); usa curvas `Hue vs Saturation`.
- No dejes que la máscara de color afecte elementos no deseados (ej. camisa al corregir cielo); duplica el clip y añade `Draw Mask` invertida.
- No ignores el sangrado del rojo en grabaciones; corrígelo con curvas de saturación para evitar aspecto fluorescente.
- No esperes a que el cliente envíe un logotipo en blanco; usa `Colorize` directamente en Final Cut.