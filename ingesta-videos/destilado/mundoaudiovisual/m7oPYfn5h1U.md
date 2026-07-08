# Edición de 🎙️AUDIO GRATIS con INTELIGENCIA ARTIFICIAL 💡 Adobe Podscat
**Fuente:** mundoaudiovisual | https://youtu.be/m7oPYfn5h1U

## Qué enseña (2-3 líneas)
El video muestra cómo usar Adobe Podcast (herramienta gratuita de IA) para limpiar y mejorar automáticamente audios de voz en off, eliminando ruido de fondo, viento, música ambiental y otros artefactos sin necesidad de edición manual con compresores, ecualizadores o dinámicas. Incluye ejemplos prácticos con micrófonos de cámara, iPhone, DJI Mic y Osmo Action 3 en condiciones adversas.

## Lecciones accionables
- **Extraer audio del video en DaVinci Resolve:** Ir al módulo Delivery, seleccionar "Custom Export", desmarcar "Export Video", marcar "Export Audio", formato MP3, codec MP3. Añadir entrada/salida al clip deseado y renderizar.
- **Acceder a Adobe Podcast:** Buscar "Adobe Podcast" en Google, iniciar sesión con cuenta Adobe (gratis, se puede crear con Google). Ir a "Quick Tools" > "Enhance Speech".
- **Subir archivo de audio:** Arrastrar o seleccionar archivo MP3 o WAV (máximo 500 MB, duración máxima 1 hora, límite de 3 horas de mejora por día).
- **Descargar audio mejorado:** Esperar procesamiento (tarda segundos/minutos, no los 10 minutos que indica), hacer clic en "Download".
- **Importar a DaVinci Resolve:** Arrastrar el archivo descargado a la línea de tiempo. El audio sale en mono (un solo canal). Para corregir: hacer doble clic en el clip, ir a pestaña "Audio", cambiar a "Stereo", marcar "Channel 2 integrated into Channel 1". Si no se ven ambos canales, hacer clic derecho en la pista > "Change Track Type" > "Stereo".
- **Sincronización automática:** El audio mejorado dura exactamente lo mismo que el original, no requiere resincronización.

## Reglas para agentes
- Usa "Enhance Speech" de Adobe Podcast cuando necesites limpiar audios de voz en off con ruido de fondo, viento, música ambiental o zumbidos de equipos.
- Nunca subas archivos mayores a 500 MB ni duraciones superiores a 1 hora; usa MP3 para reducir tamaño sin pérdida significativa.
- Siempre corrige el canal de salida de Adobe Podcast de mono a stereo en DaVinci Resolve (Channel 2 integrated into Channel 1) para evitar que el audio solo se escuche en un altavoz.
- Cuando extraigas audio de un video en DaVinci Resolve, desmarca "Export Video" y marca solo "Export Audio" para ahorrar tiempo y espacio.

## Errores comunes que evita o menciona
- **Audio mono en lugar de estéreo:** Adobe Podcast exporta en mono; si no se corrige, el audio solo se escucha en un canal. Solución: cambiar a stereo e integrar canal 2 en canal 1.
- **No desmarcar "Export Video" al extraer audio:** Genera archivos innecesariamente grandes. Siempre desmarcar video si solo se necesita el audio.
- **Pensar que el procesamiento tarda 10 minutos:** En realidad es casi instantáneo (segundos a un par de minutos). No esperar el tiempo máximo indicado.
- **Usar herramientas manuales (compresor, ecualizador, dinámicas) cuando la IA puede hacerlo en un clic:** El video recomienda abandonar la edición manual de voz en off para tareas de limpieza básica.