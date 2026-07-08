# FCP Green Screen Tutorial 
**Fuente:** jennjagerpro | https://youtu.be/BIhUbLmOf14
## Qué enseña (2-3 líneas)
Domina el keyer de pantalla verde en Final Cut Pro desde clips simples hasta cabello rizado con fondo azul. Incluye 10 consejos prácticos para limpiar bordes, ajustar spill suppression, usar sample color, edges tool y light wrap, además de cómo keyear cualquier color (no solo verde) con el mismo efecto.
## Lecciones accionables
- **Aplicar el keyer:** Selecciona el clip en la línea de tiempo y haz doble clic en el efecto "Green Screen Keyer" (o arrástralo).
- **Deshabilitar fondo antes de ajustar:** Desactiva el clip de fondo (disable) para evaluar la calidad del key sin distracciones.
- **Ajustar niveles en matte tools:** En el inspector → "Matte Tools" → desplegar → usar los sliders de "Levels": sube "Blacks" para limpiar residuos verdes.
- **Renderizar antes de activar fondo:** Deja que el clip renderice (presiona Control+R o espera render automático) para ver el key limpio.
- **Reducir spill suppression cuando el sujeto es verde:** Si el sujeto contiene verde (ej. rúcula), baja "Spill Level" al mínimo para evitar que se torne marrón.
- **Shrink/Expand con valores decimales:** El slider "Shrink/Expand" solo se mueve en incrementos de 1; haz doble clic en el valor numérico e ingresa manualmente decimales (ej. -1.5) para ajuste fino.
- **Sample color para keyear cualquier color:** En el inspector, activa "Sample Color" (clic en el cuadro) o mantén presionada la tecla Shift y arrastra un rectángulo en el visor sobre el color a keyear (ej. amarillo).
- **Fill holes para restaurar áreas perdidas:** En "Matte Tools", sube "Fill Holes" para recuperar pequeñas zonas que se keyearon de más (ej. parte de una sudadera).
- **Aplicar correcciones de color DESPUÉS del key:** Usa "Color Board" o "Color Wheels" para ajustar saturación, temperatura y contraste solo después de tener el key limpio.
- **Light wrap para integrar sujeto con fondo exterior:** En el efecto Green Screen Keyer → desplegar "Light Wrap" → sube "Amount" para simular luz de fondo sobre el sujeto.
- **Edges tool para cabello fino:** Activa "Edges Tool" (clic en el cuadro o mantén Command + arrastra una línea desde el sujeto hacia el espacio negativo) → usa el mango central para ajustar bordes.
- **Ajustar Strength del keyer:** Baja el slider "Strength" para recuperar detalles de piel si el key se come al sujeto.
- **Zoom en el color wheel:** Mantén presionada la tecla Z (lupa) y haz clic en el círculo de "Color Selection" para ampliarlo y mover el puck central con precisión.
- **Evitar soften y erode en cabello:** No uses "Soften" ni "Erode" en bordes de cabello rizado o con flyaways, pues delatan que es un key.
- **Spill suppression inverso para fondo azul:** Si el fondo es azul, sube "Spill Level" (el opuesto del azul es naranja, que es tono de piel) para mejorar el key.
- **Añadir film grain para realismo:** Ve a "Stylize" → "Film Grain" → cambia de "iMovie Green" a "Realistic Grain" y baja la intensidad.
- **Renderizar final:** Siempre renderiza el clip después de todos los ajustes para evaluar el resultado final con precisión.
## Reglas para agentes
- Usa "Sample Color" cuando el fondo no sea verde ni azul (ej. amarillo).
- Aplica "Shrink/Expand" con valores decimales (doble clic en el número) para bordes precisos, nunca solo con el slider entero.
- Deshabilita el fondo antes de cualquier ajuste de key; actívalo solo después de renderizar.
- Ajusta "Spill Level" según el color del fondo: bájalo si el sujeto contiene el color del fondo (ej. verde en rúcula), súbelo si el fondo es azul.
- Usa "Edges Tool" (Command + arrastrar) para cabello con flyaways o rizado, no "Soften" ni "Erode".
- Aplica correcciones de color (temperatura, saturación, contraste) solo después de tener el key limpio.
- Usa "Light Wrap" cuando el sujeto fue grabado en estudio y el fondo es exterior.
- Renderiza el clip después de cada ronda de ajustes para ver el resultado real.
- Si el key se come partes del sujeto, baja "Strength" y luego reajusta con "Edges Tool" o "Fill Holes".
- Para fondos azules, sube "Spill Level" (naranja es complementario y favorece tonos de piel).
## Errores comunes que evita o menciona
- **No aplicar spill suppression excesivo en sujetos verdes:** Hace que el verde se vuelva marrón (ej. rúcula). Solución: bajar Spill Level.
- **No usar soften o erode en cabello:** Delatan el key y se ve falso; prefiere Edges Tool y ajustes finos en color wheel.
- **No aplicar correcciones de color antes del key:** Pueden interferir con el chroma key; hazlas siempre después.
- **No dejar el fondo activo mientras ajustas:** Impide ver la calidad real del key; desactívalo hasta que esté limpio.
- **No usar solo el slider entero de Shrink/Expand:** Los saltos de 1 son muy bruscos; usa valores decimales manuales.
- **No ignorar la iluminación del fondo:** Si el sujeto se ve oscuro o con temperatura incorrecta respecto al fondo, ajusta con color wheels y efectos como ambient light.
- **No olvidar renderizar:** Sin render, la vista previa puede mostrar artefactos que no existen en el export final.