# pos_roles_usuarios
**Fuente:** kame | https://help.kameone.cl/es/articles/11853879-manual-de-pos-como-configurar-roles-y-usuarios

## Qué enseña (2-3 líneas)
Explica cómo crear roles personalizados con permisos específicos en el POS de KAME y cómo asignarlos a usuarios para controlar el acceso a funcionalidades como ventas, precios y administración. También cubre la restricción de acceso por sucursales, cajas, tipo de documento, clientes y vendedor.

## Lecciones accionables
- **Ruta para crear roles:** Menú **Maestros** → **Roles** → Botón "Crear nuevo rol" → Asignar nombre (ej. "Vendedor", "Cajero", "Supervisor") → Registrar → Marcar permisos deseados (ingreso de ventas, apertura de caja, modificar precios, etc.).
- **Ruta para asignar roles a usuarios:** Menú **Maestros** → **Usuarios** → Localizar usuario → Ingresar a menú de opciones → En ventana emergente seleccionar: Rol correspondiente, sucursales permitidas, cajas permitidas, tipo de documento, clientes, vendedor, etc.
- **Permisos disponibles (no exhaustivo):** ingreso de ventas, apertura de caja, modificar precios.
- **Restricciones configurables por usuario:** acceso a sucursales, cajas, tipo de documento, clientes, vendedor.
- **Tip útil:** Se pueden crear tantos roles como sea necesario y actualizar el rol de un usuario si cambia de funciones.

## Reglas para agentes
- Usa la ruta **Maestros → Roles** para crear un nuevo rol y **Maestros → Usuarios** para asignarlo.
- Cuando un usuario cambie de funciones, actualiza su rol en lugar de crear uno nuevo desde cero.
- Nunca asignes un rol sin antes restringir el acceso a sucursales, cajas, tipo de documento, clientes y vendedor según corresponda.
- Siempre marca explícitamente los permisos que deseas habilitar para cada rol (no asumas permisos por defecto).

## Errores comunes que evita o menciona
- No crear roles genéricos sin restricciones de sucursales/cajas, lo que puede dar acceso no deseado a información de otras sucursales.
- No actualizar el rol de un usuario cuando cambia de funciones, generando permisos inadecuados.
- No marcar permisos específicos al crear el rol, dejando acceso a funcionalidades no necesarias.
- No utilizar la ventana emergente de configuración de usuario para limitar acceso a tipo de documento, clientes y vendedor.