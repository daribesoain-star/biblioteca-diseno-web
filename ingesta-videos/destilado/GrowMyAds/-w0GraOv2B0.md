# How to Optimize Google Ads Shopping Feeds with Feed Attribute Rules [Step-by-Step Tutorial]
**Fuente:** GrowMyAds | https://youtu.be/-w0GraOv2B0

## Qué enseña (2-3 líneas)
Este tutorial enseña a usar las reglas de atributos (Attribute Rules) dentro de Google Merchant Center Next para optimizar feeds de Shopping Ads sin herramientas externas. Muestra cómo crear custom labels para segmentar productos (ej. navideños) y cómo modificar títulos de productos añadiendo texto al inicio y al final para mejorar el rendimiento de los anuncios.

## Lecciones accionables
- **Crear una regla de atributo para custom label:**
  1. Ir a **Productos** > **Ver fuentes de datos** > seleccionar la fuente (ej. Content API) > pestaña **Reglas de atributos**.
  2. Hacer clic en **Añadir regla de atributo**.
  3. Seleccionar **Etiqueta personalizada 3** (custom label 3, hay del 0 al 4).
  4. Configurar condiciones: `título contiene "Christmas"`, `título contiene "Santa"`, `título contiene "holiday"`.
  5. En "Seleccionar cómo reemplazar los datos": elegir **Establecer en** > escribir `Christmas`.
  6. Usar **Mostrar vista previa** para verificar con un ID de producto específico.
  7. Guardar como borrador y luego **Aplicar cambios** para que se active en el próximo fetch del feed.

- **Optimizar títulos con reglas de atributo:**
  1. Ir a **Reglas de atributos** > **Añadir regla de atributo**.
  2. Seleccionar el atributo **Título**.
  3. Configurar: **Anteponer** texto como `Kid and Pet Friendly Washable` y **Añadir al final** texto como `Home Reserve`.
  4. Verificar con vista previa que el título pase de `Tuck Standard Sectional in Malti Soda` a `Kid and Pet Friendly Washable Tuck Standard Sectional in Malti Soda Home Reserve`.
  5. Guardar y aplicar cambios para que afecte a todos los SKUs del feed.

- **Verificar cambios aplicados:**
  - Ir a **Productos**, filtrar por título que contenga "Christmas", seleccionar un producto y en **Detalles adicionales** confirmar que `custom label 3` muestre `Christmas`.
  - Usar la vista previa para comparar el valor activo (antes de la regla) vs. el valor borrador (después de la regla).

## Reglas para agentes
- Usa `Mostrar vista previa` con un ID de producto real antes de guardar cualquier regla de atributo.
- Siempre guarda primero como borrador y luego aplica `Aplicar cambios` para que la regla se active en el próximo fetch del feed.
- Cuando crees condiciones para custom labels, usa múltiples condiciones con `título contiene` para capturar variaciones (ej. "Christmas", "Santa", "holiday").
- Para optimizar títulos, usa `Anteponer` para añadir keywords al inicio y `Añadir al final` para añadir la marca al final.
- Nunca asumas que el feed ya tiene datos de segmentación; verifica primero en Productos si hay valores vacíos en custom labels o product type.

## Errores comunes que evita o menciona
- No usar herramientas externas como Data Feed Watch cuando no están disponibles; las reglas de atributos de Merchant Center Next son suficientes.
- No dejar títulos genéricos sin optimizar (ej. "Tuck Standard Sectional in Malti Soda") – se deben añadir keywords relevantes como "kid and pet friendly" y la marca.
- No asumir que el feed ya tiene información de temporada (ej. productos navideños) aunque la integración API no la esté enviando.
- No olvidar aplicar los cambios después de guardar como borrador; si no se aplican, la regla no afecta al feed en vivo.
- No usar custom labels que ya están ocupados (0-4); verificar cuáles están en uso antes de asignar uno nuevo.