# usuarios_accesos
**Fuente:** kame | https://help.kameone.cl/es/articles/10581316-usuarios-y-accesos
## Qué enseña (2-3 líneas)
Gestiona usuarios y permisos dentro de KAME ERP. Explica cómo acceder a la configuración de empresa, visualizar el Super Usuario, la cantidad de usuarios contratados/disponibles, y cómo asignar o restringir accesos a módulos específicos mediante tres niveles de permiso.

## Lecciones accionables
- **Ruta de acceso:** Perfil → Usuarios y Accesos (solo disponible para usuarios administradores).
- **Visualización inicial:** Al ingresar se muestra el Super Usuario (dueño de la contratación), seguido del número de usuarios contratados y disponibles.
- **Botón clave:** Existe un botón para visualizar todos los usuarios contratados.
- **Multiempresa:** Si administras más de una empresa, puedes ver en cuántas empresas está registrado cada usuario.
- **Desglose de accesos:** Se muestra un listado de usuarios creados con los accesos asignados a cada módulo.
- **Restricción de módulo:** Para restringir el acceso a un módulo específico, haz clic en el icono correspondiente.
- **Tipos de acceso (3 niveles):**
  | Icono / Estado | Significado |
  |---|---|
  | Acceso completo al módulo | Puede ver, editar y crear |
  | Sin acceso al módulo | No puede visualizar el módulo |
  | Solo visualización | Puede ver pero no editar ni crear movimientos |

## Reglas para agentes
- Usa la ruta **Perfil → Usuarios y Accesos** cuando el usuario necesite gestionar permisos.
- Verifica que el usuario sea **administrador** antes de intentar acceder a esta configuración; si no lo es, indícale que solo los administradores tienen acceso.
- Cuando el usuario pregunte por restringir un módulo, indica que debe **hacer clic en el icono correspondiente** del módulo en el desglose.
- Nunca asumas que todos los usuarios pueden ver todos los módulos; siempre consulta el estado del acceso (completo, solo vista, o sin acceso).

## Errores comunes que evita o menciona
- **Error:** Intentar acceder a "Usuarios y Accesos" sin ser administrador.  
  **Solución:** Solo los usuarios con rol de administrador pueden ver y modificar estas configuraciones.
- **Error:** Confundir "Super Usuario" con un usuario administrador cualquiera.  
  **Aclaración:** El Super Usuario es el dueño de la contratación, aparece primero en la lista.
- **Error:** No distinguir entre "usuarios contratados" y "usuarios disponibles".  
  **Aclaración:** La sección muestra ambos números por separado; los contratados son los que ya están en uso, los disponibles son los que aún se pueden agregar.