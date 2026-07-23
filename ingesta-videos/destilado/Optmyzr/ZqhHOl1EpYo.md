# Keep exact match exact after close variants in Google Ads
**Fuente:** Optmyzr | https://youtu.be/ZqhHOl1EpYo

## Qué enseña (2-3 líneas)
Cómo gestionar el cambio de septiembre de 2019 en el que Google empezó a tratar variantes cercanas (close variants) como equivalentes de las palabras clave de concordancia exacta y frase, haciendo que "exact match" ya no sea exacto. Explica tres estrategias: automatización de pujas, atribución correcta y monitoreo con reglas automatizadas, y muestra cómo usar Optmyzr para detectar y negativizar esas variantes no deseadas.

## Lecciones accionables
- **Activar puja automatizada** para que Google ajuste las pujas según la calidad de la variante cercana, en lugar de usar puja manual que requiere monitoreo constante.
- **Configurar un modelo de atribución correcto** (no last click) para que la puja automatizada no ignore tráfico temprano en el embudo de conversión; asociar valor a cada interacción.
- **Usar el script de Optmyzr** (disponible en el blog del artículo) o la **regla predefinida "Report on close variants"** dentro de la herramienta Optmyzr (Rule Engine > Use an instant recipe > seleccionar "Report on close variants").
- **Pasos para crear la regla de negativización automática**:
  1. Ir a Rule Engine en Optmyzr.
  2. Hacer clic en "Use an instant recipe".
  3. Seleccionar "Report on close variants".
  4. En la configuración, añadir una acción: "Add as keyword" → "Ad group level negative keyword" → "Exact match type".
  5. Opcional: poner la regla en autopilot para que se ejecute diariamente.
- **Interpretar el reporte**: cada fila muestra una palabra clave de concordancia exacta o frase donde Google aplicó close variant, con el search term real, el match type reportado por Google y las estadísticas comparativas (search term vs. keyword).
- **Usar el análisis de condiciones** en Optmyzr para ver cuántos search terms cumplieron cada criterio (ej. condición 1: 331 términos, condición 2: solo 11 continuaron).

## Reglas para agentes
- **Usa puja automatizada** cuando Google aplique close variants, para que el sistema ajuste pujas según la calidad de la variante.
- **Nunca uses last click como modelo de atribución** si activas puja automatizada; Google ignorará tráfico temprano del embudo.
- **Monitorea semanalmente** los search terms que Google reporta como close variants, ya que no se pueden desactivar.
- **Añade como negativo exact match** cualquier variante cercana de concordancia exacta que no sea relevante, usando la regla automatizada de Optmyzr o el script proporcionado.
- **Verifica que la regla de negativización** esté configurada para ejecutarse en autopilot diariamente, no solo como reporte.

## Errores comunes que evita o menciona
- **No asumir que "exact match" sigue siendo exacto**: Google puede mostrar anuncios para consultas con el mismo significado, no idénticas.
- **No ignorar el modelo de atribución**: si usas last click con puja automatizada, Google desvaloriza interacciones tempranas, perdiendo tráfico valioso.
- **No depender solo de reportes manuales**: Google no muestra en la interfaz estándar de AdWords el subtipo "close variant", solo aparece en reportes de Google Ads; hay que usar herramientas como Optmyzr o scripts para detectarlo.
- **No dejar las variantes cercanas sin negativizar**: si no se monitorean, pueden aparecer para términos irrelevantes (ej. errores tipográficos como "optimizer" sin la Z) y desperdiciar presupuesto.