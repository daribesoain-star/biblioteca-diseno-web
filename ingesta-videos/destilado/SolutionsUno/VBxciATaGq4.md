# 🔥 How To Analyze Performance Max Campaign Data
**Fuente:** SolutionsUno | https://youtu.be/VBxciATaGq4

## Qué enseña
El video enseña a desglosar los datos de una campaña Performance Max para identificar qué canales (Shopping, Display, Discovery, YouTube, DSA) están generando conversiones y cuáles no. Muestra pasos prácticos usando informes predefinidos de Google Ads para aislar el rendimiento por red.

## Lecciones accionables
- **Extraer datos totales de la campaña PMax:** Ir a la campaña, seleccionar "últimos 30 días", anotar impresiones totales y conversiones totales.
- **Aislar conversiones de Shopping:** Ir a `Informes > Informes predefinidos > Shopping > Shopping`. Filtrar por nombre de campaña. El número de conversiones mostrado = conversiones de la red Shopping.
- **Calcular conversiones de otras redes:** Restar las conversiones de Shopping del total de conversiones de la campaña.
- **Medir enfoque en YouTube:** En la vista de campaña, revisar la columna "Vistas". Si el número es muy bajo (ej. 172 vistas en 30 días), Google hace un "pobre trabajo rastreando conversiones de YouTube", por lo que se puede descartar ese canal.
- **Medir enfoque en Display y Discovery:** Ir a `Informes > Informes predefinidos > Otros > Performance Max placement`. Filtrar por campaña. Revisar impresiones de "Discovery" (Google owned and operated) y "Display". Si son muy bajas (ej. 3.8K de 578K impresiones), la campaña no está enfocada ahí.
- **Verificar Dynamic Remarketing:** Si las impresiones en Display son mínimas, la campaña no está invirtiendo en Dynamic Remarketing.
- **Confirmar datos de DSA (Dynamic Search Ads):** Ir a la campaña, agregar filtro: `Landing page` `no contiene` `products`. Las conversiones restantes (ej. 68.68) corresponden a DSA.
- **Acción recomendada:** Si PMax no está usando Dynamic Remarketing, crear una campaña separada de Dynamic Remarketing. Si YouTube tiene muy pocas vistas, probar una campaña separada para testear ese canal.

## Reglas para agentes
- Usa `Informes > Informes predefinidos > Shopping > Shopping` para aislar conversiones de Shopping en PMax.
- Usa `Informes > Informes predefinidos > Otros > Performance Max placement` para ver impresiones de Display y Discovery.
- Usa el filtro `Landing page` `no contiene` `products` para aislar conversiones de DSA dentro de PMax.
- Nunca asumas que todas las conversiones de PMax vienen de Shopping sin verificar con el informe de Shopping.
- Nunca confíes en las vistas de YouTube como indicador único de conversiones; Google rastrea mal las conversiones de YouTube.
- Si las impresiones en Display/Discovery son <1% del total, crea una campaña separada para Dynamic Remarketing.

## Errores comunes que evita o menciona
- **Error:** Asumir que PMax distribuye equitativamente entre todos los canales. El video muestra que puede ser "shopping heavy" (casi todas las conversiones vienen de Shopping).
- **Error:** Ignorar que Google hace un "pobre trabajo rastreando conversiones de YouTube", por lo que bajas vistas no significan necesariamente que YouTube no funcione.
- **Error:** No verificar manualmente los informes de placement y shopping; confiar solo en los datos agregados de la campaña.
- **Error:** No separar Dynamic Remarketing cuando PMax no lo está usando, perdiendo oportunidades de remarketing en Display.