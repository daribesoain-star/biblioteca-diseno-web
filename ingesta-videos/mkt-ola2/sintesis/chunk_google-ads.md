

===== 7uK3BKWdcks =====
# Destilación del tutorial: "Google Ads getting harder? Here's the 7-step easy mode"

**Fuente:** NA | https://youtu.be/7uK3BKWdcks

## Qué enseña (2 líneas)
Siete pasos fundamentales para gestionar Google Ads con resultados consistentes (tasas de conversión del 28-37%), priorizando lo básico sobre tácticas nuevas o complejas. El enfoque está en la configuración de expectativas, tracking propio, búsqueda manual, presupuestos no restrictivos, análisis de competidores, control de landing pages y reportes simplificados.

## Tácticas accionables (con números, umbrales, pasos, nombres exactos de features/paneles — nada vago)

1. **Onboarding con propuesta de 2 páginas** que incluya:
   - Meta clara (ej: "1,000 leads", "63 llamadas telefónicas")
   - Tabla con cronograma mes 1, mes 2, mes 3 (qué harás y cuándo)
   - Frecuencia de comunicación: llamada bimensual + reporte mensual (sin correos de emergencia cada hora)

2. **Tracking de primera parte (first-party data):**
   - Capturar datos offline y subirlos a Google Ads como conversiones secundarias
   - Usar server-side tracking (enlace a 2 videos: uno para datos offline, otro para server-side)
   - Opcional: subir leads calificados como conversiones para pujar contra ellos

3. **Campaña de búsqueda manual:**
   - Investigación de palabras clave → usar solo **exact match**
   - **Puja manual** (sin automatización al inicio)
   - Estructura: 1 ubicación + 1 servicio + 1 lista de negativos por grupo de anuncios
   - Ejemplo: "divorce lawyer" → grupo de anuncios separado para "dentist London" vs "dentist Manchester"
   - Si falta rendimiento: agregar más keywords exactas → pasar a **phrase match** → luego a **broad**
   - Si el CPA es bajo: subir puja para ganar volumen
   - Migrar a **target CPA** solo cuando tengas datos suficientes y confianza en las conversiones

4. **Presupuesto no restrictivo:**
   - Dar a la campaña principal (la que más convierte) presupuesto suficiente para no topear
   - Si el presupuesto es limitado: **bajar las pujas** para obtener más clics por el mismo dinero
   - Si ves el estado "limitado por presupuesto" en Google Ads: reducir pujas inmediatamente

5. **Ad Reconnaissance (análisis de competidores):**
   - Buscar en resultados de búsqueda los anuncios de competidores
   - Desglosarlos en componentes (oferta, copy, ángulos)
   - Identificar debilidades para atacar con mejor posicionamiento
   - Usar plantilla (disponible en edleak.com)

6. **Control de landing page:**
   - Aplicar aprendizajes del Ad Recon al hero section (parte superior)
   - Elementos clave: **oferta directa**, **propuesta de valor**, **formulario**, **señales de confianza**
   - Ejemplo legal: landing page con 25% de conversión usando estos elementos

7. **Reporte de 1 página:**
   - Métricas a incluir: inversión publicitaria, conversiones, valor de conversión, costo por conversión
   - Para e-commerce: agregar ingresos
   - Para generación de leads: agregar calidad de conversión (cuántos leads se convierten en ventas reales)
   - NO incluir métricas superfluas de Google Ads

## Reglas para el erudito ("usa X cuando Y")

- **Usa exact match + puja manual** cuando inicies una cuenta o campaña nueva (sin datos históricos)
- **Cambia a phrase match o broad** cuando necesites más volumen y el rendimiento actual sea sólido
- **Migra a target CPA** solo cuando tengas suficientes conversiones y estés "harto de hacer pujas manuales"
- **Reduce pujas** si el presupuesto es fijo y estás llegando al límite diario
- **Sube pujas** si tu costo por conversión está por debajo de lo aceptable y necesitas más volumen
- **Usa first-party data para pujar** solo si los datos son suficientes y de calidad (no siempre funciona)
- **Haz Ad Recon manualmente primero** antes de automatizarlo con IA, para entender por qué funciona

## Errores comunes

