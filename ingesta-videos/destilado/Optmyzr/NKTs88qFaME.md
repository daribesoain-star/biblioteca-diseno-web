# How Melissa Achieved a 154% Increase in Conversions and a 59% Decrease in CPA for Her Client
**Fuente:** Optmyzr | https://youtu.be/NKTs88qFaME

## Qué enseña (2-3 líneas)
Cómo usar audiencias (primarias y de comportamiento) para identificar compradores B2B en campañas de búsqueda, y cómo importar datos de CRM (MQLs/SQLs) a Google Ads para que el smart bidding optimice por leads reales en lugar de simples formularios. Se explica el uso de campañas upper-funnel (Display, YouTube, Discovery) para "sembrar" audiencias y luego retargetearlas con RLSA.

## Lecciones accionables
- **Para crear audiencias B2B cuando no hay listas propias suficientes:** ejecuta campañas upper-funnel (Google Display, YouTube, Discovery) con contenido muy específico del negocio (white papers, ebooks, videos largos). Define la audiencia como "personas que vieron el 75% del video" o "personas que aterrizaron en la página de contenido". El CPC en YouTube puede ser ~$0.15 y en Discovery ~$0.39.
- **Para importar leads calificados a Google Ads:** conecta tu CRM (Salesforce, HubSpot) directamente o vía Zapier. Configura la importación de conversiones offline usando el tipo de lead "MQL" o "respondent" (el siguiente paso después del form fill). Google requiere al menos 20 conversiones de ese tipo en 30 días para que smart bidding funcione bien.
- **Para cambiar de "form fills" a "MQLs" como conversión objetivo:** hazlo de golpe (cold turkey) y tolera 1-2 semanas de volatilidad, o cambia a puja manual por un periodo corto y luego activa smart bidding con el nuevo objetivo de CPA.
- **Para filtrar leads falsos sin eliminar Gmail/Yahoo:** agrega preguntas en el formulario como "¿Cuál es el nombre de tu empresa?", "¿Qué problema necesitas resolver?" o "¿En qué plazo necesitas una solución?" (opciones: "inmediatamente", "próximos 90 días", "solo estoy explorando").
- **Para usar audiencias de LinkedIn en Microsoft Advertising:** aprovecha la integración nativa de LinkedIn con Microsoft Ads para targeting B2B, aunque el CPC suele ser más alto que en otras redes.

## Reglas para agentes
- Usa audiencias de observación (observation) en campañas de búsqueda siempre que tengas listas de al menos 1,000 personas (idealmente 20,000 para buena tracción, con match rate del 30-40% en B2B).
- Nunca optimices smart bidding basado en "form fills" si más del 50% de esos formularios resultan ser leads no calificados (estudiantes, consumidores, datos falsos). Importa siempre MQLs o SQLs desde tu CRM.
- Cuando importes conversiones offline, usa el tipo de lead más temprano posible (MQL) para dar suficiente volumen a smart bidding, no esperes a SQL o closed-won (pueden tardar 18 meses en B2B).
- Si usas Discovery campaigns para generar audiencias, mide el CPA holísticamente (incluyendo el costo de las campañas upper-funnel) y no en silos por canal.
- Para evitar shocks en smart bidding al cambiar de métrica de conversión, mantén puja manual durante 1-2 semanas antes de activar Target CPA con el nuevo objetivo.

## Errores comunes que evita o menciona
- **Eliminar leads con correos Gmail/Yahoo:** se descartan leads B2B legítimos de personas que usan su email personal. En lugar de filtrar por dominio, usa preguntas adicionales en el formulario (nombre de empresa, caso de uso).
- **Usar solo "form fills" como conversión para smart bidding:** Google optimiza por volumen de formularios, no por calidad. Un cliente tenía 100 form fills pero solo 1 MQL; otro tenía 25 form fills y 20 MQLs. El smart bidding favorecía al primero, que era el peor.
- **Ignorar Discovery campaigns en B2B:** se asume que solo sirven para leads directos, pero generan audiencias a bajo CPC ($0.39) y también producen leads a fracción del costo de búsqueda.
- **No integrar CRM con Google Ads:** mantener ajustes manuales de CPA basados en tasas de conversión estimadas es inexacto y requiere supervisión constante. La integración automatizada (vía conector nativo o Zapier) actualiza los datos en tiempo real.
- **Esperar a SQL o closed-won para importar conversiones:** en B2B el ciclo de ventas puede ser de 18 meses, lo que deja a smart bidding sin datos suficientes para aprender. Usa MQL como métrica intermedia.