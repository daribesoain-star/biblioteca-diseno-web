# Replicate — Catálogo de modelos IA por API
## que_ensena
Plataforma que permite ejecutar modelos de machine learning en la nube mediante API, sin necesidad de configurar entornos complejos ni tener hardware potente. Cubre desde la creación de cuenta y configuración de facturación hasta el despliegue de modelos personalizados con COG, deployments con control de GPU, e integración en aplicaciones Laravel con patrones síncronos y asíncronos.

## reglas_para_agentes
- Usa `cog init` solo cuando tengas un modelo existente y quieras generar la estructura base de archivos (cog.yaml y predict.py).
- Define siempre `image` en `cog.yaml` si planeas usar `cog push` sin argumentos.
- Ejecuta `cog login` antes de cualquier `cog push` para autenticarte en el registro de Replicate.
- Nunca omitas los métodos `setup()` y `predict()` en `predict.py`; son obligatorios para que Cog funcione.
- Nunca uses `cog push` sin haber probado primero el modelo localmente con `cog predict`.
- Usa `replicate.deployments.predictions.create()` en lugar de `replicate.predictions.create()` cuando el modelo esté desplegado como deployment.
- Nunca uses `await` en la creación de la predicción dentro del mismo handler si la app ya tiene lógica de polling separada; solo crea la predicción y devuelve su estado.
- Siempre especifica `userAgent` al inicializar el cliente Replicate para trazabilidad.
- Define `REPLICATE_API_TOKEN` como variable de entorno con un token dedicado al deployment, no el token personal.
- Para evitar cold starts en demos, configura `min_instances: 1` en el deployment.
- NUNCA ejecutes `replicate->run()` dentro de un route handler para tareas que tomen más de 2-3 segundos; usa colas (jobs) en su lugar.
- USA webhooks (`predictions()->create()` con `webhook` URL) cuando el modelo pueda tardar más de 30 segundos (ej: fine-tuning).
- USA el parámetro `version` exacto (hash SHA de 64 caracteres) obtenido de la pestaña "Versions" del modelo, no solo el nombre del modelo.
- USA `implode('', $output)` cuando el modelo devuelva un array de tokens (típico en LLMs).
- Configura facturación antes de generar cualquier contenido, incluso si hay créditos gratuitos; de lo contrario, el campo de prompt permanecerá deshabilitado.
- Establece un límite máximo de gasto mensual en la configuración de facturación para evitar costos inesperados.
- Usa la sección "Models that generate images from text prompt" cuando busques modelos de generación de imágenes como principiante.
- Nunca asumas que hay suscripción mensual; Replicate cobra solo por uso de cada modelo.
- Usa GitHub o Google para iniciar sesión; no hay opción de registro con correo electrónico directo.
- Usa "Explore" → "Featured models" para probar modelos sin costo antes de configurar facturación.
- Verifica el precio en la parte superior de cada modelo (ej. `0.003` por imagen) y las "Images per $1" al final de la página antes de generar.
- Navega por categorías (ej. "Generate images", "Generate music") cuando no sepas qué modelo específico usar.
- Prioriza modelos con "Replicate's pick" o alto número de "runs" como punto de partida.
- Nunca asumas que el costo mostrado es exacto; es una estimación basada en tiempo de GPU típico.
- Usa "Explore" → sección de funcionalidades cuando no sepas qué modelo elegir; filtra por criterio (imagen, upscale, etc.) y ordena por popularidad.
- Siempre verifica que el modelo sea la versión más reciente buscando directamente en los resultados de búsqueda, no solo en las colecciones (pueden no estar actualizadas).
- Activa "go_fast" por defecto en Flux Dev para obtener resultados más rápidos y baratos; desactívalo solo si necesitas máxima calidad.
- Nunca asumas que el costo mostrado es fijo: si cambias `num_inference_steps` del valor por defecto, el costo variará (más pasos = más caro, menos pasos = más barato).
- Usa el Playground cuando quieras comparar el mismo prompt y ajustes entre diferentes modelos; evita abrir múltiples pestañas del navegador.
- Para obtener la seed de una generación, revisa el log al inicio, no en la interfaz principal de resultados.
- Si el modelo cobra por tokens, prioriza inputs cortos y outputs largos cuando el costo de output sea menor (ej. Deepseek R1).
- Para generar imágenes, compara precios por imagen entre modelos (ej. Flux 1.1 a 4 centavos) antes de elegir.
- Cuando necesites un modelo muy específico, sube tu propio modelo usando COG en lugar de depender solo de los públicos.

