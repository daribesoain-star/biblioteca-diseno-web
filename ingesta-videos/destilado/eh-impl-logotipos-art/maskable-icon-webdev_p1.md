# maskable-icon-webdev
**Fuente:** impl-logotipos | https://web.dev/articles/maskable-icon

## Qué enseña (2-3 líneas)
Explica cómo diseñar y declarar iconos maskable para Progressive Web Apps (PWAs) que se adapten automáticamente a las formas variables de los dispositivos Android (óvalo, círculo, cuadrado redondeado, etc.). Define la zona segura mínima, el padding protector contra recortes y la sintaxis exacta del manifiesto para evitar fondos blancos no deseados.

## Lecciones accionables
- **Zona segura mínima (safe zone):** Todo el contenido crítico del icono (logo, texto, elementos clave) debe estar dentro de un área circular central con radio igual al **40% del ancho del icono**. Esto equivale al **80% central del diámetro** total.
- **Padding protector contra recortes:** El **10% exterior del borde** del icono puede ser recortado en algunas plataformas. Por lo tanto, no colocar elementos importantes en esa franja perimetral.
- **Declaración en el manifiesto (manifest.json):** Usar el campo `purpose` con valor `"maskable"` para indicar al navegador que el icono debe ser enmascarado adaptativamente.

  ```json
  {
    "icons": [
      {
        "src": "path/to/maskable_icon.png",
        "sizes": "196x196",
        "type": "image/png",
        "purpose": "maskable"
      }
    ]
  }
  ```

- **Tamaño recomendado:** El ejemplo usa `196x196` píxeles, pero se pueden incluir múltiples tamaños.
- **Formato:** `image/png` (se recomienda PNG con transparencia).
- **Comportamiento en Android:** Los iconos maskable permiten que el navegador recorte automáticamente el icono a la forma específica del dispositivo (óvalo, círculo, cuadrado redondeado, etc.), en lugar de mostrar el icono dentro de un círculo blanco fijo.
- **Origen:** Android 8.0 (API nivel 26) introdujo los iconos adaptativos; los iconos maskable son la implementación web de ese concepto.

## Reglas para agentes
- **Usa** `purpose: "maskable"` en el manifiesto cuando el icono esté diseñado con la zona segura del 40% de radio y padding del 10% exterior.
- **Nunca** coloques contenido crítico (logotipo, texto, formas distintivas) fuera del círculo central del 40% de radio.
- **Nunca** uses `purpose: "any"` solo si el icono no está optimizado para recorte; si está diseñado para maskable, incluye siempre `"maskable"` para evitar fondos blancos.
- **Verifica** que el icono tenga transparencia en las áreas exteriores a la zona segura para que el recorte funcione correctamente.
- **Incluye** al menos un tamaño de 192x192 o 196x196 píxeles para cubrir la mayoría de dispositivos.

## Errores comunes que evita o menciona
- **Fondo blanco no deseado:** Si no se usa `purpose: "maskable"`, el navegador puede mostrar el icono dentro de un círculo blanco en dispositivos Android, en lugar de adaptarse a la forma del dispositivo.
- **Contenido crítico en bordes:** Colocar el logo o texto en el 10% exterior del borde provoca que sea recortado en algunos dispositivos, dejando el icono incompleto.
- **Icono sin transparencia:** Usar un fondo sólido en lugar de transparencia impide que el enmascarado funcione correctamente, resultando en bordes duros o formas incorrectas.
- **No declarar `purpose`:** Omitir el campo `purpose` o usar solo `"any"` hace que el navegador no trate el icono como maskable, perdiendo la adaptación automática a formas variables.