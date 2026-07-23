# cobranza_manual
**Fuente:** kame | https://help.kameone.cl/es/articles/9345665-manual-de-cobranza

## Qué enseña
El manual explica cómo realizar cobranzas masivas de clientes en KAME ERP, incluyendo el envío de correos con formatos personalizados. También cubre la configuración de formatos de cobranza y la activación de cobranzas automáticas para documentos impagos sin intervención manual.

## Lecciones accionables
- **Acceder a formatos de cobranza:** Ir a `Maestros -> Formatos de Cobranza`. Hacer clic en el botón verde para crear un nuevo formato.
- **Crear formato:** Asignar un nombre al formato. Usar el editor tipo Word para redactar el contenido del mensaje personalizado según políticas de la empresa.
- **Registrar cobranza masiva:** Ingresar al módulo `Cobranza Masiva`. Hacer clic en "Crear nueva cobranza". Completar los campos:
  - Fecha
  - Comentario
  - Cobrador
  - Cliente
  - Fecha de vencimiento
- **Buscar documentos:** Tras establecer filtros, hacer clic en "Buscar". Se mostrarán los documentos pendientes de cobrar. Seleccionar los deseados y registrar la cobranza.
- **Acciones desde panel principal:**
  - a. Visualizar
  - b. Enviar Cobranza
  - c. Eliminar
- **Enviar cobranza:** Hacer clic en "Enviar Cobranza". En la ventana emergente, seleccionar el formato previamente creado y enviar al cliente. El cliente recibe un correo con la cobranza detallada.
- **Activar cobranza automática:** Un usuario administrador debe ir a `Perfil -> Automatizaciones`. Ubicar la sección `Automatización Integración de Documentos de Cobranza` y activarla.
- **Configurar automatización:** Seleccionar:
  - **Formato de cobranza:** Elegir el formato deseado.
  - **Frecuencia de cobranza:** Elegir entre `Semanalmente` o `Mensualmente`. Según la opción, el sistema permite establecer los días específicos para la ejecución.
- **Requisito para automática:** Los clientes deben tener configurado el "envío de cobranza" en su ficha. Los documentos impagos de esos clientes se cobrarán automáticamente.

## Reglas para agentes
- Si aparece el símbolo "i" junto a un cliente, significa que **no tiene configurado un correo electrónico** en la sección de contactos. Debes ir a `Maestros -> Fichas` del cliente y configurarlo antes de enviar la cobranza.
- Para usar cobranza automática, **solo un usuario administrador** puede activarla desde `Perfil -> Automatizaciones`.
- La cobranza automática **solo se aplica a clientes que tengan activado** el "envío de cobranza" en su ficha.
- Al crear un formato de cobranza, **siempre asigna un nombre** antes de editar el contenido.

## Errores comunes que evita o menciona
- **Cliente sin correo electrónico:** Si no se configura el email en la ficha del cliente (sección contactos), no se podrá enviar la cobranza y aparecerá el símbolo "i". El manual indica ir a `Maestros -> Fichas` para corregirlo.
- **Falta de actualización de datos de contacto:** Se recomienda mantener actualizada la información de contacto de los clientes para asegurar una comunicación fluida en cada cobranza.
- **No configurar formatos o automatizaciones adecuadamente:** El manual advierte que se debe configurar correctamente los formatos y automatizaciones para garantizar el correcto funcionamiento del proceso.