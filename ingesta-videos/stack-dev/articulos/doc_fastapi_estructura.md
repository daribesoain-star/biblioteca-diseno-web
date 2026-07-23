# FastAPI — estructura de app grande (doctrina oficial)
**Fuente:** FastAPI Docs oficial | https://fastapi.tiangolo.com/tutorial/bigger-applications/

## Estructura recomendada
```
app/
  __init__.py
  main.py            # entrypoint, incluye routers
  dependencies.py    # dependencias compartidas
  routers/
    __init__.py
    items.py         # APIRouter de items
    users.py
  internal/
    admin.py
```

## APIRouter
```python
from fastapi import APIRouter, Depends, HTTPException
from ..dependencies import get_token_header

router = APIRouter(
    prefix="/items",
    tags=["items"],
    dependencies=[Depends(get_token_header)],
    responses={404: {"description": "Not found"}},
)

@router.get("/")
async def read_items(): ...
@router.get("/{item_id}")
async def read_item(item_id: str):
    if item_id not in db: raise HTTPException(404, "Item not found")
    ...
```

## Dependencias compartidas (dependencies.py)
```python
from typing import Annotated
from fastapi import Header, HTTPException
async def get_token_header(x_token: Annotated[str, Header()]):
    if x_token != "...": raise HTTPException(400, "X-Token invalid")
```

## main.py (incluir routers)
```python
from fastapi import Depends, FastAPI
from .routers import items, users
from .internal import admin
app = FastAPI(dependencies=[Depends(get_query_token)])
app.include_router(users.router)
app.include_router(items.router)
app.include_router(admin.router, prefix="/admin", tags=["admin"], dependencies=[Depends(get_token_header)])
```

## Patrones clave
- Imports relativos: `.` mismo paquete, `..` padre.
- `include_router(...)` acepta prefix/tags/dependencies/responses (se aplican a todas las rutas).
- **Evitar colisión:** importar el MÓDULO (`from .routers import items`), no el `router` suelto (el segundo pisa al primero).
- Un mismo router se puede incluir con distintos prefijos (`/api/v1`, `/api/latest`); routers pueden anidar otros routers.
- Orden de ejecución de dependencias: router → decorador → parámetros. Todas antes de la función.
- Correr: `fastapi dev`.
