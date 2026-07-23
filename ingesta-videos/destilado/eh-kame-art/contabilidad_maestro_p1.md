# contabilidad_maestro
**Fuente:** kame | https://help.kameone.cl/es/articles/9761104-manual-maestro-de-contabilidad

## Qué enseña
El Maestro de Contabilidad permite administrar y configurar parámetros contables dentro del sistema KAME, facilitando la organización y el registro correcto de la información financiera. Enseña a gestionar el Plan de Cuentas, personalizar la estructura del Estado de Resultados y configurar la asignación contable de impuestos utilizados en compras y ventas.

## Lecciones accionables
- **Crear una nueva cuenta contable:**
  1. Ir a **Maestros → Plan de Cuentas**.
  2. Localizar la "cuenta madre" (cuentas que finalizan en **00**).
  3. Hacer clic en el **icono verde** a la derecha de la cuenta madre.
  4. En la ventana emergente, asignar el nombre a la cuenta y registrarla.
  - *Nota:* KAME mantiene cuentas contables por defecto que no se pueden eliminar y no se recomienda modificarlas.

- **Crear un Estado de Resultado (EERR) personalizado:**
  1. Ir a **Maestros → Configurador Estado Resultado**.
  2. Hacer clic en el **botón verde** para crear un nuevo estado personalizado.
  3. En la ventana emergente, indicar el nombre y registrarlo.
  4. En el listado de EERR, hacer clic en el **0** para ingresar a su configuración.
  5. Crear los grupos desde el **botón verde**, designando:
     - **Nombre:** Nombre de la nueva clasificación.
     - **Orden:** Orden en que se mostrará en el estado de resultado.
     - **Permite subgrupos:** Marcar si corresponde a un subgrupo (muestra resultados parciales).
  6. Para añadir cuentas contables al grupo, hacer clic en el **0** del grupo. Desde la columna izquierda (todas las cuentas del sistema), seleccionar una cuenta y hacer clic en la **flecha que figura arriba** para trasladarla a la columna derecha (cuentas añadidas al grupo).
  7. Registrar el grupo desde el **botón verde**.
  8. Si el grupo es un subgrupo, ingresar al número de cantidad de subgrupo para modificar y repetir el proceso con los grupos ya creados para que el subgrupo los totalice.
  9. Emitir el EERR personalizado desde **Informes → Estado de Resultado**, seleccionando el EERR configurado.

- **Configurar Impuesto Cuenta (impuestos adicionales en Compras/Ventas):**
  1. Ir a **Maestros → Impuesto Cuenta**.
  2. Hacer clic en el **botón verde** para crear una nueva configuración.
  3. En la ventana emergente, seleccionar:
     - El **impuesto** a configurar.
     - La **cuenta contable** que se utilizará para **Compras**.
     - La **cuenta contable** que se utilizará para **Ventas**.
  - *Nota:* Solo se pueden utilizar cuentas de **activo** y **pasivo**.
  4. Al registrarlo, el impuesto aparecerá en el listado con las cuentas contables asignadas.
  5. Al realizar una compra o venta con ese impuesto adicional, la contabilización figurará con la cuenta contable configurada.

## Reglas para agentes
- Usa cuentas madre (terminación en **00**) como base para crear nuevas cuentas contables.
- Nunca elimines ni modifiques las cuentas contables por defecto que KAME mantiene.
- Solo utiliza cuentas de **activo** y **pasivo** al configurar Impuesto Cuenta.
- Cuando crees un grupo en el Configurador Estado Resultado, define siempre el **orden** de visualización.
- Para que un subgrupo totalice correctamente, debes asignarle los grupos ya creados dentro de su configuración.

## Errores comunes que evita o menciona
- No se recomienda modificar las cuentas contables por defecto que KAME mantiene, ya que no se pueden eliminar.
- Al crear un grupo en el EERR, si no se habilita la opción "Permite subgrupos", no se mostrarán resultados parciales dentro del estado de resultado.
- Al configurar Impuesto Cuenta, solo se pueden utilizar cuentas de activo y pasivo; usar otro tipo de cuenta generará errores en la contabilización.