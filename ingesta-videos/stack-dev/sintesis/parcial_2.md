# DOCTRINA ACCIONABLE DE PRODUCCIÓN

## 1) Svelte 5 Runes ($state/$derived/$effect/$props/$bindable)

### Declaración de estado reactivo
- Usa `$state()` para variables reactivas dentro del componente:
  ```svelte
  let count = $state(0);
  ```
  — Joy of Code — https://youtu.be/7N4maEDhy4w

- Los arrays se pueden mutar directamente gracias a proxies:
  ```svelte
  let arr = $state([1, 2, 3]);
  arr.push(4); // Funciona sin reassignar
  ```
  — Joy of Code — https://youtu.be/7N4maEDhy4w

### Valores derivados
- Usa `$derived` para valores que dependen de otro estado reactivo:
  ```svelte
  let b = $derived(a * 2);
  ```
  — Joy of Code — https://youtu.be/7N4maEDhy4w

- Usa `$derived.by` para lógica más compleja:
  ```svelte
  let b = $derived.by(() => a * 2);
  ```
  — Joy of Code — https://youtu.be/7N4maEDhy4w

- Retornar múltiples valores desde `$derived.by`:
  ```svelte
  let b = $derived.by(() => {
    return {
      double: a * 2,
      quadruple: a * 4
    };
  });
  ```
  — Joy of Code — https://youtu.be/7N4maEDhy4w

- **Nunca** mutes estado dentro de `$derived`. El compilador lanza error: "updating state inside `$derived` is forbidden".
  — Joy of Code — https://youtu.be/7N4maEDhy4w

- **Nunca** uses `$effect` para sincronizar valores entre sí. Los efectos se ejecutan en la cola de microtareas, produciendo valores desactualizados.
  — Joy of Code — https://youtu.be/7N4maEDhy4w

### Efectos secundarios
- Usa `$effect` solo para efectos secundarios (localStorage, console.log, fetch):
  ```svelte
  $effect(() => {
    console.log('a actualizado:', a);
    localStorage.setItem('a', String(a));
  });
  ```
  — Joy of Code — https://youtu.be/7N4maEDhy4w

- Usa `$effect.pre` para ejecutar código ANTES de que el DOM se actualice:
  ```svelte
  $effect.pre(() => {
    console.log('Valor anterior:', previousCount);
    previousCount = count;
  });
  ```
  — Code Hub — https://youtu.be/5DhyIOxX7AI

- **Nunca** uses `$effect` para lógica que solo debe ejecutarse una vez al montar; usa `onMount` en su lugar.
  — Code Hub — https://youtu.be/5DhyIOxX7AI

### Props y bindings
- Usa `$props()` para recibir props desde el componente padre:
  ```svelte
  interface Props {
    title: string;
    description: string;
    rating: number;
    isActive: boolean;
  }
  let { title, description, rating, isActive }: Props = $props();
  ```
  — Code Hub — https://youtu.be/5DhyIOxX7AI

- Usa valores por defecto en la desestructuración para props opcionales:
  ```svelte
  let { type = 'info', message, dismissible = false }: Props = $props();
  ```
  — Code Hub — https://youtu.be/5DhyIOxX7AI

- Usa `$bindable(valorPorDefecto)` para permitir binding bidireccional desde el padre:
  ```svelte
  import { bindable } from 'svelte';
  let { value = $bindable(0) }: Props = $props();
  ```
  — Code Hub — https://youtu.be/5DhyIOxX7AI

- **Nunca** declares props sin interfaz TypeScript si esperas múltiples props; siempre define `interface Props`.
  — Code Hub — https://youtu.be/5DhyIOxX7AI

### Ciclo de vida
- Usa `onMount` para ejecutar código después del primer render:
  ```svelte
  import { onMount, onDestroy } from 'svelte';
  onMount(() => {
    console.log('Componente montado en el DOM');
    return () => { console.log('Cleanup de onMount'); };
  });
  ```
  — Code Hub — https://youtu.be/5DhyIOxX7AI

- Usa `onDestroy` para limpiar recursos (intervalos, observadores, suscripciones):
  ```svelte
  onDestroy(() => {
    console.log('Componente siendo eliminado del DOM');
  });
  ```
  — Code Hub — https://youtu.be/5DhyIOxX7AI

