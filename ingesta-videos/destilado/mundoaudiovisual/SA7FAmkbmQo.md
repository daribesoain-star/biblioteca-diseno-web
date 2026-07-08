# Curso de edición de video - Davinci Resolve - 🎬 Capítulo 6 - Transformar, Recortar, Zoom dinámico…
**Fuente:** mundoaudiovisual | https://youtu.be/SA7FAmkbmQo

## Qué enseña (2-3 líneas)
Este capítulo explica las herramientas de transformación, recorte y zoom dinámico en DaVinci Resolve, centrándose en el uso del Inspector para escalar, rotar, recortar y aplicar efectos como desenfoque y modos de fusión. También enseña a simular múltiples cámaras usando una sola grabación en 4K editada en 1080p.

## Lecciones accionables
- **Escalar proporcionalmente:** Usa las esquinas o los tiradores centrales mientras presionas la tecla "mayor que" (>) para escalar de forma proporcional. No uses los tiradores laterales solos porque distorsionan la imagen.
- **Recortar (Crop):** Selecciona la herramienta Recortar en el lienzo (botón con icono de tijeras). Arrastra los bordes para recortar. Puedes mantener presionado y mover el recorte a la posición deseada.
- **Rotar y ancla (Anchor Point):** En el Inspector, sección Transform, ajusta el "ancla" (anchor point) para definir desde dónde rota o escala el clip. Si mueves el ancla a un lado, la rotación y el zoom se dirigen hacia ese punto.
- **Zoom dinámico (Dynamic Zoom):** Selecciona la herramienta Dynamic Zoom en el lienzo. La parte verde define la posición inicial, la roja la final. Ajusta la velocidad con "initial acceleration" (aceleración inicial) o "final acceleration" (aceleración final). Usa el botón "Swap" para invertir el sentido del zoom.
- **Simular multicámara:** Corta el clip en varias secciones. En cada corte, cambia la escala y posición desde el Inspector (Transform). Por ejemplo: un corte con zoom cercano, otro con zoom normal, otro con inversión en eje X (marcar "Flip" en "Invert on axes"). Esto da la ilusión de múltiples cámaras.
- **Opacidad y fundido desde negro:** En el Inspector, sección Composición, baja el valor de "Opacity" para hacer transparente el clip. Para fundido desde negro, arrastra el tirador de dos líneas en el borde del clip en la línea de tiempo (aparece una línea diagonal).
- **Modos de fusión (Blending Modes):** En el Inspector, sección Composición, cambia el modo de "Normal" a "Add" para superponer efectos como fuegos artificiales sobre otro clip (equivalente a "Screen" en Adobe Premiere). Prueba otros modos como "Color", "Darken", "Difference".
- **Desenfoque (Gaussian Blur):** Arrastra el efecto "Gaussian Blur" desde la pestaña de efectos al clip. En el Inspector, pestaña de efectos, ajusta la intensidad horizontal y vertical. Desmarca el botón "add" para aplicar solo en un eje. Cambia "Reflection" a "Black" para que los bordes se vuelvan negros.
- **Resetear valores:** En cualquier tirador de recorte o transformación, presiona el botón de reset (icono de flecha circular) para volver a los valores por defecto.

## Reglas para agentes
- Usa siempre las esquinas o tiradores centrales con la tecla "mayor que" (>) cuando quieras escalar proporcionalmente; nunca uses tiradores laterales solos.
- Cuando quieras simular multicámara, corta el clip en segmentos y cambia la escala/posición en cada uno; nunca uses el mismo encuadre en todos los cortes.
- Para superponer efectos como fuegos artificiales, usa el modo de fusión "Add" en el clip superior; nunca uses "Normal" porque el clip superior tapará al inferior.
- Si el clip de origen tiene mayor resolución que la línea de tiempo (ej. 4K en timeline 1080p), puedes escalar sin perder calidad; nunca escales un clip que tenga la misma o menor resolución que la línea de tiempo.
- Para fundido desde negro, arrastra el tirador de dos líneas en el borde del clip en la línea de tiempo; nunca uses keyframes manuales para esto a menos que necesites control preciso.

## Errores comunes que evita o menciona
- **Escalar sin proporción:** Usar tiradores laterales sin presionar la tecla "mayor que" distorsiona la imagen. Solo debe hacerse para efectos especiales.
- **Recortar sin margen de resolución:** Si el clip tiene la misma resolución que la línea de tiempo, al escalar o recortar se pierde calidad. Se recomienda grabar en 4K y editar en 1080p.
- **No usar el ancla correctamente:** Si el ancla no está en el centro, el zoom y la rotación se dirigen hacia ese punto, lo que puede dar resultados no deseados si no se controla.
- **Confundir modos de fusión:** El modo "Add" es el equivalente a "Screen" en Premiere; usarlo en clips sin fondo negro puede dar resultados extraños.