- Esperar a después de la venta para definir expectativas con el cliente (debe ser en el onboarding)
- Decir "el tracking no es mi responsabilidad" — si no lo haces, otro lo hará y ganará el cliente
- Empezar con automatización (Smart Bidding, broad match) antes de tener datos de conversiones confiables
- Poner "dentist London" y "dentist Manchester" en el mismo grupo de anuncios (deben separarse por intención)
- Restringir el presupuesto de la campaña que mejor convierte (ahogarla)
- Reportar todas las métricas de Google Ads al cliente (abrumar con datos irrelevantes)
- Ignorar la landing page y solo enfocarse en los anuncios
- No analizar los anuncios de la competencia para mejorar la oferta y el copy

===== Tev0TcezClo =====
```markdown
# How to score Google Ads leads for better offline conversions
**Fuente:** NA | https://youtu.be/Tev0TcezClo
**Dominio:** google-ads

## Qué enseña (2 líneas)
A implementar un sistema de puntuación de leads (lead scoring) basado en eventos del CRM para identificar leads de alta calidad y subirlos como conversiones offline a Google Ads. El objetivo es mejorar la tasa de cierre del equipo de ventas y optimizar las campañas para obtener leads que realmente generen resultados de negocio.

## Tácticas accionables (con números, umbrales, pasos, nombres exactos de features/paneles — nada vago)
1.  **Integrar CRM con Google Ads:** Conecta tu CRM (ej. HubSpot) con Google Ads para capturar automáticamente el **GCLID (Google Click ID)** en cada lead. Si no hay integración directa, usa **Zapier** para pasar el GCLID como propiedad personalizada.
2.  **Crear un flujo de puntuación (Lead Scoring Workflow):** En tu CRM, crea un workflow que asigne puntos de forma **incremental (no acumulativa)** basado en propiedades del lead. Ejemplo de puntuación para una empresa de jardinería:
    *   **Ubicación (dentro del área de servicio):** Puntos altos (ej. +50). Si está fuera, 0 puntos o puntos negativos.
    *   **Presupuesto estimado (Tier de gasto):** Ordena por valor del proyecto. Ej: Proyecto pequeño (+10), mediano (+20), grande (+30).
    *   **Estado del lead (Lead Status):** Define una escala de 0 a 100. Ej: Formulario enviado (+0), llamada sin respuesta (+0), buena conversación telefónica (+10), cotización enviada (+20), orden de trabajo firmada (+40), pago por adelantado (+60), cliente satisfecho (+80).
3.  **Automatizar cambios de estado:** Crea workflows que actualicen el "Lead Status" automáticamente. Por ejemplo: "Cuando se cree un trato (deal) asociado al contacto, actualizar el estado a 'Orden firmada'".
4.  **Subir conversiones offline a Google Ads:**
    *   Filtra en tu CRM los leads con la puntuación más alta (ej. los que tienen "Orden firmada" o "Pago recibido").
    *   Exporta el **GCLID** de esos leads.
    *   Súbelos a Google Ads como **"Conversiones offline"** (Offline Conversions) dentro de los 90 días posteriores al clic.
5.  **Usar pujas basadas en valor (Value-Based Bidding):** Si asignas un valor monetario a cada lead (ej. el valor del contrato firmado), actívalo en la conversión offline para que Google optimice hacia leads de mayor valor.

## Reglas para el erudito ("usa X cuando Y")
*   **Usa Lead Scoring incremental (no acumulativo)** cuando quieras que la puntuación refleje el estado actual del lead, no la suma de todas sus interacciones pasadas. Así, si un lead retrocede de etapa, su puntuación baja automáticamente.
*   **Usa Zapier o integraciones nativas** cuando tu CRM no tenga una conexión directa con Google Ads para capturar el GCLID.
*   **Usa un evento que ocurra dentro de 90 días** como medida de calidad si el ciclo de ventas de tu cliente es más largo que ese plazo. El GCLID expira a los 90 días.
*   **Usa opciones predefinidas (dropdowns) en los formularios** en lugar de campos de texto libre para la ubicación o el presupuesto, para evitar errores tipográficos que rompan las automatizaciones de puntuación.

## Errores comunes
- **No revisar periódicamente los datos del CRM:** Los errores tipográficos en campos de texto libre (como "ciudad") pueden hacer que un lead no entre en el flujo de puntuación correcto o reciba una puntuación incorrecta.
- **Confiar en que el equipo de ventas hará la cualificación manualmente:** El creador del video asume que los vendedores no tienen tiempo ni urgencia para calificar leads, por lo que automatizar la puntuación es crítico.
- **Subir todos los leads como conversiones offline:** Solo debes subir aquellos que hayan demostrado ser de alta calidad (ej. que firmaron un contrato o pagaron). Subir leads fríos o spam perjudica el modelo de optimización.
- **Ignorar la ventana de 90 días del GCLID:** Si el ciclo de ventas es más largo, debes encontrar un hito intermedio (ej. "cotización enviada" o "reunión agendada") que ocurra dentro de esos 90 días para usarlo como señal de calidad.
```

