# Exploring Nano Banana Styles: From Polaroid to Infrared EP02
**Fuente:** nextmindrevolution | https://youtu.be/lwiIRVUvDtU

## Qué enseña
Este video explora cinco estilos fotográficos distintos (Polaroid, astrofotografía, time-lapse, fotografía callejera e infrarrojo) usando generadores de imágenes como Nano Banana Pro, Midjourney, Freick o Whisk. Muestra cómo ajustar prompts para controlar bordes, filtros y niveles de detalle técnico, incluyendo valores de nanómetros para filtros IR.

## Lecciones accionables
- **Polaroid sin bordes blancos:** usa `fullframe image`, `edge-to-edge composition` y `no white border` en el prompt. Ejemplo: `Polaroid style of a city street, full-frame image, edge-to-edge composition, no white border`
- **Astrofotografía específica:** incluye detalles como `low-angle telescopic shot`, `deep sky astrophotography`, `visible spiral arms`, `bright core`. Prompt exacto usado: `a low-angle telescopic shot of a concrete tower reaching toward the Andromeda galaxy. The galaxy is rendered in deep sky astrophotography with visible spiral arms and a bright core`
- **Astrofotografía surrealista:** combina `surreal` + `astrophotography` para resultados creativos. Prompt usado: `surreal astrophotography style of a dog`
- **Time-lapse:** prompt base: `timelapse style`. Prompt detallado: `a wide angle shot of a central train station at dusk. Time-lapse photography style`
- **Fotografía callejera:** prompt base: `street photography style`. Prompt detallado: `a gritty, candid street photography shot of a street musician. The musician is captured mid-motion`
- **Infrarrojo (IR):** prompt base: `infrared photography style`. Para controlar el tono, añade `shot with a [valor] nm IR filter`. Valores: `530 nm` da resultado soñador/colorido; `1000 nm` da resultado más oscuro. Prompt exacto usado: `infrared photograph of an ancient oak tree in a field, shot with a 590 nm IR filter`
- **Herramientas compatibles:** Nano Banana Pro (recomendado), Midjourney, Freick, Whisk (gratuito, resultados inferiores)

## Reglas para agentes
- Usa `fullframe image` + `edge-to-edge composition` + `no white border` cuando quieras estilo Polaroid sin bordes blancos
- Usa valores de nanómetros (`530 nm`, `590 nm`, `1000 nm`) en prompts IR para controlar el espectro cromático
- Cuando un prompt no siga instrucciones (ej. bordes blancos persistentes), repite la generación con la misma instrucción reforzada
- Nunca asumas que un solo prompt basta; prueba variaciones con más o menos especificidad según el resultado deseado
- Nunca uses solo el nombre del estilo sin contexto adicional si buscas un resultado controlado (ej. no solo "astrophotography", añade sujeto y composición)

## Errores comunes que evita o menciona
- **Bordes blancos persistentes en Polaroid:** incluso con `fullframe` y `edge-to-edge`, a veces el modelo no obedece; hay que repetir la generación o añadir `no white border`
- **Time-lapse mal generado:** el prompt `wide angle shot of a central train station at dusk. Time-lapse photography style` puede dar una imagen incorrecta (ej. estación bien, exterior mal); requiere regenerar
- **Prompts demasiado vagos:** solo `astrophotography style` da resultados genéricos (ej. una persona fotografiando el cosmos); hay que especificar sujeto y composición
- **Confundir Polaroid con los 80:** el formato existe desde los 40, no solo en esa década
- **Asumir que menos especificidad siempre es peor:** a veces `surreal astrophotography style of a dog` sin más detalles da resultados más creativos que prompts muy detallados