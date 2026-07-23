# You're Probably Building FASTAPI Apps WRONG (Clean Architecture)
**Fuente:** Eric Roby | https://youtu.be/H9Blu0kWdZE

## Qué enseña (2-3 líneas)
Construir una aplicación FastAPI profesional siguiendo Clean Architecture con capas de dominio (entidades), aplicación (lógica de negocio) e infraestructura (base de datos, rate limiting). Incluye configuración de logging, rate limiting con slowapi, autenticación JWT con bcrypt, pruebas unitarias y end-to-end, y despliegue con Docker y PostgreSQL.

## Técnicas y patrones accionables

### Estructura de directorios
```
clean-architecture/
├── source/
│   ├── main.py
│   ├── api.py
│   ├── logging.py
│   ├── rate_limiting.py
│   ├── exceptions.py
│   ├── __init__.py
│   ├── entities/
│   │   ├── __init__.py
│   │   ├── todo.py
│   │   └── user.py
│   ├── database/
│   │   ├── __init__.py
│   │   └── core.py
│   ├── auth/
│   │   ├── __init__.py
│   │   ├── controller.py
│   │   ├── service.py
│   │   └── model.py
│   ├── users/
│   │   ├── __init__.py
│   │   ├── controller.py
│   │   ├── service.py
│   │   └── model.py
│   └── todos/
│       ├── __init__.py
│       ├── controller.py
│       ├── service.py
│       └── model.py
├── tests/
│   ├── __init__.py
│   ├── conftest.py
│   ├── test_auth_service.py
│   ├── test_users_service.py
│   ├── test_todos_service.py
│   └── e2e/
│       ├── test_auth_endpoints.py
│       ├── test_users_endpoints.py
│       └── test_todos_endpoints.py
├── requirements.txt
├── requirements-dev.txt
├── Dockerfile
├── docker-compose.yml
└── .env
```

### main.py
```python
from database import engine, Base
from entities import *
from api import app

# Solo descomentar cuando se crean nuevas tablas por primera vez
# Base.metadata.create_all(bind=engine)
```

### logging.py
```python
import logging
from enum import Enum

class LogFormat(Enum):
    DEBUG = "DEBUG"
    INFO = "INFO"
    WARNING = "WARNING"
    ERROR = "ERROR"

def configure_logging(level: LogFormat):
    # Configuración básica de logging
    logging.basicConfig(level=level.value)
```

### rate_limiting.py
```python
from slowapi import Limiter
from slowapi.util import get_remote_address

limiter = Limiter(key_func=get_remote_address)
```

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

db_session = get_db  # Dependency injection
```

### entities/todo.py
```python
from sqlalchemy import Column, String, Boolean, DateTime, Integer, ForeignKey
from sqlalchemy.dialects.postgresql import UUID
from database.core import Base
import uuid
from datetime import datetime

class Priority(Enum):
    LOW = 0
    MEDIUM = 1
    HIGH = 2
    CRITICAL = 3
    URGENT = 4

class Todo(Base):
    __tablename__ = "todos"
    
    id = Column(UUID(as_uuid=True), primary_key=True, default=uuid.uuid4)
    user_id = Column(UUID(as_uuid=True), ForeignKey("users.id"), nullable=False)
    description = Column(String, nullable=False)
    due_date = Column(DateTime, nullable=True)
    is_completed = Column(Boolean, default=False)
    created_at = Column(DateTime, default=datetime.utcnow)
    completed_at = Column(DateTime, nullable=True)
    priority = Column(Integer, default=Priority.MEDIUM.value)
    
    def __str__(self):
        return f"Todo(id={self.id}, description={self.description})"
```

### entities/user.py
```python
from sqlalchemy import Column, String
from sqlalchemy.dialects.postgresql import UUID
from database.core import Base
import uuid

class User(Base):
    __tablename__ = "users"
    
    id = Column(UUID(as_uuid=True), primary_key=True, default=uuid.uuid4)
    email = Column(String, unique=True, nullable=False)
    first_name = Column(String, nullable=False)
    last_name = Column(String, nullable=False)
    password = Column(String, nullable=False)
```

### auth/model.py
```python
from pydantic import BaseModel
from uuid import UUID

class UserRegister(BaseModel):
    email: str
    first_name: str
    last_name: str
    password: str

class Token(BaseModel):
    access_token: str
    token_type: str = "bearer"

