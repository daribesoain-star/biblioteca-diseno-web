# Google’s ‘Remove Redundant Keywords’ Update: A Fireside Chat With Greg Finn
**Fuente:** Optmyzr | https://youtu.be/qU2pthz1Krg

## Qué enseña (2-3 líneas)
Google cambió la definición de su recomendación automática "Remove redundant keywords" el 4 de enero de 2023, con solo 15 días de aviso, para eliminar no solo palabras clave redundantes del mismo tipo de concordancia, sino también entre distintos tipos de concordancia (por ejemplo, phrase match y broad match). Esto afectó a quienes habían optado previamente por la recomendación original, modificando unilateralmente los términos aceptados y generando desconfianza sobre la automatización de Google.

## Lecciones accionables
- Desactiva inmediatamente las "Auto-applied recommendations" en tu cuenta de Google Ads si no quieres que Google modifique automáticamente tus campañas sin tu consentimiento explícito. Ve a "Recommendations" > "Auto-applied recommendations" y desmarca todas.
- Si usas la recomendación "Remove redundant keywords", revisa manualmente cada ad group que contenga palabras clave de distintos match types (exact, phrase, broad) con la misma URL de destino y estrategia de puja. Google ahora priorizará la broad match y eliminará las demás como redundantes.
- Para evitar que Google elimine tus keywords exact o phrase match en favor de broad match, asegúrate de que no haya una broad match con intención similar en el mismo ad group. Si necesitas ambas, sepáralas en diferentes ad groups o campañas.
- Monitorea los correos de Google Ads y las notificaciones de cambios en recomendaciones al menos cada semana, ya que Google puede modificar las reglas de recomendaciones automáticas con plazos cortos (ej. 15 días).
- Usa herramientas externas como Optmyzr para aplicar una capa adicional de lógica sobre las recomendaciones de Google: por ejemplo, solo aumentar presupuestos si el CPA incremental está dentro de tu CPA actual, no solo por "headroom opportunity".
- Si detectas cambios no autorizados en tus keywords (como eliminación de exact match), contacta a tu representante de Google y documenta el caso como posible bug o test no anunciado, solicitando compensación si aplica.

## Reglas para agentes
- Nunca actives "Auto-applied recommendations" sin revisar manualmente cada recomendación y su definición actual; verifica que no haya cambiado desde tu última aceptación.
- Siempre separa palabras clave de distintos match types (exact, phrase, broad) en diferentes ad groups si quieres mantener control sobre cuál se activa para una consulta específica.
- Usa smart bidding obligatoriamente si mantienes broad match keywords en tu cuenta, ya que sin él el rendimiento puede degradarse al perder control sobre las concordancias más restrictivas.
- Nunca asumas que una recomendación aprobada en el pasado mantendrá su definición original; verifica periódicamente los cambios en la documentación de Google Ads.
- Siempre revisa el "headroom opportunity" de las recomendaciones de Google: si solo sugieren aumentar presupuesto, expandir a Search Partners o cambiar a broad match, evalúa si realmente alinean con tus objetivos de ROI, no solo de volumen de conversiones.

## Errores comunes que evita o menciona
- **Confiar en que las recomendaciones automáticas son estáticas:** Google cambió la definición de "Remove redundant keywords" sin nuevo consentimiento, pasando de eliminar solo dentro del mismo match type a cruzar match types. Esto puede eliminar keywords exact o phrase que tenían mejor rendimiento.
- **Ignorar los correos de Google Ads:** El aviso fue de solo 15 días (del 4 al 19 de enero de 2023). Quienes no lo leyeron perdieron el control sobre sus keywords automáticamente.
- **Asumir que las recomendaciones de Google están alineadas con los intereses del anunciante:** Google prioriza "headroom opportunity" (más conversiones) sin considerar el costo incremental. Recomendaciones como "aumentar presupuesto" o "cambiar a broad match" pueden incrementar el CPA sin mejorar el ROI.
- **No verificar si hay tests en las recomendaciones automáticas:** Google puede ejecutar experimentos dentro de las recomendaciones automáticas sin informar claramente, como ocurrió con un test que eliminó keywords de forma incorrecta (reportado como bug por Mike Ryan).
- **Mantener broad match y exact match en el mismo ad group:** Con el nuevo criterio, la broad match puede eliminar a la exact match como redundante, incluso si la exact match tiene una puja más alta y mejor rendimiento.