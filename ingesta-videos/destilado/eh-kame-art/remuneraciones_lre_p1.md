# remuneraciones_lre
**Fuente:** kame | https://help.kameone.cl/es/articles/9230333-manual-emision-del-lre

## Qué enseña
Este manual explica cómo configurar y emitir el Libro de Remuneraciones Electrónico (LRE) desde el módulo de Remuneraciones de KAME ERP, para declarar mensualmente las remuneraciones de los trabajadores ante la Dirección del Trabajo (DT) de Chile. Cubre la configuración de unidad de negocio, parámetros definibles para bonos y descuentos, datos obligatorios en liquidaciones, y el proceso de generación del archivo CSV.

## Lecciones accionables
- **Configurar Unidad de Negocio:** Ir a **Maestros → Unidades de Negocio**. Crear o editar una unidad. En la ventana emergente, completar obligatoriamente los campos **región** y **comuna** para que aparezcan en el archivo LRE.
- **Configurar bonos y descuentos en Parámetros Definibles:** Ir a **Maestros → Parámetros Definibles**. Para cada concepto:
  - **Bonos Imponibles:** Seleccionar a qué columna del LRE se debe asignar.
  - **Bonos No Imponibles:** Seleccionar a qué columna del LRE se debe asignar.
  - **Descuentos:** Seleccionar a qué columna del LRE se debe asignar.
  - **Bonos imponible y no imponible proporcionales:** Ídem si se poseen.
  - Nota: Si hay varios bonos o descuentos asignados a la misma columna del LRE, el sistema los sumará automáticamente.
- **Configurar datos en liquidación de trabajadores:**
  1. Ir a **Remuneraciones → Nueva Remuneración** (o editar una existente).
  2. Localizar la sección **LRE** y hacer clic.
  3. Agregar la información adicional obligatoria para el LRE.
  4. Nota: Solo se modifica una vez; al copiar remuneraciones al mes siguiente, esta información se mantiene.
  5. Alternativa masiva: Usar el **Importador de LRE** desde el mismo módulo de Remuneraciones.
- **Emitir el LRE:**
  1. Ir a **Remuneraciones → Acciones Masivas → Generar LRE**.
  2. Seleccionar el **periodo** a descargar.
  3. Generar el archivo. La descarga es inmediata en formato **CSV**.
  4. Cargar el archivo CSV en el portal de la DT.
- **Verificar formato de fechas antes de cargar en DT:** Abrir el archivo CSV descargado. Revisar las columnas **"Fecha inicio"** y **"Fecha termino"**.
  - Si aparecen con guiones (DD-MM-AAAA): cambiar a formato con slash (DD/MM/AAAA), que es el que admite la DT.

## Reglas para agentes
- Usa **Maestros → Unidades de Negocio** para registrar región y comuna; son campos obligatorios para que el archivo LRE sea válido.
- Asigna cada bono o descuento a una columna específica del LRE desde **Maestros → Parámetros Definibles**; si varios conceptos comparten columna, se suman automáticamente.
- Completa la sección **LRE** en cada liquidación de trabajador; estos campos son obligatorios para informar el LRE.
- Modifica los datos del LRE en la liquidación solo una vez; al copiar remuneraciones al mes siguiente, la información se conserva.
- Para cargas masivas de trabajadores, usa el **Importador de LRE** desde el módulo de Remuneraciones.
- Genera el archivo LRE desde **Remuneraciones → Acciones Masivas → Generar LRE**, seleccionando el periodo correcto.
- Antes de subir el CSV a la DT, verifica que las columnas "Fecha inicio" y "Fecha termino" usen formato **DD/MM/AAAA** (con slash), no con guiones.
- Nunca subas el archivo CSV a la DT sin haber corregido el formato de fechas a slash (DD/MM/AAAA).

## Errores comunes que evita o menciona
- **Formato de fechas incorrecto:** Si las columnas "Fecha inicio" y "Fecha termino" aparecen con guiones (DD-MM-AAAA) en lugar de slash (DD/MM/AAAA), la DT no lo admitirá. Se debe modificar el formato según la configuración regional del computador.
- **Omisión de región y comuna en Unidad de Negocio:** Si no se registran estos campos, el archivo LRE no contendrá la información obligatoria para la declaración.
- **No configurar bonos/descuentos en Parámetros Definibles:** Sin esta asignación, los conceptos no se mapearán correctamente a las columnas del LRE.
- **No completar la sección LRE en liquidaciones:** Los campos adicionales son obligatorios; si faltan, la información del LRE estará incompleta.