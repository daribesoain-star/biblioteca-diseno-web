# vectorizar-logo
**Fuente:** impl-logotipos | https://vectosolve.com/blog/how-to-vectorize-logo-step-by-step

## Qué enseña (2-3 líneas)
Guía paso a paso para convertir un logo en formato PNG raster a un SVG vectorial limpio usando Image Trace en Illustrator y herramientas alternativas. Enfatiza la reducción de anchor points, eliminación de ruido de anti-aliasing y buenas prácticas pre-trazado para obtener vectores profesionales con 1-4 colores.

## Lecciones accionables
- **Presets de Image Trace:** Usar preset "Logo" o "3 Colors" como punto de partida en Illustrator (menú Window > Image Trace).
- **Ajustes técnicos de Image Trace:**
  - **Paths:** valor más alto = más detalle
  - **Corners:** ajustar nitidez de esquinas
  - **Noise:** valor más bajo posible para eliminar motas/píxeles sueltos
- **Post-procesado tras Expand:**
  - Usar **Direct Selection Tool (A)** para ajustar nodos individuales
  - Borrar formas sueltas manualmente
  - Fusionar paths superpuestos con **Pathfinder > Unite**
  - Suavizar curvas con **Smooth Tool**
  - Aplicar **Object > Path > Simplify** para reducir anchor points
- **Requisitos pre-trazado:**
  - Fuente de mayor resolución y contraste posible
  - Eliminar fondo blanco del PNG antes de trazar (fondo transparente = vector más limpio)
  - Mantener conteo de colores bajo: **1-4 colores** (la mayoría de logos)
  - Si el tracer produce docenas de variaciones por anti-aliasing, reducir paleta manualmente
- **Formatos de exportación final:**
  - Guardar .ai para edición nativa
  - Exportar SVG
  - Alternativas: EPS o PDF
- **Herramientas listadas:**
  - Illustrator Image Trace
  - Vectorizer.AI
  - Recraft Vectorize
  - Figma
  - Servicios de hand-tracing
- **Test de calidad:** Zoom al 400% — una forma simple con demasiados anchor points delata trazado sucio o IA que adivinó coordenadas

## Reglas para agentes
- Usa Image Trace con preset "Logo" o "3 Colors" cuando el logo tenga 1-4 colores y fondo sólido
- Nunca "vectorices" incrustando un raster dentro de un SVG (eso NO es un vector)
- Siempre elimina el fondo blanco del PNG antes de trazar para obtener vector más limpio
- Reduce manualmente la paleta de color si el tracer produce docenas de variaciones por anti-aliasing
- Aplica Object > Path > Simplify después de Expand para reducir anchor points excesivos
- Usa Pathfinder > Unite para fusionar paths superpuestos tras el trazado

## Errores comunes que evita o menciona
- **Falso vector:** Incrustar un raster dentro de un SVG no es vectorización real
- **Exceso de anchor points:** Image Trace crea compound paths con nodos redundantes, sobre todo en curvas — usar Simplify y Smooth Tool
- **Anti-aliasing sucio:** El tracer puede producir docenas de variaciones de color por el anti-aliasing del PNG; reducir paleta manualmente a 1-4 colores
- **Fondo blanco no eliminado:** Trazar con fondo blanco genera un vector con bordes irregulares y formas fantasma
- **Baja resolución de origen:** Partir de PNG de baja resolución o bajo contraste produce vectores imprecisos