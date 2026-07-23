# The power of SIMPLE Colorgrading
**Fuente:** esc_color | https://youtu.be/_hqgK4iRLBY

## Que ensena (2-3 lineas)
El video desmitifica la corrección de color en tres pasos: iluminación (natural y artificial), contraste cromático (combinación de colores complementarios entre fondo y sujeto), y un flujo de trabajo de un solo clic usando un power grade/LUT. Muestra cómo aplicar el mismo look en DaVinci Resolve y Premiere Pro, ajustando balance de blancos y sombras para un acabado cinematográfico.

## Lecciones accionables
- **Iluminación natural:** Dispara en ángulos donde haya un gradiente natural de luz (oscuro abajo, más luz arriba) para añadir riqueza y contraste a los colores.
- **Iluminación artificial:** Usa un balance entre key light e ISO bajo. Demasiada luz artificial “puede hacer que los colores se vean raros, especialmente en tonos de piel”.
- **Contraste cromático:** Divide el encuadre en dos categorías: fondo y primer plano. Añade textura al fondo con colores complementarios y luz; construye el sujeto para que contraste con el fondo. Ejemplo: *La La Land*.
- **Flujo en DaVinci Resolve:**
  - Sequence settings: 4K, output color space Rec. 709A.
  - Importar power grade: clic derecho > import > aplicar grade.
  - Ajustes posteriores: calentar white balance en sombras, bajar shadows para look contrastado.
  - Si no tienes versión Pro, toggle off el grano (número en el nodo).
- **Flujo en Premiere Pro:**
  - Arrastrar clip, no cambiar output color space.
  - Aplicar LUT one-click, luego ajustar shadows si la exposición sube.
  - Calentar white balance.
  - Export: match source, render at maximum depth, use maximum render quality.
  - Si usas Lumetri Look, activar QT gamma compensation en Effects para evitar look lavado.

## Reglas para el director de fotografia IA
- **Usa “natural light gradient” en prompts** cuando quieras un rango tonal rico: “dark at bottom, light at top, natural gradient”.
- **Usa “color contrast” en prompts** para separar sujeto de fondo: “complementary colors in background, subject contrasting background”.
- **Para no alucinar en video IA**, especifica “low ISO, balanced key light” en prompts de iluminación artificial; evita “harsh artificial light” que distorsiona pieles.
- **Incluye “warm white balance in shadows”** en prompts de color grading para el look contrastado que enseña.
- **Usa “Rec. 709A output”** como referencia de espacio de color en prompts técnicos.
- **Para movimiento de cámara**, combina con “gradient light” para mantener riqueza cromática: “camera pans from dark bottom to light top”.

## Errores comunes que evita o menciona
- **Demasiada luz artificial:** Hace que los colores se vean “weird”, especialmente en tonos de piel. Solución: balancear key light con ISO bajo.
- **No usar contraste cromático:** El color grading se siente plano. Solución: siempre emparejar colores complementarios entre fondo y sujeto.
- **Aplicar LUT sin ajustar exposición:** En Premiere Pro, la exposición puede quedar alta; hay que bajar shadows manualmente.
- **Olvidar QT gamma compensation en Premiere:** Sin activarlo, el look se ve “washed out”. Solución: ir a Effects > Lumetri Look > activar QT gamma compensation.
- **Usar power grade sin togglear el grano en versión no Pro:** Aparece el logo de DaVinci; hay que desactivarlo en el nodo.