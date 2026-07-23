

===== T0JXFhJ7pM0.md =====
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

===== TMLS_2VtyGU.md =====
# SvelteKit
**Fuente:** Consulting Ninja | https://youtu.be/TMLS_2VtyGU

## Qué enseña
Cómo subir archivos desde un formulario HTML usando form actions de SvelteKit. Cubre la validación del lado del servidor (extensión del archivo), el manejo de errores con `fail` y la comunicación de resultados al cliente mediante `export let form`.

## Técnicas y patrones accionables

- **Conectar un formulario a una action nombrada:**
  En `+page.svelte`:
  ```svelte
  <form method="POST" action="?/upload">
      <input type="file" name="fileUpload" />
      <button type="submit">Upload</button>
  </form>
  ```

- **Definir la action en el servidor:**
  Archivo: `src/routes/+page.server.js`
  ```javascript
  import { fail } from '@sveltejs/kit';

  export const actions = {
      upload: async ({ request }) => {
          const data = await request.formData();
          const file = data.get('fileUpload');

          const fileTypes = ['.png', '.gif', '.tiff', '.jpg'];
          let includesFileType = false;

          for (let i = 0; i < fileTypes.length; i++) {
              if (file.endsWith(fileTypes[i])) {
                  includesFileType = true;
                  break;
              }
          }

          if (!includesFileType) {
              return fail(500, { error: true });
          }

          return { success: true };
      }
  };
  ```

- **Recibir datos del formulario en el cliente:**
  En `+page.svelte` dentro de una etiqueta `<script>`:
  ```svelte
  <script>
      export let form;
  </script>
  ```

- **Mostrar mensajes condicionales basados en el resultado de la action:**
  ```svelte
  {#if form?.error}
      <p>Failed to upload, wrong format</p>
  {/if}

  {#if form?.success}
      <p>File uploaded</p>
  {/if}
  ```

- **Validar extensión del archivo en el servidor:**
  Usar `file.endsWith()` dentro de un bucle `for` para comparar con una lista de extensiones permitidas.

- **Devolver error con `fail`:**
  `fail(statusCode, data)` recibe un código de estado HTTP y un objeto serializable que se envía al cliente.

- **Requisito de serialización:**
  Todo lo que se devuelva desde una action (tanto en `fail` como en el objeto de éxito) debe ser serializable con `JSON.stringify`. Tipos como `BigInt` no funcionan.

## Reglas para el erudito (imperativas y verificables)

- Usa `method="POST"` en el formulario para que se ejecute la action del servidor.
- Usa `action="?/nombreAction"` para enlazar a una action específica; si es la action por defecto (sin nombre), omite el atributo `action`.
- Usa `await request.formData()` dentro de la action para obtener los datos del formulario.
- Usa `data.get('nameDelInput')` para extraer cada campo del formulario.
- Usa `export let form` en el componente para acceder a los datos devueltos por la action.
- Usa `{#if form?.propiedad}` para mostrar contenido condicional basado en la respuesta de la action.
- Nunca devuelvas objetos no serializables (ej. `BigInt`) desde una action.
- Para subir archivos, usa `<input type="file" name="nombre" />` dentro del formulario.

## Errores comunes / gotchas que menciona

- Olvidar importar `fail` desde `@sveltejs/kit` provoca un error de referencia.
- Si el objeto devuelto no es serializable (por ejemplo, contiene `BigInt`), la action falla silenciosamente.
- El nombre del input (`name="fileUpload"`) debe coincidir exactamente con el usado en `data.get('fileUpload')`.
- La validación de extensión con `file.endsWith()` distingue entre mayúsculas y minúsculas; el tutorial usa minúsculas (`.png`, `.gif`, etc.).

===== Ufx6fdRMxjU.md =====
# Getting Started with Supabase Auth
**Fuente:** Supabase | https://youtu.be/Ufx6fdRMxjU

## Qué enseña (2-3 líneas)
Explica los fundamentos de autenticación (Authentication) y autorización (Authorization) con Supabase: cómo se emiten y verifican JWTs, los métodos de login disponibles (email+password, OAuth social, anónimo, MFA, SAML), y cómo implementar Row-Level Security (RLS) policies en PostgreSQL para controlar el acceso a los datos.

## Técnicas y patrones accionables

- **Autenticación con email + password:**
  - Crear nuevo usuario: `auth.signUp({ email, password })`
  - Iniciar sesión usuario existente: `auth.signInWithPassword({ email, password })`
- **Autenticación con OAuth (20 opciones sociales):**
  - `auth.signInWithOAuth({ provider: 'google' })`
- **Autenticación anónima (invitado continuo):**
  - `auth.signInAnonymously()`
  - Genera un JWT que se almacena localmente como cualquier otra sesión.
- **Actualizar usuario anónimo a usuario con email+password:**
  1. Llamar `auth.updateUser({ email: 'user@example.com' })` → envía email de verificación.
  2. Una vez verificado el email, llamar `auth.updateUser({ password: 'newPassword' })`.
- **Actualizar usuario anónimo a usuario con login social:**
  - Llamar `auth.linkIdentity({ provider: 'google' })`
- **Decodificar JWT en jwt.io:**
  - El access token contiene en el header: algoritmo de firma.
  - En el body: user ID, email, si el usuario está verificado, etc.
  - La clave pública se encuentra en Supabase Dashboard → Settings → JWT keys.
- **Row-Level Security (RLS) policies:**
  - Tipos de políticas: `SELECT`, `INSERT`, `UPDATE`, `DELETE` (evitar `ALL` para mayor control granular).
  - Sintaxis de políticas:
    - `SELECT`: `USING (condición)`
    - `INSERT`: `WITH CHECK (condición)`
    - `UPDATE`: `USING (condición)` + `WITH CHECK (condición)`
    - `DELETE`: `USING (condición)`
  - `USING` compara la condición contra datos existentes.
  - `WITH CHECK` compara la condición contra datos futuros después del cambio.
- **Ejemplos de políticas RLS:**
  1. **Acceso público (solo SELECT):** `USING (true)`
  2. **Propietario del registro:** `USING (auth.uid() = user_id)`
  3. **Basado en grupo/equipo:** requiere tres tablas:
     - `posts` con columna `team_id`
     - `teams` con información del equipo
     - `team_users` que relaciona `user_id` con `team_id`
     - Política: `USING (auth.uid() IN (SELECT user_id FROM team_users WHERE team_id = posts.team_id))`
- **Optimización de rendimiento con RLS:**
  - Aunque RLS actúa como filtro, se debe agregar explícitamente el filtro en la consulta (ej: `.eq('team_id', 1)`) para que Postgres sea más eficiente.

## Reglas para el erudito (imperativas y verificables)

