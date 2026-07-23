# 15 FastAPI Best Practices For Production
**Fuente:** Code Collider | https://youtu.be/kmJz8w5ij8Y

## Qué enseña (2-3 líneas)
El tutorial cubre 15 prácticas esenciales para llevar FastAPI a producción: desde reglas de `async`/`def`, manejo de conexiones a bases de datos, logging estructurado, tareas en segundo plano, validación con Pydantic, hasta despliegue con Gunicorn y uvloop. Está orientado a evitar errores comunes y optimizar rendimiento en aplicaciones I/O-bound.

## Técnicas y patrones accionables

- **Nunca usar `async def` para operaciones bloqueantes**: Si el endpoint ejecuta `time.sleep()`, lectura/escritura de archivos, HTTP con `requests`, o queries con `pymongo.MongoClient`, definirlo con `def` (no `async def`). FastAPI lo ejecutará en un hilo separado automáticamente.
- **Usar librerías async-friendly**: `asyncio.sleep` en vez de `time.sleep`, `httpx.AsyncClient` en vez de `requests`, `motor` en vez de `pymongo`.
- **No hacer cómputo pesado en endpoints**: FastAPI es para I/O-bound. Para ML ligero (<100ms inferencia, bajo tráfico) puede funcionar; para modelos pesados usar motores dedicados (Triton, TensorFlow Serving, TorchServe) y FastAPI solo para validar inputs y enrutar. Para cómputo muy largo: sistema de cola + worker (RabbitMQ + Celery).
- **Reglas de `async def`/`def` también aplican a dependencias**: Usar `def` si la dependencia hace operaciones bloqueantes; `async def` si es ligera, CPU-bound y no bloqueante. No hacer cómputo pesado dentro de dependencias.
- **Usar `BackgroundTasks` para tareas "fire-and-forget"**: Ej: enviar email de confirmación, loguear eventos. No usar para tareas que requieran entrega garantizada, reintentos, o larga duración. Si el proceso crashea antes de completar la tarea, esta falla.
- **Deshabilitar Swagger/ReDoc en producción**: Configurar `docs_url=None`, `redoc_url=None`, `openapi_url=None` en settings de producción.
- **Crear un modelo base Pydantic personalizado**: Para configuraciones globales (alias generator para camelCase/snake_case, encoders globales para `datetime`→string, `Decimal`→float, `ObjectId`→string).
- **No construir manualmente el modelo de respuesta**: Si se define `response_model`, devolver un diccionario plano; FastAPI lo convierte, valida y serializa automáticamente.
- **Validar con Pydantic, no con código propio**: Mover toda validación a modelos Pydantic. Si Pydantic no soporta algo, agregar validación personalizada dentro del modelo, no en la función del endpoint.
- **Usar dependencias para validación con base de datos**: Ej: verificar si un recurso pertenece al usuario actual. Crear una dependencia reutilizable. FastAPI cachea dependencias por request (solo se evalúa una vez).
- **Usar pool de conexiones con dependency injection**: Dos formas:
  1. **Almacenar pool en `app.state`** (recomendado): Inicializar en `lifespan`, crear dependencia que obtenga conexión con `async with` para liberación automática.
  2. **Pool global-style**: Variable global poblada durante el lifespan.
- **Usar `lifespan` en vez de `@app.on_event("startup")`/`@app.on_event("shutdown")`**: Unifica setup y cleanup. Si el startup falla, lifespan asegura cleanup (no garantizado con el método antiguo).
- **No hardcodear secretos**: Usar archivo `.env` (agregar a `.gitignore`), incluir `.env.example` como template. Centralizar en clase `Settings` con `pydantic.BaseSettings` (valida al iniciar, falla temprano). Alternativa: Dynaconf.
- **Logging estructurado**: Usar módulo `logging` + `Loguru` o `Structlog`. Asignar niveles (DEBUG, INFO, WARNING, ERROR, CRITICAL). Configurar nivel según entorno (DEBUG en desarrollo, INFO/ERROR en producción). Agregar contexto (request ID, user ID) mediante middleware con variables de contexto. No loguear datos sensibles (credenciales, API keys). Centralizar logs con Filebeat → Elasticsearch.
- **Despliegue**: En local: Uvicorn solo. En producción: Uvicorn con Gunicorn usando `UvicornWorker`. Instalar `uvloop` (FastAPI lo detecta automáticamente). Workers = (CPU cores * 2) + 1 como punto de partida (ajustar con benchmarks). Considerar Docker para escalar.

## Reglas para el erudito (imperativas y verificables)

- Usa `def` (no `async def`) en endpoints y dependencias cuando haya operaciones bloqueantes (I/O síncrono, CPU-bound pesado).
- Usa `asyncio.sleep`, `httpx.AsyncClient`, `motor` en vez de sus contrapartes síncronas.
- No ejecutes cómputo pesado (ML, procesamiento de imágenes/video) directamente en endpoints FastAPI.
- Usa `BackgroundTasks` solo para tareas pequeñas, no críticas, sin necesidad de reintentos.
- Pon `docs_url=None`, `redoc_url=None`, `openapi_url=None` en producción si la API no es pública.
- Define un modelo base Pydantic con `alias_generator` y `json_encoders` globales.
- Devuelve diccionarios planos en endpoints con `response_model`; no construyas el modelo manualmente.
- Centraliza toda validación en modelos Pydantic; nunca en funciones del endpoint con `if` manuales.
- Crea dependencias para validación que requiera queries a DB; FastAPI las cachea por request.
- Usa `app.state` para almacenar el pool de conexiones y accede mediante dependencias con `async with`.
- Usa el decorador `lifespan` en vez de `@app.on_event("startup")`/`@app.on_event("shutdown")`.
- Guarda secretos en `.env`, agrega `.env` a `.gitignore`, incluye `.env.example`. Usa `pydantic.BaseSettings` para validar al inicio.
- Usa logging estructurado con `logging` + `Structlog`/`Loguru`; agrega request ID mediante middleware con context vars.
- En producción: Gunicorn + UvicornWorker, instala `uvloop`, workers = (CPU cores * 2) + 1 como base.

## Errores comunes / gotchas que menciona

- Poner `time.sleep()` o `requests.get()` dentro de `async def` bloquea todo el servidor.
- Usar `BackgroundTasks` para tareas que requieren garantía de entrega o reintentos (se pierden si el proceso crashea).
- Exponer Swagger/ReDoc en producción revela endpoints inseguros o incompletos.
- Devolver `datetime` o `Decimal` directamente causa error de serialización JSON (hay que definir encoders globales).
- Construir manualmente el modelo de respuesta cuando ya hay `response_model` es redundante y no da beneficio.
- Esparcir validación con `if` en endpoints: errores inconsistentes, códigos 400 sin explicación, lógica duplicada, OpenAPI docs incompletos.
- Hardcodear secretos en el código fuente (API keys, contraseñas, tokens).
- Usar `print()` para logging: sin niveles, sin contexto (request ID, timestamp), imposible filtrar en producción.
- No centralizar logs cuando hay múltiples instancias de la aplicación.
- Usar Uvicorn solo en producción (debe ir con Gunicorn + UvicornWorker).
- No instalar `uvloop` (pérdida de rendimiento).
- Usar workers fijos sin benchmarkear según CPU.