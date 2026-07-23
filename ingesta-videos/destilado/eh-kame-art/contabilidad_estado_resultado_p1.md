# contabilidad_estado_resultado
**Fuente:** kame | https://help.kameone.cl/es/articles/11011259-configurador-de-estado-de-resultado

## Qué enseña (2-3 líneas)
Guía paso a paso para crear un estado de resultado personalizado en Kame ERP, permitiendo agrupar cuentas contables en grupos y subgrupos según la estructura real del negocio. Explica desde la configuración inicial hasta la emisión del informe final.

## Lecciones accionables
- **Acceso a la herramienta:** Ir a **Maestros → Configurador Estado de Resultado**.
- **Crear nuevo estado de resultado:** Indicar un **nombre** y guardar. Luego hacer clic en la **cantidad de grupos** para configurarlo.
- **Creación de grupos:** Dentro del estado de resultado, usar la opción "crear grupos". Parámetros:
  - **Nombre:** Título del grupo (ej. "Ventas", "Gastos operacionales").
  - **Orden:** Número que define la posición del grupo en el reporte.
  - **Permite subgrupos:** Marcar esta casilla si se desea incluir clasificaciones internas con subtotales.
- **Asignación de cuentas contables:** Hacer clic en el número que indica la cantidad de cuentas del grupo. Se abre ventana con dos columnas:
  - **Izquierda:** Cuentas disponibles.
  - **Derecha:** Cuentas asignadas al grupo.
  - **Mover cuentas:** Seleccionar cuenta y usar la **flecha superior** para moverla de izquierda a derecha.
- **Creación de subgrupos:** Requiere un grupo principal con la opción "Permite subgrupos" activada. Hacer clic en el número de subgrupos y agregar los grupos a totalizar de la misma forma que se asignan cuentas.
- **Emisión del informe:** Ir a **Informes → Estado de Resultado**, seleccionar el estado configurado y emitir el personalizado.
- **Visualización:** Los grupos y subgrupos aparecen con el nombre y orden definidos.

## Reglas para agentes
- Usa **Maestros → Configurador Estado de Resultado** para acceder a la herramienta de personalización.
- Marca **"Permite subgrupos"** solo cuando necesites subtotales o agrupaciones parciales dentro de un grupo.
- Para mover cuentas contables a un grupo, usa siempre la **flecha superior** (no arrastrar ni otra flecha).
- Para emitir el informe, usa **Informes → Estado de Resultado** y selecciona el estado personalizado creado.
- Nunca intentes crear subgrupos sin antes haber creado un grupo principal con la opción de subgrupos habilitada.

## Errores comunes que evita o menciona
- **No confundir grupos con subgrupos:** Los subgrupos solo sirven para totalizar grupos, no para asignar cuentas directamente.
- **No omitir el paso de guardar** el nuevo estado de resultado antes de intentar configurar sus grupos.
- **No olvidar hacer clic en la cantidad de grupos/subgrupos** para acceder a la configuración detallada (no basta con ver el nombre).
- **No asignar cuentas a un grupo sin antes haberlo creado** con nombre y orden definidos.
- **No emitir el informe sin antes seleccionar el estado personalizado** en el desplegable de Informes → Estado de Resultado.