### Compartir estado global
- Exporta estado global desde archivos `.svelte.ts` o `.svelte.js`:
  ```ts
  // store.svelte.ts
  export let globalState = $state(0);
  ```
  — Joy of Code — https://youtu.be/7N4maEDhy4w

### Clases con estado reactivo
- Crea clases con estado reactivo y getters/setters personalizados:
  ```svelte
  class Temperature {
    #celsius = $state(0);
    #fahrenheit = $state(32);
    get celsius() { return this.#celsius; }
    set celsius(value) {
      this.#celsius = value;
      this.#fahrenheit = value * 9/5 + 32;
    }
    get fahrenheit() { return this.#fahrenheit; }
    set fahrenheit(value) {
      this.#fahrenheit = value;
      this.#celsius = (value - 32) * 5/9;
    }
  }
  ```
  — Joy of Code — https://youtu.be/7N4maEDhy4w

### Gotchas
- **Olvidar importar `bindable` desde 'svelte'** cuando se usa `$bindable()` en un componente hijo.
  — Code Hub — https://youtu.be/5DhyIOxX7AI

- **No usar `bind:` en el padre** cuando el hijo tiene `$bindable`: el binding solo funciona si el padre usa `bind:value={variable}`.
  — Code Hub — https://youtu.be/5DhyIOxX7AI

- **Usar `this` en métodos de clase sin bindear:** Al pasar un método como callback, `this` apunta al elemento DOM. Solución: usar arrow functions.
  — Joy of Code — https://youtu.be/7N4maEDhy4w

- **Los derivados son readonly:** No se puede usar `bind:value` directamente con `$derived`. Se necesita un getter/setter.
  — Joy of Code — https://youtu.be/7N4maEDhy4w

---

## 2) SvelteKit (Routing, Load, Form Actions, Auth)

### Routing y archivos
- Usa `+page.svelte` en lugar de `index.svelte` o `about.svelte` para definir rutas.
  — Vercel — https://youtu.be/QYZ1s_x5nUM

- Usa `+layout.svelte` en lugar de `__layout.svelte` para layouts compartidos.
  — Vercel — https://youtu.be/QYZ1s_x5nUM

- Usa carpetas con paréntesis `(grupo)` cuando necesites agrupar layouts sin afectar la URL.
  — Vercel — https://youtu.be/QYZ1s_x5nUM

### Load functions
- Define la load function en `+page.ts` o `+page.server.ts` (archivo hermano del page component), no en un bloque `context module`.
  — Vercel — https://youtu.be/QYZ1s_x5nUM