===== qFH1CN1FRQA =====
# Why I’m Removing Negative Keywords in 2026
**Fuente:** NA | https://youtu.be/qFH1CN1FRQA
**Dominio:** google-ads

## Qué enseña (2 líneas)
Explica cuándo dejar de añadir palabras clave negativas y empezar a eliminarlas para mejorar el rendimiento. Diferencia dos fases: cuentas nuevas o con bajo volumen de conversiones (fase 1: añadir negativas) y cuentas maduras con alto volumen y smart bidding estable (fase 2: probar eliminando negativas).

## Tácticas accionables (con números, umbrales, pasos, nombres exactos de features/paneles — nada vago)

1. **Identificar si estás en fase 2 (apto para eliminar negativas):**
   - Tus campañas tienen suficiente volumen de conversiones para que el smart bidding sea consistente.
   - Al cambiar el objetivo de ROAS (ej. de 200% a 220%), no hay periodos erráticos ni caídas bruscas.
   - Usas mayormente broad match o Performance Max y funcionan bien.
   - Te sientes cómodo y confiado en el rendimiento de las campañas.

2. **Probar eliminación de negativas por lotes:**
   - Empieza eliminando solo las negativas de competidores.
   - Monitorea el rendimiento durante un período significativo (ej. varias semanas).
   - Si funciona, elimina más lotes de negativas gradualmente.
   - No es necesario eliminar todas de golpe; hazlo según tu tolerancia al riesgo.

3. **Ejemplo real mostrado (cuenta de shopping):**
   - Gasto anual: ~$168,000.
   - Ingresos: ~$500,000 (ROAS 2.91).
   - Negativas reducidas de miles a solo 18 términos.
   - Resultado: término competidor "Lovesac" generó $7,000 a ROAS ~4x (superando el objetivo de la campaña).

4. **Excepción: mantener negativas "evidentes":**
   - Si no vendes un producto (ej. "recliner" cuando no vendes sillones reclinables), mantén esa negativa aunque estés en fase 2.

## Reglas para el erudito ("usa X cuando Y")

- **Usa negativas agresivas (diarias)** cuando la cuenta es nueva o tiene bajo volumen de conversiones.
- **Usa eliminación de negativas** cuando el smart bidding es consistente, usas broad match o PMax con éxito, y cambiar objetivos de ROAS no causa inestabilidad.
- **Usa negativas de competidores** en fase 1; **elimínalas para probar** en fase 2.
- **Mantén negativas de términos "obvios"** (productos que no vendes) incluso en fase 2.
- **Usa el panel de "términos de búsqueda"** para revisar gasto desperdiciado incluso después de eliminar la mayoría de negativas.

## Errores comunes

- Añadir negativas sin límite incluso cuando la cuenta ya tiene alto volumen y smart bidding estable, limitando subastas rentables.
- Pensar que términos de competidores siempre deben ser negativos; en fase 2, Google puede encontrar tráfico conversor dentro de esos términos.
- Eliminar todas las negativas de golpe sin probar por lotes.
- No diferenciar entre fase 1 (añadir) y fase 2 (eliminar) según el volumen de conversiones y la madurez de la cuenta.
- Asumir que el bajo gasto mensual equivale a fase 2 (ej. B2B SaaS con $100k/mes pero pocas conversiones sigue siendo fase 1).

