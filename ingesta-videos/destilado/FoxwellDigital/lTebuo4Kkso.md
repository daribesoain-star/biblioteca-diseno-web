# Reporting Mastery with Phil Kiel
**Fuente:** FoxwellDigital | https://youtu.be/lTebuo4Kkso

## Qué enseña (2-3 líneas)
Phil Kiel enseña un enfoque de reporting centrado en valor, no en volumen: menos informes, más narrativa estratégica. Muestra cómo usar forecasting granular (anual → trimestral → mensual → diario) para controlar la narrativa con clientes, y cómo combinar datos de Meta Ads, Shopify, Triple Whale y Google Sheets para tomar decisiones basadas en incrementabilidad y margen de contribución, no en métricas vanity.

## Lecciones accionables
- **Forecasting descendente:** Parte de un objetivo anual (basado en stock, cash flow o metas de inversores), divídelo en 4 trimestres, luego en 3 meses cada uno, y finalmente en rendimiento diario. Ejemplo: "50% del negocio en Q4 → dividir Q4 en 3 meses → febrero tiene San Valentín → 30% más que el 33% promedio del trimestre".
- **Plantilla de forecasting (Google Sheets):** Columna A: meses del año. Columna B: objetivo mensual. Columna C: rendimiento real actualizado "mid-month y end-of-month". Fila de "pacing": ingresa la fecha de actualización (ej. 22 de agosto), "month to date" hasta el día 21, días restantes en el mes, y la fórmula escupe a dónde se está paceando.
- **Uso de "pacing" para control narrativo:** Si el revenue está sobre-pacing pero el spend también, toca escalar. Si el revenue está bajo-pacing y el spend sobre-pacing, hay que ajustar. Todo vuelve a "tomar mejores decisiones, construir confianza, controlar la narrativa".
- **Triple Whale:** Mínimo instalar el "free dashboard" en Shopify para cálculos automáticos de "new customer CPA". Si usas el pixel, verifica si "directionally the same" vs. datos in-platform; si es así, considera salir del pixel.
- **Meta Ads Reporting (no Ads Manager):** Usa la sección "Ads Reporting" para: cambiar ventana de atribución (7-day click, 1-day view) antes que en Ads Manager; aplicar "conditional formatting" (ej. "format → create rule → condition greater than 3.6 → apply to column frequency → color"); comparar múltiples ad accounts simultáneamente (necesitas ≥2 cuentas; usa una dummy sin spend para activar la feature).
- **Comparativa year-on-year vs. month-on-month:** Negocios en "scale mode" (crecimiento >100% interanual) usan month-on-month. Negocios estacionales o legacy usan year-on-year. Ejemplo: "Freya's Stock Bone Broth: 2000% YoY no ayuda a decidir; mejor mes contra mes".
- **Shopify:** Dos reportes clave: "Sales over time" y "First time vs. returning customer sales". Filtra por semana, ordena por semana, y mira si "estás teniendo la mejor semana de ingresos de nuevos clientes". Eso controla la narrativa emocional.
- **Motion (herramienta de reporting creativo):** Usa "comparative analysis" agrupando ads por tipo (ej. whitelist, UGC) en lugar de mirar ads individuales. Ejemplo: cliente pregunta "¿deberíamos hacer más whitelist ads?" → muestras el grupo completo vs. otros grupos para justificar la decisión con mayor volumen de datos.
- **Informe mensual (deck):** Mínimo: tabla con "Revenue month to date", "Blended CPA", y métricas clave contra las que te retan. Estructura: primero "business performance" (Shopify level + total ad spend), luego "platform level data". Cada sección: target vs. performance vs. pacing. Luego narrativa: "por lo tanto, necesitamos escalar / recortar / arreglar algo / estamos bien".
- **Regla de los 3 puntos:** En cada llamada mensual, presenta solo 3 puntos que te entusiasmen personalmente. Construye el reporte "egoístamente" para ti, no para el cliente. Si hay demasiados datos, el cliente no se involucra.
- **Ajuste trimestral:** Si fallas un trimestre, no arrastres esa deuda al siguiente. "Pon un punto final y estaciona ese trimestre". Solo añade carga si hay una razón sólida (ej. nuevo producto, restock, evento estacional).

