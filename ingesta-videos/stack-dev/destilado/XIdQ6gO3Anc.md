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