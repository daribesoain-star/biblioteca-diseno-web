# pos_maestro
**Fuente:** kame | https://help.kameone.cl/es/articles/15889516-manual-maestro-de-pos

## Qué enseña (2-3 líneas)
El Maestro de POS centraliza las configuraciones esenciales para preparar el módulo de Punto de Venta en KAME ERP. Permite crear sucursales, definir roles y permisos de usuarios, configurar parámetros individuales de trabajo y registrar los medios de pago disponibles al realizar ventas, asegurando un proceso ágil y ordenado.

## Lecciones accionables
- **Crear una sucursal POS:** Navegar a **Maestros > Sucursales POS** y hacer clic en el botón verde. En la ventana emergente, completar los campos: Nombre, Dirección, Comuna, Ciudad, Teléfono, Código SII. Luego configurar: Unidad de Negocio, Lista de Precio y Bodega (por defecto para esa sucursal). Finalmente, registrar la sucursal.
- **Crear y configurar un rol:** Ir a **Maestros > Roles** y hacer clic en el botón verde. En la ventana emergente, indicar el nombre del rol. Una vez creado, en el listado, hacer clic en el icono de cada sub-módulo para configurar los permisos específicos (acceso restringido a cada sub-módulo de POS).
- **Configurar un usuario POS:** En **Usuarios**, visualizar el listado de usuarios con acceso al módulo POS. Ir al menú de opciones del usuario deseado > **Editar**. En la ventana emergente, establecer: Sucursal, Caja, Tipo de Documento, Ficha de Cliente, Vendedor, Cobrador y el Rol del usuario. Hacer clic en el botón verde para registrar el cambio.
- **Crear un medio de pago:** Ir a **Medios de Pago** y hacer clic en el botón verde. En la ventana emergente, indicar: Nombre del medio de pago, Tipo (débito, crédito, transferencia, etc.) y asociarlo a una Forma de Pago previamente creada en el sistema. Registrar el medio de pago para que esté disponible en las ventas.

## Reglas para agentes
- Usa **Maestros > Sucursales POS** para crear sucursales antes de configurar usuarios.
- Asigna siempre un **Rol** a cada usuario desde su edición; nunca dejes un usuario sin rol en POS.
- Configura los **Medios de Pago** antes de realizar ventas; no los crees sobre la marcha en el módulo POS.
- Revisa periódicamente los parámetros cuando incorpores nuevos usuarios, habilites sucursales adicionales o agregues nuevos medios de pago.

## Errores comunes que evita o menciona
- No configurar previamente las sucursales, roles, usuarios y medios de pago, lo que impide un proceso de venta ágil y ordenado.
- Olvidar asociar el medio de pago a una **Forma de Pago** preexistente en el sistema, lo que deja el medio de pago no disponible.
- No asignar una **sucursal** y **caja** específica a cada usuario, causando que trabajen en la sucursal o caja incorrecta.