# Async in practice: how to achieve concurrency in FastAPI (and what to avoid doing!)
**Fuente:** Evgeny Maksimov | https://youtu.be/KL6CjNxkZDQ

## Qué enseña (2-3 líneas)
Explica cómo funciona la concurrencia en FastAPI, diferenciando entre tareas CPU-bound e I/O-bound, y muestra por qué escribir `async` delante de cualquier función no garantiza asincronía. Enseña patrones concretos para usar correctamente `async/await`, `asyncio.gather`, `BackgroundTasks`, y ejecución en procesos separados, evitando bloqueos del event loop.

## Técnicas y patrones accionables

- **Para tareas I/O-bound (red, archivos, bases de datos):** Usar librerías asíncronas nativas (`httpx.AsyncClient`, `aiofiles`, `asyncpg`, `databases`, `aioredis`). No escribir `async` delante de librerías síncronas como `requests`.

```python
# MAL: bloquea el event loop
@app.post("/bad-requests")
async def bad_requests():
    for url in URL_LIST:
        requests.get(url)  # síncrono, bloquea
    return "done"

# BIEN: usa httpx asíncrono y gather
import httpx
import asyncio

@app.post("/good-requests")
async def good_requests():
    async with httpx.AsyncClient() as client:
        tasks = [client.get(url) for url in URL_LIST]
        await asyncio.gather(*tasks)
    return "done"
```

- **Para tareas CPU-bound (cálculos pesados):** No usar `async` porque el event loop se bloquea igual. Enviar a un proceso separado con `loop.run_in_executor` con `ProcessPoolExecutor`:

```python
import asyncio
from concurrent.futures import ProcessPoolExecutor

def cpu_bound_task(data):
    # cálculo pesado síncrono
    result = sum(i * i for i in range(10**7))
    return result

@app.post("/cpu-process")
async def cpu_process():
    loop = asyncio.get_event_loop()
    with ProcessPoolExecutor() as executor:
        result = await loop.run_in_executor(executor, cpu_bound_task, data)
    return {"result": result, "time": "6s"}
```

- **Para tareas CPU-bound que no necesitan devolver resultado inmediato:** Usar `BackgroundTasks` de FastAPI:

```python
from fastapi import BackgroundTasks

def heavy_calculation(file_path: str):
    # cálculo que toma 6 segundos
    time.sleep(6)
    # guardar resultado en DB o archivo

@app.post("/background-calc")
async def background_calc(background_tasks: BackgroundTasks):
    background_tasks.add_task(heavy_calculation, "file.txt")
    return {"status": "started"}  # retorna inmediatamente
```

- **Lectura de archivos:** Da igual usar `aiofiles` (asíncrono) o `open` (síncrono) porque FastAPI mete las funciones síncronas en un thread pool automáticamente. Pero leer en chunks para no saturar memoria:

```python
# Síncrono (FastAPI lo ejecuta en thread pool)
@app.post("/read-sync")
def read_sync():
    with open("bigfile.bin", "rb") as f:
        while chunk := f.read(8 * 1024 * 1024):  # 8 MB chunks
            process(chunk)
    return "done"

# Asíncrono con aiofiles (también va a thread pool internamente)
import aiofiles

@app.post("/read-async")
async def read_async():
    async with aiofiles.open("bigfile.bin", "rb") as f:
        while chunk := await f.read(8 * 1024 * 1024):
            process(chunk)
    return "done"
```

- **Para bases de datos:** Si no necesitas alta concurrencia (>1000 req/min), usa librerías síncronas normales (SQLite, psycopg2). FastAPI las ejecutará en threads. Si necesitas alta carga, usa las versiones asíncronas:

```python
# Síncrono (recomendado para baja/media carga)
import sqlite3

@app.get("/users-sync")
def get_users_sync():
    conn = sqlite3.connect("db.sqlite")
    cursor = conn.execute("SELECT * FROM users")
    return cursor.fetchall()

# Asíncrono (para alta carga)
import asyncpg

@app.get("/users-async")
async def get_users_async():
    conn = await asyncpg.connect("postgresql://...")
    rows = await conn.fetch("SELECT * FROM users")
    await conn.close()
    return rows
```

## Reglas para el erudito (imperativas y verificables)

- **Usa `async` solo si la librería que llamas es asíncrona.** Si no estás seguro, no pongas `async` delante de la función; FastAPI la ejecutará en un thread pool y será concurrente igual.
- **Nunca escribas `async` delante de una función que usa `requests`, `open()` síncrono, `time.sleep()`, o cualquier librería síncrona.** Bloquearás el event loop y harás tu app más lenta que la versión síncrona.
- **Usa `asyncio.gather()` para lanzar múltiples tareas I/O-bound concurrentemente.** Si solo haces `await` una tras otra, es secuencial y no ganas nada.
- **Para CPU-bound, nunca confíes en `async`.** Usa `loop.run_in_executor` con `ProcessPoolExecutor` si necesitas el resultado, o `BackgroundTasks` si no lo necesitas inmediatamente.
- **Para CPU-bound pesado (>10 segundos), no uses `BackgroundTasks`.** Usa un worker externo con Celery + Redis/RabbitMQ.
- **Lee archivos grandes en chunks de 1-8 MB.** No cargues el archivo completo en memoria porque un archivo de 14 GB puede hacer fallar tu servidor.
- **Si tu app no necesita alta concurrencia, usa librerías síncronas de base de datos.** Es más simple y no afecta el rendimiento.

## Errores comunes / gotchas que menciona

- **Escribir `async` delante de funciones síncronas esperando magia.** Ejemplo: `async def read_file(): return open("file").read()` — esto bloquea el event loop porque `open().read()` es síncrono. FastAPI no lo mete en thread pool porque detecta que es `async`.
- **Usar `requests` dentro de una función `async`.** Bloquea todo el servidor. La versión correcta es `httpx.AsyncClient` con `asyncio.gather`.
- **Pensar que `async` resuelve CPU-bound.** El ejemplo del video: una función `async` que hace cálculo pesado bloquea el endpoint de salud (`/greeting`) aunque tenga `async`. La versión síncrona (sin `async`) no bloquea porque FastAPI la ejecuta en thread pool.
- **No usar `asyncio.gather` y hacer `await` secuencial de tareas asíncronas.** Ejemplo: `result1 = await task1(); result2 = await task2()` — esto ejecuta task2 solo después de que termine task1, perdiendo la concurrencia.
- **Usar `BackgroundTasks` para tareas CPU-bound pesadas.** No está diseñado para eso; puede saturar los threads. Usar Celery para trabajos pesados.
- **Cargar archivos completos en memoria.** Si alguien sube un archivo de 14 GB y tu servidor tiene 8 GB de RAM, falla. Leer en chunks es obligatorio.
- **Confundir concurrencia con paralelismo.** `async/await` en Python es concurrencia en un solo hilo (cooperativa), no paralelismo real. Para paralelismo CPU se necesitan procesos separados.