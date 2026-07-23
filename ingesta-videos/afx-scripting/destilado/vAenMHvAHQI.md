# Tutorial 21: Using aerender
**Fuente:** Workbench | https://youtu.be/vAenMHvAHQI

## Qué enseña
Cómo crear un script bash ejecutable que invoca `aerender` desde la terminal para renderizar un proyecto de After Effects (.aep) en segundo plano, permitiendo seguir trabajando en After Effects mientras se completa la exportación.

## Técnicas de scripting accionables

- **Crear un script bash ejecutable (no .jsx)** con shebang y ruta a aerender:
  ```bash
  #!/bin/bash
  /Applications/Adobe\ After\ Effects\ 2024/aerender -project "$1"
  ```
  - `#!/bin/bash` → shebang para indicar que es un script bash ejecutable.
  - `\` (backslash) → escapa espacios en la ruta (ej: `Adobe\ After\ Effects\ 2024`).
  - `-project` → flag de aerender para especificar el proyecto.
  - `"$1"` → primer argumento pasado al script (ruta al archivo .aep).

- **Hacer el script ejecutable** desde terminal:
  ```bash
  chmod +x render
  ```
  - `chmod +x` → otorga permisos de ejecución al archivo.

- **Ejecutar el script** pasando la ruta del .aep como argumento:
  ```bash
  ./render /ruta/al/proyecto.aep
  ```
  - Se puede arrastrar el archivo .aep a la terminal para pegar su ruta automáticamente.

- **Cancelar la renderización** en cualquier momento:
  - `Ctrl + C` (incluso en macOS) → interrumpe el proceso en la terminal.

## Reglas para el operador

- **Usa `chmod +x`** después de crear el script bash; sin esto, el sistema denegará la ejecución (`Permission denied`).
- **Usa `\` (backslash)** antes de cada espacio en la ruta de aerender para evitar errores de sintaxis en bash.
- **Usa `"$1"` entre comillas** para que el argumento (ruta del .aep) se interprete correctamente incluso si contiene espacios.
- **Puedes dejar After Effects abierto** mientras ejecutas el script; aerender funciona en segundo plano sin bloquear la aplicación.
- **Añade la composición a la cola de render (Render Queue) y guarda el proyecto** antes de cerrarlo y ejecutar el script; aerender procesa lo que está en la cola.
- **Arrastrar el .aep a la terminal** añade un espacio al final; no afecta la ejecución.

## Errores comunes

- **Olvidar hacer `chmod +x`** → al ejecutar `./render` aparece `Permission denied`.
- **No escapar espacios en la ruta de aerender** → el terminal interpreta cada palabra como un argumento separado y falla.
- **No guardar el proyecto antes de ejecutar aerender** → la cola de render está vacía o no refleja los últimos cambios.
- **Usar el script sin pasar la ruta del .aep como argumento** → `$1` queda vacío y aerender muestra la ayuda por defecto.
- **Confundir `aerender` con un script .jsx** → `aerender` es un ejecutable independiente, no un script de ExtendScript.