===== TCdSxn-V2-c =====
# I Audited 10,000,000 in eCommerce Ad Spend — They All Made the Same 5 Mistakes
**Fuente:** NA | https://youtu.be/TCdSxn-V2-c
**Dominio:** google-ads

## Qué enseña (2 líneas)
Cómo identificar y corregir los 5 errores más frecuentes en cuentas de Google Ads para eCommerce, basados en la auditoría de ~$10M en inversión publicitaria durante 2026. El enfoque central es pasar de optimizar por ROAS a optimizar por crecimiento de nuevos clientes con unidad económica sostenible.

## Tácticas accionables (con números, umbrales, pasos, nombres exactos de features/paneles — nada vago)
1. **Excluir marca de Performance Max:** Agrega tu marca como *palabra clave negativa* en la campaña PMax. También puedes usar la opción de *exclusión de marca* en la configuración de la campaña (campaign settings). Filtra los términos de búsqueda por tu marca para verificar que no haya tráfico de marca distorsionando los resultados.
2. **Usar hoja de cálculo para cruzar datos de backend:** Crea un Google Sheet donde registres semanal/mensualmente: número de nuevos clientes (desde Shopify/backend), CAC de nuevos clientes, y rentabilidad actual. Cruza esos datos con el rendimiento del frontend de Google Ads para validar que el aumento de inversión realmente impacte el crecimiento de nuevos clientes.
3. **Consolidar PMax:** Si tienes más de 10 campañas PMax en la cuenta, probablemente estás sobresegmentado. Revisa la estructura y consolida campañas a menos que tengas una razón estratégica clara (ej: países diferentes, márgenes muy distintos, AOV drásticamente diferente como $10 vs $10,000).
4. **Ajustar TROAS:** Si una campaña tiene un objetivo de TROAS superior a 1000% (ej: 1500%) y no está escalando, bájalo. El algoritmo se queda sin subastas. El TROAS debe correlacionarse con tu métrica North Star de backend, no ser un fin en sí mismo.
5. **Separar productos por margen y AOV:** No mezcles productos de margen bajo (ej: 10%) con margen alto (ej: 70%) en la misma campaña. Tampoco mezcles AOV bajo (ej: $10) con AOV alto (ej: $1,000). El algoritmo busca el camino de menor resistencia y puede sesgar la entrega.

## Reglas para el erudito ("usa X cuando Y")
- **Usa exclusión de marca en PMax** cuando quieras medir el rendimiento real de campañas no-brand y evitar que el tráfico de marca disfrace resultados no rentables.
- **Usa ROAS como guía, no como North Star** cuando tomes decisiones de optimización dentro de Google Ads; la métrica principal debe ser el crecimiento de nuevos clientes con CAC rentable según los números reales del negocio.
- **Consolida campañas PMax** cuando tengas más de 10 y no haya una razón estratégica clara (diferencia de país, margen, o AOV extremo). La sobresegmentación ahoga la escalabilidad.
- **Ajusta TROAS a la baja** cuando la campaña esté estancada o no pueda escalar porque el objetivo es demasiado alto (ej: 1500%). El algoritmo necesita poder entrar en suficientes subastas.
- **Segmenta por margen y AOV** cuando tengas productos con diferencias drásticas (ej: 10% vs 70% margen, o $10 vs $1,000 AOV). No mezcles en la misma campaña para evitar que el algoritmo priorice lo fácil sobre lo rentable.

## Errores comunes
1. **No excluir la marca de Performance Max.** El tráfico de marca se absorbe en PMax, inflando el ROAS general y ocultando que el rendimiento real sin marca es malo o no rentable.
2. **Usar ROAS como North Star del negocio.** Esto lleva a decisiones que estrangulan el crecimiento (ej: subir TROAS a niveles irreales) en lugar de enfocarse en nuevos clientes rentables con unidad económica sostenible.
3. **Sobresegmentar campañas PMax.** Tener 25 campañas PMax en una cuenta que gasta $20-30K/mes es común y contraproducente. La sobresegmentación impide escalar y estanca el rendimiento.
4. **Fijar TROAS extremadamente alto (ej: 1500%).** Esto "ahoga" la campaña porque el algoritmo no puede participar en suficientes subastas para cumplir el objetivo, resultando en estancamiento o falta de escalabilidad.
5. **Mezclar productos de margen bajo con margen alto, o AOV bajo con AOV alto en la misma campaña.** El algoritmo busca el camino de menor resistencia, priorizando productos fáciles de vender y limitando la exposición de los de alto valor, lo que distorsiona la rentabilidad real.

