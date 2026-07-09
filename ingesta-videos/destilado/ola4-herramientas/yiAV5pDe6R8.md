# How to use FLUX.1 Kontext [fal]
**Fuente:** ola4-herramientas | https://youtu.be/yiAV5pDe6R8

## Qué enseña
Flux Context es un modelo multimodal dentro de LTX Studio que entiende imágenes y texto para generar, editar y transformar visuales con precisión contextual. Enseña a usar prompts cortos y descriptivos, edición por capas, transferencia de estilo, inpainting con referencia, y consistencia de personajes entre escenas.

## Lecciones accionables
- Accede al **Image Workspace** desde la pantalla de inicio de LTX Studio para usar todas las capacidades de Flux Context.
- Usa prompts cortos y claros, luego apílalos en capas para formar un prompt detallado. Ejemplo exacto: *"a woman in a bedroom with pink hues, heavy film grain"* — esto captura sujeto, escenario, estado de ánimo y textura visual en una línea.
- Para **transferencia de estilo**: comienza con una referencia simple como *"crayon style kids drawing"* y aplícala a un sujeto completamente diferente. Context transfiere el tono visual de la referencia.
- Para **inpainting**: sube un producto, accesorio o persona como imagen de referencia, luego colócalo en una nueva escena. Usa prompts como:
  - *"Change the jacket to yellow"*
  - *"Change the background to a jungle environment"*
  - *"Change the lighting to sunset"*
- Para **consistencia entre escenas**: mantén personajes y objetos estables subiendo la misma imagen de referencia y describiendo los cambios deseados.
- Para **nuevos ángulos y perspectivas**: sube tu imagen como referencia y describe cambios como *"switch the lens"*, *"change the camera angle"* o *"reframe the shot entirely"*.
- Para **animar imágenes estáticas**: usa los modelos de video disponibles: **LTXV13B**, **LTXV Turbo** o **Google's V2**.

## Reglas para agentes
- Usa prompts cortos y descriptivos, sin formato complejo, solo lenguaje intencionado.
- Cuando edites una imagen, sube siempre la imagen original como referencia antes de describir el cambio.
- Para mantener consistencia visual entre escenas, reutiliza la misma imagen de referencia del personaje u objeto.
- Nunca uses prompts largos y confusos; apílalos por capas de forma progresiva.

## Errores comunes que evita o menciona
- Evita usar formato complejo en los prompts; Flux Context funciona mejor con lenguaje descriptivo simple y directo.
- No asumas que el modelo ve la imagen como un humano; gracias a su entrenamiento multimodal, entiende lo suficiente para hacer ediciones inteligentes sin romper la composición general.
- No ignores la consistencia: uno de los mayores desafíos en IA es mantener personajes, detalles y tono alineados entre escenas; Context está diseñado para resolverlo.