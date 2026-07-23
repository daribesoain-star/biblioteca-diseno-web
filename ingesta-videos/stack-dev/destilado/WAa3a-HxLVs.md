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