===== BSBomRXUu4s =====
# How Clark St. James Manages PPC Through Claude with Optmyzr's MCP

**Fuente:** NA | https://youtu.be/BSBomRXUu4s
**Dominio:** google-ads

## Qué enseña (2 líneas)
Cómo una agencia pequeña integra Optmyzr con Claude mediante el MCP (Model Context Protocol) para gestionar campañas PPC multicanal (Google Ads, Facebook, LinkedIn, Microsoft Ads) desde un solo asistente conversacional, reduciendo la necesidad de entrar a la plataforma manualmente.

## Tácticas accionables (con números, umbrales, pasos, nombres exactos de features/paneles — nada vago)

1. **Usar el dashboard de Optmyzr como "centro de operaciones" diario:** Abrirlo primero en la reunión diaria del equipo (standup) para revisar los "semáforos" de estado (qué está bien, qué necesita atención).
2. **Configurar reglas de alertas mayores (Major Alert Rules)** en Optmyzr para priorizar qué revisar cada día.
3. **Conectar Claude al MCP de Optmyzr** para tener conversaciones profundas sobre datos de múltiples canales (Google Ads, Facebook, LinkedIn, Microsoft Ads) sin tener que entrar a la plataforma.
4. **Usar el clustering de términos de búsqueda con IA (AI clustering)** de Optmyzr como defensa de primera línea contra el gasto desperdiciado en búsquedas irrelevantes.
5. **Solicitar soporte directo al equipo de Optmyzr (mencionan a Anushka)** cuando no se logra configurar una regla o automatización deseada; ellos trabajan con el equipo técnico para crear la solución.
6. **Migrar de ChatGPT a Claude** específicamente para el análisis de datos PPC, por considerarlo superior en este tipo de tareas.

## Reglas para el erudito ("usa X cuando Y")

- **Usa el MCP de Optmyzr + Claude** cuando necesites analizar datos de múltiples canales pagados (Google Ads + Facebook + LinkedIn + Microsoft Ads) en una sola conversación, por ejemplo, para decidir si mover presupuesto entre plataformas.
- **Usa el dashboard de Optmyzr como pantalla de inicio diaria** cuando gestiones múltiples cuentas PPC y necesites un resumen visual rápido de estado (semáforos).
- **Usa el soporte directo de Optmyzr (no solo Sidekick)** cuando necesites una automatización personalizada que no logres configurar por ti mismo.
- **Usa Sidekick de Optmyzr** solo para consultas rápidas sobre datos a nivel de cuenta o para navegación dentro de la plataforma (no para análisis profundos).
- **Usa el clustering de términos de búsqueda con IA** cuando quieras defenderte contra el gasto desperdiciado en consultas irrelevantes generadas por búsquedas conversacionales.

## Errores comunes

- **Confiar en que las plataformas publicitarias (Google, Facebook) optimizarán bien para cuentas pequeñas o medianas** (gasto de £1,000–£10,000/mes). Estas plataformas necesitan volumen de datos para que sus sistemas de IA funcionen correctamente; las cuentas con presupuestos bajos sufren de "escasez de datos".
- **Activar todas las opciones de automatización que ofrecen las plataformas** sin supervisión, especialmente en cuentas de gasto medio-bajo. Las plataformas priorizan que gastes dinero, no necesariamente que obtengas el mejor rendimiento.
- **Intentar construir un sistema propio de automatización PPC** en lugar de usar una herramienta especializada como Optmyzr. El tiempo y esfuerzo de desarrollo y depuración no se justifica para equipos pequeños.
- **Usar Sidekick de Optmyzr para análisis profundos** cuando está diseñado para consultas rápidas y navegación; para análisis complejos usar el MCP con Claude.
- **Ignorar el clustering de términos de búsqueda con IA** como defensa contra el gasto desperdiciado, especialmente ahora que los motores de búsqueda conversacionales generan consultas únicas constantemente.

