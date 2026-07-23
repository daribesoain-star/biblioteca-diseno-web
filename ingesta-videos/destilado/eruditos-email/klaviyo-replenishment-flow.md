# klaviyo-replenishment-flow
**Fuente:** https://www.klaviyo.com/blog/the-email-automation-all-consumable-goods-brands-need-that-many-dont-yet-use | canal temático: email | destilado 2026-07-09

## Qué enseña (2-3 líneas)
Los emails de reposición ayudan a marcas ecommerce de consumibles/CPG a activar recompra antes de que el cliente se quede sin producto y busque una alternativa.  
La clave es automatizar el flujo por producto, calcular bien el timing de consumo y excluir a quienes ya recompraron.

## Lecciones accionables
- Usa emails de reposición cuando vendes productos que se agotan y se compran de forma recurrente: comida, bebidas, limpieza del hogar, skincare, maquillaje, cuidado capilar, vitaminas, suplementos u oficina.
- No confundas reposición con recordatorio de suscripción: el email de reposición no avisa de un cobro ni de un envío automático; pide al cliente que haga un nuevo pedido.
- Prioriza recompra porque el valor está concentrado en clientes recurrentes:

| Benchmark / dato | Implicación |
|---|---|
| El ecommerce promedio genera 41% de sus ingresos con solo 8% de sus clientes, los compradores recurrentes | Retención y recompra pueden mover más revenue que solo adquisición |
| Clientes que compraron 2 veces tienen 9 veces más probabilidad de convertir que compradores primerizos | Segmenta distinto a compradores con historial |
| El top 10% de clientes vale 6 veces más que el otro 90% | Crea flujos específicos para mejores clientes |
| Clientes recurrentes gastan 3 veces más que compradores primerizos | Optimiza CLTV, no solo primera compra |

- Configuración recomendada en Klaviyo:
  - Crea un flow basado en el evento `Placed Order`.
  - Añade un `trigger filter` si el flujo aplica a un producto/SKU específico.
  - Usa un flujo product-based cuando el timing de recompra depende del producto comprado.
  - Añade un `flow filter` para enviar solo a clientes que no hayan comprado ese producto desde que entraron al flujo.
- Usa flujos por producto si tienes muchos SKUs, productos con ciclos distintos o un producto héroe. Ejemplo: en cosmética, la base puede durar más que la máscara de pestañas; no deben recibir el mismo delay.
- Ajusta el delay al ciclo real de consumo:
  - Aceite de oliva: si una botella suele durar 2 meses, envía el recordatorio cerca de ese punto.
  - Vitaminas/suplementos con suministro de 30 días: envía entre el día 20 y 25 para dar tiempo a comprar y recibir antes de quedarse sin stock.
  - Bebida/seltzer de 24 unidades: si el `Average Time Between Orders` muestra 10 semanas entre pedidos, programa el email en la semana 9.
- Cuando el ciclo de consumo varía mucho entre personas, usa analítica predictiva:
  - Modelo: `Average Time Between Orders`.
  - Señal adicional: fecha esperada del próximo pedido dentro de una `Repeat Purchase Nurture Series` o Flow Library de la plataforma.
  - Revisa periódicamente el cálculo porque el comportamiento de compra cambia.
- Envía antes de que el cliente se quede sin producto: si llegas tarde, puede comprar en una tienda cercana, aceptar una oferta de competidor o usar entrega same-day.
- Mantén el email enfocado en el producto a reponer, como una mezcla de post-purchase y abandoned cart: intención conocida, copy simple, imagen del producto, beneficios concretos y CTA único.
- Usa incentivos personalizados para aumentar recompra: cupones, descuento en el próximo pedido, envío gratis u ofertas VIP.
- Ejemplos aplicables:
  - ILIA Beauty: flujo product-based para base de maquillaje; GIF del producto, copy breve, beneficios únicos y CTA claro; personaliza mencionando el producto comprado.
  - Briogeo: email enviado unos días antes de que el cliente se quede sin producto; ofrece 10% de descuento, usa un insight situacional de ducha/sin shampoo, añade recomendaciones de producto y promueve suscripción.
  - Magic Spoon: copy basado en el dolor de quedarse corto de cereal; CTA visible y diseño alineado a la marca.
- Si el producto no tiene ciclo predecible de recompra, usa otra automatización: cross-sell o upsell. Ejemplo: ropa de cama/home goods no suele requerir recordar la recompra exacta del mismo producto.

## Reglas para agentes
- Usa un flujo de reposición cuando el producto sea consumible y tenga una frecuencia de agotamiento razonablemente estimable.
- Usa `Placed Order` como disparador cuando el flujo dependa de una compra previa.
- Añade `trigger filter` por producto/SKU cuando el timing o el mensaje cambie según el producto comprado.
- Añade siempre un `flow filter` que excluya a clientes que ya recompraron el producto desde que entraron al flujo.
- Programa el delay antes del agotamiento estimado, no en la fecha exacta de agotamiento.
- Para productos con 30 días de suministro, usa un delay de 20-25 días salvo que los datos reales indiquen otro ciclo.
- Usa `Average Time Between Orders` cuando no exista una duración fija de consumo.
- Recalcula los delays de reposición de forma periódica con datos recientes de compra.
- Mantén un CTA principal orientado a recomprar el producto.
- Incluye imagen o GIF del producto específico que se quiere reponer.
- Usa recomendaciones de producto solo como complemento, no como reemplazo del objetivo principal de reposición.
- Nunca envíes un email de reposición a alguien que ya recompró ese producto dentro del flujo.
- Nunca uses reposición para productos sin patrón claro de agotamiento; en esos casos usa cross-sell, upsell o post-purchase nurture.
- Nunca trates un email de reposición como aviso de suscripción, cobro o envío automático si no existe recompra automática.

## Errores comunes que evita o menciona
- Enviar el email demasiado pronto y pedir recompra cuando el cliente todavía tiene suficiente producto.
- Enviar el email demasiado tarde, cuando el cliente ya compró una alternativa o resolvió la urgencia por otro canal.
- Usar el mismo delay para productos con ciclos de consumo distintos.
- No excluir a clientes que ya recompraron y generar emails redundantes.
- Intentar aplicar reposición a categorías donde no se puede predecir bien la recompra del mismo producto.
- Depender solo de adquisición de nuevos clientes e ignorar que una parte desproporcionada del revenue viene de compradores recurrentes.
- No competir con alternativas inmediatas: descuentos de competidores, tiendas cercanas o servicios con entrega same-day.
- Crear emails largos o confusos cuando el caso pide foco: producto comprado, razón para reponer, beneficio y CTA.