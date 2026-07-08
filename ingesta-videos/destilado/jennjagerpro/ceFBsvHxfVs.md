# Consolidating Media in Final Cut Pro
**Fuente:** jennjagerpro | https://youtu.be/ceFBsvHxfVs

## Qué enseña (2-3 líneas)
Este video explica cómo consolidar medios externos dentro de la biblioteca de Final Cut Pro, cómo mover medios desde la biblioteca a una carpeta externa, y cómo verificar y corregir la ubicación de almacenamiento de los archivos. También cubre cómo habilitar la opción "Copiar a la biblioteca" cuando no está disponible en la ventana de importación.

## Lecciones accionables
- **Identificar medios externos:** Haz clic derecho sobre la biblioteca de Final Cut Pro → "Mostrar contenido del paquete" → abre la carpeta "Original Media". Si los archivos tienen una flecha negra pequeña, significa que son referencias a archivos externos, no archivos reales dentro de la biblioteca.
- **Consolidar toda la biblioteca:** Selecciona la biblioteca en la barra lateral → menú "Archivo" → "Consolidar medios de la biblioteca". En la ventana emergente, elige "En la biblioteca" como destino. Marca "Incluir medios originales", "Incluir medios optimizados" e "Incluir medios proxy" según necesites. Si no hay medios optimizados/proxy y marcas esas casillas, Final Cut preguntará si deseas transcodificarlos.
- **Consolidar un evento específico:** Selecciona el evento en la barra lateral → menú "Archivo" → "Consolidar medios del evento". Solo los medios de ese evento se moverán a la biblioteca.
- **Consolidar clips individuales:** Selecciona uno o varios clips en el navegador → menú "Archivo" → "Consolidar medios del clip". Solo esos clips se consolidan; el resto permanece en la carpeta externa.
- **Consolidar medios de un proyecto:** Selecciona un proyecto en el navegador → menú "Archivo" → "Consolidar medios del proyecto". Solo los clips usados en ese proyecto se llevan a la biblioteca.
- **Verificar consolidación:** Después de consolidar, haz clic derecho en la biblioteca → "Mostrar contenido del paquete" → abre "Original Media". Los archivos ya no deben tener flechas negras. La carpeta externa original (ej. "Final Cut Original Media") aún existe con duplicados; es seguro eliminarla para ahorrar espacio.
- **Habilitar "Copiar a la biblioteca" si no aparece:** Selecciona la biblioteca → abre el Inspector (ventana de inspección) → en "Ubicaciones de almacenamiento", haz clic en "Modificar configuración". En la opción "Medios", cambia a "En la biblioteca" → "OK". Al abrir la ventana de importación, la opción "Copiar a la biblioteca" estará disponible.
- **Mover medios de la biblioteca a una carpeta externa:** Selecciona la biblioteca → menú "Archivo" → "Consolidar medios de la biblioteca". En "Destino de medios", elige "Crear nueva carpeta" o selecciona una existente. Marca las casillas de medios a incluir. Final Cut creará una carpeta con una subcarpeta "Final Cut Original Media" que contiene todos los clips.

## Reglas para agentes
- Usa "Consolidar medios de la biblioteca" (menú Archivo > Consolidar medios de la biblioteca) cuando quieras mover todos los medios externos dentro de la biblioteca de Final Cut Pro.
- Usa "Consolidar medios del evento" cuando solo necesites consolidar los medios de un evento específico, no toda la biblioteca.
- Usa "Consolidar medios del proyecto" cuando solo quieras incluir en la biblioteca los clips utilizados en un proyecto concreto.
- Nunca elimines la carpeta externa original (ej. "Final Cut Original Media") hasta haber verificado que la consolidación se completó y los archivos dentro de la biblioteca ya no tienen flechas negras.
- Cuando la opción "Copiar a la biblioteca" no aparezca en la ventana de importación, modifica la configuración de "Ubicaciones de almacenamiento" en el Inspector de la biblioteca, cambiando "Medios" a "En la biblioteca".
- Para mover medios desde la biblioteca a una carpeta externa, usa "Consolidar medios de la biblioteca" y selecciona un destino externo en lugar de "En la biblioteca".

## Errores comunes que evita o menciona
- **No confundir archivos con flechas negras (referencias) con archivos reales dentro de la biblioteca:** Las flechas indican que los archivos están almacenados externamente, no dentro del paquete de la biblioteca.
- **No asumir que la opción "Copiar a la biblioteca" siempre está disponible:** Si no aparece, es porque la configuración de almacenamiento de la biblioteca está en una ubicación externa; hay que cambiarla a "En la biblioteca" desde el Inspector.
- **No eliminar la carpeta externa original antes de verificar la consolidación:** Después de consolidar, la carpeta externa sigue existiendo con duplicados; solo es seguro borrarla cuando los archivos dentro de la biblioteca ya no tengan flechas negras.
- **No usar "Consolidar medios del clip" a menos que sea un caso muy específico:** La instructora considera que la mayoría de usuarios querrán consolidar toda la biblioteca o todo un evento, no clips individuales.