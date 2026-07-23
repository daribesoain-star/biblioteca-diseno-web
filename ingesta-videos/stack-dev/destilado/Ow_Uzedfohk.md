# Implement Authorization using Row Level Security (RLS) with Supabase (Step By Step Guide)
**Fuente:** Supabase | https://youtu.be/Ow_Uzedfohk

## Qué enseña
Este tutorial enseña a implementar Row Level Security (RLS) en Supabase para controlar el acceso a datos a nivel de base de datos, eliminando la necesidad de un API intermedio. Cubre políticas de SELECT, INSERT, UPDATE y DELETE, incluyendo subconsultas entre tablas para autorización contextual (ej. comentarios visibles solo si el post padre es visible).

## Técnicas y patrones accionables

- **Habilitar RLS en una tabla desde el Dashboard de Supabase:**
  - Ir a `Authentication > Policies`
  - Activar RLS en la tabla deseada (ej. `post`). Al activarlo, la tabla queda completamente bloqueada (deniega SELECT, INSERT, UPDATE, DELETE por defecto).

- **Crear política desde plantilla (todos los permisos para el dueño del recurso):**
  - Seleccionar "Enable delete access for users based on their user ID" (plantilla inferior).
  - Cambiar la operación a `ALL` (cubre SELECT, INSERT, UPDATE, DELETE).
  - Nombre sugerido: `"Enable all actions for users based on user id"`.
  - Condición generada automáticamente:
    ```sql
    (auth.uid() = user_id)
    ```
  - Para UPDATE, agregar la misma condición en `WITH CHECK` (copiar y pegar).

- **Crear política desde cero (SELECT para posts publicados):**
  - Nombre: `"Enable user to select a published post"`
  - Operación: `SELECT`
  - Condición:
    ```sql
    (is_published = true)
    ```

- **Crear política con subconsulta a otra tabla (SELECT en comentarios):**
  - Tabla: `comment`
  - Operación: `SELECT`
  - Nombre: `"Enable user to view comments for posts they can view"`
  - Condición:
    ```sql
    EXISTS (
      SELECT 1
      FROM post
      WHERE post.id = comment.post_id
    )
    ```
  - Explicación: `SELECT 1` devuelve `true` si la subconsulta encuentra un post que el usuario puede ver (por las políticas RLS del post). No se necesita re-implementar las reglas del post.

- **Crear política con subconsulta + restricción de dueño (INSERT en comentarios):**
  - Operación: `INSERT`
  - Nombre: `"Allow users to insert comments on posts they can see"`
  - Condición (USING):
    ```sql
    (EXISTS (
      SELECT 1
      FROM post
      WHERE post.id = comment.post_id
    ) AND auth.uid() = comment.user_id)
    ```
  - Nota: `WITH CHECK` debe tener la misma condición.

- **Crear política para moderación (DELETE de comentarios por dueño del post):**
  - Operación: `DELETE`
  - Nombre: `"User can moderate comments on their posts"`
  - Condición:
    ```sql
    auth.uid() IN (
      SELECT user_id
      FROM post
      WHERE post.id = comment.post_id
    )
    ```
  - Explicación: Verifica que el usuario autenticado sea el dueño del post al que pertenece el comentario.

- **Ejecutar SQL manualmente (equivalente a crear política desde UI):**
  ```sql
  CREATE POLICY "Enable all actions for users based on their user id"
  ON public.post
  FOR ALL
  USING (auth.uid() = user_id)
  WITH CHECK (auth.uid() = user_id);
  ```

- **Arquitectura RLS vs API tradicional:**
  - Cliente → API → Base de datos (tradicional: API tiene clave especial, decide confianza).
  - Cliente → Base de datos (RLS: cliente envía token de autorización, la base de datos aplica políticas).

## Reglas para el erudito (imperativas y verificables)

- **Usa RLS como capa de seguridad obligatoria, no opcional:** Siempre habilita RLS en todas las tablas que contengan datos sensibles. No confíes solo en la lógica del frontend o API.
- **Usa `auth.uid()` para identificar al usuario autenticado:** Es una función especial de Supabase que devuelve el ID del usuario actual. No uses variables de sesión manuales.
- **Usa `EXISTS (SELECT 1 FROM ...)` para subconsultas de autorización:** No necesitas los datos de la subconsulta, solo saber si existe. `SELECT 1` es más eficiente que `SELECT *`.
- **Nunca re-implementes políticas de una tabla en otra:** En lugar de duplicar la lógica de visibilidad de posts en la tabla de comentarios, haz una subconsulta a la tabla `post` y deja que sus propias políticas RLS filtren.
- **Siempre agrega `WITH CHECK` en políticas de INSERT y UPDATE:** La condición en `USING` controla qué filas existentes se pueden modificar; `WITH CHECK` controla qué nuevas filas se pueden crear. Deben coincidir para evitar inconsistencias.
- **Usa `FOR ALL` solo cuando quieras aplicar la misma política a SELECT, INSERT, UPDATE y DELETE:** Si necesitas reglas diferentes, crea políticas separadas por operación.
- **Prueba siempre los casos borde:** Después de crear políticas, verifica que usuarios no autorizados no puedan acceder a datos incluso si navegan directamente a URLs o envían solicitudes maliciosas.

## Errores comunes / gotchas que menciona

- **Olvidar que RLS bloquea todo por defecto:** Al habilitar RLS en una tabla, inmediatamente se deniegan todas las operaciones hasta que se creen políticas explícitas. En el tutorial, al activar RLS en `post`, ni el dueño podía ver sus propios posts.
- **No proteger el `user_id` en INSERT:** En la política de INSERT para comentarios, si solo verificas que el post es visible, un usuario podría insertar un comentario con `user_id` de otro usuario. La solución es agregar `AND auth.uid() = comment.user_id`.
- **Asumir que la UI protege contra acciones no autorizadas:** En el tutorial, Gary podía ver la URL de edición del post de Ash y hacer clic en "delete". Aunque la UI no mostraba error, la política RLS impidió la eliminación. La base de datos es la última línea de defensa.
- **No considerar la moderación de contenido:** Inicialmente, solo el dueño del comentario podía eliminarlo. Para que el dueño del post pueda moderar, se necesitó una política adicional con subconsulta que verifica la propiedad del post padre.
- **Confundir `USING` con `WITH CHECK`:** `USING` se aplica a filas existentes (SELECT, UPDATE, DELETE), `WITH CHECK` se aplica a nuevas filas (INSERT, UPDATE). Si solo pones condición en `USING` para INSERT, la inserción fallará porque no hay fila existente que evaluar.