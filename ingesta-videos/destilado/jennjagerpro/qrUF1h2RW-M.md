# Final Cut Scopes Tutorial 
**Fuente:** jennjagerpro | https://youtu.be/qrUF1h2RW-M

## Qué enseña (2-3 líneas)
Este tutorial explica cómo leer y usar los tres osciloscopios esenciales en Final Cut Pro (histograma, parade RGB y vectorscopio) para corregir color de forma profesional. Enseña a identificar rangos seguros de luminancia y saturación, y a corregir tonos de piel usando herramientas de máscara y curvas.

## Lecciones accionables
- **Abrir osciloscopios:** Ve al menú desplegable en la parte superior del visor y selecciona "Video Scopes" o presiona `Command + 7`.
- **Cambiar visualización:** Haz clic en el ícono de gráfico de barras pequeño para alternar entre waveform, histograma y vectorscopio. Usa el menú "View" para elegir vista de 1, 2 o 3 osciloscopios simultáneamente.
- **Histograma:** Mide la luminancia (luma) de 0 a 100 IRE. Asegúrate de que los negros lleguen a 0 y los blancos a 100 sin recortar. Para ajustar, usa la pestaña "Exposure" en el panel de color: baja las sombras hasta que el pico izquierdo toque 0, sube las altas luces hasta que el pico derecho toque 100, luego ajusta los tonos medios para equilibrar.
- **Parade RGB:** Actívalo yendo al ícono de gráfico de barras > "Waveform" > "Channels" > "RGB Parade". Busca que las tres formas de onda (rojo, verde, azul) sean similares en altura y forma. Si una domina, indica dominancia de color.
- **Vectorscopio:** Muestra la saturación y dirección de los colores hacia los puntos R (rojo), Mg (magenta), B (azul), Cy (cian), G (verde), Y (amarillo). Activa la guía de tono de piel: ícono de menú > "Show Skin Tone Indicator" (aparece una línea diagonal).
- **Corregir tono de piel con vectorscopio:** Aísla un área de piel usando la herramienta Recortar (Crop) en el visor para que el vectorscopio mida solo esa zona. Luego, aplica una máscara de color: "Color Mask" > cuentagotas, arrastra sobre la piel. Activa "View Masks" para que el vectorscopio mida solo la selección. Usa las ruedas de color (Color Wheels) en la pestaña de tonos medios para alinear la muestra con la línea indicadora de tono de piel.
- **Corrección de balance de blancos:** Primero aplica "Balance Color" automático. Luego usa "Color Curves" para subir rojos y bajar verdes. Después, con "Color Wheels", aísla la piel con máscara de color y ajusta los tonos medios. Finalmente, agrega otro juego de ruedas de color para toda la toma y ajusta saturación, tinte (sube rojos ligeramente) y temperatura (calienta altas luces).
- **Verificar consistencia:** Después de corregir, desplaza el cabezal de reproducción a lo largo del clip para asegurarte de que todos los valores se mantengan dentro del rango seguro en el parade RGB.

## Reglas para agentes
- Usa el histograma para verificar que los negros no bajen de 0 IRE y los blancos no superen 100 IRE; si lo hacen, hay recorte o pérdida de detalle.
- En el parade RGB, busca que las tres formas de onda sean lo más similares posible; si una es significativamente más alta, corrige la dominancia de color.
- Cuando haya personas en el plano, prioriza la corrección del tono de piel usando el vectorscopio con la guía "Show Skin Tone Indicator" activada.
- Nunca confíes solo en el ojo para juzgar el color; usa siempre los osciloscopios como referencia objetiva.
- Siempre aísla la piel con una máscara de color o recorte antes de ajustar el tono de piel en el vectorscopio; no apliques correcciones de piel a toda la toma.
- Después de cualquier corrección, desplaza el cabezal de reproducción por todo el clip para verificar que los valores se mantengan estables y dentro de rango.

## Errores comunes que evita o menciona
- **Blancos recortados o "blown out":** Ocurre cuando los blancos superan 100 IRE en el histograma, perdiendo detalle (ejemplo: ventana sobreexpuesta en interiores).
- **Negros aplastados o "crushed":** Sucede cuando los negros bajan de 0 IRE, perdiendo detalle en sombras (ejemplo: chaqueta negra donde no se distingue solapa del cuerpo).
- **Falta de balance de blancos:** El video de ejemplo muestra una toma azulada por no haber balanceado la cámara; se corrige con Balance Color automático y ajustes manuales en curvas y ruedas de color.
- **Saturación excesiva en un color:** En el vectorscopio, si un color se extiende demasiado lejos del centro, está sobresaturado; se corrige con curvas "Hue vs Saturation" para reducir ese tono específico.
- **No aislar la piel antes de corregir:** Ajustar el tono de piel sin máscara afecta a toda la toma; siempre usa "Color Mask" o recorte para medir solo la piel en el vectorscopio.