- Load function básica con ruta dinámica:
  ```typescript
  // users/[id]/+page.ts
  import type { PageLoad } from './$types';
  export const load: PageLoad = async ({ params, fetch }) => {
    const response = await fetch(`https://api.example.com/users/${params.id}`);
    if (!response.ok) throw new Error('Failed to fetch user');
    const user = await response.json();
    return { user };
  };
  ```
  — Code Hub — https://youtu.be/NDoVTJak8Mk

- Usa `+page.server.ts` cuando necesites acceso a variables de entorno, bases de datos, sistema de archivos o secretos del servidor.
  — Code Hub — https://youtu.be/NDoVTJak8Mk

- Usa `+page.ts` (universal) cuando el fetching pueda hacerse desde cliente o servidor, como APIs públicas.
  — Code Hub — https://youtu.be/NDoVTJak8Mk

- Usa `Promise.all()` para fetching paralelo de datos independientes:
  ```typescript
  const [postResponse, commentResponse] = await Promise.all([
    fetch(`https://api.example.com/posts/${postId}`),
    fetch(`https://api.example.com/posts/${postId}/comments`)
  ]);
  ```
  — Code Hub — https://youtu.be/NDoVTJak8Mk

- Usa `await` secuencial cuando un fetch dependa del resultado de otro:
  ```typescript
  const post = await postResponse.json();
  const authorResponse = await fetch(`https://api.example.com/users/${post.userId}`);
  ```
  — Code Hub — https://youtu.be/NDoVTJak8Mk

### Manejo de errores
- Usa `throw error(statusCode, message)` de `@sveltejs/kit` para errores controlados:
  ```typescript
  import { error } from '@sveltejs/kit';
  if (!userId || isNaN(Number(userId))) throw error(400, 'Invalid user ID');
  if (userResponse.status === 404) throw error(404, 'User not found');
  ```
  — Code Hub — https://youtu.be/NDoVTJak8Mk

- Crea `+error.svelte` en el mismo nivel de ruta para páginas de error personalizadas:
  ```svelte
  <script lang="ts">
    import { page } from '$app/stores';
    function retry() { location.reload(); }
    function goHome() { goto('/'); }
  </script>
  <h1>{$page.status === 404 ? 'Page Not Found' : 'Something went wrong'}</h1>
  <p>{$page.error?.message ?? 'An unexpected error occurred'}</p>
  ```
  — Code Hub — https://youtu.be/NDoVTJak8Mk

### Invalidación de datos
- Usa `depends('app:key')` en load functions para crear claves de invalidación personalizadas:
  ```typescript
  export const load: PageLoad = async ({ depends, fetch }) => {
    depends('app:todos');
    // ... fetch data
    return { todos, lastUpdated: new Date().toISOString() };
  };
  ```
  — Code Hub — https://youtu.be/NDoVTJak8Mk

- Usa `invalidate('app:key')` para recargar load functions específicas:
  ```svelte
  import { invalidate, invalidateAll } from '$app/navigation';
  function refreshTodos() { invalidate('app:todos'); }
  ```
  — Code Hub — https://youtu.be/NDoVTJak8Mk

- Usa `invalidateAll()` solo cuando múltiples datos puedan haber cambiado.
  — Code Hub — https://youtu.be/NDoVTJak8Mk

- **Nunca** uses `invalidateAll()` cuando solo necesitas recargar una parte específica de los datos; es ineficiente.
  — Code Hub — https://youtu.be/NDoVTJak8Mk

### Componente de página
- Exporta `data` como prop en el componente Svelte para recibir los datos retornados por `load`:
  ```svelte
  <script lang="ts">
    import type { PageData } from './$types';
    let { data }: { data: PageData } = $props();
  </script>
  <h1>{data.user.name}</h1>
  ```
  — Code Hub — https://youtu.be/NDoVTJak8Mk

### Gotchas
- **Error de tipos en `$types`:** Si `import type { PageLoad } from './$types'` da error, ejecuta la app (`npm run dev`) para que SvelteKit genere los tipos automáticamente.
  — Code Hub — https://youtu.be/NDoVTJak8Mk

- **No validar parámetros de ruta:** Usa `isNaN(Number(userId))` para validar.
  — Code Hub — https://youtu.be/NDoVTJak8Mk

- **No limpiar intervalos:** Usa `onMount` con cleanup `return () => clearInterval(...)` para evitar memory leaks.
  — Code Hub — https://youtu.be/NDoVTJak8Mk

---

## 3) FastAPI (Estructura por capas, Async, Pydantic v2, JWT)

### Estructura de directorios (Clean Architecture)
```
source/
├── main.py
├── api.py
├── logging.py
├── rate_limiting.py
├── exceptions.py
├── entities/
│   ├── todo.py
│   └── user.py
├── database/
│   └── core.py
├── auth/
│   ├── controller.py
│   ├── service.py
│   └── model.py
├── users/
│   ├── controller.py
│   ├── service.py
│   └── model.py
└── todos/
    ├── controller.py
    ├── service.py
    └── model.py
```
— Eric Roby — https://youtu.be/H9Blu0kWdZE

### main.py
```python
from database import engine, Base
from entities import *
from api import app
# Solo descomentar cuando se crean nuevas tablas por primera vez
# Base.metadata.create_all(bind=engine)
```
— Eric Roby — https://youtu.be/H9Blu0kWdZE

### api.py (montar routers)
```python
from fastapi import FastAPI
from auth.controller import router as auth_router
from users.controller import router as users_router
from todos.controller import router as todos_router

app = FastAPI()
app.include_router(auth_router)
app.include_router(users_router)
app.include_router(todos_router)
```
— Eric Roby — https://youtu.be/H9Blu0kWdZE

### database/core.py
```python
from sqlalchemy import create_engine
from sqlalchemy.orm import sessionmaker, declarative_base
from dotenv import load_dotenv
import os

load_dotenv()
DATABASE_URL = os.getenv("DATABASE_URL", "sqlite:///./test.db")
engine = create_engine(DATABASE_URL)
SessionLocal = sessionmaker(autocommit=False, autoflush=False, bind=engine)
Base = declarative_base()

