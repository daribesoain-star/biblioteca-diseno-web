# Transbank WebPay - Generar Llaves
**Fuente:** eh-pagos-chile | https://youtu.be/ss_iOcf5s7Y

## Qué enseña
Este tutorial explica cómo generar las llaves criptográficas necesarias para el proceso de certificación de la versión de producción del plugin WooCommerce para Webpay Plus de Transbank. Cubre la creación de un archivo `.key` y un certificado `.crt` usando OpenSSL desde la terminal, con los parámetros específicos que exige Transbank.

## Lecciones accionables
- **Requisito previo:** Tener instalado OpenSSL en el sistema (Mac, Windows con command prompt, o Linux).
- **Obtener el código de comercio (merchant code)** exclusivo para Webpay Plus (no es el mismo que el del dispositivo físico o máquina de red para compras; debe solicitarse por separado).
- **Paso 1 – Generar la llave privada (.key):** Ejecutar en terminal:
  ```
  openssl genrsa -out <código_comercio>.key 2048
  ```
  Reemplazar `<código_comercio>` con el merchant code proporcionado (ejemplo: `5970xxxxxxx`).
- **Paso 2 – Crear la solicitud de certificado (.csr):** Ejecutar:
  ```
  openssl req -new -key <código_comercio>.key -out <código_comercio>.csr
  ```
  Completar los campos solicitados:
  - **Country Name:** `CL` (Chile)
  - **State or Province Name:** `Metropolitana` (Región Metropolitana)
  - **Locality Name:** `Santiago`
  - **Organization Name:** Nombre de la empresa (puede dejarse en blanco)
  - **Common Name:** Pegar exactamente el código de comercio (merchant code) proporcionado
  - **Email Address:** Correo de contacto
  - **A challenge password:** Dejar en blanco (no ingresar nada)
- **Paso 3 – Generar el certificado (.crt):** Ejecutar:
  ```
  openssl x509 -req -days 1460 -in <código_comercio>.csr -signkey <código_comercio>.key -out <código_comercio>.crt
  ```
  El parámetro `-days 1460` corresponde a la validez mínima de 4 años (1460 días) exigida por Transbank.
- **Paso 4 – Identificar archivos generados:** Se obtienen tres archivos: `<código_comercio>.key`, `<código_comercio>.csr` y `<código_comercio>.crt`. El archivo a enviar al proceso de certificación es el **público** (`.crt`).

## Reglas para agentes
- Usa `openssl genrsa -out <merchant_code>.key 2048` para generar la llave privada; nunca uses un tamaño de clave diferente a 2048 bits.
- Cuando el prompt pida "Common Name", pega exactamente el código de comercio (merchant code) sin modificaciones; no uses el nombre de la empresa ni otro texto.
- Deja el campo "A challenge password" completamente vacío; no ingreses ninguna contraseña.
- Usa `-days 1460` al generar el certificado; nunca uses un valor menor, ya que Transbank exige una validez mínima de 4 años.
- Envía únicamente el archivo `.crt` (certificado público) al proceso de certificación; nunca envíes el `.key` (llave privada) ni el `.csr`.

## Errores comunes que evita o menciona
- **Usar el merchant code incorrecto:** El código de comercio para Webpay Plus es diferente al del dispositivo físico o máquina de red para compras; debe solicitarse por separado a Transbank.
- **Ingresar una contraseña en el campo "challenge password":** Debe dejarse en blanco; si se ingresa algo, el certificado no funcionará correctamente.
- **No respetar la duración mínima de 1460 días:** Transbank exige que el certificado tenga una validez de al menos 4 años; usar un valor menor puede causar rechazo en la certificación.
- **Enviar el archivo incorrecto:** Solo se debe enviar el `.crt` (certificado público) a Transbank; el `.key` y `.csr` se guardan localmente.