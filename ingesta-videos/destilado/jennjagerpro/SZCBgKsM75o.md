# Tools for FCP Editors 
**Fuente:** jennjagerpro | https://youtu.be/SZCBgKsM75o

## Qué enseña (2-3 líneas)
Este video presenta cinco herramientas externas que optimizan el flujo de trabajo en Final Cut Pro, enfocándose en productividad y no en efectos visuales. Cubre extensiones de workflow y aplicaciones independientes para selección de fuentes, gestión de medios en la nube, transcripción y edición de entrevistas, generación de subtítulos, y transferencia de composiciones a Motion.

## Lecciones accionables
- **Font Audition (extensión):** Abre desde el menú de extensiones de FCP. Escribe el texto exacto de tu proyecto en la ventana emergente. Desliza el control de tamaño de fuente para ver más opciones o arrastra el slider a la derecha para un primer plano. Una vez elegida la fuente, arrastra y suelta directamente sobre el clip en la línea de tiempo; se crea un clip compuesto. Haz doble clic en él para acceder al título básico y modificar formato. Costo: $10 en App Store.
- **Alteon IO (extensión):** Desde el menú de extensiones en FCP, accede a tus proyectos en la nube. Para subir archivos, usa el botón "Request Upload" en el sitio web de Alteon y envía el enlace a colaboradores. Usa el "Alteon Accelerator" (impulsado por IBM) para priorizar tu ancho de banda durante la subida. Dentro de FCP, puedes descargar archivos originales o proxy (Alteon genera proxies automáticamente al subir). Selecciona descargar archivos individuales o todos, elige la biblioteca de destino o crea una nueva.
- **Lumberjack Builder (app independiente):** Arrastra un evento completo de FCP a la sección "Builder UI" y presiona "Submit Batch". Espera a que aparezca el círculo verde bajo "Status". Selecciona un clip para ver su transcripción. Haz clic en "Story Builder". Arrastra oraciones individuales desde la transcripción (panel izquierdo) al panel derecho para reordenarlas. Reproduce la secuencia para escuchar cómo suenan juntas. Al terminar, presiona la flecha hacia arriba en el centro, elige la biblioteca de destino y selecciona "Keep Both" en la ventana emergente. Se genera un proyecto con las secciones seleccionadas y subtítulos incluidos. Ofrece prueba gratuita de 30 días.
- **Simon Says (extensión):** Exporta tu video terminado sin subtítulos. Arrastra el archivo de video a la interfaz de Simon Says. Presiona "Transcribe". Costo: ~$2 por minuto de video (pago por uso). Revisa la transcripción para verificar precisión. Presiona "Share". Arrastra y suelta los subtítulos o títulos generados directamente en tu evento de FCP. Los subtítulos son editables como cualquier caption nativo de FCP.
- **Send Motion (app independiente):** En FCP, selecciona todos los elementos de una composición con lazo. Presiona Option+G para crear un clip compuesto. Encuentra el clip en el navegador (Shift+F). Ve a Archivo > Exportar XML y guarda en el escritorio. Abre Send Motion, presiona "Browse", selecciona el archivo XML y presiona "Continue". El proyecto se abre automáticamente en Apple Motion. Ajusta elementos que no coincidan (ej. fondo de color sólido escalado de 1080 a 4K; texto con formato alterado). Aplica behaviors y efectos en Motion para animar.

## Reglas para agentes
- Usa Font Audition cuando necesites previsualizar texto con todas las fuentes instaladas sin salir de FCP.
- Nunca subas archivos a Alteon sin activar el Accelerator si necesitas velocidad máxima y estás en una red compartida.
- Usa Lumberjack Builder solo después de tener todas las entrevistas en un mismo evento de FCP para transcripción por lotes.
- Nunca edites manualmente los subtítulos generados por Simon Says a menos que haya un error de transcripción; vienen perfectamente sincronizados.
- Usa Send Motion cuando quieras agregar behaviors y animaciones complejas a composiciones estáticas creadas en FCP.
- Siempre exporta XML desde FCP antes de abrir Send Motion; no arrastres clips directamente.

## Errores comunes que evita o menciona
- **Font Audition:** Evita desplazarte manualmente por todas las fuentes en FCP; la extensión muestra todas las opciones de una vez.
- **Alteon IO:** No subas archivos sin el Accelerator si otros dispositivos usan la red (puede ralentizar la subida y afectar streaming de otros).
- **Lumberjack Builder:** No ignores la transcripción automática; evita el método antiguo de papel y lápiz. La navegación del sitio web de Lumberjack es confusa y sus tutoriales no son claros; se recomienda persistir pese a la mala documentación.
- **Simon Says:** No pagues suscripción mensual si solo necesitas subtítulos en proyectos esporádicos; el modelo de pago por uso es más rentable.
- **Send Motion:** No olvides verificar la resolución y el formato de texto al transferir a Motion; pueden desajustarse (ej. fondo 1080 en proyecto 4K, texto con formato alterado).