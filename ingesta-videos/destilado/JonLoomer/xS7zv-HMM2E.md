# Should You Count View Through Conversions?
**Fuente:** JonLoomer | https://youtu.be/xS7zv-HMM2E

## Qué enseña (2-3 líneas)
Explica qué son las *view through conversions* (conversiones sin clic, atribuidas por vista en 1 día), por qué son controvertidas y cómo evaluar su valor real según el contexto de la campaña. Enseña a configurar la atribución correcta en Meta Ads Manager para evitar inflar resultados con créditos no merecidos, especialmente en remarketing y eventos gratuitos.

## Lecciones accionables
- **Configuración de atribución para campañas de ventas:** Usa el valor por defecto *7-day click + 1-day view* en el nivel de conjunto de anuncios. Luego, usa la función **Compare Attribution Settings** (dentro de Ads Manager, columna "Attribution") para ver la distribución entre *7-day click*, *1-day click* y *1-day view*.
- **Segmentación por audiencia:** Define en **Audience Segments** (dentro de la configuración de anuncios) tus listas de *existing customers* y *engaged audience*. Aplica el desglose por *audience segments* para identificar cuántas conversiones *view through* provienen de remarketing vs. audiencias nuevas.
- **Campañas de leads (no compra):** En el conjunto de anuncios, cambia la atribución a **1-day click** (sin *view through*). Si no lo configuraste así, usa *Compare Attribution Settings* y descarta todas las conversiones *1-day view*.
- **Remarketing (cualquier objetivo):** Configura la atribución como **7-day click** para compras o **1-day click** para eventos no comerciales. Si no lo hiciste, usa *Compare Attribution Settings* y elimina todas las *1-day view*.
- **Análisis de resultados:** Al eliminar *view through*, recalcula manualmente: *conversiones totales - view through = conversiones reales*, luego *costo total / conversiones reales = costo por conversión ajustado*, y *ingresos / costo total = ROAS ajustado*.

## Reglas para agentes
- Usa *7-day click + 1-day view* como atribución por defecto solo para campañas de ventas a audiencias nuevas.
- Nunca incluyas *view through* en el cálculo de resultados para campañas de leads o eventos gratuitos; fuerza *1-day click*.
- Cuando analices remarketing, descarta siempre las *1-day view*; si no puedes cambiar la atribución en el conjunto, filtra manualmente en el reporte.
- Usa *Compare Attribution Settings* siempre que reportes resultados a clientes para mostrar la diferencia entre atribuciones.
- No reportes *cost per conversion* o *ROAS* sin especificar qué porcentaje son *view through*; si superan el 30%, menciónalo explícitamente.

## Errores comunes que evita o menciona
- Ignorar que las *view through* existen y reportar 100 conversiones como si todas fueran clics, inflando el ROAS.
- Asumir que todas las *view through* son fraudulentas o que Meta "roba crédito"; en realidad, algunas sí reflejan impacto real (ej. compra considerada sin clic).
- Usar *view through* en remarketing: un usuario que ya recibe emails o visita el sitio regularmente puede convertir sin que el anuncio haya influido, pero Meta lo atribuye igual.
- No ajustar la atribución en el conjunto de anuncios para leads, permitiendo que el algoritmo optimice hacia *view through* fáciles y baratas pero de bajo valor real.