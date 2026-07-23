# elec_formatos_factura
**Fuente:** kame | https://help.kameone.cl/es/articles/14538577-manual-formatos-de-factura-electronica-pdf
## Qué enseña
Explica los 4 formatos de PDF disponibles para facturas electrónicas en KAME ERP, cómo configurarlos y cuándo usar cada uno según la cantidad de ítems y necesidades de imagen corporativa.

## Lecciones accionables
- **Configuración exclusiva para administradores:** Solo un usuario con perfil administrador puede cambiar el formato. Ruta: Perfil → Datos de la empresa.
- **Cambio en cualquier momento:** El administrador puede modificar el formato sin restricciones de tiempo.
- **Formato 1 - Fijo con Logo de Agua:** Muestra el logo como marca de agua de fondo. No se ajusta automáticamente si hay muchos ítems. Ideal para diseño tradicional y ordenado.
- **Formato 2 - Autoajustable sin Logo de Agua:** Sin imagen de fondo. Se ajusta automáticamente en facturas extensas o con muchas líneas. Presentación más limpia.
- **Formato 3 - Autoajustable con Imagen en Pie de Firma:** Autoajustable, sin marca de agua. Permite agregar una imagen en la parte inferior (firma personalizada, timbre interno o imagen corporativa).
- **Formato 4 - Autoajustable con Timbre y Totales en cada Página:** Autoajustable, sin logo de agua. Muestra el timbre del SII y los montos totales en cada página. Ideal para facturas de muchas hojas para evitar ir a la última página.
- **Nota importante:** El formato "Fijo con Logo de Agua" no reajusta el contenido automáticamente si la factura tiene muchos ítems.

## Reglas para agentes
- Usa el formato "Autoajustable con Timbre y Totales en cada Página" cuando la factura tenga muchas hojas.
- Nunca asignes el formato "Fijo con Logo de Agua" a facturas con muchos ítems, porque el contenido no se ajusta automáticamente.
- Siempre verifica que el usuario tenga perfil administrador antes de intentar cambiar el formato.
- Usa "Autoajustable con Imagen en Pie de Firma" solo cuando se requiera una imagen específica al final del documento (firma, timbre interno).
- Usa "Autoajustable sin Logo de Agua" para facturas extensas que necesiten presentación limpia sin marca de agua.

## Errores comunes que evita o menciona
- **Error:** Usar formato fijo con logo de agua en facturas con muchos ítems. **Solución:** Elegir un formato autoajustable (2, 3 o 4) para que el contenido se reorganice automáticamente.
- **Error:** No mostrar timbre del SII ni totales en cada página en facturas de muchas hojas. **Solución:** Usar el formato 4 (Autoajustable con Timbre y Totales en cada Página) para evitar tener que ir a la última página.
- **Error:** Intentar cambiar el formato sin ser administrador. **Solución:** Solo un usuario con perfil administrador puede realizar la configuración desde Perfil → Datos de la empresa.