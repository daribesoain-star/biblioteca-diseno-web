# honorarios_boleta
**Fuente:** kame | https://help.kameone.cl/es/articles/10629211-boleta-de-honorarios

## Qué enseña
Guía paso a paso para registrar boletas de honorarios en KAME ERP, cubriendo tanto el ingreso manual como la sincronización automática con el SII. También explica las acciones posteriores al registro: visualizar comprobante contable, generar pagos y asociar a órdenes de boleta.

## Lecciones accionables
- **Registro manual de boleta de honorarios:**
  1. Ir a `Módulo 'Boletas de Honorario'` → `'Boleta Honorarios'`.
  2. Hacer clic en `'Crear nuevo Honorario'` (parte superior).
  3. Completar los campos:
     - Fecha
     - Tipo de boleta: `honorario profesional` o `prestación de servicio`
     - Folio del honorario
     - Comentario referencial
     - Ficha de la persona asociada al honorario
     - Período del libro
     - Unidad de negocio
  4. Ingresar el `monto bruto` (el sistema calcula automáticamente los demás campos).
  5. Seleccionar el tipo de retención: `común`, `notarial`, `directorio` o `retención adicional`.
  6. Guardar el registro.

- **Sincronización con el SII:**
  1. Ir a `Módulo 'Boletas de Honorario'` → `'Boleta Honorarios'`.
  2. Hacer clic en `'Sincronizar con SII'` (parte superior).
  3. Elegir `unidad de negocio` y `período del libro` a sincronizar.
  4. Hacer clic en el botón `'Sincronizar'`.
  5. Al finalizar, se muestra un resumen detallado con los documentos registrados.
  *Requisito previo:* haber ingresado las credenciales del SII en los datos de la empresa.

- **Acciones posteriores al registro:**
  - `Ver Comprobante Contable`: visualiza la centralización del honorario.
  - `Genera Pago`: permite realizar el pago del honorario.
  - `Asociar a Orden Boleta`: asocia el honorario a una orden de boleta existente.

## Reglas para agentes
- Usa la sincronización con el SII cuando el usuario tenga credenciales SII configuradas en los datos de la empresa; no registres manualmente si la sincronización está disponible.
- Nunca ingreses manualmente boletas que ya pueden ser traídas desde el SII mediante la sincronización automática.
- Siempre selecciona el tipo de retención exacto (`común`, `notarial`, `directorio` o `retención adicional`) según corresponda al honorario.
- Siempre ingresa primero el `monto bruto` para que el sistema calcule automáticamente los demás campos.

## Errores comunes que evita o menciona
- **No registra boletas una a una si se puede sincronizar:** la sincronización con el SII evita el ingreso manual repetitivo.
- **Olvida configurar credenciales SII antes de sincronizar:** es requisito previo tener las credenciales del Servicio en los datos de la empresa.
- **No selecciona el tipo de retención correcto:** el sistema ofrece cuatro opciones (`común`, `notarial`, `directorio`, `retención adicional`) que deben coincidir con el tipo de honorario.
- **No asocia a orden de boleta cuando corresponde:** si existe una orden de boleta, se debe usar la opción `Asociar a Orden Boleta` para vincular el honorario.