- Usa `auth.signUp()` para crear nuevos usuarios con email+password.
- Usa `auth.signInWithPassword()` para iniciar sesión de usuarios existentes.
- Usa `auth.signInWithOAuth({ provider })` para logins sociales.
- Usa `auth.signInAnonymously()` para sesiones de invitado sin comprometer seguridad.
- Para migrar de anónimo a email+password: primero llama `auth.updateUser({ email })`, espera verificación, luego `auth.updateUser({ password })`.
- Para migrar de anónimo a social: usa `auth.linkIdentity({ provider })`.
- Nunca uses la política `ALL` en RLS; prefiere `SELECT`, `INSERT`, `UPDATE`, `DELETE` por separado para control granular.
- En políticas RLS, usa `USING` para condiciones contra datos existentes y `WITH CHECK` para condiciones contra datos futuros.
- Siempre agrega el filtro explícito en la consulta (ej: `.eq('team_id', 1)`) aunque RLS ya lo aplique, para mejorar rendimiento.
- Para verificar la clave pública de un JWT: ve a Supabase Dashboard → Settings → JWT keys.

## Errores comunes / gotchas que menciona

- No confundir autenticación (obtener el ID badge) con autorización (verificar que eres quien dices ser al mostrar el badge).
- El JWT emitido por Supabase es un estándar que puede ser verificado por cualquier servidor externo usando bibliotecas estándar, no solo por servicios de Supabase.
- En políticas RLS de tipo `UPDATE`, se deben especificar tanto `USING` como `WITH CHECK`; en `SELECT` y `DELETE` solo `USING`; en `INSERT` solo `WITH CHECK`.
- Aunque RLS filtra automáticamente, no agregar el filtro explícito en la consulta resulta en menor rendimiento de Postgres.

===== WAa3a-HxLVs.md =====
# Supabase Tutorial #10 - Intro to RLS & Policies
**Fuente:** Net Ninja | https://youtu.be/WAa3a-HxLVs

## Qué enseña
Introducción a Row Level Security (RLS) en Supabase para restringir acceso a tablas a nivel de fila. Explica cómo habilitar RLS, crear políticas básicas de lectura/escritura/actualización/eliminación, y el comportamiento por defecto (todo denegado) al activar RLS.

## Técnicas y patrones accionables
- **Habilitar RLS en una tabla:**
  1. Seleccionar la tabla (ej. `smoothies`) en el panel de Supabase.
  2. En la esquina superior derecha, hacer clic en el botón que dice "RLS is not enabled".
  3. En la página siguiente, activar el toggle "Enable RLS" y confirmar en el pop-up.
- **Crear política de lectura para todos (SELECT):**
  - Ir a "New Policy" → "Get started quickly".
  - Seleccionar la plantilla "Enable read access to everyone".
  - En la pantalla siguiente:
    - Policy name: se genera automáticamente.
    - Allowed operations: `SELECT` (marcado).
    - Policy definition: `true` (sin condiciones adicionales).
    - Target roles: `all roles` (por defecto).
  - Revisar y guardar.
- **Crear política de inserción para todos (INSERT):**
  - Ir a "New Policy" → "Full customization".
  - Policy name: `allow all users to create smoothies`.
  - Allowed operations: `INSERT`.
  - Policy definition: `true`.
  - Target roles: `all roles`.
  - Revisar y guardar.
- **Comportamiento por defecto al habilitar RLS:** Todo acceso denegado (lectura, escritura, actualización, eliminación).
- **Verificación de políticas activas:** En la página de la tabla, se listan las políticas creadas (ej. "Enable read access to everyone", "allow all users to create smoothies").

## Reglas para el erudito
- Habilita RLS en cada tabla que necesite protección; por defecto, sin RLS, cualquiera con la API key pública tiene acceso completo de lectura/escritura.
- Usa `true` como policy definition para permitir acceso sin restricciones a todos los usuarios (incluyendo no autenticados).
- Usa "Get started quickly" para plantillas predefinidas (SELECT, INSERT, UPDATE, DELETE) o "Full customization" para políticas desde cero.
- Nunca asumas que la API key pública es segura; siempre protege datos sensibles con RLS desde el backend.
- Por defecto, al activar RLS, todas las operaciones quedan bloqueadas hasta que crees políticas explícitas.

## Errores comunes / gotchas que menciona
- Al activar RLS sin políticas, la aplicación deja de mostrar datos (error silencioso o datos vacíos al refrescar la página).
- Las operaciones de UPDATE y DELETE fallan si no hay políticas que las permitan; el error se muestra en consola como "Failed to load resource: the server responded with a status of 404" y el array de respuesta está vacío.
- La eliminación desde el frontend puede parecer exitosa si se actualiza el estado local, pero al refrescar la página los datos reaparecen porque la operación en la base de datos fue rechazada.
- Las políticas creadas con "Get started quickly" generan nombres automáticos; es recomendable usar nombres descriptivos en "Full customization".

===== XIdQ6gO3Anc.md =====
# Pydantic Tutorial • Solving Python's Biggest Problem
**Fuente:** pixegami | https://youtu.be/XIdQ6gO3Anc

## Qué enseña (2-3 líneas)
El tutorial explica cómo usar Pydantic para solucionar los problemas de tipado dinámico en Python: validación de datos en tiempo de creación de objetos, tipado estático con soporte en IDE, serialización a JSON, y comparación con dataclasses nativas de Python. Muestra cómo modelar datos con `BaseModel`, usar validadores personalizados y tipos especiales como `EmailStr`.

## Técnicas y patrones accionables

- **Instalación de Pydantic:**
  ```bash
  pip install pydantic
  ```

- **Definir un modelo básico con `BaseModel`:**
  ```python
  from pydantic import BaseModel

  class User(BaseModel):
      name: str
      email: str
      account_id: int
  ```

- **Crear instancias del modelo:**
  ```python
  user = User(name="Jack", email="jack@example.com", account_id=1234)
  ```

- **Crear instancia desde un diccionario (unpacking):**
  ```python
  data = {"name": "Jack", "email": "jack@example.com", "account_id": 1234}
  user = User(**data)
  ```

- **Acceder a atributos con autocompletado del IDE:**
  ```python
  print(user.email)  # El IDE sugiere los campos del modelo
  ```

- **Validación automática de tipos:** si se pasa un tipo incorrecto, falla inmediatamente con `ValidationError`:
  ```python
  user = User(name="Jack", email="jack@example.com", account_id="1234")  # Error: account_id debe ser int
  ```

- **Usar tipos especiales como `EmailStr`:**
  ```python
  from pydantic import EmailStr

  class User(BaseModel):
      name: str
      email: EmailStr
      account_id: int
  ```

- **Añadir validación personalizada con el decorador `@validator`:**
  ```python
  from pydantic import BaseModel, validator

  class User(BaseModel):
      name: str
      email: str
      account_id: int

      @validator("account_id")
      def account_id_must_be_positive(cls, value):
          if value <= 0:
              raise ValueError(f"account_id must be positive, got {value}")
          return value
  ```

- **Serializar a JSON:**
  ```python
  user_json = user.json()  # Devuelve string JSON
  ```

- **Serializar a diccionario Python:**
  ```python
  user_dict = user.dict()  # Devuelve dict de Python
  ```

- **Deserializar desde JSON string:**
  ```python
  user = User.parse_raw('{"name": "Jack", "email": "jack@example.com", "account_id": 1234}')
  ```

- **Comparación con dataclasses nativas de Python:**
  ```python
  from dataclasses import dataclass

  @dataclass
  class User:
      name: str
      email: str
      account_id: int
  ```

