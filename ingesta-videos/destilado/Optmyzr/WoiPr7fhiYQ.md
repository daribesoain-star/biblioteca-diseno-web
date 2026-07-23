# How to Calculate CPC for a Target ROAS
**Fuente:** Optmyzr | https://youtu.be/WoiPr7fhiYQ

## Qué enseña (2-3 líneas)
Explica la fórmula matemática para derivar el coste por clic (CPC) a partir de un objetivo de retorno de la inversión publicitaria (ROAS). Muestra cómo calcular el CPC máximo que puedes pagar por clic según el valor por clic y el ROAS objetivo, usando ejemplos numéricos con 100% y 200% de ROAS.

## Lecciones accionables
- **Fórmula base para calcular CPC:** `CPC = (Valor total de conversión / Número de clics) * (1 / ROAS objetivo)`. Equivalentemente: `CPC = Valor por clic * Inversa del ROAS objetivo`.
- **Ejemplo con ROAS 100% (break-even):** Si el valor por clic es $10 y el ROAS objetivo es 1 (100%), entonces CPC = $10 * (1/1) = $10. Puedes pagar $10 por clic para no perder ni ganar.
- **Ejemplo con ROAS 200%:** Si el valor por clic es $10 y el ROAS objetivo es 2 (200%), entonces CPC = $10 * (1/2) = $5. Pagas $5 por clic para obtener $10 de valor, duplicando la inversión.
- **Parámetro clave:** El "valor" que ingresas en Google Ads (conversión tracking) puede ser margen o ingreso real; eso determina el ROAS objetivo que debes fijar.
- **Herramienta mencionada:** Optmyzr Rule Engine permite automatizar esta fórmula y añadir condiciones adicionales, como solo subir pujas si el Quality Score es bueno o esperar un número mínimo de conversiones antes de considerar los datos estadísticamente significativos.
- **Pasos en Optmyzr:** Usar la regla básica de CPC basada en ROAS, editar factores adicionales en el lado izquierdo de la ecuación (ej. número de conversiones mínimo, Quality Score).

## Reglas para agentes
- Usa la fórmula `CPC = (Valor por clic) / ROAS objetivo` cuando calcules pujas manuales para un ROAS fijo.
- Nunca uses el ROAS como porcentaje directamente en la fórmula; conviértelo a número decimal (ej. 200% = 2).
- Cuando el ROAS objetivo sea 100% (1), el CPC máximo es igual al valor por clic (break-even).
- Si el valor por clic es desconocido, calcula primero `Valor total de conversión / Número de clics` a partir de datos históricos.
- Aplica condiciones adicionales (ej. Quality Score mínimo, umbral de conversiones) antes de ajustar pujas automáticas para evitar decisiones basadas en datos insuficientes.

## Errores comunes que evita o menciona
- **Confundir valor con margen:** El valor que introduces en el seguimiento de conversiones (ingreso vs. margen) afecta directamente el ROAS objetivo que debes usar; no mezclar ambos.
- **Usar ROAS como porcentaje sin convertirlo:** Olvidar que 200% es 2 en la fórmula lleva a cálculos incorrectos.
- **Ignorar la significancia estadística:** Aplicar la fórmula sin esperar suficientes conversiones puede generar pujas basadas en ruido; Optmyzr permite añadir un umbral de conversiones mínimo.
- **No considerar Quality Score:** Subir pujas solo por ROAS sin verificar Quality Score puede desperdiciar presupuesto en clics de baja calidad.