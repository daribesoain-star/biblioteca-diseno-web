# laudus_top5_pasarelas
**Fuente:** pagos-chile | https://laudus.cl/contenidos/gestion-erp/top-5-pasarelas-de-pago-en-chile/
## Qué enseña (2-3 líneas)
Analiza las 5 pasarelas de pago más usadas en Chile (Transbank, Mercado Pago, Getnet, Flow, Compraquí) comparando comisiones, costos fijos, tiempos de liquidación y modelos de integración. Explica que la eficiencia operativa máxima se logra conectando estos canales con un ERP integral para automatizar conciliación, inventario y facturación electrónica (DTE).

## Lecciones accionables
- **Transbank (Webpay Plus y POS):** Contrato directo con API formal y plugins nativos. Costo arriendo POS físico desde $14.990; $0 para Webpay digital. Comisiones estimadas: Débito ~1,75% | Crédito ~2,35% (sujeto a tasas de intercambio reguladas y comisiones mínimas por UF según tramo). Aceptación universal de tarjetas de débito, crédito y prepago de todos los bancos locales.
- **Mercado Pago:** Agregador omnicanal. $0 en arriendo (compra de equipo Point Smart). Comisiones: ~2,19% a 3,19% + IVA según plazos de liberación. Abono inmediato en wallet. Documentación API robusta para integraciones a medida. Tasa de aprobación extremadamente alta.
- **Getnet (Santander):** Bancario de alta eficiencia. Arriendo Smart POS: ~0,55 UF/mes en comodato. Comisiones: Débito desde 0,58% + UF fija por transacción; Crédito desde 1,46% + UF fija. Altamente rentable para volúmenes > $7.000.000 mensuales. Abono directo a cuenta corriente Santander.
- **Flow:** Recaudación digital omnicanal. $0 costos fijos de mantención. Comisiones: 2,49% a 3,19% + IVA según día de liquidación (mismo día, 1 día hábil o 3 días hábiles). API REST avanzada, Webhooks y plugins e-commerce. Permite recibir pagos vía Webpay, OnePay, Mach, Servipag, Check y transferencias bancarias automatizadas. Genera cupones de pago, links de recaudación masiva y suscripciones recurrentes.
- **Compraquí (BancoEstado):** POS presencial y links de pago. $0 costo fijo por arriendo de terminales básicos. Comisiones: ~1,49% + IVA generalizado para crédito y débito. Activación por RUT. Flujo directo hacia cuentas corporativas BancoEstado. Sin costos fijos mensuales en versiones mPOS o Smart.

| Pasarela | Enfoque Principal | Canales Soportados | Costo Arriendo Fijo | Modelo Integración |
|---|---|---|---|---|
| Transbank | Corporativo Tradicional | Online (Webpay) y POS Físico | Desde $14.990 (POS físico); $0 (Webpay digital) | Contrato directo, API formal, plugins nativos |
| Mercado Pago | Agregador y Omnicanal | Online (Plugins/API) y POS (Point Smart) | $0 (compra de equipo) | Ecosistema digital inmediato, API avanzada, Plugins |
| Getnet | Bancario Alta Eficiencia | Ecommerce y POS Corporativo | ~0,55 UF/mes (Smart POS comodato) | Integración bancaria directa Santander |
| Flow | Recaudación Digital y Omnicanalidad | Online (Plugins/API) y Links de Pago | $0 | API REST avanzada, Webhooks, plugins e-commerce |
| Compraquí | Capilaridad e Inclusión | POS Presencial y Links de Pago | $0 (terminales básicos) | Activación por RUT, flujo BancoEstado |

## Reglas para agentes
- Usa Transbank cuando el negocio requiera máxima solidez en altas transacciones y aceptación universal de tarjetas de todos los bancos locales.
- Usa Getnet cuando el volumen mensual supere $7.000.000 CLP y el ticket promedio sea alto con predominancia de débito (desde 0,58% + UF fija).
- Usa Flow cuando necesites unificar múltiples medios de pago (Webpay, OnePay, Mach, Servipag, Check, transferencias) en una sola integración digital con suscripciones recurrentes.
- Usa Mercado Pago cuando priorices tasa de aprobación extremadamente alta y abono inmediato en wallet, aceptando comisiones ligeramente más altas (2,19%-3,19% + IVA).
- Usa Compraquí cuando la empresa tenga alta dispersión geográfica y requiera terminales sin costo fijo mensual con flujo directo a cuentas BancoEstado.
- Nunca selecciones una pasarela solo por la comisión superficial; evalúa siempre tiempos de liquidación, conciliación y soporte técnico corporativo.
- Nunca operes una pasarela de pago sin conectar su API al sistema ERP para evitar conciliación manual de transacciones.
- Nunca uses pasarelas internacionales para operaciones en Chile si necesitas cuotas sin interés bancarias chilenas o emisión de DTEs bajo normativa SII.

## Errores comunes que evita o menciona
- **Fragmentación de sistemas:** Procesar altos volúmenes de venta sin sincronización nativa con ERP genera procesos ciegos de inventario, quiebres de stock y fricciones en conciliaciones contables.
- **Conciliación manual:** Si el software que recibe el dinero no conversa inmediatamente con el ERP, el departamento de finanzas debe conciliar manualmente miles de transacciones, aumentando el riesgo de errores contables severos.
- **Sobrecostos por no negociar por volumen:** Las tasas exactas varían según negociación por volumen de cada organización; no asumir que las comisiones publicadas son fijas.
- **Ignorar tiempos de liquidación:** Elegir una pasarela solo por comisión baja sin considerar cuándo se abona el dinero (inmediato, 24 horas o 3 días hábiles) afecta directamente el flujo de caja.
- **Usar pasarelas internacionales sin considerar costos ocultos:** Evitan comisiones por conversión de divisas (USD a CLP) y no facilitan cuotas sin interés bancarias chilenas ni cumplimiento tributario SII.