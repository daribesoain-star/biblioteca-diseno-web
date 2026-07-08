# This FCP Music Technique Changes Everything
**Fuente:** jennjagerpro | https://youtu.be/5F8OB_7gQUE

## Qué enseña (2-3 líneas)
Cómo importar, sincronizar y manipular stems (pistas individuales) de música desde sitios como Artlist dentro de Final Cut Pro. Muestra un flujo de trabajo para habilitar/deshabilitar componentes específicos (guitarras, piano, voces, etc.) sin perder la sincronía, incluso después de recortar la pista compuesta.

## Lecciones accionables
- **Identificar stems en el sitio de música:** busca el icono de stems (un cuadrado con líneas) al previsualizar canciones en Artlist u otros sitios de stock. Haz clic en él para abrir el popup donde puedes silenciar o aislar componentes individuales (ej. "these guitars", "without this piano").
- **Descargar e importar stems:** descarga el archivo .zip que contiene todas las pistas individuales. Arrastra la carpeta completa directamente a un **Event** en tu biblioteca de Final Cut Pro. Esto crea automáticamente una **Keyword Collection** con todas las pistas.
- **Sincronizar stems en un solo clip:** selecciona **todos los clips** dentro de la Keyword Collection, haz clic derecho y elige **"Synchronize Clips"**. Esto agrupa todas las pistas en un solo **synchronized clip**.
- **Alinear pistas dentro del synchronized clip:** arrastra el synchronized clip a la línea de tiempo. Haz doble clic para abrirlo. Apila manualmente todas las pistas al **inicio de la línea de tiempo interna** (todas tienen la misma duración, por lo que se sincronizan automáticamente).
- **Habilitar/deshabilitar stems:** dentro del synchronized clip, selecciona pistas individuales y usa el atajo **V** (o el menú "Enable/Disable") para activarlas o desactivarlas. **No las elimines**; solo desactívalas para poder revertir cambios después.
- **Recortar la música manteniendo la sincronía:** en la línea de tiempo principal, reproduce la música y añade **marcadores (M)** en los beats. Corta en esos marcadores para eliminar secciones. Usa **cortes directos** o añade **disolvencias pequeñas (tiny dissolve)** para que el corte sea seamless.
- **Actualizar stems después de recortar:** si cambias de opinión sobre qué stems usar, haz doble clic en el synchronized clip (incluso si ya está recortado en la línea de tiempo principal), habilita/deshabilita pistas, y vuelve a la línea de tiempo principal con la flecha hacia atrás. Los cambios se aplican a **todas las secciones recortadas** automáticamente.

## Reglas para agentes
- Usa **"Synchronize Clips"** (clic derecho sobre selección múltiple) cuando importes stems de una carpeta descargada, no arrastres pistas individuales directamente al proyecto.
- Siempre **deshabilita (disable)** stems no deseados con la tecla **V** en lugar de eliminarlos, para preservar la capacidad de revertir cambios.
- Aplica **marcadores (M)** en los beats antes de cortar la música, y usa **disolvencias pequeñas** en los cortes para lograr transiciones seamless.
- Cuando trabajes con un synchronized clip ya recortado en la línea de tiempo principal, **nunca** reemplaces el clip; solo haz doble clic para abrirlo, modifica stems, y regresa con la flecha hacia atrás.

## Errores comunes que evita o menciona
- **No arrastrar pistas individuales directamente al proyecto:** la forma eficiente es sincronizarlas primero con "Synchronize Clips".
- **No eliminar stems no deseados:** si los eliminas, no podrás recuperarlos después; es mejor deshabilitarlos.
- **No asumir sincronía perfecta al importar:** Final Cut no siempre sincroniza automáticamente los stems; hay que apilarlos manualmente al inicio de la línea de tiempo interna del synchronized clip.
- **No cortar la música sin marcadores en los beats:** hacerlo puede romper la continuidad rítmica; los marcadores y disolvencias pequeñas aseguran un resultado profesional.