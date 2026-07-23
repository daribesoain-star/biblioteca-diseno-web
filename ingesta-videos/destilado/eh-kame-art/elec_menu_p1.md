# elec_menu
**Fuente:** kame | https://help.kameone.cl/es/articles/10502829-menu-electronico

## Qué enseña
Guía completa del Menú Electrónico de KAME ERP, ubicado en la parte superior derecha del sistema (visible solo para quienes facturan desde Kame). Explica cómo gestionar ventas (Factoring, AEC, Registro SII), compras (Documentos Electrónicos Recibidos, Registro SII) y configuraciones (Certificado Digital, CAF, Solicitud de Folios SII).

## Lecciones accionables
- **Acceder al Menú Electrónico:** Hacer clic en el ícono ubicado en la parte superior derecha del sistema (solo visible para usuarios que facturan desde Kame).
- **Crear Factoring (Ventas):** Ir a "Ventas > Factoring" y completar la información solicitada. Si el RUT del Factoring termina en K, indicarlo con letra mayúscula para evitar rechazos de cesión por parte del SII.
- **Ver Archivo Electrónico de Cesión (AEC):** Ir a "Ventas > Archivo Electrónico de Cesión (AEC)" para visualizar detalle de documentos cedidos en el período junto con su estado en el SII.
- **Sincronizar Ventas en SII:** Ir a "Ventas > Registro de Ventas en el SII" para integrar documentos de venta. Aplica solo si mantienes otro sistema de facturación que no sea Kame.
- **Ver Documentos Electrónicos Recibidos (Compras):** Ir a "Compras > Docs. Elect. Recibidos" para visualizar PDF de documentos recibidos por proveedores. Solo figuran si el proveedor envía el XML del documento.
- **Sincronizar Compras en SII:** Ir a "Compras > Registro de Compras en el SII" para integrar documentos de compras.
- **Cargar Certificado Digital:** Ir a "Configuración > Certificado Digital", añadir nuevo certificado indicando RUT del propietario y clave del certificado, luego cargar el archivo del certificado. Queda cargado para emitir documentos, cargar folios y demás.
- **Visualizar Folios Autorizados:** Ir a "Configuración > Listado de CAF" para ver rangos de folios autorizados por tipo de documento y su fecha de autorización.
- **Solicitar Folios al SII:** Ir a "Configuración > Solicitud de CAF SII", indicar tipo de documento y cantidad de folios a autorizar. Los folios quedarán autorizados y cargados en el sistema.

## Reglas para agentes
- Usa letra mayúscula en la "K" del RUT del Factoring cuando termine en K para evitar rechazos de cesión del SII.
- Solo usa "Registro de Ventas en el SII" si el usuario mantiene otro sistema de facturación que no sea Kame.
- Verifica que el proveedor haya enviado el XML del documento para que figure en "Docs. Elect. Recibidos".
- Carga siempre el archivo del certificado digital después de indicar RUT y clave para que quede operativo.
- Indica tipo de documento y cantidad exacta de folios al solicitar CAF al SII.

## Errores comunes que evita o menciona
- **RUT de Factoring con K en minúscula:** Si el RUT termina en K y se indica con minúscula, el SII rechazará la cesión. Debe ser mayúscula.
- **Documentos de proveedores no visibles:** Si el proveedor no envía el XML del documento, no aparecerá en "Docs. Elect. Recibidos".
- **Sincronización de ventas desde otro sistema:** El "Registro de Ventas en el SII" solo aplica si se usa otro sistema de facturación que no sea Kame; de lo contrario, no es necesario.