## Reglas para el erudito (imperativas y verificables)

- **Usa Pydantic cuando** tengas modelos de datos complejos, necesites validación estricta de tipos, serialización JSON profunda, o trabajes con muchas APIs externas.
- **Usa dataclasses cuando** la validación no sea crítica, los datos sean simples, y quieras evitar dependencias externas (es parte de la stdlib de Python).
- **Usa `EmailStr` en lugar de `str`** para campos de email si necesitas validación de formato de email.
- **Usa el decorador `@validator`** para reglas de validación personalizadas (ej: valores positivos, rangos, formatos específicos).
- **Usa `.json()` para serializar a JSON string** y `.dict()` para obtener un diccionario Python.
- **Usa `.parse_raw()` para deserializar** desde un string JSON a un modelo Pydantic.
- **Nunca asumas que un objeto creado con tipos incorrectos funcionará** — Pydantic falla inmediatamente con `ValidationError`, lo cual es preferible a fallos silenciosos posteriores.

## Errores comunes / gotchas que menciona

- **Pasar tipos incorrectos (ej: string en lugar de int) no falla en Python puro** — el error aparece mucho después, difícil de depurar. Pydantic lo detecta al instante.
- **`EmailStr` valida que el string tenga formato de email** — si solo usas `str`, cualquier string (ej: "Jack") pasa la validación aunque no sea un email válido.
- **Los validadores personalizados deben ser métodos de clase** (primer argumento `cls`) y devolver el valor validado o lanzar `ValueError`.
- **Dataclasses no tienen validación ni serialización JSON profunda out-of-the-box** — para serialización básica con dataclasses necesitas escribir código adicional como `dataclasses.asdict()`.
- **Pydantic requiere instalación externa** (`pip install pydantic`), a diferencia de dataclasses que viene incluido en Python.

===== XlnmN4BfCxw.md =====
# How I Actually Build FastAPI Backends for Production
**Fuente:** ArjanCodes | https://youtu.be/XlnmN4BfCxw

## Qué enseña (2-3 líneas)
Cómo estructurar un backend FastAPI para producción usando routers, separación de operaciones, despliegue temprano con infraestructura como código (Pulumi), y control de acceso con rate limiting (SlowAPI). Muestra un ejemplo con endpoints de items y automations, incluyendo ejecución aislada de código en la nube.

## Técnicas y patrones accionables

- **Separar endpoints en routers con `APIRouter`:**
  - Crear archivos separados por grupo de endpoints (ej. `routers/items.py`, `routers/automations.py`).
  - En el archivo principal (`main.py`), importar e incluir los routers:
    ```python
    from routers.items import router as items_router
    from routers.automations import router as automations_router

    app.include_router(items_router)
    app.include_router(automations_router)
    ```
  - En cada router, definir un prefijo:
    ```python
    from fastapi import APIRouter

    router = APIRouter(prefix="/items")
    ```
  - Definir endpoints dentro del router:
    ```python
    @router.get("/{item_id}")
    async def read_item(item_id: int, db: Session = Depends(get_database)):
        db_item = read_database_item(item_id, db)
        return Item(id=db_item.id, name=db_item.name, description=db_item.description)
    ```

- **Separar operaciones de la lógica de ruteo:**
  - Mover la lógica de negocio a funciones en un directorio separado (ej. `db/items.py`).
  - Los endpoints deben ser casi vacíos, solo llamando a las operaciones:
    ```python
    @router.post("/")
    async def create_item(item: ItemCreate, db: Session = Depends(get_database)):
        db_item = create_database_item(item, db)
        return Item(id=db_item.id, name=db_item.name, description=db_item.description)
    ```
  - Definir modelos Pydantic para entrada/salida en el mismo archivo de operaciones:
    ```python
    from pydantic import BaseModel

    class Item(BaseModel):
        id: int
        name: str
        description: str | None = None

    class ItemCreate(BaseModel):
        name: str
        description: str | None = None

    class ItemUpdate(BaseModel):
        name: str | None = None
        description: str | None = None
    ```

- **Usar inyección de dependencias para sesiones de base de datos:**
  - Crear un generador que provea la sesión y la cierre automáticamente:
    ```python
    from sqlalchemy import create_engine
    from sqlalchemy.orm import sessionmaker, Session

    engine = create_engine("sqlite:///./test.db")
    SessionLocal = sessionmaker(autocommit=False, autoflush=False, bind=engine)

    def get_database():
        db = SessionLocal()
        try:
            yield db
        finally:
            db.close()
    ```
  - Inyectar la sesión en los endpoints mediante `Depends`:
    ```python
    from fastapi import Depends
    from database import get_database

    @router.get("/{item_id}")
    async def read_item(item_id: int, db: Session = Depends(get_database)):
        ...
    ```

- **Configurar rate limiting con SlowAPI:**
  - Agregar un manejador de excepciones para `RateLimitExceeded`:
    ```python
    from slowapi import Limiter, _rate_limit_exceeded_handler
    from slowapi.util import get_remote_address

    limiter = Limiter(key_func=get_remote_address)
    app.state.limiter = limiter
    app.add_exception_handler(RateLimitExceeded, _rate_limit_exceeded_handler)
    ```
  - Aplicar el decorador `@limiter.limit()` en los endpoints (debajo del decorador de ruta):
    ```python
    @router.get("/{item_id}")
    @limiter.limit("10/second")
    async def read_item(item_id: int, request: Request, db: Session = Depends(get_database)):
        ...
    ```
  - **Importante:** El decorador `@limiter.limit` debe ir **debajo** de `@router.get(...)`.

- **Configurar despliegue temprano con Pulumi (infraestructura como código):**
  - Crear un `Dockerfile` básico:
    ```dockerfile
    FROM python:3.11
    WORKDIR /app
    COPY requirements.txt .
    RUN pip install -r requirements.txt
    COPY . .
    CMD ["uvicorn", "main:app", "--host", "0.0.0.0", "--port", "8080"]
    ```
  - Definir la infraestructura en un archivo Python (ej. `__main__.py`):
    ```python
    import pulumi
    import pulumi_docker as docker
    import pulumi_gcp as gcp

    # Crear registro de contenedores
    registry = gcp.container.Registry("my-registry")

    # Construir imagen Docker
    image = docker.Image("my-image",
        build="./app",
        image_name="gcr.io/my-project/my-image",
        build_args={"BUILDPLATFORM": "linux/amd64"}
    )

    # Desplegar en Cloud Run
    service = gcp.cloudrun.Service("my-service",
        location="us-central1",
        template=gcp.cloudrun.ServiceTemplateArgs(
            spec=gcp.cloudrun.ServiceTemplateSpecArgs(
                containers=[gcp.cloudrun.ServiceTemplateSpecContainerArgs(
                    image=image.image_name,
                    ports=[gcp.cloudrun.ServiceTemplateSpecContainerPortArgs(
                        container_port=8080
                    )]
                )]
            )
        )
    )

    # Hacer el servicio público
    policy = gcp.cloudrun.IamPolicy("noauth",
        location=service.location,
        project=service.project,
        service=service.name,
        policy_data=pulumi.Output.all(service.name).apply(lambda args: {
            "bindings": [{
                "role": "roles/run.invoker",
                "members": ["allUsers"]
            }]
        })
    )

    pulumi.export("url", service.statuses[0].url)
    ```
  - Desplegar con: `pulumi up`

