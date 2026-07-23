# Smart Bidding Exploration: Everything You Need to Know
**Fuente:** GrowMyAds | https://youtu.be/fJjT5FZrxLc

## Qué enseña (2-3 líneas)
Explica qué es la función "Smart Bidding Exploration" en Google Ads (en beta), cómo permite a campañas con Target ROAS establecido explorar subastas adicionales sin bajar el objetivo general. Detalla la diferencia entre reducir el TROAS manualmente y usar esta función, y cuándo aplicarla para romper el techo de rendimiento.

## Lecciones accionables
- **Requisito principal:** La campaña NO debe estar limitada por presupuesto ("limited by budget"). Si lo está, primero aumenta el presupuesto.
- **Tolerancia permitida:** Entre 10% (conservador) y 30% (agresivo). El porcentaje se resta del TROAS objetivo solo en las subastas de exploración.
- **Ejemplo concreto:** Si tu TROAS objetivo es 200% y pones tolerancia 10%, el TROAS efectivo en subastas exploradas será 180%. Las subastas históricamente buenas siguen en 200%.
- **Configuración exacta:** Dentro de la campaña → habilitar "Allow smart bidding to explore new traffic" → seleccionar "Target ROAS tolerance" (10-30%).
- **Advertencia técnica:** El TROAS efectivo estimado no incluye el efecto de objetivos TROAS a nivel de grupo de anuncios. Verificar si hay targets anidados.
- **Métrica clave:** Solo aplicar en campañas con impresiones compartidas no extremadamente altas (si ya tienes >90% imp. share, no hay espacio para explorar).
- **Prueba recomendada:** Usar "Campaign Experiment" dividiendo tráfico entre campaña base (sin exploración) y copia con exploración activada.
- **Uso estacional:** Activar antes de Black Friday, Cyber Monday o períodos de alta conversión (ventas, temporada alta) para que el algoritmo explore agresivamente cuando las tasas de conversión son naturalmente más altas.

## Reglas para agentes
- **Usa Smart Bidding Exploration solo cuando** la campaña tenga TROAS como objetivo, no esté limitada por presupuesto, tenga rendimiento consistente pero esté estancada en crecimiento.
- **Nunca actives esta función** en campañas limitadas por presupuesto; Google mostrará advertencia "this won't work with a limited by budget campaign".
- **Siempre verifica** que no haya objetivos TROAS a nivel de grupo de anuncios que puedan distorsionar el TROAS efectivo estimado.
- **Usa tolerancia 10%** para pruebas conservadoras; **usa 30%** solo cuando sepas que el período tendrá alta tasa de conversión (ej. Black Friday).
- **Nunca confundas** reducir el TROAS general de la campaña con activar Smart Bidding Exploration: el primero baja el objetivo para TODAS las subastas, el segundo solo para las nuevas.

## Errores comunes que evita o menciona
- **Error:** Pensar que Smart Bidding Exploration es lo mismo que bajar manualmente el TROAS objetivo. **Corrección:** Bajar el TROAS afecta todas las subastas (incluso las que ya funcionan bien); la exploración solo afecta subastas nuevas.
- **Error:** Activar en campañas limitadas por presupuesto. **Corrección:** Si hay limitación de presupuesto, simplemente aumentar el presupuesto genera más subastas; la exploración no funciona ahí.
- **Error:** Usar en campañas con impresiones compartidas muy altas. **Corrección:** Si ya tienes cobertura casi total, no hay subastas nuevas que explorar.
- **Error:** Ignorar los objetivos TROAS a nivel de grupo de anuncios. **Corrección:** El TROAS efectivo estimado no los incluye; pueden generar resultados inesperados.
- **Error:** Esperar que el TROAS general se mantenga igual. **Corrección:** El TROAS efectivo bajará (ej. de 200% a 180% con tolerancia 10%) porque parte del presupuesto se gasta en subastas exploratorias de menor rendimiento.