def get_db():
    db = SessionLocal()
    try:
        yield db
    finally:
        db.close()
```
— Eric Roby — https://youtu.be/H9Blu0kWdZE

### Pydantic v2 models
- Usa `from_attributes = True` en la clase `Config` para permitir conversión desde objetos SQLAlchemy:
  ```python
  from pydantic import BaseModel
  from uuid import UUID
  from typing import Optional
  from datetime import datetime

  class TodoResponse(BaseModel):
      id: UUID
      description: str
      is_completed: bool
      completed_at: Optional[datetime] = None
      
      class Config:
          from_attributes = True
  ```
  — Eric Roby — https://youtu.be/H9Blu0kWdZE

### Auth JWT con bcrypt
```python
from jose import JWTError, jwt
from passlib.context import CryptContext
from datetime import datetime, timedelta
from fastapi import Depends, HTTPException, status
from fastapi.security import OAuth2PasswordBearer

SECRET_KEY = "your-secret-key"  # Mover a .env
ALGORITHM = "HS256"
ACCESS_TOKEN_EXPIRE_MINUTES = 30

pwd_context = CryptContext(schemes=["bcrypt"], deprecated="auto")
oauth2_scheme = OAuth2PasswordBearer(tokenUrl="auth/token")

def verify_password(plain_password: str, hashed_password: str) -> bool:
    return pwd_context.verify(plain_password, hashed_password)

def get_password_hash(password: str) -> str:
    return pwd_context.hash(password)

def create_access_token(data: dict, expires_delta: timedelta = None):
    to_encode = data.copy()
    expire = datetime.utcnow() + (expires_delta or timedelta(minutes=15))
    to_encode.update({"exp": expire})
    return jwt.encode(to_encode, SECRET_KEY, algorithm=ALGORITHM)

def get_current_user(token: str = Depends(oauth2_scheme), db: Session = Depends(get_db)):
    token_data = verify_token(token)
    user = db.query(User).filter(User.id == token_data.user_id).first()
    if user is None:
        raise HTTPException(status_code=401, detail="User not found")
    return user
```
— Eric Roby — https://youtu.be/H9Blu0kWdZE

### Controladores con APIRouter
```python
from fastapi import APIRouter, Depends
from sqlalchemy.orm import Session
from database.core import get_db
from auth import service, models
from rate_limiting import limiter
from fastapi import Request

router = APIRouter(prefix="/auth", tags=["auth"])

@router.post("/register", response_model=models.Token)
@limiter.limit("5/hour")
def register_user(request: Request, user: models.UserRegister, db: Session = Depends(get_db)):
    return service.register_user(db, user)
```
— Eric Roby — https://youtu.be/H9Blu0kWdZE

### Rate limiting con slowapi
```python
from slowapi import Limiter
from slowapi.util import get_remote_address