- **Ejecutar código de usuario en entornos aislados (automations):**
  - Usar Pulumi Automation API para crear/destruir funciones en la nube dinámicamente:
    ```python
    import pulumi.automation as auto

    def run_automation(code: str):
        # Preparar entorno virtual
        venv = auto.LocalWorkspace(project_settings={"runtime": "python"})
        venv.install_requirements("requirements.txt")

        # Crear stack temporal
        stack = auto.create_stack("automation-stack", workspace=venv)

        # Desplegar función
        up_result = stack.up()
        function_url = up_result.outputs["function_url"].value

        # Invocar función con el código
        response = requests.post(function_url, json={"code": code})

        # Destruir stack
        stack.destroy()
        stack.workspace.remove_stack("automation-stack")

        return response.text
    ```

## Reglas para el erudito (imperativas y verificables)

- **Usa `APIRouter` con `prefix`** cuando tengas múltiples grupos de endpoints (items, automations, users). Nunca pongas todas las rutas en `main.py`.
- **Separa las operaciones de los endpoints**: crea funciones en `db/` que reciban la sesión de BD y devuelvan modelos Pydantic, no objetos de BD directamente. Los endpoints solo deben llamar a esas funciones y convertir el resultado.
- **Usa un generador con `try/finally`** para la sesión de BD (`yield db` / `db.close()`). Nunca dejes conexiones abiertas.
- **Configura el despliegue primero**: crea un endpoint de health check, el Dockerfile, y el pipeline CI/CD antes de escribir la lógica de negocio. Esto evita problemas de compatibilidad al final.
- **Aplica `@limiter.limit()` debajo del decorador de ruta** (ej. `@router.get(...)` primero, luego `@limiter.limit(...)`). El orden inverso rompe el rate limiter.
- **Pasa `request: Request` como argumento** al endpoint cuando uses SlowAPI con `get_remote_address`, o el limiter no podrá extraer la IP.
- **Usa Pulumi Automation API** para ejecutar código de usuario en entornos aislados: crea un stack, despliega una función serverless, invócala, y destrúyela inmediatamente. Nunca ejecutes código de usuario directamente en el backend.
- **Define modelos Pydantic separados para creación y actualización**: `ItemCreate` (name requerido, description opcional) y `ItemUpdate` (name y description ambos opcionales).

## Errores comunes / gotchas que menciona

- **Poner todas las rutas en `main.py`**: los tutoriales introductorios lo hacen, pero para producción el archivo se vuelve enorme e inmanejable.
- **Escribir la lógica de negocio dentro de las funciones del endpoint**: mezcla responsabilidades (ruteo + operación), dificulta el testing y la reutilización (ej. para una CLI).
- **No separar los modelos de BD de los modelos de respuesta**: en el ejemplo, las operaciones devuelven `DatabaseItem` (objeto SQLAlchemy) en lugar de `Item` (Pydantic), forzando conversión manual en los routers. La solución es crear una función interna que devuelva el modelo Pydantic.
- **Esperar a tener la API completa para pensar en el despliegue**: los problemas de dependencias, secretos y configuración de cloud son los más difíciles de resolver. Es mejor hacer el scaffolding primero.
- **Olvidar el orden de los decoradores con SlowAPI**: si `@limiter.limit` va arriba de `@router.get`, no funciona correctamente.
- **No pasar `request` al endpoint cuando se usa `get_remote_address`**: el limiter necesita el objeto request para extraer la IP; si no se incluye como parámetro, falla silenciosamente.
- **Ejecutar código de usuario directamente en el backend**: si el código rompe el servidor, toda la API cae. Siempre aislarlo en funciones serverless temporales.
- **No cerrar conexiones de base de datos**: las conexiones se acumulan y ralentizan la BD. Usar el patrón `try/finally` con el generador.

===== emUaq9FPIcc.md =====
# Modern E2E Testing with Playwright and AI
**Fuente:** Checkly | https://youtu.be/emUaq9FPIcc

## Qué enseña (2-3 líneas)
Cómo usar LLMs (Claude Sonnet vía GitHub Copilot) y Playwright MCP para generar, depurar y refactorizar tests E2E y de API en un e-commerce Next.js, desplegándolos como monitoreo sintético en Checkly. Enfatiza que el contexto (archivos de setup, test plans, MCP) es crítico y que el output del LLM siempre debe revisarse.

## Técnicas y patrones accionables

- **Generar archivo de contexto inicial (`setup.md`)** para que el LLM entienda la arquitectura sin "picotear" el códigobase:
  ```
  prompt: "I'm new to this project and I want to create end to end test with Playwright. Can you please summarize possible pages and API routes and where they are defined? Don't share more information. Please write the result to setup.md."
  ```
  Resultado: archivo `setup.md` con rutas de páginas (home, login, search, dynamic pages) y rutas API.

- **Usar Playwright MCP para inspeccionar el sitio y generar un plan de tests (`test-plan.md`)**:
  ```
  prompt: "Can you navigate to localhost:3000 using Playwright MCP and scan the homepage and core functionality? Please create an end-to-end testing plan with Playwright. Don't write any code yet. I just want to have an idea what I could test. Use the information in setup.md. Write the test plan to test-plan.md and include three actionable test scenarios including search. Don't include any additional information."
  ```
  El LLM llama al MCP server, que controla Chrome, devuelve el accessibility tree (page snapshot), y el LLM escribe `test-plan.md`.

- **Ejecutar el plan de tests vía MCP y generar el archivo de test**:
  ```
  prompt: "Here's a Playwright test case scenario: [pegar contenido de test-plan.md]. Can you execute the test plan using Playwright MCP? Once you're done, please generate a Playwright test case in tests/webinar/search.spec.ts. The test case should include the test case scenario on top as comments."
  ```
  El LLM usa MCP para navegar, hacer clics, etc., y luego escribe `tests/webinar/search.spec.ts`.

- **Depuración automática con el botón "Fix test failure"** (VS Code extension de Playwright) o con un **agent loop**:
  ```
  prompt: "Can you run the generated Playwright test. If it fails, please fix it."
  ```
  El LLM ejecuta `npx playwright test`, lee el error, y modifica el código iterativamente hasta que pase.

- **Refactorizar a Page Object Models (POMs)**:
  ```
  prompt: "Please use Playwright MCP to run the test scenario defined in tests/webinar/search.spec.ts. Please refactor the existing test to use proper Page Object Models located in tests/webinar/poms/. Don't change the existing functionality and don't create new tests."
  ```
  El LLM crea `tests/webinar/poms/` con clases (HomePage, SearchPage, ProductPage) y modifica `search.spec.ts` para importarlas.

- **Generar tests de API con contexto del `setup.md`**:
  ```
  prompt: "There's an API route to fetch products. Can you create one Playwright test in tests/webinar/api.spec.ts to validate the GET call too? Please read the source code, run the test, and verify the result automatically. Fix it if needed."
  ```
  El LLM lee el endpoint (ej. `/api/products`), ejecuta la llamada, y genera validaciones de status 200, content-type JSON, y estructura de datos.