class TokenData(BaseModel):
    user_id: UUID
```

### auth/service.py
```python
from jose import JWTError, jwt
from passlib.context import CryptContext
from datetime import datetime, timedelta
from fastapi import Depends, HTTPException, status
from fastapi.security import OAuth2PasswordBearer
from sqlalchemy.orm import Session
from database.core import get_db
from entities.user import User
from auth import models
import logging

SECRET_KEY = "your-secret-key"  # Mover a .env
ALGORITHM = "HS256"
ACCESS_TOKEN_EXPIRE_MINUTES = 30

pwd_context = CryptContext(schemes=["bcrypt"], deprecated="auto")
oauth2_scheme = OAuth2PasswordBearer(tokenUrl="auth/token")

def verify_password(plain_password: str, hashed_password: str) -> bool:
    return pwd_context.verify(plain_password, hashed_password)

def get_password_hash(password: str) -> str:
    return pwd_context.hash(password)

def authenticate_user(db: Session, email: str, password: str):
    user = db.query(User).filter(User.email == email).first()
    if not user or not verify_password(password, user.password):
        logging.warning(f"Failed authentication attempt for {email}")
        return False
    return user

def create_access_token(data: dict, expires_delta: timedelta = None):
    to_encode = data.copy()
    expire = datetime.utcnow() + (expires_delta or timedelta(minutes=15))
    to_encode.update({"exp": expire})
    return jwt.encode(to_encode, SECRET_KEY, algorithm=ALGORITHM)

def verify_token(token: str) -> models.TokenData:
    try:
        payload = jwt.decode(token, SECRET_KEY, algorithms=[ALGORITHM])
        user_id: str = payload.get("sub")
        if user_id is None:
            raise HTTPException(status_code=401, detail="Invalid token")
        return models.TokenData(user_id=user_id)
    except JWTError:
        logging.warning("Token verification failed")
        raise HTTPException(status_code=401, detail="Token verification failed")

def get_current_user(token: str = Depends(oauth2_scheme), db: Session = Depends(get_db)):
    token_data = verify_token(token)
    user = db.query(User).filter(User.id == token_data.user_id).first()
    if user is None:
        raise HTTPException(status_code=401, detail="User not found")
    return user

def register_user(db: Session, request: models.UserRegister):
    hashed_password = get_password_hash(request.password)
    new_user = User(
        email=request.email,
        first_name=request.first_name,
        last_name=request.last_name,
        password=hashed_password
    )
    db.add(new_user)
    db.commit()
    db.refresh(new_user)
    logging.info(f"Registered user: {new_user.email}")
    return new_user

def login_for_access_token(db: Session, username: str, password: str):
    user = authenticate_user(db, username, password)
    if not user:
        raise HTTPException(status_code=401, detail="Incorrect email or password")
    access_token = create_access_token(data={"sub": str(user.id)})
    return models.Token(access_token=access_token, token_type="bearer")
```

### auth/controller.py
```python
from fastapi import APIRouter, Depends
from sqlalchemy.orm import Session
from database.core import get_db
from auth import service, models
from rate_limiting import limiter
from fastapi import Request

router = APIRouter(prefix="/auth", tags=["auth"])

@router.post("/register", response_model=models.Token)
@limiter.limit("5/hour")  # 5 registros por hora por IP
def register_user(request: Request, user: models.UserRegister, db: Session = Depends(get_db)):
    return service.register_user(db, user)

@router.post("/token", response_model=models.Token)
def login(request: Request, form_data: OAuth2PasswordRequestForm = Depends(), db: Session = Depends(get_db)):
    return service.login_for_access_token(db, form_data.username, form_data.password)
```

### users/model.py
```python
from pydantic import BaseModel
from uuid import UUID

class UserResponse(BaseModel):
    id: UUID
    email: str
    first_name: str
    last_name: str

class PasswordChange(BaseModel):
    current_password: str
    new_password: str
    new_password_confirm: str
```

### users/service.py
```python
from sqlalchemy.orm import Session
from entities.user import User
from users import models
from auth.service import get_password_hash, verify_password
import logging

def get_user_by_id(db: Session, user_id: str):
    user = db.query(User).filter(User.id == user_id).first()
    if not user:
        raise HTTPException(status_code=404, detail="User not found")
    return models.UserResponse(
        id=user.id,
        email=user.email,
        first_name=user.first_name,
        last_name=user.last_name
    )