## Reglas para agentes
- Usa "month-on-month" cuando el negocio esté en modo escala (crecimiento >100% YoY); usa "year-on-year" para negocios estacionales o legacy.
- Nunca compartas números que el cliente pueda obtener por sí mismo; comparte solo lo que los números *significan*.
- Siempre empieza el informe con "business performance" (Shopify level + total ad spend) antes de pasar a "platform level data".
- Cuando uses Meta Ads Reporting con múltiples cuentas, incluye al menos una cuenta dummy sin spend para activar la opción de cambiar ventana de atribución.
- Si un trimestre se falla, no lo arrastres al siguiente trimestre a menos que haya una razón fundamentada (nuevo producto, restock, evento).
- En cada llamada mensual, limita la presentación a 3 puntos máximos; prioriza los que te generen más entusiasmo personal.
- Para el forecasting, siempre divide el objetivo anual en trimestres, luego en meses, luego en rendimiento diario; compara el daily run rate contra el máximo histórico para validar realismo.
- Cuando uses Motion, agrupa ads por tipo (ad name, ad type) para decisiones basadas en conjuntos de datos grandes, no en ads individuales.
- En Shopify, revisa "First time vs. returning customer sales" semanalmente para controlar la narrativa de rendimiento de nuevos clientes.
- Si el spend en Meta está consistentemente 2-5% por encima del budget diario, úsalo como indicador positivo de oportunidad; si está por debajo, investiga por qué no se usa el budget completo.

## Errores comunes que evita o menciona
- **Reportar por reportar:** No envíes informes semanales a menos que el cliente los necesite específicamente. Cambia a mensuales y usa la comunicación para "strategy sense-checking", no para compartir números.
- **Arrastrar deudas trimestrales:** Si fallas Q1, no lo añadas a Q2. Eso "compounds" y hace cada mes más difícil. Mejor "pon un punto final y estaciona ese trimestre".
- **Sobrecargar el informe mensual:** Demasiados datos en Looker Studio o Data Studio generan "tumbleweed" (silencio incómodo). El cliente no sabe qué decir. Reduce a 3 puntos clave.
- **Mirar solo el espejo retrovisor:** Un cliente le dijo "no me importa el pasado, puedo acceder a esos datos yo mismo. ¿Qué viene?". No screenshotees el mes pasado; enfócate en estrategia futura.
- **Automatizar antes de validar:** No automatices un reporte en Google Sheets hasta que lo hayas construido manualmente, lo hayas "stress-tested" por un tiempo, y luego contrates a alguien para la automatización.
- **Usar demasiadas herramientas de atribución:** Después de iOS 14, pasaron mucho tiempo en Google Analytics con diferentes ventanas de atribución, pero "no tomamos mejores decisiones con toda esa información". Ahora pasan menos tiempo en números y más en estrategia creativa.
- **Confundir rendimiento de plataforma con rendimiento de negocio:** Un cliente puede decir "no estamos yendo bien" cuando en realidad es el mejor año de la empresa. Usa el reporte para reencuadrar: "zoom out, este es el mejor rendimiento de tu negocio".
- **No ajustar el forecast por estacionalidad:** No asumas rendimiento plano todo el año. Ejemplo: Q3 es "terrible" para un negocio estacional, así que forecast 33k vs. 180k en Q1.
- **No educar sobre promedios anuales:** Cliente espera 5x ROAS todo el año, pero pre-Black Friday es malo y Black Friday es increíble. Usa el forecast para mostrar que el promedio anual se mantiene aunque haya meses malos.