limiter = Limiter(key_func=get_remote_address)
```
— Eric Roby — https://youtu.be/H9Blu0kWdZE

### Async en FastAPI
- Usa `async` solo si la librería que llamas es asíncrona. Si no estás seguro, no pongas `async` delante de la función; FastAPI la ejecutará en un thread pool.
  — Evgeny Maksimov — https://youtu.be/KL6CjNxkZDQ

- Para tareas I/O-bound, usa librerías asíncronas nativas y `asyncio.gather`:
  ```python
  import httpx
  import asyncio

  @app.post("/good-requests")
  async def good_requests():
      async with httpx.AsyncClient() as client:
          tasks = [client.get(url) for url in URL_LIST]
          await asyncio.gather(*tasks)
      return "done"
  ```
  — Evgeny Maksimov — https://youtu.be/KL6CjNxkZDQ

- Para tareas CPU-bound, usa `loop.run_in_executor` con `ProcessPoolExecutor`:
  ```python
  import asyncio
  from concurrent.futures import ProcessPoolExecutor

  @app.post("/cpu-process")
  async def cpu_process():
      loop = asyncio.get_event_loop()
      with ProcessPoolExecutor() as executor:
          result = await loop.run_in_executor(executor, cpu_bound_task, data)
      return {"result": result}
  ```
  — Evgeny Maksimov — https://youtu.be/KL6CjNxkZDQ

- Para tareas CPU-bound que no necesitan devolver resultado inmediato, usa `BackgroundTasks`:
  ```python
  from fastapi import BackgroundTasks

  @app.post("/background-calc")
  async def background_calc(background_tasks: BackgroundTasks):
      background_tasks.add_task(heavy_calculation, "file.txt")
      return {"status": "started"}
  ```
  — Evgeny Maksimov — https://youtu.be/KL6CjNxkZDQ

- **Nunca** escribas `async` delante de una función que usa `requests`, `open()` síncrono, `time.sleep()`, o cualquier librería síncrona. Bloquearás el event loop.
  — Evgeny Maksimov — https://youtu.be/KL6CjNxkZDQ

### Gotchas
- **Error de importación `models` vs `model`:** Nombra el archivo `model.py` e impórtalo como `model` (singular), no `models`.
  — Eric Roby — https://youtu.be/H9Blu0kWdZE

- **`Base.metadata.create_all` rompe pruebas:** Solo debe descomentarse temporalmente para crear nuevas tablas.
  — Eric Roby — https://youtu.be/H9Blu0kWdZE

- **Rate limiter requiere `request` aunque no se use:** El parámetro `request: Request` es necesario para que el rate limiter pueda obtener la IP del cliente.
  — Eric Roby — https://youtu.be/H9Blu0kWdZE

- **No olvidar `__init__.py`:** Cada paquete Python necesita un archivo `__init__.py` (aunque esté vacío) para que los módulos sean importables.
  — Eric Roby — https://youtu.be/H9Blu0kWdZE

---

## 4) Supabase + RLS + Postgres

### Habilitar RLS
- Activar RLS en una tabla desde el Dashboard: `Authentication > Policies`. Al activarlo, la tabla queda completamente bloqueada (deniega SELECT, INSERT, UPDATE, DELETE por defecto).
  — Supabase — https://youtu.be/Ow_Uzedfohk

### Políticas SELECT/INSERT/UPDATE/DELETE
- Política básica para dueño del recurso (ALL operations):
  ```sql
  CREATE POLICY "Enable all actions for users based on their user id"
  ON public.post
  FOR ALL
  USING (auth.uid() = user_id)
  WITH CHECK (auth.uid() = user_id);
  ```
  — Supabase — https://youtu.be/Ow_Uzedfohk

- Política SELECT para posts publicados:
  ```sql
  -- Nombre: "Enable user to select a published post"
  -- USING expression:
  (is_published = true)
  ```
  — Supabase — https://youtu.be/Ow_Uzedfohk

- Política SELECT con subconsulta a otra tabla (comentarios visibles solo si el post padre es visible):
  ```sql
  -- Tabla: comment, Operación: SELECT
  -- USING expression:
  EXISTS (
    SELECT 1
    FROM post
    WHERE post.id = comment.post_id
  )
  ```
  — Supabase — https://youtu.be/Ow_Uzedfohk

- Política INSERT con subconsulta + restricción de dueño:
  ```sql
  -- Tabla: comment, Operación: INSERT
  -- USING expression:
  (EXISTS (
    SELECT 1
    FROM post
    WHERE post.id = comment.post_id
  ) AND auth.uid() = comment.user_id)
  ```
  — Supabase — https://youtu.be/Ow_Uzedfohk

- Política DELETE para moderación (dueño del post elimina comentarios):
  ```sql
  -- Tabla: comment, Operación: DELETE
  -- USING expression:
  auth.uid() IN (
    SELECT user_id
    FROM post
    WHERE post.id = comment.post_id
  )
  ```
  — Supabase — https://youtu.be/Ow_Uzedfohk

### Sincronización auth.users con tabla pública
- Función trigger con security definer:
  ```sql
  CREATE OR REPLACE FUNCTION handle_public_user()
  RETURNS trigger
  LANGUAGE plpgsql
  SECURITY DEFINER
  AS $$
  BEGIN
    INSERT INTO public.users (supabase_id, email)
    VALUES (
      NEW.id,
      NEW.raw_user_meta_data ->> 'email'
    )
    ON CONFLICT (email) DO UPDATE
    SET supabase_id = NEW.id;
    RETURN NEW;
  END;
  $$;
  ```
  — Supabase — https://youtu.be/PdEutzhsrws

- Trigger en auth.users:
  ```sql
  CREATE TRIGGER on_auth_user_created
  AFTER INSERT ON auth.users
  FOR EACH ROW
  EXECUTE FUNCTION handle_public_user();
  ```
  — Supabase — https://youtu.be/PdEutzhsrws

### Vistas con RLS
- Usa `security_invoker = true` en vistas para que respeten RLS de las tablas subyacentes:
  ```sql
  CREATE OR REPLACE VIEW emails_with_folder_and_users
  WITH (security_invoker = true) AS
  -- ... definición original de la vista ...
  ```
  — Supabase — https://youtu.be/PdEutzhsrws

### Políticas con subconsultas anidadas
- Política DELETE en tabla relacionada validando sender via subconsulta anidada:
  ```sql
  -- Tabla: email_folders, Operación: DELETE
  -- USING expression:
  auth.uid() IN (
    SELECT supabase_id FROM public.users
    WHERE id IN (
      SELECT sender_id FROM emails
      WHERE emails.id = email_id
    )
  )
  ```
  — Supabase — https://youtu.be/PdEutzhsrws

### Reglas clave
- **Usa `auth.uid()`** para identificar al usuario autenticado. Es una función especial de Supabase que devuelve el ID del usuario actual.
  — Supabase — https://youtu.be/Ow_Uzedfohk

- **Usa `EXISTS (SELECT 1 FROM ...)`** para subconsultas de autorización. `SELECT 1` es más eficiente que `SELECT *`.
  — Supabase — https://youtu.be/Ow_Uzedfohk

- **Nunca re-implementes políticas de una tabla en otra.** En lugar de duplicar la lógica de visibilidad de posts en la tabla de comentarios, haz una subconsulta a la tabla `post`.
  — Supabase — https://youtu.be/Ow_Uzedfohk

- **Siempre agrega `WITH CHECK` en políticas de INSERT y UPDATE.** La condición en `USING` controla qué filas existentes se pueden modificar; `WITH CHECK` controla qué nuevas filas se pueden crear.
  — Supabase — https://youtu.be/Ow_Uzedfohk

- **Usa `security definer`** en funciones trigger del sistema (como handle_public_user) para que ejecuten con privilegios de Postgres, no del usuario.
  — Supabase — https://youtu.be/PdEutzhsrws

### Gotchas
- **Las vistas por defecto bypassan RLS;** hay que agregar explícitamente `WITH (security_invoker = true)`.
  — Supabase — https://youtu.be/PdEutzhsrws

- **Olvidar que RLS bloquea todo por defecto:** Al habilitar RLS en una tabla, inmediatamente se deniegan todas las operaciones hasta que se creen políticas explícitas.
  — Supabase — https://youtu.be/Ow_Uzedfohk

- **No proteger el `user_id` en INSERT:** Si solo verificas que el post es visible, un usuario podría insertar un comentario con `user_id` de otro usuario. La solución es agregar `AND auth.uid() = comment.user_id`.
  — Supabase — https://youtu.be/Ow_Uzedfohk

- **Confundir `USING` con `WITH CHECK`:** `USING` se aplica a filas existentes (SELECT, UPDATE, DELETE), `WITH CHECK` se aplica a nuevas filas (INSERT, UPDATE).
  — Supabase — https://youtu.be/Ow_Uzedfohk

---

## 5) Testing

### FastAPI: Pruebas unitarias con conftest.py
- Usa SQLite para pruebas y override de dependencias:
  ```python
  # tests/conftest.py
  import pytest
  from sqlalchemy import create_engine
  from sqlalchemy.orm import sessionmaker
  from database.core import Base, get_db
  from fastapi.testclient import TestClient
  from api import app

  SQLALCHEMY_DATABASE_URL = "sqlite:///./test.db"
  engine = create_engine(SQLALCHEMY_DATABASE_URL, connect_args={"check_same_thread": False})
  TestingSessionLocal = sessionmaker(autocommit=False, autoflush=False, bind=engine)
  Base.metadata.create_all(bind=engine)

  def override_get_db():
      try:
          db = TestingSessionLocal()
          yield db
      finally:
          db.close()

  app.dependency_overrides[get_db] = override_get_db

  @pytest.fixture
  def client():
      return TestClient(app)

  @pytest.fixture
  def db_session():
      db = TestingSessionLocal()
      yield db
      db.close()
  ```
  — Eric Roby — https://youtu.be/H9Blu0kWdZE

### FastAPI: Pruebas de servicios
```python
# tests/test_auth_service.py
def test_verify_password():
    hashed = "$2b$12$..."  # Hash de bcrypt
    assert verify_password("testpassword", hashed) == True