- **Usar `test.step()` para agrupar acciones**:
  ```
  prompt: "Can you bring in test steps? Please use Playwright's test.step method in search.spec.ts."
  ```
  El LLM envuelve bloques de acciones en `await test.step('description', async () => { ... })`.

- **Revisar POMs contra mejores prácticas**:
  ```
  prompt: "Can you check the Page Object Models in the poms directory and tell me if it's using best practices?"
  ```
  Se referencia el directorio y se usa Context7 MCP para traer documentación actualizada de Playwright.

- **Desplegar como monitoreo sintético en Checkly**:
  - Configurar `playwright.config.ts` con `baseURL` y dos proyectos (ej. `backup`, `webinar`).
  - Añadir `checkly.config.ts` con:
    ```ts
    // checkly.config.ts
    import { defineConfig } from 'checkly';
    export default defineConfig({
      projectName: '...',
      logicalId: '...',
      playwrightChecks: [
        {
          id: 'webinar-check',
          name: 'Webinar E2E',
          project: 'webinar',  // nombre del proyecto en playwright.config.ts
          locations: ['eu-central-1'],
          frequency: 10,       // minutos
        },
      ],
    });
    ```
  - Comandos:
    ```bash
    npx checkly test          # ejecuta los tests en infraestructura Checkly
    npx checkly deploy        # despliega como monitoreo sintético
    ```

## Reglas para el erudito (imperativas y verificables)

- **Usa Context7 MCP** cuando preguntes sobre APIs o features de Playwright para evitar información desactualizada (cutoff date del LLM).
- **Nunca** pidas al LLM que genere un test sin darle acceso al sitio (ni con prompts tipo "set viewport, open this, click sign, enter email"). El LLM no conoce el DOM real y alucinará selectores.
- **Siempre** escribe archivos de contexto temporales (`setup.md`, `test-plan.md`) y refiérelos en los prompts para mantener el contexto enfocado y no saturar la ventana de conversación.
- **Usa `clear`** en el chat entre tareas no relacionadas para evitar que el LLM se desvíe.
- **Revisa siempre** el código generado: los LLM pueden "complacer" al usuario haciendo que el test pase con aserciones triviales o comentando líneas.
- **Usa el botón "Fix test failure"** de la extensión VS Code de Playwright o un agent loop (`"run the test; if it fails, fix it"`) para depuración iterativa.
- **Para POMs**, primero ejecuta el test con MCP para que el LLM tenga contexto de las páginas, luego pide la refactorización.
- **Para tests de API**, proporciona el `setup.md` que ya mapea los endpoints para que el LLM no tenga que buscar en el código.

## Errores comunes / gotchas que menciona

- **Confundir LLM con Google/Stack Overflow**: preguntar "¿cómo funciona auto-waiting?" sin usar MCP de documentación (Context7) da respuestas basadas en el cutoff date del modelo (abril 2024), no en la documentación actual de Playwright.
- **Esperar que el LLM genere tests perfectos al primer intento**: el presentador tuvo que usar el botón "Fix test failure" tres veces y luego un agent loop para que el test pasara. Es normal; es como un humano "tropezando".
- **Confiar ciegamente en tests generados por IA**: el LLM puede generar tests que "complazcan" (ej. aserciones triviales, comentar líneas para forzar el pass). El desarrollador sigue siendo responsable.
- **No limpiar el contexto entre tareas**: mantener conversaciones largas y mezcladas hace que el LLM se confunda y se desvíe. Usar `clear` y archivos de contexto en disco.
- **Usar `codegen` para grabar tests y esperar que genere POMs automáticamente**: `codegen` es rápido para grabar, pero no produce Page Object Models. La solución es grabar con `codegen` y luego pasar el código al LLM para refactorizar a POMs.
- **Asumir que Playwright MCP genera código de test**: MCP solo controla el navegador y devuelve snapshots (accessibility tree). La generación del archivo `.spec.ts` la hace el LLM aparte, usando la información que MCP le devuelve.

===== fY34H1IfA94.md =====
# SvelteKit 
**Fuente:** Consulting Ninja | https://youtu.be/fY34H1IfA94

## Qué enseña (2-3 líneas)
Tutorial sobre formularios en SvelteKit: tipado de form actions con TypeScript (Actions, RequestEvent, ActionFailure) y uso de `use:enhance` para evitar recargas completas de página. Cubre desde lo básico sin tipos hasta el tipado completo con interfaces y tipos genéricos.

## Técnicas y patrones accionables

- **Archivo `+page.server.ts` con una action nombrada:**
  ```typescript
  export const actions = {
    act: async ({ request }) => {
      const data = await request.formData();
      const firstName = data.get('firstName');
      const lastName = data.get('lastName');
      const age = data.get('age');
      // ...
    }
  };
  ```

- **Uso de `fail` de SvelteKit para errores:**
  ```typescript
  import { fail } from '@sveltejs/kit';

  if (age === 'Old AF') {
    return fail(400, { tooOld: true, type: 'fail', firstName, lastName, age });
  }
  ```

- **Tipado progresivo de form actions:**

  1. Crear interfaz para los datos del formulario:
  ```typescript
  interface MyData {
    tooOld: boolean;
    type: string;
    firstName: FormDataEntryValue;
    lastName: FormDataEntryValue;
    age: FormDataEntryValue | string;
    [key: string]: any; // índice de firma para ActionFailure
  }
  ```

  2. Importar tipos necesarios:
  ```typescript
  import type { Actions, RequestEvent, ActionFailure } from '@sveltejs/kit';
  ```

  3. Tipar `actions` y `request`:
  ```typescript
  export const actions: Actions = {
    act: async ({ request }: { request: RequestEvent }) => {
      // ...
    }
  };
  ```

  4. Tipar el retorno como Promise con unión de tipos:
  ```typescript
  act: async ({ request }: { request: RequestEvent }): Promise<MyData | ActionFailure<MyData>> => {
    // ...
    return { tooOld: false, type: 'success', firstName, lastName, age };
  }
  ```

- **`use:enhance` en `+page.svelte` para evitar recarga completa:**
  ```svelte
  <script>
    import { enhance } from '$app/forms';
  </script>

  <form method="POST" action="?/act" use:enhance>
    <!-- campos del formulario -->
  </form>
  ```

- **Callback de `use:enhance` con validación frontal y cancelación:**
  ```svelte
  <form method="POST" action="?/act" use:enhance={({ formData, cancel }) => {
    if (formData.get('firstName') === 'Dave') {
      cancel();
    }
  }}>
  ```

- **Parámetros del callback de `use:enhance`:**
  ```typescript
  use:enhance={({ form, formData, action, cancel }) => {
    // form: HTMLFormElement
    // formData: FormData
    // action: string (URL de la acción)
    // cancel: () => void
  }}
  ```

## Reglas para el erudito (imperativas y verificables)

