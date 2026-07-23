# elec_certificado_digital
**Fuente:** kame | https://help.kameone.cl/es/articles/12961660-como-cargar-tu-certificado-digital

## Qué enseña
Guía paso a paso para cargar un certificado digital en KAME ERP, necesario para firmar Documentos Tributarios Electrónicos (DTE) como facturas y boletas ante el SII. Explica los requisitos previos, la navegación dentro del sistema y el proceso de arrastre del archivo PFX.

## Lecciones accionables
- **Requisitos previos obligatorios:**
  - Archivo del certificado digital en **formato PFX** (enviado por la empresa certificadora).
  - Contraseña asignada a ese certificado (distinta a la contraseña de cuenta KAME o SII).
- **Pasos exactos dentro del sistema:**
  1. Buscar el botón rojo con texto **"Electrónico"** y hacer clic.
  2. Seleccionar la opción **"Certificado Digital"**.
  3. Hacer clic en el botón **"Nuevo certificado"**.
  4. En la ventana emergente, ingresar:
     - **RUT del dueño del certificado** (persona con autoridad legal para firmar).
     - **Contraseña** creada al obtener o renovar el certificado.
  5. Aparecerá una pantalla con un ícono de nube o zona de arrastre.
  6. Arrastrar el archivo PFX desde el escritorio o carpeta de descargas y soltarlo sobre la zona indicada.
  7. El sistema procesa el archivo, valida la contraseña y completa la instalación.
- **Resultado:** El certificado queda listo para firmar DTE de forma inmediata.

## Reglas para agentes
- Usa siempre la opción **"Nuevo certificado"** dentro del menú **"Electrónico" > "Certificado Digital"** para iniciar la carga.
- Nunca confundas la contraseña del certificado digital con la contraseña de la cuenta KAME o la del SII; son distintas.
- Asegúrate de que el archivo tenga extensión **.PFX** antes de arrastrarlo; otros formatos no son aceptados.
- Verifica que el RUT ingresado corresponda al dueño legal del certificado, no al de la empresa genérica.

## Errores comunes que evita o menciona
- **Error de contraseña:** Usar la contraseña de la cuenta KAME o del SII en lugar de la contraseña específica del certificado digital.
- **Formato incorrecto:** Intentar cargar un archivo que no sea PFX (por ejemplo, .cer, .p12, .key).
- **RUT incorrecto:** Ingresar un RUT que no coincida con el del titular del certificado, lo que impide la validación.
- **Omisión de respaldo:** No se menciona explícitamente, pero el artículo relacionado sugiere hacer respaldo de DTE en el SII como práctica recomendada.