def change_password(db: Session, user_id: str, password_change: models.PasswordChange):
    user = db.query(User).filter(User.id == user_id).first()
    if not verify_password(password_change.current_password, user.password):
        raise HTTPException(status_code=400, detail="Current password is incorrect")
    if password_change.new_password != password_change.new_password_confirm:
        raise HTTPException(status_code=400, detail="New passwords do not match")
    user.password = get_password_hash(password_change.new_password)
    db.commit()
    logging.info(f"Password changed for user {user_id}")
```

### users/controller.py
```python
from fastapi import APIRouter, Depends
from sqlalchemy.orm import Session
from database.core import get_db
from users import service, models
from auth.service import get_current_user
from entities.user import User

router = APIRouter(prefix="/users", tags=["users"])

@router.get("/me", response_model=models.UserResponse)
def get_current_user(current_user: User = Depends(get_current_user)):
    return service.get_user_by_id(db, current_user.id)

@router.put("/password")
def change_password(password_change: models.PasswordChange, current_user: User = Depends(get_current_user), db: Session = Depends(get_db)):
    return service.change_password(db, current_user.id, password_change)
```

### todos/model.py
```python
from pydantic import BaseModel
from uuid import UUID
from datetime import datetime
from typing import Optional

class TodoBase(BaseModel):
    description: str
    due_date: Optional[datetime] = None
    priority: int = 1

class TodoCreate(TodoBase):
    pass

class TodoResponse(TodoBase):
    id: UUID
    is_completed: bool
    completed_at: Optional[datetime] = None
    
    class Config:
        from_attributes = True
```

### todos/service.py
```python
from sqlalchemy.orm import Session
from entities.todo import Todo
from todos import models
from auth.models import TokenData
import logging

def create_todo(db: Session, current_user: TokenData, todo: models.TodoCreate):
    new_todo = Todo(
        user_id=current_user.user_id,
        description=todo.description,
        due_date=todo.due_date,
        priority=todo.priority
    )
    db.add(new_todo)
    db.commit()
    db.refresh(new_todo)
    logging.info(f"Created todo {new_todo.id} for user {current_user.user_id}")
    return new_todo

def get_todos(db: Session, current_user: TokenData):
    return db.query(Todo).filter(Todo.user_id == current_user.user_id).all()

def get_todo_by_id(db: Session, todo_id: str, current_user: TokenData):
    todo = db.query(Todo).filter(Todo.id == todo_id, Todo.user_id == current_user.user_id).first()
    if not todo:
        raise HTTPException(status_code=404, detail="Todo not found")
    return todo

def update_todo(db: Session, todo_id: str, todo_update: models.TodoCreate, current_user: TokenData):
    todo = get_todo_by_id(db, todo_id, current_user)
    todo.description = todo_update.description
    todo.due_date = todo_update.due_date
    todo.priority = todo_update.priority
    db.commit()
    db.refresh(todo)
    return todo

def complete_todo(db: Session, todo_id: str, current_user: TokenData):
    todo = get_todo_by_id(db, todo_id, current_user)
    todo.is_completed = not todo.is_completed
    todo.completed_at = datetime.utcnow() if todo.is_completed else None
    db.commit()
    db.refresh(todo)
    return todo

def delete_todo(db: Session, todo_id: str, current_user: TokenData):
    todo = get_todo_by_id(db, todo_id, current_user)
    db.delete(todo)
    db.commit()
    logging.info(f"Deleted todo {todo_id}")
```

### todos/controller.py
```python
from fastapi import APIRouter, Depends
from sqlalchemy.orm import Session
from database.core import get_db
from todos import service, models
from auth.service import get_current_user
from auth.models import TokenData

router = APIRouter(prefix="/todos", tags=["todos"])

@router.post("/", response_model=models.TodoResponse)
def create_todo(todo: models.TodoCreate, current_user: TokenData = Depends(get_current_user), db: Session = Depends(get_db)):
    return service.create_todo(db, current_user, todo)

@router.get("/", response_model=list[models.TodoResponse])
def get_todos(current_user: TokenData = Depends(get_current_user), db: Session = Depends(get_db)):
    return service.get_todos(db, current_user)

@router.get("/{todo_id}", response_model=models.TodoResponse)
def get_todo(todo_id: str, current_user: TokenData = Depends(get_current_user), db: Session = Depends(get_db)):
    return service.get_todo_by_id(db, todo_id, current_user)

