# Async SQLAlchemy - Async Database Engines, Sessions and FastAPI Dependencies
**Fuente:** BugBytes | https://youtu.be/T0JXFhJ7pM0

## Qué enseña (2-3 líneas)
Configurar un motor de base de datos asíncrono con SQLAlchemy usando `create_async_engine` y `AsyncSessionMaker`, integrarlo con FastAPI mediante dependencias asíncronas, y migrar consultas del estilo antiguo (`session.query`) al estilo moderno (`session.execute` con `select`). Cubre el uso de `run_sync` para operaciones síncronas heredadas y la instalación del driver `psycopg` (o `aiosqlite` para SQLite).

## Técnicas y patrones accionables

### Instalación del paquete asíncrono
```bash
uv add sqlalchemy[asyncio]
```
*Requiere `greenlet` como dependencia automática.*

### Configuración de `database.py` (motor y sesión asíncronos)
```python
from sqlalchemy.ext.asyncio import create_async_engine, AsyncSession, async_sessionmaker

# URL con driver async (psycopg soporta async nativamente)
DATABASE_URL = "postgresql+psycopg://user:pass@localhost/dbname"

engine = create_async_engine(DATABASE_URL)

AsyncSessionLocal = async_sessionmaker(engine, class_=AsyncSession, expire_on_commit=False)
```

### Dependencia FastAPI para inyectar sesión asíncrona
```python
async def get_session():
    async with AsyncSessionLocal() as session:
        yield session
```
*La función debe ser `async` y usar `async with`.*

### Inicialización de tablas con `run_sync`
```python
async def init_db():
    async with engine.begin() as conn:
        await conn.run_sync(Base.metadata.create_all)
```
*`run_sync` ejecuta funciones síncronas (como `create_all`) en un hilo separado.*

### Lifespan de FastAPI con operaciones asíncronas
```python
from contextlib import asynccontextmanager
from fastapi import FastAPI
from sqlalchemy import select, delete

@asynccontextmanager
async def lifespan(app: FastAPI):
    # Startup
    await init_db()
    async with AsyncSessionLocal() as session:
        m1 = Movie(title="Movie 1")
        m2 = Movie(title="Movie 2")
        session.add_all([m1, m2])
        await session.commit()
    yield
    # Shutdown
    async with AsyncSessionLocal() as session:
        await session.execute(delete(Movie))
        await session.commit()

app = FastAPI(lifespan=lifespan)
```

### Consulta moderna con `select` y `scalars`
```python
from sqlalchemy import select

@app.get("/movies")
async def get_movies(session: AsyncSession = Depends(get_session)):
    result = await session.execute(select(Movie))
    movies = result.scalars().all()
    return movies
```
*`scalars()` extrae los objetos ORM de las filas; `all()` los convierte en lista.*

### Eliminación masiva con `delete`
```python
from sqlalchemy import delete

await session.execute(delete(Movie))
await session.commit()
```

### Drivers asíncronos recomendados
- **PostgreSQL:** `psycopg` (soporta async nativo)
- **SQLite:** `aiosqlite` (instalar aparte: `uv add aiosqlite`)

## Reglas para el erudito (imperativas y verificables)

- **Usa `create_async_engine`** cuando quieras operaciones de base de datos no bloqueantes en FastAPI.
- **Usa `async_sessionmaker`** en lugar de `sessionmaker` para generar sesiones asíncronas.
- **Marca como `async`** toda función que maneje sesiones asíncronas (dependencias, lifespan, endpoints).
- **Usa `async with`** para contextos de sesión y conexión (nunca `with` simple).
- **Usa `await`** en toda operación de base de datos: `session.execute()`, `session.commit()`, `session.flush()`.
- **Usa `run_sync`** para ejecutar funciones síncronas de SQLAlchemy (como `create_all`) dentro de un contexto async.
- **Usa `select(Model)`** en lugar de `session.query(Model)` para consultas con drivers asíncronos.
- **Usa `delete(Model)`** en lugar de `session.query(Model).delete()` para borrados masivos.
- **Nunca** ejecutes operaciones bloqueantes (síncronas) dentro de funciones `async` de FastAPI; si no puedes hacerlas async, quita el `async` de la función para que FastAPI la ejecute en un hilo separado.
- **Nunca** olvides `await` en llamadas a `session.execute()` – el error típico es `AttributeError: coroutine object has no attribute 'scalars'`.

## Errores comunes / gotchas que menciona

1. **Olvidar `await` en `session.execute()`**: produce `AttributeError: coroutine object has no attribute 'scalars'`. Siempre verificar que toda operación de BD tenga `await`.
2. **Usar `session.query()` con driver async**: no funciona. Migrar a `session.execute(select(...))`.
3. **No marcar la dependencia `get_session` como `async`**: la función debe ser `async` para poder usar `async with`.
4. **Usar `with` en lugar de `async with`** en contextos de sesión o conexión: causa errores de tipo `TypeError: 'AsyncSession' object does not support the context manager protocol`.
5. **URL de base de datos incorrecta**: para psycopg async usar `postgresql+psycopg://...` (no `+psycopg2`). Para SQLite con async, instalar `aiosqlite` y usar `sqlite+aiosqlite:///...`.
6. **No instalar `sqlalchemy[asyncio]`**: el paquete base no incluye las extensiones asyncio; instalarlo explícitamente.