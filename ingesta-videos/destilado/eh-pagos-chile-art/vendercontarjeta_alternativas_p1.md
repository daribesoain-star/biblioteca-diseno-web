# vendercontarjeta_alternativas
**Fuente:** pagos-chile | https://vendercontarjeta.cl/webpay-plus-alternativas/

## Qué enseña
Compara 6 pasarelas de pago chilenas como alternativas a Webpay Plus en 2025, detallando comisiones, plazos de abono, métodos de pago adicionales y compatibilidad con plugins de e-commerce. Proporciona una tabla comparativa, recomendaciones por escenario de negocio y errores frecuentes al migrar.

## Lecciones accionables

### Tabla comparativa de alternativas a Webpay Plus (tarifas 2025)

| Pasarela | Comisión base* | Abono | Métodos extra | Plugin listo |
|---|---|---|---|---|
| **Webpay Plus** | 0,82% débito + 1,90% crédito + UF 24h | Débito 24h / Crédito 48h | Onepay, cuotas, RedCompra | Woo, Shopify, Magento |
| **Flow Checkout** | 3,44% (2,89% + IVA) | 24h hábil | Khipu, Servipag, Multicaja | Woo, Shopify, Jumpseller |
| **Mercado Pago Checkout** | 3,19% débito·crédito, 2,60% QR | 24h (QR inmediato) | Cuotas, wallet MP | Woo, VTEX, Shopify |
| **Payku Standard** | 2,95% + IVA (3,51%) | 48h | Transferencias (gratis) | Woo, Prestashop |
| **Khipu Link Pago** | 1,49% transferencia | 24h | Débito Visa via Flow opcional | Widget JS + API |
| **Getnet Link** | 3,32% (2,79% + IVA) | 24h wallet / 72h banco | Cuotas | Woo, VTEX |
| **SumUp Link** | 3,45% (2,9% + IVA) | 1h wallet / 24h banco | Cuotas, link vía WhatsApp | Woo (via API propia) |

### Recomendaciones por escenario

- **Menor porcentaje sin UF**: Flow (3,44%) o Payku (3,51%) — tarifa plana sin variable UF
- **Transferencias a costo bajísimo**: Khipu (1,49%) — solo carga por transferencia, útil para ticket alto
- **Abono ultra rápido**: SumUp Link (1h wallet) — ideal para flujos diarios
- **Cuotas sin interés frecuentes**: Mercado Pago o Getnet Link — múltiples bancos, costo comercio
- **Plugins listos para Woo/Shopify**: Flow y Mercado Pago — instalación en 10 minutos
- **Ecosistema bancario Santander**: Getnet Link — descuentos por volumen alto

### Calculadora de comisiones
Usar el monto del carrito en CLP para comparar costos reales entre pasarelas.

## Reglas para agentes

- **Usa Flow o Payku** cuando el negocio requiera tarifa plana sin componente UF que se reajuste mensualmente.
- **Usa Khipu** cuando el ticket promedio sea alto y se quiera minimizar comisiones (1,49% solo por transferencia).
- **Usa SumUp Link** cuando el comercio necesite abono en 1 hora vía wallet para flujo de caja diario.
- **Usa Mercado Pago o Getnet Link** cuando el cliente ofrezca cuotas sin interés frecuentemente.
- **Nunca compares comisiones sin incluir IVA** en pasarelas como Payku (2,95% → 3,51% real).
- **Nunca asumas que Flow solo acepta tarjetas** — incluye Khipu y Servipag para transferencias gratis.
- **Nunca ignores el plazo de 72h de abono bancario de Getnet** — la wallet se transfiere manualmente para acelerar.

## Errores comunes que evita o menciona

- **Pensar que Flow es solo tarjetas**: en realidad incluye Khipu y Servipag, agregando transferencias gratis.
- **No sumar IVA en Payku**: la comisión de 2,95% se convierte en 3,51% real al incluir IVA.
- **No actualizar UF al comparar con Webpay Plus**: su porcentaje base sube cada mes, lo que distorsiona comparativas.
- **Ignorar las 72h de abono bancario de Getnet**: la wallet se debe transferir manualmente para acelerar el proceso.