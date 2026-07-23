# The Best Automations to Optimize Google Ads
**Fuente:** Optmyzr | https://youtu.be/JQSaZgLh740

## Qué enseña
Frederick Vallaeys, co-fundador de Optmyzr y ex-evangelista de Google Ads, enseña cómo identificar tareas PPC automatizables, implementar scripts de Google Ads y aprovechar el smart bidding de Google. Explica cómo descomponer tareas complejas (como testing de anuncios) en partes automatizables y cómo evitar errores comunes en la gestión automatizada de pujas.

## Lecciones accionables
- **Prioriza automatizar según frecuencia y tiempo:** Traza tus tareas PPC en una cuadrícula de 2x2 (frecuencia vs. tiempo consumido). Automatiza primero las tareas que haces a menudo y que toman mucho tiempo (ej. testing de anuncios), luego las frecuentes pero rápidas, y por último las infrecuentes.
- **Descompón tareas complejas en partes automatizables:** Para testing de anuncios, automatiza: (1) pausar anuncios perdedores con significancia estadística, (2) identificar el mejor anuncio numéricamente (mejor tasa de conversión o menor CPA), (3) dividir componentes del texto (call to action "Regístrate hoy" vs. "Regístrate ahora") para encontrar el mejor. La parte creativa de combinar componentes en nuevos tests debe hacerse manualmente.
- **Usa Automated Rules para lógica simple diaria:** Ejemplo: etiqueta anuncios para fin de semana vs. días de semana. Crea una regla que se ejecute sábado 1:00 AM: pausa anuncios de semana, activa anuncios de fin de semana. Lunes 1:00 AM: inverso. Esto es gratuito en Google Ads.
- **Implementa Google Ads Scripts para lógica avanzada y ejecución por hora:** Copia y pega código JavaScript. Cada script tiene una sección de configuración (settings) que debes modificar y una sección de lógica (no tocar). Ejemplo: script de 30 líneas para limitar el sobregasto diario (overdelivery) a un porcentaje personalizado (0-100%). Se ejecuta cada hora, compara el gasto diario con el presupuesto y pausa la campaña si excede el límite.
- **Para cuentas grandes (+1M keywords), usa la API de Google Ads:** Los scripts pueden no escalar bien; la API requiere más configuración pero escala mejor y puede ejecutarse tan frecuentemente como sea necesario.
- **Para smart bidding con pocas conversiones:** Si no tienes 15 conversiones en 30 días (mínimo) o 50 (ideal), usa micro-conversiones (ej. descarga de whitepaper, registro a newsletter) que correlacionen con la venta final. Ajusta el target CPA al porcentaje de micro a macro conversión (ej. si 10% de registros se convierten en venta, fija el target CPA al 10% del CPA deseado).
- **Para obtener más datos de conversión sin micro-conversiones:** Sube en la jerarquía de datos: si un keyword tiene 1 conversión, mira el ad group (3 conversiones) o la campaña (10 conversiones). También extiende el rango de fechas (de 7 a 28 días). Mezcla: primero keyword a 7 días, si no suficiente, keyword a 28 días, luego ad group a 7 días, etc.
- **Sincroniza la frecuencia de tu automatización con la ventana de retrospectiva (look-back window):** Si cambiaste una puja, no uses 3 semanas de datos históricos para la siguiente decisión porque incluye 2 semanas con la puja antigua. Usa solo los datos posteriores al cambio.
- **Considera el conversion lag (retraso en conversiones):** Revisa la columna de "conversion lag" en Google Ads. Si más del 30% de conversiones ocurren después de 2 semanas, no uses datos de la última semana para decisiones de puja hasta que todas las conversiones hayan llegado.
- **Usa Target CPA en lugar de Maximize Conversions:** Maximize Conversions puede gastar todo el presupuesto en conversiones extremadamente caras al final del día (ej. primeras 100 conversiones a $10 CPA, última conversión a $1000 CPA). Target CPA respeta el límite de costo y maximiza ganancias.
- **Superpone datos propios al smart bidding de Google:** Google no usa factores como nevadas recientes para una estación de esquí. Ajusta manualmente tu target CPA cuando sepas que las condiciones mejorarán tu tasa de conversión real.
- **Para scripts avanzados, separa configuración en Google Sheets:** Crea una hoja de cálculo con columnas: Account ID, configuraciones específicas (ej. hora de ejecución, umbrales). El script lee la hoja, permitiendo gestionar múltiples cuentas sin duplicar código.
- **Script para monitorear close variants de keywords exactos:** Usa el script de Optmyzr (enlace en el video) que genera un spreadsheet con columna E (keyword original) y columna F (search term real). Calcula la distancia de Levenshtein entre el keyword y el query. Si la distancia > 3, revisa o agrega automáticamente como negativo.
- **Script para proteger la marca en YouTube:** Analiza la relación thumbs up / thumbs down de videos. Si la proporción de thumbs down es alta, agrega automáticamente ese video como placement negativo.
- **Para cuentas con pocos datos de conversión, usa "attribute bidding":** Crea naming conventions o labels fuertes en ad groups y campañas. Agrega datos a nivel de grupo (ej. todas las camisetas de manga larga) para inferir rendimiento de keywords individuales con pocas impresiones.