- **Usa `FormDataEntryValue`** como tipo para valores obtenidos con `data.get()` antes de hacer conversión explícita.
- **Importa tipos con `import type`** desde `@sveltejs/kit` para `Actions`, `RequestEvent` y `ActionFailure`.
- **Añade `[key: string]: any`** a tu interfaz de datos cuando uses `ActionFailure<T>` para evitar error de "index signature for type string is missing".
- **Usa `fail(statusCode, data)`** para retornar errores desde form actions; el primer argumento es el código HTTP.
- **Usa `use:enhance`** en formularios como predeterminado en producción para eliminar recargas completas de página.
- **Usa el callback de `use:enhance`** para validaciones frontales y cancelación con `cancel()` antes del envío.

## Errores comunes / gotchas que menciona

- **Error de tipo al no convertir `FormDataEntryValue`:** Si declaras campos como `string` pero obtienes valores con `data.get()`, TypeScript se queja porque el tipo devuelto es `FormDataEntryValue`. Solución: usar `FormDataEntryValue` directamente o convertir explícitamente.
- **Olvidar importar tipos con `import type`:** Los tipos `Actions`, `RequestEvent`, `ActionFailure` deben importarse con `import type` desde `@sveltejs/kit`.
- **Falta de índice de firma en interfaz:** Al usar `ActionFailure<MyData>`, la interfaz `MyData` necesita `[key: string]: any` para que TypeScript acepte el retorno de `fail()`.
- **`use:enhance` sin callback no evita la recarga:** Si solo pones `use:enhance` sin argumentos, la recarga se evita pero no hay control adicional. Para validación frontal se necesita el callback con `cancel()`.

===== jpPklvWrZC8.md =====
# 08 - Props and Snippets In Svelte 5
**Fuente:** Code Hub | https://youtu.be/jpPklvWrZC8

## Qué enseña (2-3 líneas)
Cómo usar el rune `$props` para declarar props tipadas y con valores por defecto en Svelte 5, reemplazando el `export` de Svelte 4. También enseña a crear y renderizar Snippets (bloques de marcado reutilizables) tanto en la misma página como pasándolos a componentes hijos, incluyendo parámetros y paso de datos desde el padre.

## Técnicas y patrones accionables

- **Declarar props con `$props` rune (tipado básico):**
  ```svelte
  <script lang="ts">
    let { title, price } = $props();
  </script>
  ```

- **Declarar props con tipado estricto y valores por defecto:**
  ```svelte
  <script lang="ts">
    let { title = undefined, price }: { title?: string; price: number } = $props();
  </script>
  ```
  - `title` es opcional (nullable), su valor por defecto es `undefined`.
  - `price` es requerido (obliga al padre a pasarlo).

- **Usar el componente hijo desde una página padre:**
  ```svelte
  <script lang="ts">
    import Child from './components/Child.svelte';
  </script>

  <Child title="Producto A" price={100} />
  <Child price={200} /> <!-- title usará undefined -->
  ```

- **Crear un Snippet en la misma página (on-page snippet):**
  ```svelte
  {#snippet greetings()}
    <p>Hello world</p>
  {/snippet}
  ```

- **Renderizar un Snippet con `{@render}`:**
  ```svelte
  {@render greetings()}
  ```

- **Snippet con parámetros:**
  ```svelte
  {#snippet greetings(personName: string)}
    <p>Hello {personName}</p>
  {/snippet}

  {@render greetings('John')}
  ```

- **Pasar un Snippet a un componente hijo (prop tipo snippet):**
  - En el componente hijo (`Button.svelte`):
    ```svelte
    <script lang="ts">
      import type { Snippet } from 'svelte';
      let { button }: { button?: Snippet } = $props();
    </script>

    {#if button}
      {@render button()}
    {/if}
    ```
  - En la página padre:
    ```svelte
    <script lang="ts">
      import Button from './components/Button.svelte';
    </script>

    <Button>
      {#snippet button()}
        <button class="bg-blue-500 px-4 py-2">Enviar</button>
        <button class="bg-gray-300 px-4 py-2">Cancelar</button>
        <p>Texto adicional</p>
      {/snippet}
    </Button>
    ```
    **Nota:** El nombre del snippet (`button`) debe coincidir exactamente con el nombre de la prop en el componente.

- **Snippet con parámetros definidos por el hijo (child provee defaults):**
  - En el componente hijo (`Header.svelte`):
    ```svelte
    <script lang="ts">
      import type { Snippet } from 'svelte';
      let { header }: { header?: Snippet<[string, string]> } = $props();
    </script>

    {#if header}
      {@render header('Default Title', 'Default Subtitle')}
    {/if}
    ```
  - En la página padre:
    ```svelte
    <script lang="ts">
      import Header from './components/Header.svelte';
    </script>

    <Header>
      {#snippet header(title: string, subtitle: string)}
        <h1>{title}</h1>
        <p>{subtitle}</p>
      {/snippet}
    </Header>
    ```

- **Pasar datos del padre al snippet a través de props del componente:**
  - En el componente hijo (`Header.svelte`):
    ```svelte
    <script lang="ts">
      import type { Snippet } from 'svelte';
      let { header, title, subtitle }: { header?: Snippet<[string, string]>; title: string; subtitle: string } = $props();
    </script>

    {#if header}
      {@render header(title, subtitle)}
    {/if}
    ```
  - En la página padre:
    ```svelte
    <Header title="Título desde padre" subtitle="Subtítulo desde padre">
      {#snippet header(title: string, subtitle: string)}
        <h1>{title}</h1>
        <p>{subtitle}</p>
      {/snippet}
    </Header>
    ```

## Reglas para el erudito (imperativas y verificables)

- **Usa `$props()` en lugar de `export let`** para declarar props en Svelte 5. `export` está deprecado.
- **Usa `{#snippet}` y `{@render}` en lugar de `<slot>`** para pasar bloques de marcado a componentes hijos. `<slot>` está deprecado.
- **Nunca olvides el tipado genérico** en `$props()` si quieres type safety: `let { prop }: { prop: type } = $props()`.
- **Declara las props requeridas sin valor por defecto** para que Svelte fuerce al padre a pasarlas (error de compilación si faltan).
- **El nombre del snippet en el padre debe coincidir exactamente** con el nombre de la prop de tipo `Snippet` en el componente hijo.
- **Usa `Snippet<[param1Type, param2Type]>`** para tipar snippets que reciben parámetros desde el hijo.
- **Renderiza el snippet siempre dentro de un `{#if snippet}`** para evitar errores si el padre no lo provee.
- **Pasa los valores desde el padre al snippet mediante props del componente**, no solo con valores fijos en `{@render}`.

## Errores comunes / gotchas que menciona

- **Olvidar renderizar el snippet:** Si creas un `{#snippet}` pero no lo renderizas con `{@render}`, no se mostrará nada en pantalla.
- **No pasar parámetros requeridos al renderizar:** Si el snippet espera un parámetro (ej. `personName: string`) y no lo pasas en `{@render greetings()}`, Svelte mostrará un error.
- **Confundir el nombre del snippet con el nombre de la prop:** El snippet definido en el padre debe llamarse exactamente igual que la prop de tipo `Snippet` en el componente hijo (ej. `button` ↔ `button`).
- **No declarar las props en el componente hijo para pasar datos al snippet:** Si el padre necesita enviar datos dinámicos al snippet, debes declarar props adicionales en el hijo y pasarlas como argumentos en `{@render}`.
- **Usar `undefined` como valor por defecto en props opcionales:** Si no pasas la prop desde el padre, su valor será `undefined`, no un string vacío u otro valor personalizado a menos que lo definas explícitamente.

