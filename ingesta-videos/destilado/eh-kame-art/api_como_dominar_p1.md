# api_como_dominar
**Fuente:** kame | https://help.kameone.cl/es/articles/14005952-como-dominar-la-api-con-kame

## Qué enseña (2-3 líneas)
Enseña a integrar la API de Kame usando el propio ERP como espejo: los campos de la API reflejan exactamente los campos de la plataforma. Proporciona una guía práctica para construir el JSON de ventas simulando primero el ingreso manual en el software.

## Lecciones accionables
- **Regla de oro:** Simula el ingreso manual de una venta en Kame y usa esos mismos datos como referencia para construir tu JSON. Si funciona en la pantalla, funcionará en tu código.
- **Endpoint de Ventas - Campos clave:**
  - **Usuario:** Corresponde al email del usuario en Kame; se usa exclusivamente para fines de auditoría.
  - **Documento:** Define el tipo de DTE a emitir (ej. factura, boleta).
  - **Sucursal:** Si usas "Casa Matriz" por defecto en el software, en el código este campo debe quedar **vacío**.
  - **Datos del Cliente:** RUT, razón social, giro, dirección — exactamente los mismos que llenas manualmente.
  - **Tipo de Documento:** Para el módulo de ventas, usar siempre el valor fijo `"venta"`.
  - **Folio (Consejo de Oro):** Déjalo **vacío**. Kame asigna automáticamente el correlativo del SII.

## Reglas para agentes
- Usa los mismos datos que funcionan en la interfaz manual del ERP para construir el JSON de la API.
- Deja el campo `sucursal` vacío cuando uses "Casa Matriz" por defecto.
- Asigna siempre el valor fijo `"venta"` al campo `Tipo de Documento` en el módulo de ventas.
- Nunca incluyas un valor en el campo `folio`; déjalo vacío para que Kame asigne el correlativo automáticamente.

## Errores comunes que evita o menciona
- **No adivinar campos:** Evita construir el JSON sin antes verificar cómo se ve el formulario manual en el ERP. El ERP es el espejo de la API.
- **No asignar folio manualmente:** Si llenas el folio, podrías generar conflictos con la correlatividad automática del SII que maneja Kame.
- **No olvidar campos obligatorios:** Si el ERP exige un dato para guardar una transacción, la API también lo requerirá.