@router.put("/{todo_id}", response_model=models.TodoResponse)
def update_todo(todo_id: str, todo: models.TodoCreate, current_user: TokenData = Depends(get_current_user), db: Session = Depends(get_db)):
    return service.update_todo(db, todo_id, todo, current_user)

@router.patch("/{todo_id}/complete", response_model=models.TodoResponse)
def complete_todo(todo_id: str, current_user: TokenData = Depends(get_current_user), db: Session = Depends(get_db)):
    return service.complete_todo(db, todo_id, current_user)

@router.delete("/{todo_id}")
def delete_todo(todo_id: str, current_user: TokenData = Depends(get_current_user), db: Session = Depends(get_db)):
    return service.delete_todo(db, todo_id, current_user)
```

### exceptions.py
```python
class TodoError(Exception):
    pass

class TodoNotFound(TodoError):
    pass

class TodoCreationError(TodoError):
    pass

class UserBaseError(Exception):
    pass
```

### api.py
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

### tests/conftest.py
```python
import pytest
from sqlalchemy import create_engine
from sqlalchemy.orm import sessionmaker
from database.core import Base, get_db
from fastapi.testclient import TestClient
from api import app

# Base de datos SQLite para pruebas
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

### tests/test_auth_service.py
```python
import pytest
from auth.service import verify_password, authenticate_user, create_access_token, verify_token

def test_verify_password():
    hashed = "$2b$12$..."  # Hash de bcrypt
    assert verify_password("testpassword", hashed) == True

def test_authenticate_user(db_session):
    user = authenticate_user(db_session, "test@example.com", "password123")
    assert user is not False

def test_create_access_token():
    token = create_access_token(data={"sub": "test-user-id"})
    assert token is not None

def test_verify_token():
    token = create_access_token(data={"sub": "test-user-id"})
    token_data = verify_token(token)
    assert token_data.user_id == "test-user-id"
```

### tests/test_users_service.py
```python
import pytest
from users.service import get_user_by_id, change_password

def test_get_user_by_id(db_session):
    user = get_user_by_id(db_session, "some-uuid")
    assert user is not None

def test_change_password_success(db_session):
    result = change_password(db_session, "user-id", {
        "current_password": "oldpass",
        "new_password": "newpass",
        "new_password_confirm": "newpass"
    })
    assert result is None  # No error

def test_change_password_mismatch(db_session):
    with pytest.raises(Exception):
        change_password(db_session, "user-id", {
            "current_password": "oldpass",
            "new_password": "newpass1",
            "new_password_confirm": "newpass2"
        })
```

### tests/test_todos_service.py
```python
import pytest
from todos.service import create_todo, get_todos, get_todo_by_id, complete_todo, delete_todo

def test_create_todo(db_session):
    todo = create_todo(db_session, {"user_id": "user-id"}, {"description": "Test todo"})
    assert todo.description == "Test todo"

def test_get_todos(db_session):
    todos = get_todos(db_session, {"user_id": "user-id"})
    assert len(todos) >= 0

def test_complete_todo(db_session):
    todo = complete_todo(db_session, "todo-id", {"user_id": "user-id"})
    assert todo.is_completed == True

def test_delete_todo(db_session):
    delete_todo(db_session, "todo-id", {"user_id": "user-id"})
    # Verificar que ya no existe
```

### tests/e2e/test_auth_endpoints.py
```python
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

### tests/e2e/test_users_endpoints.py
```python
def test_get_current_user(client):
    # Primero obtener token
    login_response = client.post("/auth/token", data={
        "username": "test@example.com",
        "password": "password123"
    })
    token = login_response.json()["access_token"]
    
    response = client.get("/users/me", headers={"Authorization": f"Bearer {token}"})
    assert response.status_code == 200
    assert "email" in response.json()

def test_change_password(client):
    login_response = client.post("/auth/token", data={
        "username": "test@example.com",
        "password": "password123"
    })
    token = login_response.json()["access_token"]
    
    response = client.put("/users/password", json={
        "current_password": "password123",
        "new_password": "newpassword123",
        "new_password_confirm": "newpassword123"
    }, headers={"Authorization": f"Bearer {token}"})
    assert response.status_code == 200
```

### tests/e2e/test_todos_endpoints.py
```python
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