===== jydYq7oAtD8.md =====
# Software Testing Course – Playwright, E2E, and AI Agents
**Fuente:** freeCodeCamp.org and Beau Carnes | https://youtu.be/jydYq7oAtD8

## Qué enseña (2-3 líneas)
Curso completo de testing de software que cubre desde fundamentos (pirámide de testing, tipos de tests) hasta la implementación práctica con Playwright para tests E2E, incluyendo técnicas avanzadas como mocking, testing de accesibilidad y edge cases. Finaliza con una demostración de Kain AI de Testim, una herramienta de testing impulsada por IA que permite escribir tests en lenguaje natural.

## Técnicas y patrones accionables

### Configuración de Playwright
- **Archivo:** `playwright.config.js`
```javascript
// Configuración básica
// - Ubicación de tests
// - Navegadores: Chromium, Firefox, WebKit, mobile Chrome, mobile Safari
// - URL del servidor local
// - Screenshots on failure
// - Video on failure
```

### Instalación y ejecución
```bash
# Instalar dependencias
npm install

# Instalar navegadores de Playwright
npx playwright install

# Ejecutar todos los tests
npm test

# Ver reporte
npx playwright show-report

# Ejecutar en modo headed (con navegador visible)
npm run test -- --headed

# Ejecutar en modo UI interactivo
npm run test -- --ui

# Ejecutar un archivo específico
npx playwright test tests/cart.spec.js

# Ejecutar tests que coincidan con un patrón
npx playwright test -g login
```

### Estructura de un test file (`homepage.spec.js`)
```javascript
import { test, expect } from '@playwright/test';

test.describe('home page', () => {
  test.beforeEach(async ({ page }) => {
    // Navegar al homepage y limpiar carrito antes de cada test
    await page.goto('/');
    // Limpiar carrito
  });

  test('should display correct page title', async ({ page }) => {
    await expect(page).toHaveTitle(/TechMart/);
  });
});
```

### Patrón acción + verificación (fundamental)
```javascript
test('should add item to cart', async ({ page }) => {
  // 1. ACCIÓN: click en "Add to Cart"
  await page.locator('text=Add to Cart').first().click();
  
  // 2. VERIFICAR feedback inmediato (toast message)
  await expect(page.locator('text=Added to cart')).toBeVisible();
  
  // 3. VERIFICAR cambio de estado (cart count actualizado)
  await expect(page.locator('[data-testid="cart-count"]')).toHaveText('1');
});
```

### Estrategias de localización (locators)
```javascript
// Por ID
page.locator('#search-input')

// Por clase CSS
page.locator('.product-card')

// Por texto exacto
page.locator('text=Add to Cart')

// Por rol de accesibilidad
page.locator('role=button[name="login"]')

// Por placeholder
page.locator('[placeholder="Search products..."]')

// Combinando selectores
page.locator('.product-card >> text=Keyboard')
```

### Test de formulario de login (`auth.spec.js`)
```javascript
test('should login successfully with valid credentials', async ({ page }) => {
  await page.goto('/login');
  
  // ACCIÓN: llenar formulario
  await page.locator('#email').fill('demo@example.com');
  await page.locator('#password').fill('demo123');
  await page.locator('button[type="submit"]').click();
  
  // VERIFICACIÓN: redirección al homepage
  await expect(page).toHaveURL('/');
});

test('should show error for mismatched passwords', async ({ page }) => {
  await page.goto('/register');
  
  await page.locator('#password').fill('password123');
  await page.locator('#confirm-password').fill('differentpassword');
  await page.locator('button[type="submit"]').click();
  
  await expect(page.locator('text=Passwords do not match')).toBeVisible();
});
```

### Test de API con Playwright (`api.spec.js`)
```javascript
test('should return all products', async ({ request }) => {
  const response = await request.get('/api/products');
  
  expect(response.ok()).toBeTruthy();
  expect(response.status()).toBe(200);
  
  const data = await response.json();
  expect(Array.isArray(data)).toBeTruthy();
  expect(data.length).toBe(6);
});

test('should add item to cart', async ({ request }) => {
  const response = await request.post('/api/cart', {
    data: {
      productId: 1,
      quantity: 1
    }
  });
  
  expect(response.status()).toBe(200);
  const data = await response.json();
  expect(data.items.length).toBe(1);
  expect(data.items[0].productId).toBe(1);
  expect(data.items[0].quantity).toBe(1);
});
```

### Mocking de API (`mocking.spec.js`)
```javascript
// Simular API caída (500 error)
test('should handle API being down', async ({ page }) => {
  await page.route('**/api/products', route => {
    route.fulfill({
      status: 500,
      body: 'Internal Server Error'
    });
  });
  
  await page.goto('/');
  await expect(page.locator('.product-card')).toHaveCount(0);
});

// Simular respuesta lenta (3 segundos de delay)
test('should handle slow API responses', async ({ page }) => {
  await page.route('**/api/products', async route => {
    await new Promise(resolve => setTimeout(resolve, 3000));
    route.continue();
  });
  
  await page.goto('/');
  // Verificar que la página es usable durante la carga
  await expect(page.locator('.product-card')).toHaveCount(6);
});

// Mock de datos específicos (out of stock)
test('should show out of stock indicator', async ({ page }) => {
  await page.route('**/api/products', route => {
    route.fulfill({
      status: 200,
      body: JSON.stringify([
        { id: 1, name: 'Wireless Headphones', stock: 0 },
        { id: 2, name: 'USB Cable', stock: 10 }
      ])
    });
  });
  
  await page.goto('/');
  await expect(page.locator('.product-card')).toHaveCount(2);
  await expect(page.locator('text=Out of Stock')).toBeVisible();
});

// Mock selectivo: interceptar solo POST requests
test('should handle add to cart failure', async ({ page }) => {
  await page.route('**/api/cart', async (route) => {
    if (route.request().method() === 'POST') {
      route.fulfill({ status: 500 });
    } else {
      route.continue();
    }
  });
});
```

### Testing de edge cases (`edge-cases.spec.js`)
```javascript
// Búsqueda vacía
test('should handle empty search gracefully', async ({ page }) => {
  await page.goto('/');
  await page.locator('#search-button').click();
  await expect(page.locator('.product-card')).toHaveCount(6);
});

// Búsqueda con caracteres especiales (XSS)
test('should handle special characters search', async ({ page }) => {
  await page.locator('#search-input').fill('<script>alert("xss")</script>');
  await page.locator('#search-button').click();
  await expect(page.locator('.product-card')).toHaveCount(0);
  // La página debe seguir siendo visible (no se ejecutó el script)
});

// Búsqueda con solo espacios
test('should handle search with only whitespace', async ({ page }) => {
  await page.locator('#search-input').fill('   ');
  await page.locator('#search-button').click();
  await expect(page.locator('.product-card')).toHaveCount(6);
});

// Checkout con carrito vacío
test('should not allow checkout with empty cart', async ({ page }) => {
  await page.goto('/checkout');
  await page.locator('#email').fill('test@test.com');
  await page.locator('#card').fill('4111111111111111');
  await page.locator('text=Place Order').click();
  await expect(page.locator('text=Cart is empty')).toBeVisible();
});
```

