# Understanding How Meta's Algorithm Really Works
**Fuente:** JonLoomer | https://youtu.be/uQn_qLaeF-0

## Qué enseña
El algoritmo de anuncios de Meta es **literal**: ejecuta exactamente el objetivo de rendimiento que se le indica, sin interpretar calidad, intención de compra ni relevancia del público. Cambiar el objetivo de optimización (ej. de "clics en enlaces" a "compras") transforma completamente qué usuarios busca, qué placements prioriza y qué resultados entrega.

## Lecciones accionables
- **Configura el objetivo de rendimiento según la acción que realmente quieres**, no una proxy: si quieres ventas, usa "Maximizar conversiones" con evento "Compra"; si usas "Maximizar clics en enlaces", el algoritmo te dará clics baratos de cualquier persona (hombres, mayores de 65, bots en Audience Network).
- **Para campañas de tráfico con objetivo "Maximizar clics en enlaces"**, aplica estos controles manuales para evitar clics de baja calidad:
  - Cambia a **públicos originales** (no Advantage+ audience) para restringir edad y género manualmente.
  - **Desactiva Audience Network** en placements para eliminar clics accidentales y de bots.
  - Usa **remarketing** como audiencia estrecha para añadir barandillas (guard rails) y evitar que el algoritmo persiga clics baratos de irrelevantes.
- **Para campañas de conversiones con objetivo "Maximizar conversiones" (evento: Compra)** , no necesitas esos controles:
  - Usa **público amplio** o **Advantage+ audience**.
  - Incluye **todas las edades y géneros**.
  - Activa **Advantage+ placements** y **deja Audience Network activado**.
  - El algoritmo aprende solo: si los hombres hacen clic pero no compran, y las mujeres compran, el algoritmo priorizará mujeres; igual con rangos de edad.
- **Confía en que el algoritmo optimizará hacia el evento de conversión elegido**: no necesitas microsegmentar ni aplicar teorías externas cuando el objetivo está alineado con tu meta de negocio.

## Reglas para agentes
- **Usa "Maximizar conversiones" con evento "Compra"** cuando el objetivo final sean ventas; nunca uses "Maximizar clics en enlaces" como proxy de conversiones.
- **Nunca dejes Audience Network activado** en campañas optimizadas por clics en enlaces, a menos que aceptes clics baratos y de baja calidad.
- **Nunca agregues restricciones de edad/género/placement** en campañas optimizadas por compras, a menos que tengas datos concretos de que el algoritmo no está aprendiendo correctamente.
- **Cuando optimices por clics en enlaces, siempre aplica al menos un control manual** (público original, remarketing, o desactivación de Audience Network) para evitar que el algoritmo persiga el costo más bajo sin importar la calidad.

## Errores comunes que evita o menciona
- **Error: Usar "Maximizar clics en enlaces" para generar tráfico calificado.** El algoritmo literalmente busca clics, no calidad; terminas gastando presupuesto en hombres si tu target son mujeres, en mayores de 65 si tu demo es 35-44, y en Audience Network con clics accidentales y bots.
- **Error: Desactivar Audience Network siempre, en toda campaña.** No es necesario cuando optimizas por compras, porque el algoritmo prioriza conversiones, no clics baratos; la decisión depende del objetivo de rendimiento.
- **Error: Aplicar segmentaciones estrictas (edad, género, placements) en campañas de conversión.** El algoritmo aprende solo qué perfiles compran; restringir manualmente limita su capacidad de encontrar compradores baratos y relevantes.
- **Error: Seguir teorías o estrategias aleatorias de internet sin entender la literalidad del algoritmo.** La base es: el algoritmo hace exactamente lo que le pides; si no obtienes lo que quieres, cambia el objetivo, no añadas capas de configuración innecesarias.