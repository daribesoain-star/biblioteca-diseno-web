# Building AI powered apps in Laravel using Replicate [replicate]
**Fuente:** ola4-herramientas | https://youtu.be/gSGYvXG5kcQ

## Qué enseña (2-3 líneas)
Cómo integrar modelos de IA alojados en Replicate dentro de aplicaciones Laravel usando un cliente PHP personalizado. Cubre desde llamadas síncronas básicas hasta patrones avanzados con webhooks, websockets y encadenamiento de modelos (LLM + difusor). También advierte sobre cold boots, tiempos de espera y la importancia de usar colas para tareas largas.

## Lecciones accionables
- **Instalar el cliente PHP de Replicate:** `composer require ...` (el creador del video open-sourceó su propio cliente con funcionalidad `run()`)
- **Configurar token de API:** en el archivo `.env` agregar `REPLICATE_TOKEN=tu_token` (obtenido en replicate.com → API tokens)
- **Inicializar el cliente en una ruta:**
  ```php
  use Replicate\Replicate;
  $replicate = new Replicate(env('REPLICATE_TOKEN'));
  ```
- **Ejecutar un modelo (síncrono, esperando resultado):**
  ```php
  $output = $replicate->run('stability-ai/sdxl:39ed52f2a78e934b3ba6e2a89f5b1c712de7dfea535525255b1aa35c5565e08b', [
      'prompt' => 'a cat developing an app'
  ]);
  header('Content-Type: image/png');
  die(file_get_contents($output[0]));
  ```
- **Obtener parámetros exactos del modelo:** desde la página del modelo en replicate.com → pestaña "Versions" → versión específica → pestaña "HTTP" muestra el JSON completo de entrada
- **Crear predicción asíncrona con webhook:**
  ```php
  $prediction = $replicate->predictions()->create([
      'version' => '39ed52f2a78e934b3ba6e2a89f5b1c712de7dfea535525255b1aa35c5565e08b',
      'input' => ['prompt' => 'a cat developing an app'],
      'webhook' => 'https://webhook.site/tu-url'
  ]);
  dd($prediction);
  ```
- **Encadenar dos modelos (LLM + difusor):**
  ```php
  // Paso 1: LLM genera descripción
  $llmOutput = $replicate->run('meta/meta-llama-3-8b', [
      'prompt' => 'You are a creative director for an animated movie... Describe a random scene in a fantasy movie in 200 characters or less. Only reply with a description, nothing else.'
  ]);
  $description = implode('', $llmOutput);
  
  // Paso 2: Usar descripción como prompt del difusor
  $imageOutput = $replicate->run('stability-ai/sdxl:39ed52f2a78e934b3ba6e2a89f5b1c712de7dfea535525255b1aa35c5565e08b', [
      'prompt' => $description
  ]);
  ```
- **Streaming de tokens en tiempo real:** pasar una función como tercer parámetro a `run()` para recibir actualizaciones mientras el modelo genera:
  ```php
  $replicate->run('meta/meta-llama-3-8b', ['prompt' => '...'], function($token) {
      Log::info($token); // o enviar por websocket
  });
  ```
- **Verificar estado de predicción manualmente:** `GET https://api.replicate.com/v1/predictions/{id}` (devuelve JSON con status, output, etc.)
- **Usar webhook.site** para depurar webhooks durante desarrollo

## Reglas para agentes
- **NUNCA** ejecutes `replicate->run()` dentro de un route handler para tareas que tomen más de 2-3 segundos; usa colas (jobs) en su lugar
- **USA** webhooks (`predictions()->create()` con `webhook` URL) cuando el modelo pueda tardar más de 30 segundos (ej: fine-tuning)
- **USA** websockets (Laravel Reverb en Laravel 11, Soketi en versiones anteriores) para dar feedback al usuario mientras la predicción corre
- **USA** el parámetro `version` exacto (hash SHA de 64 caracteres) obtenido de la pestaña "Versions" del modelo, no solo el nombre del modelo
- **USA** `implode('', $output)` cuando el modelo devuelva un array de tokens (típico en LLMs)
- **NUNCA** asumas que un modelo arrancará instantáneamente; verifica el status `queued` para detectar cold boots
- **USA** `webhook.site` o similar para probar webhooks antes de integrar con websockets

## Errores comunes que evita o menciona
- **Cold boots:** modelos poco populares pueden tardar 2-5 minutos en arrancar (status `queued`). No asumir que siempre responderán rápido.
- **Tiempo de espera en rutas HTTP:** ejecutar modelos síncronos en route handlers bloquea la respuesta. Siempre usar colas o webhooks.
- **Olvidar versionar el modelo:** cada modelo tiene múltiples versiones con hashes únicos. Usar solo el nombre del modelo (sin versión) puede fallar o dar resultados inconsistentes.
- **No procesar tokens correctamente:** los LLMs devuelven arrays de tokens, no strings. Usar `implode()` para unirlos.
- **Ignorar el feedback al usuario:** si la predicción toma segundos, mostrar un spinner y actualizar vía websocket cuando el webhook notifique la finalización.