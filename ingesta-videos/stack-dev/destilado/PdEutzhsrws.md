# Advanced Row Level Security (RLS) Policies // Authorization Deep Dive
**Fuente:** Supabase | https://youtu.be/PdEutzhsrws

## Qué enseña (2-3 líneas)
Cómo implementar autorización en una aplicación existente usando políticas RLS en Supabase. Cubre la creación de relaciones uno a uno entre esquemas (public y auth), triggers y funciones Postgres con security definer, y políticas RLS para SELECT, INSERT y DELETE con subconsultas anidadas.

## Técnicas y patrones accionables

- **Crear columna UUID con FK a auth.users:**
  - En Supabase Dashboard > Table Editor > users: añadir columna `supabase_id` tipo UUID
  - Configurar FK: referencia `auth.users.id`, on update: "no action", on delete: "set null"
  - Marcar como unique (relación uno a uno)

- **Función trigger para sincronizar usuarios (security definer):**
  ```sql
  -- En Supabase > Database > Functions > Create a new function
  -- Nombre: handle_public_user
  -- Schema: public
  -- Return type: trigger
  -- Security: security definer (en advanced settings)
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
  ```

- **Trigger en auth.users:**
  ```sql
  -- En SQL Editor
  CREATE TRIGGER on_auth_user_created
  AFTER INSERT ON auth.users
  FOR EACH ROW
  EXECUTE FUNCTION handle_public_user();
  ```

- **Habilitar RLS en vistas (security_invoker):**
  ```sql
  CREATE OR REPLACE VIEW emails_with_folder_and_users
  WITH (security_invoker = true) AS
  -- ... definición original de la vista ...
  ```

- **Política SELECT para emails (usuarios ven solo los suyos):**
  ```sql
  -- Nombre: users can read their emails
  -- Acción: SELECT
  -- Target roles: public
  -- USING expression:
  (
    recipient_id IN (
      SELECT id FROM public.users WHERE supabase_id = auth.uid()
    )
    OR
    sender_id IN (
      SELECT id FROM public.users WHERE supabase_id = auth.uid()
    )
  )
  ```

- **Política SELECT para email_folders (usando EXISTS con subconsulta a emails):**
  ```sql
  -- Nombre: users can select email folders
  -- Acción: SELECT
  -- Target roles: authenticated
  -- USING expression:
  EXISTS (
    SELECT 1 FROM emails
    WHERE emails.id = email_id
  )
  ```

- **Política DELETE para emails (solo sender):**
  ```sql
  -- Nombre: user can delete their emails
  -- Acción: DELETE
  -- Target roles: authenticated
  -- USING expression:
  sender_id IN (
    SELECT id FROM public.users WHERE supabase_id = auth.uid()
  )
  ```

- **Política DELETE para email_folders (validando sender via subconsulta anidada):**
  ```sql
  -- Nombre: enable delete for sender
  -- Acción: DELETE
  -- Target roles: authenticated
  -- USING expression:
  auth.uid() IN (
    SELECT supabase_id FROM public.users
    WHERE id IN (
      SELECT sender_id FROM emails
      WHERE emails.id = email_id
    )
  )
  ```

- **Política INSERT para emails:**
  ```sql
  -- Nombre: users can insert their own emails
  -- Acción: INSERT
  -- Target roles: authenticated
  -- WITH CHECK expression:
  sender_id IN (
    SELECT id FROM public.users WHERE supabase_id = auth.uid()
  )
  ```

- **Política INSERT para email_folders (misma lógica que DELETE):**
  ```sql
  -- WITH CHECK expression:
  auth.uid() IN (
    SELECT supabase_id FROM public.users
    WHERE id IN (
      SELECT sender_id FROM emails
      WHERE emails.id = email_id
    )
  )
  ```

- **Actualizar función send_email para usar auth.uid():**
  ```sql
  -- En Database > Functions > edit send_email
  -- Reemplazar sender_id = 1 por:
  sender_id := (
    SELECT id FROM public.users
    WHERE supabase_id = auth.uid()
  );
  ```

## Reglas para el erudito (imperativas y verificables)

- Usa `security definer` en funciones trigger del sistema (como handle_public_user) para que ejecuten con privilegios de Postgres, no del usuario
- Usa `security_invoker = true` en vistas para que respeten RLS de las tablas subyacentes
- Usa `ON CONFLICT (email) DO UPDATE` en triggers de sincronización para manejar usuarios que ya existen como destinatarios
- Usa `EXISTS (SELECT 1 FROM emails WHERE emails.id = email_id)` en políticas de tablas relacionadas para delegar autorización a la tabla principal
- Usa subconsultas anidadas con `auth.uid()` para mapear entre UUID de auth.users y IDs enteros de public.users
- Establece FK con `ON DELETE SET NULL` cuando eliminar un usuario no debe cascadear a sus datos
- Marca la columna supabase_id como UNIQUE para garantizar relación uno a uno
- Asigna target roles a "authenticated" en políticas que requieren usuario logueado

## Errores comunes / gotchas que menciona

- Las vistas **por defecto bypassan RLS**; hay que agregar explícitamente `WITH (security_invoker = true)`
- Habilitar RLS en una tabla **deniega automáticamente** todas las operaciones (SELECT, INSERT, UPDATE, DELETE) hasta que se escriban políticas específicas
- Si una tabla referenciada (como email_folders) no tiene RLS habilitado, las políticas de la tabla principal (emails) no se aplican a través de la vista
- Al eliminar un email, la FK con CASCADE en email_folders requiere también una política DELETE en email_folders, no solo en emails
- Las funciones trigger deben usar `RETURN NEW;` al final para que el trigger funcione correctamente
- Los tipos de datos deben coincidir para establecer FK: auth.users.id es UUID, public.users.id es integer → se necesita columna UUID separada