## Reglas para agentes
- **Usa Target CPA o Target ROAS (smart bidding) cuando tengas ≥50 conversiones en 30 días.** Si tienes entre 15 y 49, usa micro-conversiones con un target ajustado proporcionalmente.
- **Nunca uses Maximize Conversions si tu objetivo es maximizar ganancias.** Siempre prefiere Target CPA, que respeta el límite de costo por adquisición.
- **Nunca apiles reglas de puja sin sincronizar la ventana de retrospectiva.** Si cambiaste una puja, solo usa datos posteriores a ese cambio para la siguiente decisión.
- **Usa Automated Rules solo para lógica simple con una sola ventana de retrospectiva y ejecución diaria.** Para lógica con múltiples ventanas (ej. comparar rendimiento semana a semana) o ejecución cada hora, usa scripts.
- **Cuando configures smart bidding, verifica que la métrica "Conversiones" en Google Ads refleje exactamente lo que valoras como negocio.** Excluye micro-conversiones de esa métrica si no son tu objetivo final.
- **Para proteger la marca en YouTube, ejecuta un script que revise la relación thumbs up/down y agregue placements negativos automáticamente si la proporción es adversa.**
- **Si usas manual CPC por falta de datos, implementa naming conventions y labels para hacer attribute bidding a nivel de grupo de productos/servicios.**
- **Nunca uses Maximize Clicks si tienes conversion tracking implementado.** Esta estrategia compra los clics más baratos, que son los que los anunciantes con conversion tracking evitan por ser de baja calidad.
- **Cuando uses smart bidding, no pierdas tiempo ajustando bid adjustments por dispositivo, hora del día o ubicación.** Google los ignora (excepto -100% para exclusiones). Enfócate en ajustar el target CPA/ROAS a nivel de campaña según eventos externos.
- **Para cuentas con múltiples campañas similares, usa un script que lea configuraciones desde Google Sheets para centralizar la gestión sin duplicar código.**

## Errores comunes que evita o menciona
- **Usar Maximize Clicks sin entender que compra clics de baja calidad** que otros anunciantes evitan intencionalmente por no convertir.
- **No considerar el conversion lag** al tomar decisiones de puja o reportar resultados, causando decisiones incorrectas y pánico del cliente.
- **Apilar reglas de puja sin sincronizar la ventana de retrospectiva**, causando sobregiro en las pujas porque los promedios incluyen datos con la puja anterior.
- **Usar Maximize Conversions en lugar de Target CPA**, lo que puede llevar a pagar $1000 por una conversión cuando las primeras 100 costaron $10 cada una.
- **No darse cuenta de que Google activa smart bidding automáticamente** durante la configuración de campaña si respondes preguntas sobre objetivos de conversión.
- **Asumir que Google considera factores específicos del negocio** (como nevadas para una estación de esquí) en sus predicciones de conversión.
- **Confiar en que "exact match" sigue siendo exacto** después de los cambios de 2018 que permiten close variants con "misma intención".
- **Perder tiempo ajustando bid adjustments en campañas con smart bidding**, ya que Google los ignora (excepto exclusiones con -100%).
- **No separar la configuración de la lógica en scripts**, lo que dificulta la gestión de múltiples cuentas y la reutilización del código.
- **Usar Automated Rules para tareas que requieren múltiples ventanas de retrospectiva** (ej. detectar declive consistente semana a semana), para lo cual se necesitan scripts.