===== dx8UhJ_adnA =====
# Stop Wasting Hours on PPC Reporting: 3 Best Ways to Automate Your PPC Reports
**Fuente:** NA | https://youtu.be/dx8UhJ_adnA
**Dominio:** google-ads

## Qué enseña (2 líneas)
Tres métodos para automatizar reportes PPC semanales y reducir de 2 a 3 horas por informe a minutos. Compara Looker Studio, Claude/ChatGPT y Optimizer según presupuesto, plataformas y necesidad de automatización.

## Tácticas accionables (con números, umbrales, pasos, nombres exactos de features/paneles — nada vago)

1. **Looker Studio (gratuito, solo Google Ads):**
   - Conecta Google Ads directamente desde el panel de Looker Studio.
   - Ve a la sección **Insert** → agrega KPIs, rendimiento por dispositivo, redes, etc.
   - Configura el rango de fechas dinámico (ej. "últimos 30 días") para que el cliente pueda cambiarlo.
   - Para conectar otras plataformas (Meta, LinkedIn, Amazon), necesitas **conectores de pago** externos; si el conector se rompe, debes repararlo manualmente.
   - El formateo visual (colores, tamaños, propiedades de cada gráfico) lo haces tú desde el panel derecho de propiedades.

2. **Claude (o ChatGPT) para informes ad hoc:**
   - Paso 1: Exporta un CSV desde la plataforma nativa (Google Ads, Meta, etc.).
   - Paso 2: Pega el CSV en Claude y pide: *"Analiza estos datos. Dame un resumen de 3 viñetas con las tendencias clave de rendimiento para incluir en un informe de cliente"*.
   - Paso 3: Copia el texto generado y pégalo manualmente en tu informe.
   - **Limitación:** No hay alimentación de datos en vivo; debes repetir la exportación manual cada semana. No sirve para informes recurrentes.

3. **Optimizer (plataforma de pago, multi-canal):**
   - Desde el panel izquierdo, ve a **Reporting** → **Create Report**.
   - Elige entre **Single Account Report** (Google, Microsoft, Meta, LinkedIn, Amazon) o **Multi-Account Report** (combina datos de varias plataformas).
   - Usa la opción **AI** para generar un informe automático: escribe *"Genera un informe de resumen de cuenta de los últimos 30 días"*.
   - El informe incluye KPIs, quality score, rendimiento por dispositivo, redes, etc. sin configuración manual.
   - Programa el envío automático a clientes con marca blanca (logos propios y del cliente, dominio personalizado).
   - Usa la conexión **MCP** (Model Context Protocol) para enviar datos a Claude o ChatGPT y obtener resúmenes narrativos sin exportar CSVs.

## Reglas para el erudito ("usa X cuando Y")

- **Usa Looker Studio** cuando solo reportes campañas de **Google Ads**, tengas presupuesto cero y puedas dedicar 2-3 horas a configurar cada informe manualmente (gráfico por gráfico).
- **Usa Claude/ChatGPT** cuando necesites un **análisis rápido y narrativo** para una reunión interna o llamada de cliente, y no requieras informes recurrentes ni datos en vivo.
- **Usa Optimizer** cuando manejes **múltiples plataformas** (Google, Microsoft, Meta, LinkedIn, Amazon), necesites informes **programados y automatizados** que se envíen solos a clientes, y quieras **marca blanca** y **asistente AI** integrado.
- **Usa la conexión MCP de Optimizer** si ya usas Claude o ChatGPT y quieres que reciban datos en vivo desde tus cuentas publicitarias sin exportar CSVs.

## Errores comunes

- **Seguir exportando CSVs y armando tablas dinámicas manualmente cada semana** → pierdes 2-3 horas por informe y por cliente; el video muestra que esto sigue siendo la práctica más común y la que más errores genera.
- **Usar Claude/ChatGPT para informes semanales recurrentes** → no hay automatización ni datos en vivo; cada semana debes exportar, pegar, analizar y copiar manualmente.
- **Confiar en conectores de pago de Looker Studio sin verificar su mantenimiento** → si el conector se rompe, el reporte deja de funcionar y tú debes arreglarlo; no hay soporte automático.
- **No usar la opción AI de Optimizer** y construir informes desde cero arrastrando gráficos uno por uno, cuando la plataforma ya ofrece generación automática con comandos de texto simples.