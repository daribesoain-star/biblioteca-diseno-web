# b2linked-ep164-pitfalls
**Fuente:** https://b2linked.com/blog/ep164 | canal temático: linkedin | destilado 2026-07-09

## Qué enseña (2-3 líneas)
El artículo explica por qué el pacing de presupuesto en LinkedIn Ads suele fallar si se deja en manos de presupuestos diarios, presupuestos totales, fechas de término o automatizaciones nativas. La recomendación central es controlar el gasto con pujas manuales, monitoreo frecuente y herramientas externas como Shape.io para evitar sobreconsumo sin pagar CPC inflados.

## Lecciones accionables
- No asumas que el presupuesto diario de LinkedIn limita el gasto real: con `max delivery`, la campaña puede gastar cerca de **50% más cada día** y no “compensar” después.
- Si usas `max delivery`, además del riesgo de sobreconsumo, puedes terminar pagando **2x a 4x más por clic** de lo que deberías pagar con una puja manual bien ajustada.
- Si usas puja manual y aun así gastas **50% más diario**, la señal no es “LinkedIn falló”, sino que la puja está demasiado agresiva; baja la puja hasta acercarte al gasto diario deseado.
- El método preferido del autor: puja manual + ajustes diarios. La campaña debe quedar pujando “lo justo” para gastar lo que quieres cada día, no simplemente tener un presupuesto diario alto esperando que LinkedIn lo respete.
- Revisa el pacing todos los días, especialmente al final del mes, porque el gasto puede quedar levemente por encima o por debajo del objetivo incluso con puja manual.
- Evita depender de `lifetime budget` para cuentas evergreen con presupuesto mensual recurrente: cuando se alcanza el monto, la campaña pasa a estado `completed` y requiere intervención manual para volver a activarse.
- Si una campaña se apaga por presupuesto total o fecha de término y no lo notas, puede quedar detenida por **horas o días**; luego intentar “ponerse al día” con el gasto mensual puede forzar gasto ineficiente.
- Para reactivar una campaña con presupuesto total agotado, no basta con despausarla: hay que editar la campaña, cargar un nuevo presupuesto total y relanzarla.
- Las fechas de término tienen el mismo problema operativo que el presupuesto total: al terminar, la campaña queda abajo hasta que alguien intervenga manualmente.
- Shape.io es la herramienta recomendada para control de presupuesto: integra directamente con LinkedIn Ads y permite monitorear o ajustar presupuestos en plataformas de anuncios.
- Configuración útil en Shape.io: pausar automáticamente una cuenta al alcanzar su presupuesto mensual y reactivarla automáticamente al inicio del mes siguiente.
- Activa en Shape.io la opción de agregar automáticamente nuevas campañas al presupuesto monitoreado; si creas una campaña nueva y no entra en la regla, puedes sobrepasar el presupuesto sin darte cuenta.
- El autor no usa la opción de Shape.io que cambia presupuestos diarios automáticamente, porque prefiere ajustar pujas manualmente para preservar mejor el rendimiento de costos.
- Desmarca `enable bid adjustment for high value clicks`: viene activado por defecto y permite que LinkedIn puje hasta **45% por encima** de tu puja manual.
- Según la experiencia del autor, dejar activado `enable bid adjustment for high value clicks` aumenta los CPC alrededor de **40%** y contribuye al sobreconsumo diario.
- Evita `campaign group budget optimization`: obliga a que las campañas del grupo compartan el mismo objetivo para que LinkedIn pueda decidir cuál “rinde mejor”.
- Al crear un campaign group, deselecciona la opción de fijar un objetivo para todo el grupo si necesitas mezclar objetivos o tipos de anuncio.
- Después de **1 a 2 meses** de ajustes manuales, el pacing tiende a volverse predecible; desde ahí suelen bastar cambios pequeños, salvo cuando lanzas nuevos anuncios u ofertas.

| Riesgo / función | Dato citado | Acción recomendada |
|---|---:|---|
| Presupuesto diario con `max delivery` | Hasta **+50%** de gasto diario | Reducir presupuesto artificialmente o, mejor, pasar a puja manual |
| `max delivery` | CPC **2x-4x** más alto | Evitarlo si importa eficiencia de costos |
| Puja manual demasiado alta | Puede gastar **+50%** diario | Bajar la puja |
| `enable bid adjustment for high value clicks` | Puja hasta **+45%** sobre tu bid | Desmarcar siempre |
| Impacto observado de esa opción | CPC **+40%** | Controlar subidas de puja manualmente |
| Madurez del pacing manual | **1-2 meses** | Ajustar hasta volverlo predecible |

## Reglas para agentes
- Usa puja manual cuando el objetivo sea controlar CPC y pacing en LinkedIn Ads.
- Baja la puja manual cuando una campaña gaste más que el objetivo diario.
- Sube la puja manual solo cuando la campaña no esté gastando lo suficiente y el CPC siga dentro del rango aceptable.
- Nunca dejes activado `enable bid adjustment for high value clicks`; desmárcalo en cada campaña.
- Nunca uses `max delivery` por defecto si la eficiencia de CPC importa.
- Usa Shape.io cuando haya un presupuesto mensual de cuenta que no se pueda sobrepasar.
- Configura Shape.io para pausar automáticamente al alcanzar el presupuesto mensual y reactivar al inicio del mes siguiente.
- Activa la inclusión automática de nuevas campañas en las reglas de presupuesto de Shape.io.
- No uses `lifetime budget` como mecanismo principal para campañas evergreen con presupuesto mensual recurrente.
- No uses fechas de término como sustituto de pacing mensual si no hay monitoreo diario.
- No uses `campaign group budget optimization` salvo que todas las campañas del grupo compartan el mismo objetivo y tenga sentido compararlas bajo esa misma optimización.
- Al crear campaign groups, deselecciona el objetivo de grupo si necesitas flexibilidad de objetivos por campaña.
- Revisa pacing diariamente al inicio y al cierre del mes; después de 1-2 meses, limita los ajustes a cambios pequeños salvo lanzamientos nuevos.

## Errores comunes que evita o menciona
- Creer que el presupuesto diario de LinkedIn se respetará exactamente.
- Usar `max delivery` y aceptar CPC inflados sin comparar contra pujas manuales.
- Compensar el sobreconsumo bajando artificialmente presupuestos diarios sin resolver el problema de puja.
- Dejar que una campaña consuma todo el presupuesto mensual demasiado temprano.
- Usar `lifetime budget` y no notar que la campaña quedó en estado `completed`.
- Perder horas o días de entrega por campañas apagadas al alcanzar presupuesto total o fecha de término.
- Intentar recuperar gasto perdido a final de mes con inversión acelerada e ineficiente.
- Olvidar agregar campañas nuevas a las reglas de presupuesto.
- Mantener activada por defecto la opción de ajuste de puja para clics de alto valor.
- Usar optimización de presupuesto a nivel de campaign group y quedar forzado a un solo objetivo.
- Mezclar campañas con objetivos distintos dentro de una estructura que LinkedIn intenta optimizar como si fueran comparables.