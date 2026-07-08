# Claude Design + Seedance 2.0 = EASY 10K Animated Websites
**Fuente:** imskaigenerated | https://youtu.be/Es-wfzqhhhE

## Qué enseña (2-3 líneas)
Flujo de trabajo completo para crear sitios web animados de alta calidad combinando Claude Design (prototipado), Claude Code (desarrollo) y Seedance 2.0 en OpenArt (animación cinematográfica). Muestra cómo pasar de capturas de inspiración a un sitio funcional con video hero en minutos, replicando resultados de agencias profesionales.

## Lecciones accionables
- **Paso 1 - Mood board:** Abre Figma y durante ~30 minutos captura screenshots de sitios web (hero sections, product grids, navigation bars). Guarda todo lo que llame la atención en un tablero.
- **Paso 2 - Prototipo en Claude Design:** Ve a claude.ai, sube todas las capturas y usa un prompt como: *"Analyze the design patterns from my screenshots and build a prototype inspired by them. Modern car spare parts website featuring alloys, turbo filters, steering wheels, and performance accessories."*
- **Ajustes de tipografía:** Pide cambios de fuente específicos. Ejemplo real: *"Change the font to Montserrat"* (sitio de autopartes) o *"Change the font to Didot and Bodoni Moda for the headings and Inter for the body text"* (sitio de lujo).
- **Reemplazo de imágenes:** Sube tus imágenes reales (ej: generadas con Nano Banana 2) junto con un screenshot de la sección a modificar y pide: *"Replace the images in that section with the ones I uploaded."*
- **Handoff a Claude Code (método 1):** Escribe textualmente *"Drop this off to Claude Code"* — esto invoca un skill integrado que transfiere el diseño automáticamente.
- **Handoff a Claude Code (método 2):** Ve a la esquina superior izquierda → botón Share → scroll down → opción *"Hand off to Claude Code"* → click → Resume inside Claude Code.
- **Generación del sitio en Claude Code:** Pide: *"Build the whole thing as a single index.html file with all the CSS and JavaScript inline."* Obtienes un archivo limpio sin dependencias externas.
- **Generación de imagen base en OpenArt:** Ve a OpenArt → click Image → cambia modelo a **Nano Banana 2**. Prompt ejemplo: *"Clean, ultra-realistic luxury sports car on a white background, professional automotive photography style, front 3/4 angle."* Aspect ratio **16:9**, calidad **4K**.
- **Animación con Seedance 2.0:** Click Video → cambia modelo a **Seedance 2.0** → sube la imagen generada como referencia. Prompt ejemplo: *"Cinematic luxury sports car commercial driving through Venice-inspired streets, golden hour lighting, dynamic rolling shots, low-angle tracking, aerial drone views, wheel spin details, wet pavement reflections."* Duración **12 segundos**, calidad **1080p**.
- **Método alternativo SmartShot (ahorro de créditos):** Click Video → SmartShot → sube producto, personajes y entorno por separado. Prompt ejemplo: *"Premium rooftop commercial vibe with golden hour lighting, hyperrealistic macro shots of condensation, group celebration energy, and hero pack shot finish."* Resolución **1080p**, duración **15 segundos**, aspect ratio **16:9**, calidad **High**. Genera preview sheet primero para aprobar.
- **Inserción del video en Claude Code:** Describe: *"Place the video behind the main headline, silent, auto-playing, looping with a short delay between plays, keeping that sleek high-end feel."* Luego pide *"the full updated file"*.
- **Ejemplo segundo sitio (relojería de lujo):** Marca "Eredita". Fuentes: Didot/Bodoni Moda para headings, Inter para body. Animación de 3 escenas: (1) empresario ajustando puño con macro close-up del reloj, (2) hombre en nightclub con luz ambiental dorada/azul, (3) golfista en campo privado con slow-motion del swing. Final: los 3 relojes juntos en display blanco premium.

## Reglas para agentes
- Usa Claude Design SOLO para el prototipo inicial y cambios grandes de diseño; no desperdicies créditos en tweaks menores que puedes hacer después en Claude Code.
- Cuando subas imágenes de referencia a Claude Design, incluye SIEMPRE un screenshot de la sección exacta a modificar junto con las imágenes nuevas.
- Usa el comando "Drop this off to Claude Code" o el botón "Hand off to Claude Code" para transferir el diseño sin gastar más créditos de Claude Design.
- En Claude Code, pide SIEMPRE un único archivo index.html con CSS y JavaScript inline para evitar problemas de assets faltantes.
- Para animaciones, genera primero la imagen base con Nano Banana 2 (modelo de imágenes) antes de pasarla a Seedance 2.0 (modelo de video).
- En SmartShot, genera SIEMPRE el preview sheet antes de la generación final para verificar calidad sin gastar créditos completos.
- Cuando añadas video al sitio, especifica: silent, auto-playing, looping, con short delay between plays.
- Usa OpenArt en lugar de Seedance standalone si estás en presupuesto limitado — acceso a Seedance + Kling 3.0 bajo una sola suscripción.

## Errores comunes que evita o menciona
- **No malgastar créditos de Claude Design:** Tiene límites de uso muy bajos incluso en plan Pro. No uses mensajes para cambios pequeños que puedes arreglar después en Claude Code.
- **No generar videos sin preview:** Usa SmartShot y su preview sheet para evitar gastar créditos en generaciones que no te gusten. Si no te gusta el preview, haz click en "edit", describe el cambio y regenera.
- **No usar múltiples plataformas de video por separado:** Seedance puede ser caro si generas muchos clips. OpenArt es alternativa sólida porque agrupa Seedance y Kling 3.0 en una sola suscripción.
- **No olvidar el handoff:** Si sigues haciendo cambios visuales en Claude Design después de tener el prototipo, quemas créditos innecesariamente. Transfiere a Claude Code tan pronto como el diseño base esté listo.
- **No generar archivos dependientes:** Siempre pide un solo index.html con todo inline para evitar links rotos o assets faltantes al abrir el archivo.