def test_create_access_token():
    token = create_access_token(data={"sub": "test-user-id"})
    assert token is not None
```
— Eric Roby — https://youtu.be/H9Blu0kWdZE

### FastAPI: Pruebas E2E con TestClient
```python
# tests/e2e/test_auth_endpoints.py
def test_register_user(client):
    response = client.post("/auth/register", json={
        "email": "test@example.com",
        "first_name": "Test",
        "last_name": "User",
        "password": "password123"
    })
    assert response.status_code == 200
    assert "access_token" in response.json()

def test_login(client):
    response = client.post("/auth/token", data={
        "username": "test@example.com",
        "password": "password123"
    })
    assert response.status_code == 200
    assert "access_token" in response.json()
```
— Eric Roby — https://youtu.be/H9Blu0kWdZE

### FastAPI: Pruebas de endpoints protegidos
```python
# tests/e2e/test_todos_endpoints.py
def test_create_todo(client):
    login_response = client.post("/auth/token", data={
        "username": "test@example.com",
        "password": "password123"
    })
    token = login_response.json()["access_token"]
    
    response = client.post("/todos/", json={
        "description": "Test todo",
        "priority": 1
    }, headers={"Authorization": f"Bearer {token}"})
    assert response.status_code == 200
    assert "id" in response.json()
