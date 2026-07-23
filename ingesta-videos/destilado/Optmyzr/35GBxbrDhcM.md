# How to Do Conversion Value Adjustments in Google Ads
**Fuente:** Optmyzr | https://youtu.be/35GBxbrDhcM

## Qué enseña (2-3 líneas)
Este video explica cómo ajustar el valor de conversiones en Google Ads usando el parámetro `transaction_id` (o `order_id`) para reflejar eventos offline posteriores a la compra, como devoluciones, compras adicionales o suscripciones. Muestra el proceso técnico de implementación: desde agregar el ID único en el píxel de conversión hasta subir un archivo de Google Sheets con los valores corregidos dentro de la ventana de 55 días.

## Lecciones accionables
- **Agregar el parámetro `transaction_id` al píxel de conversión:** En la página posterior al checkout, inserta en el código del píxel de Google Ads el texto exacto: `transaction_id=<valor_dinámico>`. El valor debe ser una cadena única por transacción (ej. número de orden). Ejemplo: `transaction_id=ORDER12345`.
- **Recolectar datos offline:** Después de la conversión inicial, registra en tu sistema los cambios reales (devoluciones, valor final, cancelaciones) dentro de los próximos 55 días.
- **Subir ajustes a Google Ads:**
  1. Ve a **Herramientas y configuración** > **Conversiones** > **Subidas**.
  2. Haz clic en **Nueva subida** y selecciona la plantilla **"Actualizar conversiones existentes usando el ID de pedido"** (usa el template de Google Sheets).
  3. Crea una copia del template y completa las columnas obligatorias:
     - `Order ID` (el mismo `transaction_id` usado en el píxel).
     - `Conversion Name` (nombre exacto de la acción de conversión original).
     - `Adjustment Time` (fecha y hora del ajuste, incluyendo zona horaria, formato: `YYYY-MM-DD HH:MM:SS +/-HH:MM`).
     - `Restated Value` (nuevo valor monetario, ej. `50.00 USD` si el original era $100 y hubo devolución).
     - Opcional: `Retract` (marcar como `TRUE` para eliminar la conversión por completo; esta acción es irreversible).
  4. Comparte el Google Sheet con la cuenta de Google Ads (permiso de edición).
  5. En Google Ads, selecciona el spreadsheet compartido, previsualiza los datos y haz clic en **Aplicar** (no solo en previsualizar).
- **Verificar unicidad del `transaction_id`:** Asegúrate de que cada ID sea único; si dos transacciones comparten el mismo ID, Google no podrá distinguirlas y el ajuste fallará.
- **Usar la ventana de 55 días:** Todos los ajustes deben realizarse dentro de los 55 días posteriores a la conversión original.

## Reglas para agentes
- Usa `transaction_id` (o `order_id`) en el píxel de conversión de Google Ads cuando el objetivo sea permitir ajustes de valor posteriores.
- Nunca uses el mismo `transaction_id` para dos conversiones diferentes; cada ID debe ser único.
- Cuando subas ajustes, siempre aplica los cambios después de la previsualización; no te quedes solo en la vista previa.
- Si usas la opción `Retract`, confirma que es irreversible antes de aplicarla.
- Comparte el Google Sheet con la cuenta de Google Ads con permisos de edición antes de seleccionarlo en la interfaz de subidas.
- Verifica que el `Conversion Name` en el archivo coincida exactamente con el nombre registrado en Google Ads (incluyendo mayúsculas, espacios y caracteres especiales).

## Errores comunes que evita o menciona
- **No incluir el `transaction_id` en el píxel original:** Sin este parámetro, Google no puede identificar qué conversión ajustar posteriormente.
- **Usar IDs duplicados:** Si dos órdenes tienen el mismo ID, Google no sabrá cuál modificar y el proceso fallará.
- **No compartir el Google Sheet con la cuenta de Google Ads:** Sin permisos de edición, la subida no podrá leer los datos.
- **Aplicar solo la previsualización sin hacer clic en "Aplicar":** La previsualización muestra el estado pero no ejecuta el ajuste.
- **Intentar ajustar fuera de la ventana de 55 días:** Google solo permite modificar conversiones dentro de ese período desde la fecha original.
- **Retractar una conversión por error:** La opción `Retract` elimina la conversión de forma permanente y no se puede deshacer.