### Testing de accesibilidad (`accessibility.spec.js`)
```javascript
// Verificar que todas las imágenes tienen alt text
test('all images should have alt text', async ({ page }) => {
  await page.goto('/');
  const images = page.locator('img');
  const count = await images.count();
  for (let i = 0; i < count; i++) {
    await expect(images.nth(i)).toHaveAttribute('alt');
  }
});

// Verificar que todos los inputs tienen labels
test('all form inputs should have labels', async ({ page }) => {
  await page.goto('/login');
  const inputs = page.locator('input');
  const count = await inputs.count();
  for (let i = 0; i < count; i++) {
    await expect(inputs.nth(i)).toHaveAttribute('aria-label');
  }
});

// Verificar jerarquía de headings
test('page should have proper heading hierarchy', async ({ page }) => {
  await page.goto('/');
  const headings = page.locator('h1, h2, h3, h4, h5, h6');
  // Verificar que no se saltan niveles (ej: h1 -> h3 sin h2)
});

// Verificar navegación por teclado
test('interactive elements should be keyboard accessible', async ({ page }) => {
  await page.goto('/');
  // Verificar que se puede navegar con Tab
  await page.keyboard.press('Tab');
  await expect(page.locator(':focus')).toBeVisible();
});
```

### Uso de Axe Core con Playwright (accesibilidad avanzada)
```javascript
// Ejemplo conceptual de integración con Axe Core
// Un solo test que verifica docenas de issues de accesibilidad automáticamente
```

### Cloudflare Tunnel para testing local con Kain AI
```bash
# Instalar cloudflared
brew install cloudflared

# Crear tunnel (con servidor corriendo en localhost:3000)
cloudflared tunnel --url localhost:3000
# Output: https://xxxxx.trycloudflare.com (URL pública)
```

### Kain AI - Tests en lenguaje natural
```
Comandos de ejemplo:
"Go to [URL], make sure the title contains TechMart, 
check that the text 'Welcome to TechMart' is visible, 
scroll down and make sure at least four product cards are visible"

"Go to [URL], click on the search input field, 
type 'keyboard' in the search box, click the search button, 
make sure only one product card is visible after searching, 
and that the product should be the Mechanical Keyboard"
```

### Kain AI - API testing
```
Comando especial dentro del test:
/api products (GET request)
- Configurar parámetros, autorización, headers, body
- Enviar request
- Verificar que response status es 200
```

## Reglas para el erudito (imperativas y verificables)

1. **Usa el patrón acción + verificación** en cada test: primero realiza la acción del usuario (click, fill, type), luego verifica el feedback inmediato (toast, mensaje), y finalmente verifica el cambio de estado (URL, contador, datos en DB).

2. **Usa `page.locator()` con selectores estables y significativos**: prefiere IDs y atributos `data-test-id` sobre selectores CSS que dependen de la estructura exacta del DOM. Usa texto para botones y links.

3. **Nunca dependas de un test de otro**: cada test debe configurar sus propios datos y limpiar después de ejecutarse. Los tests deben poder ejecutarse en cualquier orden.

4. **Usa `test.beforeEach()` para navegar a un estado limpio** antes de cada test en un bloque `test.describe()`.

5. **Mockea APIs cuando:** estés probando estados de error difíciles de reproducir, la API real sea lenta/inestable/costosa, necesites control preciso sobre los datos, o estés probando integraciones de terceros.

6. **No mockees cuando:** necesites verificar que la API real funciona (usa tests de integración para eso), o cuando mockear haría que el test pierda significado.

7. **Usa `page.route()` para interceptar requests HTTP** y devolver respuestas personalizadas (mockear). Usa `route.fulfill()` para respuestas completas o `route.continue()` para dejar pasar la request.

8. **Prueba siempre el happy path Y los escenarios de error**: formularios vacíos, caracteres especiales, contraseñas que no coinciden, carritos vacíos, búsquedas sin resultados.

9. **Usa nombres de test descriptivos**: "should display error when password is too short" en lugar de "test1" o "test123".

10. **Integra los tests en CI/CD** para que se ejecuten automáticamente en cada cambio de código.

11. **Usa Kain AI para:** prototipar tests rápidamente, cuando no-desarrolladores necesiten crear tests, para reducir mantenimiento, o para testing cross-browser a escala.

12. **Usa Playwright tradicional para:** control preciso sobre la lógica del test, testing de edge cases complejos, o cuando quieras tener el testing en tu propio código base.

## Errores comunes / gotchas que menciona

1. **Tests flaky (inconsistentes)**: Los tests E2E a veces pasan y a veces fallan sin cambios de código debido a timing issues, variabilidad de red, inconsistencias entre navegadores, o contenido dinámico. Esto erosiona la confianza en la suite de tests.

2. **Mantenimiento costoso**: Cuando la UI cambia, los selectores pueden romperse, los flujos de test necesitan actualizarse, y las aserciones pueden volverse inválidas. Un solo rediseño de UI puede romper docenas de tests.

3. **Curva de aprendizaje significativa**: Para escribir tests efectivos se necesita conocer: un lenguaje de programación, la API del framework de testing, estrategias de localización (CSS selectors), async/await y promesas, y mejores prácticas para tests confiables.

4. **Escribir tests toma tiempo**: El test de checkout completo requirió ~50 líneas de código para identificar cada campo del formulario, encontrar los selectores correctos, manejar la sumisión, y escribir aserciones. Multiplicar por cada feature de la aplicación.

5. **No asumir que porque no hay un `expect` explícito el test no verifica**: Si una acción falla (ej: `page.goto()` no llega a la URL esperada), el test falla aunque no haya un `expect` específico.

6. **No olvidar instalar los navegadores de Playwright**: Ejecutar `npx playwright install` antes de correr los tests por primera vez.

7. **Los tests de accesibilidad pueden fallar incluso si visualmente todo se ve bien**: Esto es bueno, significa que se encontraron issues reales de accesibilidad que la inspección visual no detecta.

8. **AI testing tools son asistentes poderosos pero no reemplazan el juicio humano**: Aún se necesita decidir qué testear, revisar tests generados por AI para verificar precisión, manejar edge cases complejos, y entender qué están haciendo realmente los tests.

9. **Para usar Kain AI con un servidor local**, se necesita exponerlo a internet mediante un túnel (Cloudflare Tunnel, ngrok, etc.) ya que Kain AI trabaja con URLs públicas en producción.

10. **Los tests automatizados no reemplazan todo el testing**: Aún se necesita exploratory testing para encontrar issues inesperados, usability testing para experiencia de usuario, y security testing por expertos. Los tests automatizados atrapan regresiones; los humanos encuentran problemas nuevos.