```
— Eric Roby — https://youtu.be/H9Blu0kWdZE

### Comandos
```bash
# Ejecutar pruebas
pytest
```
— Eric Roby — https://youtu.be/H9Blu0kWdZE

---

## 6) Deploy y Producción

### Vercel
- **No toques `svelte.config.js` ni crees `vercel.json`.** SvelteKit 5 detecta Vercel como adaptador automáticamente.
  — Johnny Magrippis — https://youtu.be/C0QYbIxQns4

- **Cada push a `main` = deploy automático de producción.**
  — Johnny Magrippis — https://youtu.be/C0QYbIxQns4

- **Cada Pull Request genera un preview environment automático** con su propia URL.
  — Johnny Magrippis — https://youtu.be/C0QYbIxQns4

- **Configura las environment variables en Vercel antes del primer deploy** si tu app las necesita.
  — Johnny Magrippis — https://youtu.be/C0QYbIxQns4

- **Para rollback:** usa el botón "Roll back" en el dashboard de Vercel (no requiere rebuild).
  — Vercel — https://youtu.be/QYZ1s_x5nUM

### DigitalOcean App Platform
- Usa el adaptador Node (`sveltekit-adapter`) cuando despliegues en DigitalOcean App Platform.
  — Elans X — https://youtu.be/9FrC0kTTw64

- Agrega comando `start` en `package.json`:
  ```json
  "scripts": {
    "start": "node build/index.js"
  }
  ```
  — Elans X — https://youtu.be/9FrC0kTTw64

- Configura el puerto `3000` en la sección `Network` de DigitalOcean.
  — Elans X — https://youtu.be/9FrC0kTTw64

- Activa `Auto Deploy` para que cada push a main despliegue automáticamente.
  — Elans X — https://youtu.be/9FrC0kTTw64

### Docker + FastAPI
```dockerfile
# Dockerfile
FROM python:3.11
WORKDIR /app
COPY requirements.txt .
RUN pip install --no-cache-dir -r requirements.txt
COPY source/ ./source/
EXPOSE 8000
CMD ["uvicorn", "source.main:app", "--host", "0.0.0.0", "--port", "8000"]
```
— Eric Roby — https://youtu.be/H9Blu0kWdZE

```yaml
# docker-compose.yml
version: '3.8'
services:
  postgres:
    image: postgres:latest
    environment:
      POSTGRES_USER: user
      POSTGRES_PASSWORD: password
      POSTGRES_DB: clean_fastapi
    ports:
      - "5432:5432"
    volumes:
      - postgres_data:/var/lib/postgresql/data
  app:
    build: .
    ports:
      - "8000:8000"
    environment:
      DATABASE_URL: postgresql://user:password@postgres:5432/clean_fastapi
    depends_on:
      - postgres
volumes:
  postgres_data:
```
— Eric Roby — https://