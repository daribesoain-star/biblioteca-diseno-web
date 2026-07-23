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