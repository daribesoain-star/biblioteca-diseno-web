# FastAPI SQLAlchemy Tutorial 2025 — Build a REST API with SQL
**Fuente:** Code with Josh | https://youtu.be/xq1Snezb1rs

## Qué enseña (2-3 líneas)
Integración de SQL en FastAPI usando SQLAlchemy como ORM para construir una API REST con operaciones CRUD completas. Cubre desde la configuración de la base de datos SQLite, creación de modelos de base de datos y modelos Pydantic, hasta la implementación y prueba de endpoints GET, POST, PUT y DELETE.

## Técnicas y patrones accionables

### Instalación de dependencias
```bash
pip install fastapi
pip install sqlalchemy
pip install uvicorn
```

### Configuración de base de datos SQLite con SQLAlchemy
```python
# my_api.py
from fastapi import FastAPI, HTTPException, Depends
from sqlalchemy import create_engine, Column, Integer, String
from sqlalchemy.ext.declarative import declarative_base
from sqlalchemy.orm import sessionmaker, Session
from pydantic import BaseModel
from typing import Optional, List

app = FastAPI(title="Integration with SQL", description="Code with Josh")

# Database setup
engine = create_engine("sqlite:///users.db", connect_args={"check_same_thread": False})
SessionLocal = sessionmaker(autocommit=False, autoflush=False, bind=engine)
Base = declarative_base()
```

### Modelo de base de datos SQLAlchemy
```python
class User(Base):
    __tablename__ = "users"
    
    id = Column(Integer, primary_key=True, index=True)
    name = Column(String(100), nullable=False)
    email = Column(String, unique=True, nullable=False)
    role = Column(String, nullable=True)
```

### Modelos Pydantic para la API
```python
class UserCreate(BaseModel):
    name: str
    email: str
    role: str

class UserResponse(BaseModel):
    id: int
    name: str
    email: str
    role: str
    
    class Config:
        from_attributes = True
```

### Dependencia para obtener sesión de base de datos
```python
def get_db():
    db = SessionLocal()
    try:
        yield db
    finally:
        db.close()
```

### Endpoint GET (obtener usuario por ID)
```python
@app.get("/users/{user_id}", response_model=UserResponse)
def get_user(user_id: int, db: Session = Depends(get_db)):
    db_user = db.query(User).filter(User.id == user_id).first()
    if not db_user:
        raise HTTPException(status_code=404, detail="User not found")
    return db_user
```

### Endpoint POST (crear usuario)
```python
@app.post("/users/", response_model=UserResponse)
def create_user(user: UserCreate, db: Session = Depends(get_db)):
    db_user = db.query(User).filter(User.email == user.email).first()
    if db_user:
        raise HTTPException(status_code=400, detail="User already exists")
    
    new_user = User(**user.dict())
    db.add(new_user)
    db.commit()
    db.refresh(new_user)
    return new_user
```

### Endpoint PUT (actualizar usuario)
```python
@app.put("/users/{user_id}", response_model=UserResponse)
def update_user(user_id: int, user: UserCreate, db: Session = Depends(get_db)):
    db_user = db.query(User).filter(User.id == user_id).first()
    if not db_user:
        raise HTTPException(status_code=404, detail="User does not exist")
    
    for field, value in user.dict().items():
        setattr(db_user, field, value)
    
    db.commit()
    db.refresh(db_user)
    return db_user
```

### Endpoint DELETE (eliminar usuario)
```python
@app.delete("/users/{user_id}", response_model=UserResponse)
def delete_user(user_id: int, db: Session = Depends(get_db)):
    db_user = db.query(User).filter(User.id == user_id).first()
    if not db_user:
        raise HTTPException(status_code=404, detail="User not found")
    
    db.delete(db_user)
    db.commit()
    return {"message": "User deleted"}
```

### Endpoint GET ALL (obtener todos los usuarios)
```python
@app.get("/users/", response_model=List[UserResponse])
def get_all_users(db: Session = Depends(get_db)):
    return db.query(User).all()
```

### Comando para ejecutar el servidor
```bash
uvicorn my_api:app --reload
```

### Inicialización de la base de datos (crear tablas)
```python
Base.metadata.create_all(bind=engine)
```

## Reglas para el erudito (imperativas y verificables)

- **Usa `connect_args={"check_same_thread": False}`** cuando uses SQLite con FastAPI para evitar errores de concurrencia de hilos.
- **Usa `autocommit=False` y `autoflush=False`** en `sessionmaker` para tener control explícito sobre cuándo se persisten los datos.
- **Usa `from_attributes = True`** en la clase `Config` de los modelos Pydantic de respuesta para permitir la conversión automática desde objetos SQLAlchemy.
- **Usa `Depends(get_db)`** en cada endpoint que necesite acceso a la base de datos para inyectar la sesión correctamente.
- **Usa `db.commit()` después de cada operación de escritura** (add, update, delete) para persistir los cambios en la base de datos.
- **Usa `db.refresh()` después de commit** para obtener el objeto actualizado con valores generados por la base de datos (como IDs autoincrementales).
- **Usa `db.query(Model).filter().first()`** para obtener un único registro y verificar existencia antes de operar.
- **Usa `HTTPException(status_code=404)`** cuando un recurso no existe, con mensaje descriptivo en `detail`.
- **Usa `response_model`** en los decoradores de endpoints para documentar y validar la estructura de respuesta.
- **Usa `--reload`** en uvicorn durante desarrollo para recarga automática al modificar código.
- **Nunca retornes un objeto eliminado** después de `db.delete()` y `db.commit()` porque la sesión ya no lo reconoce como persistente.

## Errores comunes / gotchas que menciona

- **Error "Internal Server Error" al crear usuario por primera vez**: Ocurre cuando se modifica el modelo de base de datos después de haber creado el archivo `.db`. Solución: eliminar el archivo `users.db` y reiniciar el servidor para que se regenere con la nueva estructura.
- **Error "cannot access local variable 'user' when it's not associated with the value"**: Ocurre por error tipográfico al nombrar variables (ej: `user_id` vs `user_id`). Verificar consistencia en nombres de parámetros.
- **Error "SQLAlchemy instance is not persistent with this session" al eliminar**: Ocurre al intentar retornar el objeto eliminado después de `db.delete()` y `db.commit()`. Solución: retornar un mensaje de confirmación en lugar del objeto eliminado.
- **Error al crear usuario con email duplicado**: El modelo tiene `unique=True` en el campo email, pero no se maneja explícitamente. Solución: agregar verificación de existencia antes de crear (como se muestra en el endpoint POST).
- **Olvidar `db.commit()`**: Si no se llama a `commit()`, los cambios no se persisten en la base de datos aunque no haya error visible.