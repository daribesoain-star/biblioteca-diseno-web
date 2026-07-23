# remuneraciones_proceso
**Fuente:** kame | https://help.kameone.cl/es/articles/13168519-manual-domina-el-proceso-de-remuneraciones

## Qué enseña
Guía práctica de 11 pasos para procesar el ciclo completo de remuneraciones en KAME ERP: desde la creación de fichas de trabajadores, sincronización de parámetros legales, cálculo de sueldos, generación de comprobante contable, pago de remuneraciones, generación de archivo Previred y LRE, hasta el cierre del período.

## Lecciones accionables
- **Crear fichas manualmente:** Ruta: Maestros → Fichas → botón verde "Nueva Ficha". Campos obligatorios: RUT, Razón Social, Giro (rellenar con "." o "-" si no aplica), Dirección, Comuna, Ciudad, Teléfono, Email. Habilitar "Es Empleado" y completar datos adicionales en ventana emergente.
- **Importar fichas masivamente:** Ruta: Maestros → Fichas → botón celeste "Fichas". Descargar archivo de ejemplo con formato admitido e instrucciones. Cargar archivo completado en la nube del sistema. El sistema confirma carga y detalla trabajadores cargados correctamente.
- **Sincronizar Parámetros Generales:** Ruta: Maestros → Parámetros Generales de Remuneraciones. Seleccionar período y hacer clic en botón rojo para sincronizar montos y topes legales (cargas familiares, CCAF, UF, UTM, etc.).
- **Sincronizar AFP e Isapres:** Ruta: Maestros → AFP e Isapres. Seleccionar período a integrar y hacer clic en botón rojo para obtener porcentajes actualizados de cada institución.
- **Registrar remuneraciones manualmente (primera vez):** Módulo Remuneraciones → crear nueva remuneración. Completar: ficha del trabajador, tipo de contrato, fecha de incorporación, sueldo base. Llenar datos Previred (sexo, nacionalidad, tipo de trabajador, régimen previsional, tipo de jornada). Llenar campos LRE (tipo de impuesto a la renta, tipo de jornada). Completar haberes y descuentos. Registrar.
- **Copiar empleados de período anterior:** Acciones Masivas del módulo Remuneraciones → opción copiar. Ventana emergente muestra período destino. Hacer clic en botón verde. El sistema copia registros al nuevo período para modificar según corresponda.
- **Calcular sueldos:** Acciones Masivas → "Calcular Sueldos". Seleccionar período a procesar. Hacer clic en botón azul. El sistema actualiza cálculos de todas las remuneraciones.
- **Generar comprobante contable:** Acciones Masivas → "Generar Comprobante". Ventana emergente: indicar fecha límite de pago de remuneraciones. Hacer clic en botón verde.
- **Generar pago de remuneraciones:** Acciones Masivas → "Generar Pago". Redirige al módulo de Pagos. Visualizar remuneraciones pendientes por trabajador. Seleccionar Forma de Pago y registrar.
- **Generar archivo Previred:** Acciones Masivas → "Generar Previred". Descargar archivo para cargar en plataforma Previred para declaración y pago de imposiciones.
- **Pagar imposiciones en sistema:** Módulo Pagos → nuevo registro. Campos: Concepto de Pago = "Pago de Imposiciones", Ficha = "96.929.390-0", Documento = liquidaciones del período de imposiciones, Forma de Pago = la utilizada. Registrar.
- **Generar archivo LRE:** Acciones Masivas → "Generar LRE". Descargar archivo para cargar en plataforma de la Dirección del Trabajo (DT).
- **Cerrar período:** Solo usuario administrador. Módulo Remuneraciones → botón de cierre. Desactivar switch (debe quedar en gris). El período queda cerrado y no permite modificaciones posteriores.

## Reglas para agentes
- Usa "Nueva Ficha" (botón verde) para crear fichas manualmente; usa botón celeste "Fichas" para importación masiva.
- Sincroniza siempre Parámetros Generales y AFP/Isapres antes de registrar remuneraciones de un nuevo período.
- Usa "Calcular Sueldos" (Acciones Masivas) después de registrar o copiar remuneraciones y verificar datos.
- Genera comprobante contable solo después de verificar que los cálculos de sueldos son correctos.
- Genera pago de remuneraciones solo después de que estén contabilizadas.
- Genera archivo Previred solo después de que las remuneraciones estén pagadas.
- Genera archivo LRE solo después del pago de imposiciones.
- Solo un usuario administrador puede cerrar el período; nunca cierres sin haber completado todos los pasos anteriores.
- Nunca modifiques remuneraciones de un período cerrado; si hay diferencias, contacta al equipo de Soporte.

## Errores comunes que evita o menciona
- No omitir el campo "Giro" al crear fichas manualmente (es obligatorio, usar "." o "-" si no aplica).
- No olvidar habilitar "Es Empleado" al tipificar la ficha; sin esto no se puede registrar remuneraciones.
- No saltarse la sincronización de Parámetros Generales y AFP/Isapres antes de procesar sueldos (montos y topes quedarían desactualizados).
- No generar comprobante contable antes de verificar que los cálculos de sueldos sean correctos.
- No generar pago de remuneraciones sin antes haber generado el comprobante contable.
- No generar archivo Previred antes de que las remuneraciones estén pagadas.
- No cerrar el período sin haber generado y cargado el archivo LRE en la DT.
- Si se detectan diferencias o inconsistencias en las remuneraciones calculadas, contactar al equipo de Soporte antes de continuar.