# goodui_patterns
**Fuente:** https://goodui.org/patterns/ | destilado 2026-07-22

## Qué enseña (2-3 líneas)
GoodUI identifica patrones de diseño que han ganado repetidamente en pruebas A/B reales (634 tests, 147 millones de visitantes). Enseña qué elementos visuales y de interacción tienen mayor probabilidad de aumentar conversiones, leads, ventas y engagement, basándose en evidencia empírica compartida por empresas colaboradoras.

## Lecciones accionables

- **Viñetas de reaseguramiento (Pattern #15):** Usar listas con bullets que resuman beneficios o garantías (ej. en páginas de producto o checkout) incrementa confianza y progresión. Probado por Jakub Linowski en Test #662 (jul 2026).
- **Sugerencia automática (Pattern #98):** Implementar autocompletado en campos de búsqueda o formularios reduce fricción. Test #661 (jul 2026) mostró mejora en finalización.
- **Auto siguiente (Pattern #93):** En flujos de varios pasos (onboarding, wizard), avanzar automáticamente al siguiente paso tras completar el actual acelera la tasa de finalización. Tests #659 y #660 en Obs.no (jul 2026).
- **Etiqueta "Ya visto" (Pattern #92):** Marcar ítems que el usuario ya ha visto (ej. en listados de productos o contenido) mejora navegación y reduce fatiga de decisión. Test #658 en Online.metro-cc.ru (jun 2026).
- **CTA sticky (Pattern #41):** Botón de llamada a la acción que permanece visible al hacer scroll (ej. "Añadir al carrito" o "Comprar ahora") aumenta clics y conversiones. Tests #656, #657 en Obs.no y Obsbygg.no (jun 2026) y #653 en Kensingtontours.com (may 2026).
- **Recordatorio de carrito y "visto recientemente" (Pattern #26):** Mostrar productos abandonados o visitados recientemente en páginas de carrito o listado recupera ventas. Test #652 en Kay.com (may 2026).
- **Vista lista o cuadrícula (Pattern #37):** Ofrecer al usuario la opción de cambiar entre vista de lista y cuadrícula en catálogos mejora la experiencia de exploración. Tests #650 y #651 (may 2026).
- **Botones cuadrados vs. redondeados (Pattern #141):** El radio de las esquinas de los botones impacta en la tasa de clics; probar ambas variantes es clave. Test #649 en Online.metro-cc.ru (may 2026).
- **Callouts de onboarding (Pattern #82):** Pequeños avisos o tooltips que guían al usuario en los primeros pasos (ej. "Haz clic aquí para empezar") aumentan activación. Test #648 en Online.metro-cc.ru (abr 2026).
- **Reaseguramiento gradual (Pattern #11):** Mostrar señales de confianza (sellos, testimonios, garantías) de forma progresiva a lo largo del flujo, no solo al inicio. Test #654 (jun 2026).
- **Más o menos planes (Pattern #113):** En páginas de precios, probar si mostrar 3 planes vs. 4 o 5 planes afecta la selección. Test #655 (jun 2026).

## Reglas para agentes

1. **Priorizar patrones con múltiples tests ganadores** (ej. CTA sticky, auto siguiente, recordatorio de carrito) sobre patrones con un solo test.
2. **Segmentar por métrica objetivo:** Usar patrones etiquetados como "Progression" para flujos de registro/checkout, "Sales" para páginas de producto, "Leads" para formularios.
3. **Combinar patrones complementarios:** Ej. "Bulleted Reassurances" + "Gradual Reassurance" en una misma página de precios.
4. **Invertir patrones perdedores** (43 identificados como "losing") para evitar caídas de conversión conocidas.
5. **Validar con tests propios** incluso los patrones ganadores, pues el contexto de cada sitio puede alterar resultados.

## Errores comunes

- Aplicar un patrón ganador sin considerar el contexto del usuario (ej. "Auto Next" en un flujo donde el usuario necesita revisar información crítica).
- Usar demasiados patrones simultáneamente en una misma página, lo que impide aislar qué cambio realmente funcionó.
- Ignorar los patrones etiquetados como "losing" o "insignificant negative" (43 y 144 respectivamente) y asumir que cualquier cambio puede ser positivo.
- No segmentar por tipo de página: un patrón que funciona en "Home & Landing" puede perjudicar en "Checkout" o "Pricing".
- Confiar únicamente en la popularidad del patrón sin revisar el tamaño de muestra de los tests que lo respaldan (algunos tienen pocos visitantes).