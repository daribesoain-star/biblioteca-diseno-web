# TUTORIAL: MONTANDO UN DRON FPV - Capítulo 2 - Configuración en BETAFLIGHT
**Fuente:** mundoaudiovisual | https://youtu.be/VarCvuNyYxk

## Qué enseña (2-3 líneas)
Configuración completa de un dron FPV en Betaflight: desde la actualización del firmware, calibración del acelerómetro y alineación de la placa, hasta la configuración de puertos UART para DJI O3 Air Unit, inversión de motores, ajuste de modos de vuelo (armado, angle, horizon, turtle mode) y configuración del OSD. Incluye solución de problemas de orientación del flight controller y conexión del receptor.

## Lecciones accionables
- **Actualizar firmware:** Conectar el dron por USB, abrir Betaflight, ir a la pestaña "Firmware Flasher", seleccionar la última versión disponible y hacer clic en "Flash Firmware". Esperar a que termine la descarga e instalación.
- **Calibrar acelerómetro:** Colocar el dron sobre una superficie rígida y nivelada. Ir a la pestaña "Setup" en Betaflight, hacer clic en "Calibrate Accelerometer".
- **Ajustar orientación de la placa (Board and Sensor Alignment):** Si el dron se mueve torcido al inclinarlo, ir a "Configuration" → "Board and Sensor Alignment". Probar valores como `180` grados (Yaw). Hacer clic en "Save and Reboot". Verificar en "Setup" que el modelo 3D se mueva recto.
- **Configurar puertos para DJI O3 Air Unit:**
  - Ir a "Ports".
  - Configurar el puerto VCP (USB) con "MSP" activado.
  - Configurar el puerto 1 (UART1) con "MSP" activado.
  - Configurar el puerto 3 (UART3) como "RX" (Serial RX).
  - Hacer clic en "Save and Reboot".
- **Configurar receptor en Betaflight:**
  - Ir a "Configuration" → "Receiver".
  - Seleccionar "Serial-based receiver" y el protocolo correspondiente (ej. SBUS, CRSF).
  - Asegurar que el puerto UART del receptor esté correctamente asignado (en el video, se corrigió de UART2 a UART3).
- **Configurar OSD (USB DisplayPort):**
  - Ir a "Terminal" en Betaflight.
  - Escribir: `set usb_displayport_device = MSP` y presionar Enter.
  - Escribir: `set displayport_msp_serial = 0 6` y presionar Enter.
  - Escribir: `save` y presionar Enter.
- **Invertir dirección de motores:**
  - Conectar la batería (sin hélices).
  - Ir a "Motors" en Betaflight, marcar "I understand the risks" y usar el control deslizante para probar cada motor individualmente.
  - Identificar motores que giren en sentido incorrecto.
  - Usar la opción "Reverse motor direction" para cada motor que lo requiera.
  - Verificar nuevamente con los sliders.
- **Configurar modos de vuelo:**
  - Ir a "Modes".
  - Asignar un interruptor del mando a "ARM" (armado/desarmado).
  - Asignar "ANGLE" y "HORIZON" a otros interruptores.
  - Asignar "BEEPER" para activar el buzzer.
  - Asignar "FLIP OVER AFTER CRASH" (turtle mode) a un interruptor, con rango automático (ej. `5`).
  - Hacer clic en "Save".
- **Configurar OSD (On-Screen Display):**
  - Ir a "OSD".
  - Activar elementos como "Voltage per cell" y "Altitude".
  - Hacer clic en "Save".

## Reglas para agentes
- Usa `180` grados en "Board and Sensor Alignment" cuando el flight controller esté montado en diagonal pero el modelo 3D en Betaflight se mueva torcido.
- Nunca conectes la batería al dron sin antes quitar las hélices cuando vayas a probar motores en Betaflight.
- Siempre haz clic en "Save and Reboot" después de cada cambio en puertos, configuración o modos.
- Usa el comando `set usb_displayport_device = MSP` seguido de `set displayport_msp_serial = 0 6` en la terminal para habilitar OSD por USB en DJI O3.
- Verifica la dirección de cada motor individualmente usando los sliders en la pestaña "Motors" antes de volar.
- Configura el puerto UART del receptor en "Ports" como "RX" y en "Configuration" como "Serial-based receiver".
- Asigna el modo "ARM" a un interruptor de 2 posiciones y "ANGLE"/"HORIZON" a otro interruptor de 3 posiciones.

## Errores comunes que evita o menciona
- **Flight controller montado torcido:** Si el dron se eleva torcido en la vista 3D de Betaflight, no es un error del hardware; se corrige ajustando el ángulo de orientación de la placa (Yaw a 180 grados).
- **Puerto UART incorrecto para el receptor:** Si el receptor no responde en la pestaña "Receiver", verificar que el puerto UART correcto esté configurado como "RX" en "Ports" (en el video, se corrigió de UART2 a UART3).
- **Motores girando en sentido contrario:** Probar cada motor individualmente con los sliders en "Motors" e invertir la dirección de los que giren al revés. Siempre sin hélices.
- **No calibrar el acelerómetro:** Si el modelo 3D no responde correctamente, calibrar el acelerómetro sobre una superficie rígida antes de cualquier otro ajuste.
- **Air Unit sobrecalentada:** Desconectar la batería cuando no se esté usando para evitar daños por calor en la DJI O3 Air Unit.