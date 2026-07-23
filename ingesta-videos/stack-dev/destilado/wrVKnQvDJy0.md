# Think Multi-Tenancy Is Easy? Think Again...
**Fuente:** Software Developer Diaries | https://youtu.be/wrVKnQvDJy0

## Qué enseña (2-3 líneas)
Explica los tres modelos de aislamiento de datos en aplicaciones multi-tenant (base de datos compartida, esquemas separados, bases de datos separadas), analizando sus ventajas, desventajas y cómo mitigar problemas como "noisy neighbors" con RLS, rate limiting y bulkhead pattern. Cubre conceptos de tenant-aware logic, data isolation, compliance y performance en sistemas SaaS.

## Técnicas y patrones accionables

- **Row Level Security (RLS) en PostgreSQL para aislamiento en base de datos compartida:**
  ```sql
  -- Habilitar RLS en la tabla
  ALTER TABLE orders ENABLE ROW LEVEL SECURITY;
  
  -- Crear política de aislamiento por tenant
  CREATE POLICY tenant_isolation_policy ON orders
  USING (tenant_id = current_setting('app.current_tenant')::uuid);
  ```

- **Sharding horizontal por tenant:** Dividir datos en shards donde "customer one and two are always going to be in the first shard, customer three and four are in the second shard".

- **Rate limiting por tenant/usuario (nginx):** "Only 10 requests per user within 10 seconds" usando nginx como proxy.

- **Prevención de long-running queries:** "Make sure that every database statement doesn't take more than 2 seconds" configurando timeouts.

- **Per-tenant connection pooling:** Limitar el pool size por tenant para evitar que un tenant acapare conexiones.

- **Bulkhead pattern / cell-based architecture:** Aislar recursos por tenant para evitar "noisy neighbors" (mencionado como tema para próximo video).

- **Esquemas separados por tenant (PostgreSQL/SQL Server):** Un solo database con múltiples schemas (schema_a, schema_b, schema_c) con la misma estructura de tablas pero namespaced.

- **Bases de datos separadas por tenant:** Para máxima isolation, spinning up "a new database for every tenant" cuando se requiere cumplimiento regulatorio o clientes enterprise/gobierno.

## Reglas para el erudito (imperativas y verificables)

- **Usa RLS con políticas por tenant** cuando uses base de datos compartida: "create policy called tenant_isolation_policy on the same table" asegurando que "tenant_id is always equal to the tenant ID that we defined above".
- **Nunca confíes solo en la lógica de aplicación** para data isolation en shared database; implementa RLS a nivel de base de datos como capa adicional de seguridad.
- **Usa rate limiting por tenant** cuando tengas "noisy neighbors" que consumen CPU desproporcionadamente.
- **Configura timeouts de queries** (ej. 2 segundos) para prevenir que un tenant degrade la experiencia de otros.
- **Usa esquemas separados** cuando necesites "per tenant customization" y "stronger data isolation" sin llegar a bases de datos independientes.
- **Usa bases de datos separadas** solo para "enterprises, government clients and regulated industries" donde el costo adicional se justifica por "maximum data isolation and security".
- **Aplica migraciones a múltiples schemas** cuando uses el modelo de schemas separados, siendo consciente de que "migrations need to be applied to multiple schemas" y puede volverse "cumbersone".

## Errores comunes / gotchas que menciona

- **Noisy neighbors:** Un tenant que utiliza "more than half of the CPU power" haciendo que "tenant B and tenant C barely get any power to work with" – sus aplicaciones se vuelven lentas y las respuestas API muy lentas.
- **Schema count limitation:** En PostgreSQL "there's no hard limit but the performance is going to suffer"; en MySQL "there's no limitation but the performance is going to suffer again"; en SQL Server "no hard limit but metadata queries and indexing slows down".
- **Backup/restore por tenant vs por database:** En shared database "if your database is gone your data for all of the tenants are gone not only one tenant" – no puedes restaurar un solo tenant individualmente.
- **Diferente significado de "schema" entre bases de datos:** "For SQL Server and PostgreSQL these are the schemas" (dentro de un database), pero "for Oracle and MySQL it works different" – Oracle/MySQL "store different schemas in different databases which is a completely different way of thinking".
- **Data isolation risk en shared database:** "You really have to make sure that tenant A whenever you're making database query doesn't accidentally fish the data for tenant B as well" – riesgo de fuga de datos entre tenants.