def test_get_todos(client):
    login_response = client.post("/auth/token", data={
        "username": "test@example.com",
        "password": "password123"
    })
    token = login_response.json()["access_token"]
    
    response = client.get("/todos/", headers={"Authorization": f"Bearer {token}"})
    assert response.status_code == 200
    assert isinstance(response.json(), list)
```

### Dockerfile
```dockerfile
FROM python:3.11

WORKDIR /app

COPY requirements.txt .
RUN pip install --no-cache-dir -r requirements.txt

COPY source/ ./source/

EXPOSE 8000

CMD ["uvicorn", "source.main:app", "--host", "0.0.0.0", "--port", "8000"]
```

### docker-compose.yml
```yaml
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

### .env
```
DATABASE_URL=postgresql://user:password@localhost:5432/clean_fastapi
SECRET_KEY=your-super-secret-key-change-in-production
```

### Comandos
```bash
# Instalar dependencias de desarrollo
pip install -r requirements-dev.txt

# Ejecutar aplicación
uvicorn source.main:app --reload

# Ejecutar pruebas
pytest

# Desplegar con Docker
docker compose up --build

# Detener Docker
docker compose down
```

## Reglas para el erudito (imperativas y verificables)

- **Usa `@limiter.limit("5/hour")`** en endpoints sensibles como registro para prevenir ataques de spam/DDoS
- **Nunca descomentes `Base.metadata.create_all(bind=engine)`** en producción o en pruebas; solo úsalo para crear tablas nuevas por primera vez
- **Usa `from_attributes = True`** en la clase `Config` de Pydantic para permitir conversión desde objetos SQLAlchemy
- **Usa `Depends(get_current_user)`** en todos los endpoints protegidos para validar autenticación JWT
- **Usa `Depends(get_db)`** en todos los servicios para inyección de dependencias de sesión de base de datos
- **Usa `logging.warning()`** en fallos de autenticación para auditoría sin exponer datos sensibles
- **Usa `logging.info()`** en operaciones exitosas como registro de usuarios o creación de todos
- **Usa `uuid.uuid4`** como default para IDs en lugar de autoincrement para evitar enumeración de recursos
- **Usa `bcrypt`** con `passlib` para hashing de contraseñas, nunca almacenes contraseñas en texto plano
- **Usa `HS256`** como algoritmo JWT con expiración de 30 minutos (`ACCESS_TOKEN_EXPIRE_MINUTES = 30`)
- **Usa `pytest`** para ejecutar todas las pruebas unitarias y end-to-end
- **Usa `TestClient` de FastAPI** para pruebas end-to-end simulando peticiones HTTP reales
- **Usa SQLite en memoria** para pruebas unitarias para evitar dependencias externas
- **Usa `docker compose up --build`** para desplegar aplicación y PostgreSQL juntos
- **Usa variables de entorno** con `.env` para secretos como `DATABASE_URL` y `SECRET_KEY`
- **Usa `get_remote_address`** de slowapi para rate limiting basado en IP

## Errores comunes / gotchas que menciona

- **Error de importación `models` vs `model`**: El presentador cometió el error de nombrar el archivo `model.py` pero importarlo como `models` en múltiples lugares (auth, users, todos). La corrección fue cambiar todas las importaciones a `model` (singular).
- **`Base.metadata.create_all` rompe pruebas**: Si se deja descomentado en `main.py`, interfiere con las pruebas unitarias que usan su propia base de datos de prueba. Solo debe descomentarse temporalmente para crear nuevas tablas.
- **Rate limiter requiere `request` aunque no se use**: El parámetro `request: Request` en el controlador es necesario para que el rate limiter pueda obtener la IP del cliente, aunque no se use explícitamente en la función.
- **Deprecation warnings en pytest**: El presentador menciona que las advertencias de deprecación en pytest pueden ignorarse porque "a menudo duran más allá de la versión o nunca se corrigen".
- **No olvidar `__init__.py`**: Cada paquete Python necesita un archivo `__init__.py` (aunque esté vacío) para que los módulos sean importables correctamente.
- **JWT token expira en 30 minutos**: Si no se configura correctamente, los tokens expiran y los usuarios obtienen errores 401 no autenticados.
- **La URL de base de datos debe coincidir**: En `docker-compose.yml` la URL debe usar el nombre del servicio (`postgres`) como host, no `localhost`.