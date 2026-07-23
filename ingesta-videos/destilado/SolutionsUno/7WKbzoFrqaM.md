# 🦾 How to Import High-Quality Leads from HubSpot or GHL to Google  
**Fuente:** SolutionsUno | https://youtu.be/7WKbzoFrqaM

## Qué enseña (2-3 líneas)
El video explica cómo importar leads de alta calidad (aquellos que están cerca de cerrar la venta) desde herramientas como HubSpot, GHL o Salesforce a Google Ads mediante la subida manual de archivos con el GCLID. Enseña a usar esta importación para medir el verdadero rendimiento de las campañas basado en ventas, no en leads genéricos, y a optimizar según el costo por venta real.

## Lecciones accionables
- **Crear una conversión de importación por clics:** Ve a *Herramientas y configuración > Conversiones > Subidas* (uploads). Crea una nueva acción de conversión de tipo "Importar desde clics" (import from clicks). Nómbrala "Quality Lead" o similar. No uses etiquetas ni Analytics; es solo una importación manual.
- **Campos mínimos requeridos para la subida:** Solo necesitas tres columnas en el archivo: `Google Click ID` (GCLID), `Conversion Name` (el nombre exacto de la acción de conversión que creaste, ej. "Quality Lead"), y `Conversion Time` (fecha y hora, debe ser posterior al clic original). Puedes dejar los demás campos en blanco.
- **Obtener la plantilla oficial:** Dentro de la configuración de la acción de conversión, haz clic en "Ver plantillas" (View templates) > "Conversión desde clics" (Conversion from clicks). Google te dará un Google Sheet clonable con el formato exacto.
- **Frecuencia de subida recomendada:** Sube el archivo manualmente una vez por semana (4 veces al mes). Para cuentas grandes con $150k en inversión mensual, esto es suficiente para obtener visibilidad sin ser excesivamente tedioso.
- **Ventana de atribución máxima:** Configura la ventana de atribución de la conversión importada a 90 días (el máximo que permite Google). Google deja de contar el GCLID después de 90 días, por lo que no puedes importar ventas cerradas después de ese plazo.
- **Para ventas que toman más de 90 días:** Si el ciclo de venta excede los 90 días, elige un punto intermedio que indique calidad (ej. "cliente dio anticipo" o "empezó el proceso de construcción") y nómbralo "Quality Lead" en lugar de "Sale". No intentes importar la venta final si supera los 90 días.
- **Extraer GCLID del CRM:** Pide al cliente que exporte desde su CRM (HubSpot, GHL, Salesforce) los leads que ya están en proceso de cierre, incluyendo el campo GCLID. El cliente solo necesita proporcionar esa columna; el resto lo rellenas tú.
- **Análisis posterior a la importación:** Compara el número de "Quality Leads" (importados) contra el total de leads de cada campaña. Ejemplo del video: Performance Max generó 420 leads → 82 quality leads (~20% tasa de cierre). Discovery Remarketing generó 415 leads → solo 13 quality leads. Esto indica que aunque el CPA de remarketing sea más bajo ($129 vs $176), su costo por venta real es mucho más alto porque la tasa de cierre es pésima.
- **Cálculo del costo por venta real:** Toma el CPA de la campaña y multiplícalo por el inverso de la tasa de cierre. Ejemplo: CPA $162, tasa de cierre 20% → costo por venta = $162 × 5 = $810.
- **Optimizar basado en ventas, no en leads:** Si una campaña tiene CPA bajo pero genera pocos quality leads, no la escales. Si otra tiene CPA más alto pero genera muchos quality leads, esa es la que debes escalar. Las ventas dictan las optimizaciones, no los leads ni el CPA.

## Reglas para agentes
- **Usa la importación por clics (conversion from clicks) cuando** necesites medir el rendimiento real de campañas basado en leads que se convierten en ventas, no solo en formularios llenados.
- **Nunca importes una conversión con fecha anterior al clic original** — Google la rechazará. La fecha debe ser siempre posterior al clic, sin importar cuándo ocurrió realmente la acción.
- **Nunca uses más de 90 días como ventana de atribución** para conversiones importadas. Si la venta tarda más, crea un hito intermedio (quality lead) dentro de los 90 días.
- **Siempre cuenta solo las conversiones que realmente importan** — elimina acciones de conversión basura como "visitó página por más de 3 minutos". Solo cuenta las que representan intención real de compra (ej. "solicitó cotización personalizada").
- **Cuando subas el archivo, asegúrate de que el "Conversion Name" coincida exactamente** con el nombre que le diste a la acción de conversión en Google Ads (incluyendo mayúsculas, espacios y caracteres especiales).
- **Para cuentas con múltiples canales (Performance Max, Discovery, Remarketing, YouTube, etc.), prioriza la importación de quality leads** para identificar qué campañas realmente generan ingresos, no solo leads baratos.

## Errores comunes que evita o menciona
- **No contar conversiones irrelevantes:** El video menciona que muchas empresas cuentan "más de 3 minutos en el sitio" o "más de 5 minutos" como conversiones, lo cual es basura. Solo debes contar acciones que demuestren intención real de compra.
- **No escalar campañas solo por CPA bajo:** El ejemplo muestra que Discovery Remarketing tenía CPA de $129 (más bajo que Performance Max de $176), pero solo generó 13 quality leads de 415 totales, mientras que Performance Max generó 82. Escalar remarketing habría sido un error.
- **No hacer bait-and-switch en precios:** El video advierte que si no eres honesto con los precios desde el anuncio, el cliente empezará su viaje con un competidor y aunque vuelva después, no es una estrategia escalable. La honestidad en los precios genera leads de mayor calidad y mejor tasa de cierre.
- **No intentar importar ventas después de 90 días:** Google deja de contar el GCLID a los 90 días. Intentar subir una conversión con fecha posterior no será contabilizada.
- **No asumir que la atribución de Google es perfecta:** El video señala que el modelo de atribución (first click, last click, data-driven) es para el anunciante, no para Google. La importación manual de quality leads te da visibilidad real que la atribución automática no siempre proporciona, especialmente en cuentas grandes con múltiples campañas.