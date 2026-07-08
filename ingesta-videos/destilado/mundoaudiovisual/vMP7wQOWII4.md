# Davinci Resolve para iPad PRO
**Fuente:** mundoaudiovisual | https://youtu.be/vMP7wQOWII4

## Qué enseña
Cómo configurar y optimizar DaVinci Resolve 18.5 en iPad Pro (M2) para edición profesional, incluyendo activación de módulos ocultos (Editing, Fusion, Fairlight, Delivery), atajos de teclado personalizados, ajustes de proyecto y trucos para sincronizar cortes con música sin latencia.

## Lecciones accionables
- **Activar módulos ocultos (Editing, Fusion, Fairlight, Delivery):** presiona `Option + Command + K` para abrir "Keyboard Customization". Busca "Show modules". Asigna: `Shift+1` para Editing, `Shift+2` para Fusion, `Shift+3` para Fairlight, `Shift+4` para Delivery, `Shift+5` para Media. Guarda la configuración con un nombre (ej. "DaVinci Resolcarlo"). Al reiniciar la app, presiona `Shift + Control + 1/2/3/4/5` para reactivar los módulos.
- **Configurar proyecto para slow motion:** al importar clips a 60 fps, responde "No" al cambio de frame rate. Crea timeline: botón derecho o dos dedos en trackpad → "Timeline" → "Create Timeline". Desmarca "Use project settings". Configura resolución: `3840 x 2160`, frame rate: `30 fps`. Luego ve al ícono de engranaje (gear) → project settings → confirma `3840 x 2160` y `30 fps` → "Save".
- **Atajo "Delete and Propagate":** presiona `Option + Command + K` → busca "propagate" → selecciona "editing module: cut and propagate" o "delete and propagate". Asigna la tecla `a` (superscript/superscript). Guarda. Al presionar esa tecla, elimina el clip y propaga el espacio automáticamente.
- **Importar música y ajustar volumen:** arrastra archivo de audio a la timeline. Usa el control de volumen (fader) para bajar el nivel si está muy alto.
- **Uso de auriculares para evitar latencia:** usa AirPods Pro o auriculares con baja latencia Bluetooth para que los cortes sincronicen exactamente con la música. Evita auriculares con delay perceptible.

## Reglas para agentes
- Usa un teclado externo con trackpad (o mouse Bluetooth) siempre que edites en iPad Pro; es indispensable para edición fluida y profesional.
- Nunca uses auriculares Bluetooth con latencia alta para hacer cortes al ritmo de la música; usa AirPods Pro o modelos con baja latencia.
- Cuando crees un timeline para slow motion desde clips a 60 fps, configura el timeline a 30 fps manualmente desmarcando "Use project settings".
- Siempre asigna atajos de teclado a los módulos ocultos (Shift+1 a Shift+5) inmediatamente después de instalar la app, y guarda la configuración con un nombre personalizado.
- Al reiniciar DaVinci Resolve en iPad, presiona Shift+Control+1/2/3/4/5 para reactivar los módulos ocultos antes de empezar a editar.

## Errores comunes que evita o menciona
- No usar teclado ni trackpad: hace la edición lenta y poco profesional; el trackpad permite clic derecho con dos dedos y navegación precisa.
- Usar auriculares Bluetooth con latencia: impide cortar exactamente al ritmo de la música; el iPad tiene buen sonido nativo, pero para edición precisa se recomiendan AirPods Pro.
- Olvidar que los módulos Editing, Fusion, Fairlight y Delivery están ocultos por defecto en iPad (Blackmagic los considera no 100% optimizados); hay que activarlos manualmente con atajos cada vez que se abre la app.
- No ajustar el frame rate del timeline al importar clips a 60 fps: si se acepta el cambio automático, se pierde la posibilidad de añadir slow motion suave al 50% (30 fps).