## errores_comunes
- **Error 422 "invalid version or not permitted"**: ocurre cuando el token API no corresponde al deployment o no tiene permisos. Solución: asegurarse de usar el token específico del deployment y no el token personal.
- **Error "cannot reassign to a variable declared with const"**: ocurre si se intenta reasignar `prediction` después de crearla con `const`. Solución: usar `let` en su lugar.
- **Cold starts en demos**: si `min_instances` se deja en `0`, la primera predicción puede tardar mucho. Solución: establecer `min_instances: 1` para mantener una instancia siempre activa.
- **Usar el token personal en apps públicas**: expone el token y mezcla el uso de la cuenta. Solución: crear un token específico para el deployment desde la página de API tokens.
- **Cold boots**: modelos poco populares pueden tardar 2-5 minutos en arrancar (status `queued`). No asumir que siempre responderán rápido.
- **Tiempo de espera en rutas HTTP**: ejecutar modelos síncronos en route handlers bloquea la respuesta. Siempre usar colas o webhooks.
- **Olvidar versionar el modelo**: cada modelo tiene múltiples versiones con hashes únicos. Usar solo el nombre del modelo (sin versión) puede fallar o dar resultados inconsistentes.
- **No procesar tokens correctamente**: los LLMs devuelven arrays de tokens, no strings. Usar `implode()` para unirlos.
- **No configurar facturación primero**: incluso con créditos gratuitos, el sistema bloquea la generación hasta que se agregue un método de pago.
- **Pensar que hay suscripción mensual**: no hay planes de suscripción, solo pago por modelo usado.
- **Ignorar el límite de gasto**: se recomienda establecer un "maximum cap limit" para no exceder el presupuesto mensual.
- **Usar modelos sin verificar costos**: cada modelo tiene precios diferentes (ej. $0.09 vs $0.04 por imagen), por lo que hay que revisar la página de precios antes de usar.
- **No actualizar colecciones**: Las colecciones en la búsqueda pueden no incluir las versiones más recientes de los modelos (ej. Flux 1.1 Pro Ultra no aparece en la colección "flux"). Solución: buscar manualmente en los resultados individuales.
- **Pasar por alto la sección de funcionalidades en Explore**: Muchos principiantes ignoran esta sección y se pierden modelos que no tienen iconos visuales. Es útil para descubrimiento e inspiración.
- **Confundir costo fijo con variable**: El costo por imagen mostrado es aproximado y basado en configuraciones por defecto; cambiar pasos de inferencia altera el precio real.
- **No usar el límite de gasto mensual**: Olvidar configurar un "Spend Limit" puede llevar a gastar más de lo presupuestado.
- **Confundir tipos de cobro**: no asumir que todos los modelos usan el mismo esquema de precios (hardware/tiempo vs. input/output).
- **Subestimar costos de tokens**: pensar que $3 por millón de tokens es barato sin considerar el volumen de texto que se enviará y recibirá.
- **Ignorar la opción de modelos propios**: limitarse a los modelos públicos cuando se puede subir un modelo personalizado con COG.
- **Comparar solo con AWS**: Replicate es más barato que AWS pero más caro que otros servicios; evaluar alternativas según el caso de uso.
- No especificar la versión correcta de CUDA compatible con TensorFlow o PyTorch (Cog lo maneja automáticamente, evitando ese dolor de cabeza).
- Olvidar autenticarse con `cog login` antes de hacer push (resulta en error de autenticación).
- No definir correctamente los inputs en `predict.py` (la página web no mostrará los campos de entrada adecuados).
- Intentar usar Cog en Windows (solo soporta macOS y Linux).

## fuentes_videos
- Complete Guide to Replicate AI: Features, Uses, and More — https://youtu.be/CUcH8I53NFM
- Getting started with Cog and Replicate — https://youtu.be/dFISI6KphSE
- Replicate.com EASY AI Setup for Beginners (updated) — https://youtu.be/1VOJNDK7yqg
- Using Replicate deployments for more control over your models (Part 1 of 2) — https://youtu.be/-F63qOsd9BI
- How to Use Replicate.com — https://youtu.be/JklgYn57OJE
- Building AI powered apps in Laravel using Replicate — https://youtu.be/gSGYvXG5kcQ
- Easy AI Access for ALL (Replicate.com Beginners Tutorial) — https://youtu.be/y0_GE5ErqY8