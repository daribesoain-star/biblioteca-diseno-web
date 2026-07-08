# Final Cut Pro Tips for Content Creators!
**Fuente:** jennjagerpro | https://youtu.be/FjWeWOx83cM

## Qué enseña
Siete trucos de Final Cut Pro para creadores de contenido: desde mejorar intros de YouTube con herramientas nativas, hasta repurposear videos horizontales a verticales, añadir overlays personalizados, generar capítulos automáticos, crear una biblioteca de elementos reutilizables, aplicar aislamiento de voz y agregar jump cuts rápidos.

## Lecciones accionables
- **Crear intros visuales con Dynamic Titles:** Ve a *Titles and Generator* → categoría *Dynamic*. Selecciona un bumper (ej. *Geometric Bumper*). En el *Title Inspector*, borra el texto de *Headline*. Opción + arrastra tu clip de video en vivo encima del título en la línea de tiempo. Recorta el clip para que coincida con la duración del título. Aplica *Magnetic Mask* al sujeto para que las formas animadas queden detrás. En el *Title Inspector*, cambia colores usando el cuentagotas (ej. color de la pared de fondo). Añade *Cross Dissolve* al final del bumper. Opcional: arrastra efecto *Crosshatch* (Stylize effects) sobre el título para textura.
- **Añadir texto overlay sin fondo:** Elige otro bumper (ej. categoría *Expressive*). En *Title Inspector*, cambia *Background* de *Default* a *Off*. Ajusta el texto.
- **Convertir video 16:9 a vertical con Smart Conform:** En el *Browser*, haz clic derecho sobre el proyecto → *Duplicate Project as*. En la ventana emergente, renombra, cambia *Format* a *Vertical*, ajusta resolución, marca la casilla *Smart Conform* y haz clic en *OK*. Final Cut centrará automáticamente el sujeto en cada corte.
- **Importar custom overlays para redes sociales:** Ve a *View* (en el visor) → *Choose Custom Overlay* → *Add Custom Overlay*. Selecciona un archivo PNG transparente. Luego, *View* → *Choose Custom Overlay* → selecciona el overlay deseado. Los overlays no se exportan; son solo guías visuales.
- **Generar capítulos de YouTube con Creator's Best Friend:** Coloca el *playhead* en la línea de tiempo. Haz doble clic en la tecla *M* para abrir el marcador. Cambia el tipo a *Chapter Marker* y escribe el título. Repite para cada sección. Ve al ícono de *puzzle piece* (workflow extensions) → selecciona *Creator's Best Friend*. Arrastra el proyecto desde el *Browser* a la ventana emergente. Haz clic en *Copy to Clipboard*. Pega en la descripción de YouTube.
- **Crear biblioteca de elementos reutilizables:** Crea un evento llamado *ZZ icons* (con dos Z al inicio para que aparezca al final de la lista). Al iniciar una nueva biblioteca, arrastra ese evento a la nueva biblioteca y selecciona *Include original media*. Para guardar una versión modificada: crea un nuevo proyecto (ajuste *Automatic Settings*). Coloca el elemento (ej. animación de suscripción). Redimensiona y reposiciona. Añade efectos o audio. Selecciona ambos clips y presiona *Option + G* para crear un *Compound Clip*. El compound clip aparecerá en el evento. Elimina el proyecto temporal.
- **Aplicar Voice Isolation:** Selecciona el clip de audio. Ve al *Audio Inspector*. En *Dialogue* (un canal), marca la casilla *Voice Isolation*. Ajusta el *slider* para aumentar la reducción de ruido. Encuentra el punto óptimo entre reducción de ruido y distorsión de la voz.
- **Añadir jump cuts rápidos con Range Tool:** Asegúrate de ver las formas de onda en la línea de tiempo (ajusta en *Clip Appearance* → ratio video/audio). Presiona la tecla *R* para activar la *Range Tool*. Haz clic y arrastra sobre secciones con silencios o respiraciones. Presiona *Delete*.

## Reglas para agentes
- Usa *Smart Conform* al duplicar proyectos de 16:9 a vertical para centrar automáticamente al sujeto.
- Cuando uses *Voice Isolation*, nunca subas el slider al máximo sin verificar distorsión en la voz del hablante.
- Siempre nombra los eventos de elementos reutilizables con dos Z al inicio (ej. *ZZ icons*) para que aparezcan al final de la biblioteca.
- Al crear un *Compound Clip* para guardar una versión modificada, elimina el proyecto temporal después de generarlo.
- Para overlays personalizados, usa siempre archivos PNG transparentes; nunca los incluyas en la exportación final.
- Al añadir capítulos, usa *Chapter Marker* (doble clic en M) en lugar de marcadores regulares.

## Errores comunes que evita o menciona
- **No dejar texto en los bumpers:** Si solo quieres las formas geométricas, borra el texto *Headline* en el *Title Inspector* para que no aparezca.
- **No subir el slider de Voice Isolation al máximo:** Puede distorsionar la voz del hablante; hay que encontrar el punto óptimo entre reducción de ruido y calidad vocal.
- **No usar la herramienta Blade para jump cuts:** Es más lento; en su lugar usa la *Range Tool* (tecla R) para seleccionar silencios y presiona Delete.
- **No olvidar marcar *Smart Conform* al duplicar proyectos:** Sin esta opción, el video vertical solo centrará los cortes sin detectar al sujeto.
- **No incluir overlays en la exportación:** Los custom overlays son solo guías visuales temporales; no se hornean en el video exportado.