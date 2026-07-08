# ¿Cómo hice esta foto? Tutorial editando con PhotoShop.
**Fuente:** mundoaudiovisual | https://youtu.be/HX8aGacQHt0

## Qué enseña (2-3 líneas)
El tutorial explica el proceso completo de edición de una foto de estudio con una esfera de energía naranja. Cubre desde el revelado en Camera Raw, la limpieza de imperfecciones, el realce de ojos con capas y máscaras, hasta el recorte y montaje de un elemento externo (la esfera) y la creación de un efecto de luminancia con degradados.

## Lecciones accionables
- **Revelado en Camera Raw:** Ajustar sombras para recuperar detalle oscuro, reducir exposición para mantener fondos oscuros, eliminar aberración cromática y aplicar reducción de ruido ligera (dejar en "un punto").
- **Limpieza de piel:** Usar la herramienta **Parche (Patch Tool)** para eliminar lunares e imperfecciones.
- **Realce de ojos (técnica de capas):**
    1. Duplicar la capa base.
    2. Convertirla en **objeto inteligente** (clic derecho > "Convertir en objeto inteligente").
    3. Aplicar **Filtro Camera Raw** sobre esa capa.
    4. Subir mucho la exposición para extraer detalle de ojos.
    5. Reducir ruido en esa capa.
    6. Duplicar la capa de ojos otra vez.
    7. Añadir **máscara de capa** a la capa superior y pintar con **pincel negro** sobre los ojos para revelar los ojos subexpuestos de la capa inferior.
    8. Reducir opacidad de la capa si el efecto es demasiado intenso.
- **Recorte de la esfera de energía:**
    1. Buscar imagen de "energy ball" en internet.
    2. Usar **Pluma (Pen Tool)** para trazar el contorno de la esfera.
    3. Crear una **máscara con desvanecimiento (feather mask)** para bordes suaves.
    4. Convertir la capa de la esfera en **objeto inteligente**.
- **Integración de la esfera con la mano:**
    1. Con la **Pluma**, seleccionar cada dedo que debe pasar por delante de la esfera.
    2. Hacer "Make Selection" con **4 píxeles de pluma**.
    3. Ir a la capa de la esfera y borrar la selección (para que el dedo quede delante).
    4. Repetir para cada dedo.
- **Iluminación del dedo oscuro:** Si un dedo queda oscuro al tocar la esfera, usar la capa más brillante creada antes (con máscara) y pintar con **pincel negro** sobre la máscara para revelar la iluminación en ese dedo.
- **Efecto de luminancia (glow):**
    1. Seleccionar la capa de la esfera.
    2. Crear una nueva capa.
    3. Usar **Herramienta Degradado (Gradient Tool)** con modo **circular**.
    4. Elegir color **naranja** para el primer color y **negro** para el segundo.
    5. Arrastrar desde el centro de la esfera hacia afuera.
    6. Cambiar el **modo de fusión** de la capa a **Trama (Screen)**.
    7. Duplicar la capa de degradado 2-3 veces para intensificar el brillo.
    8. Ajustar opacidad si es necesario.

## Reglas para agentes
- Usa **Camera Raw** como primer paso para ajustar sombras, exposición y ruido antes de editar en Photoshop.
- Siempre convierte capas a **objeto inteligente** antes de aplicar filtros no destructivos (como Camera Raw filter).
- Usa **Pluma (Pen Tool)** para recortes precisos de objetos con bordes suaves, combinada con **máscara con desvanecimiento**.
- Cuando borres partes de una capa para que un elemento pase delante, usa **4 píxeles de pluma** en "Make Selection" para bordes naturales.
- Para efectos de luz, usa **modo de fusión Trama (Screen)** con degradados naranja-negro.
- Nunca dejes un dedo que toca una fuente de luz sin iluminación; corrígelo revelando una capa más brillante con máscara.

## Errores comunes que evita o menciona
- **Sobreexponer sombras:** No subir demasiado las sombras en Camera Raw porque aparece ruido; aplicar reducción de ruido ligera.
- **Fondo demasiado claro:** Mantener los negros y sombras del fondo oscuros para que el contraste funcione.
- **Recorte perfecto innecesario:** No es necesario que el recorte con Pluma sea exacto porque el desvanecimiento (feather) disimula los bordes.
- **Dedo oscuro al tocar la esfera:** No ignorar que un dedo que toca una bola de fuego debe estar iluminado; usar capas de exposición para corregirlo.
- **Efecto de brillo débil:** Si el degradado en modo Trama no es suficiente, duplicar la capa varias veces hasta lograr la intensidad deseada.