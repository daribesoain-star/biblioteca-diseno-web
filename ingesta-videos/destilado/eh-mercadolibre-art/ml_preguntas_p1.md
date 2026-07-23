# ml_preguntas
**Fuente:** mercadolibre | https://developers.mercadolibre.cl/es_ar/preguntas-y-respuestas
## Qué enseña (2-3 líneas)
Enseña a gestionar el ciclo completo de preguntas y respuestas en Mercado Libre: buscar preguntas de ítems propios o ajenos, crear preguntas, responderlas, obtener detalles de una pregunta específica y gestionar bloqueos de usuarios para evitar preguntas no deseadas. Incluye el uso del parámetro `api_version=4` para obtener datos de contacto del comprador (email, teléfono, nombre).

## Lecciones accionables
- **Buscar preguntas por ID de ítem (GET /questions/search)**
  - Endpoint: `GET https://api.mercadolibre.com/questions/search?item_id=$ITEM_ID`
  - Header: `Authorization: Bearer $ACCESS_TOKEN`
  - Parámetros query: `item_id` (obligatorio), `limit` (default 50), `offset` (default 0), `api_version` (usar `4` para datos de contacto)
  - Filtros disponibles (`available_filters`): `from` (user id), `seller` (seller id), `status` (valores: `ANSWERED`, `BANNED`, `CLOSED_UNANSWERED`, `DELETED`, `DISABLED`, `UNANSWERED`, `UNDER_REVIEW`), `totalDivisions`, `division`
  - Ordenamientos disponibles (`available_sorts`): `item_id`, `from_id`, `date_created`, `seller_id`
  - Ejemplo curl:
    ```bash
    curl -X GET -H 'Authorization: Bearer $ACCESS_TOKEN' https://api.mercadolibre.com/questions/search?item_id=MLA608007087
    ```

- **Crear una pregunta (POST /questions)**
  - Endpoint: `POST https://api.mercadolibre.com/questions`
  - Headers: `Authorization: Bearer $ACCESS_TOKEN`, `Content-Type: application/json`
  - Body (JSON):
    ```json
    {
      "text": "Test question.",
      "item_id": "MLA608007087"
    }
    ```
  - Respuesta incluye: `id`, `answer` (null si no respondida), `date_created`, `item_id`, `seller_id`, `status` (inicial `UNANSWERED`), `text`, `from.id`

- **Responder una pregunta (POST /answers)**
  - Endpoint: `POST https://api.mercadolibre.com/answers`
  - Headers: `Authorization: Bearer $ACCESS_TOKEN`, `Content-Type: application/json`
  - Body (JSON):
    ```json
    {
      "question_id": 3957150025,
      "text": "Test answer..."
    }
    ```
  - Respuesta incluye: `id`, `answer.text`, `answer.status` (ej. `ACTIVE`), `answer.date_created`, `status` del ítem cambia a `ANSWERED`, `deleted_from_listing`, `hold`, `from.answered_questions`

- **Obtener detalles de una pregunta (GET /questions/$QUESTION_ID)**
  - Endpoint: `GET https://api.mercadolibre.com/questions/$QUESTION_ID`
  - Header: `Authorization: Bearer $ACCESS_TOKEN`
  - Ejemplo curl:
    ```bash
    curl -X GET -H 'Authorization: Bearer $ACCESS_TOKEN' https://api.mercadolibre.com/questions/3957150025
    ```
  - Respuesta incluye: `id`, `answer` (objeto con `date_created`, `status`, `text`), `date_created`, `deleted_from_listing`, `hold`, `item_id`, `seller_id`, `status`, `text`, `from.id`, `from.answered_questions`

- **Consultar bloqueos de preguntas por usuario (GET /block-api/search/users/$USER_ID)**
  - Endpoint: `GET https://api.mercadolibre.com/block-api/search/users/$USER_ID?type=blocked_by_questions`
  - Header: `Authorization: Bearer $ACCESS_TOKEN`
  - Parámetro query: `type=blocked_by_questions`
  - Respuesta con usuarios bloqueados:
    ```json
    {
      "users": [{"id": 11111111, "blocked_at": "2024-02-07T15:04:05Z"}],
      "paging": {"offset": 0, "limit": 10, "total": 1}
    }
    ```
  - Respuesta sin bloqueos:
    ```json
    {
      "users": [],
      "paging": {"total": 0, "limit": 10, "offset": 0}
    }
    ```

- **Desbloquear usuario para preguntas (DELETE /users/$SELLER_ID/questions_blacklist/$USER_ID)**
  - Endpoint: `DELETE https://api.mercadolibre.com/users/$SELLER_ID/questions_blacklist/$USER_ID`
  - Header: `Authorization: Bearer $ACCESS_TOKEN`
  - Ejemplo curl:
    ```bash
    curl -X DELETE -H 'Authorization: Bearer $ACCESS_TOKEN' 'https://api.mercadolibre.com/users/$SELLER_ID/questions_blacklist/$USER_ID'
    ```

- **Obtener preguntas recibidas por el usuario (GET /my/received_questions/search)**
  - Endpoint: `GET https://api.mercadolibre.com/my/received_questions/search`
  - Header: `Authorization: Bearer $ACCESS_TOKEN`
  - Parámetros query opcionales: `limit` (default 50), `offset` (default 0), `api_version` (usar `4`)
  - Filtros disponibles: `item` (text), `from` (user id), `status` (mismos valores que en search), `totalDivisions`, `division`
  - Ordenamientos disponibles: `item_id`, `from_id`, `date_created`, `seller_id`
  - Ejemplo curl:
    ```bash
    curl -X GET -H 'Authorization: Bearer $ACCESS_TOKEN' https://api.mercadolibre.com/my/received_questions/search
    ```

- **Obtener datos de contacto del comprador**: Usar `api_version=4` en las llamadas a `/questions/$QUESTION_ID` para obtener email, teléfono y nombre del comprador.

## Reglas para agentes
- Usa `api_version=4` en todas las consultas a `/questions/search`, `/my/received_questions/search` y `/questions/$QUESTION_ID` cuando necesites datos de contacto del comprador (email, teléfono, nombre).
- Usa `GET /questions/search?item_id=$ITEM_ID` para buscar preguntas de un ítem específico; nunca uses otro endpoint para esta función.
- Usa `POST /questions` con `item_id` y `text` en el body para crear preguntas; nunca incluyas otros campos no documentados.
- Usa `POST /answers` con `question_id` y `text` en el body para responder preguntas; nunca respondas sin especificar el `question_id`.
- Usa `GET /my/received_questions/search` para obtener todas las preguntas recibidas por el vendedor autenticado; nunca uses `/questions/search` sin filtrar por `seller_id` para este propósito.
- Usa `DELETE /users/$SELLER_ID/questions_blacklist/$USER_ID` para desbloquear a un usuario; nunca uses métodos POST o PUT para esta acción.
- Nunca incluyas datos sensibles (como tokens) en URLs públicas o logs.
- Nunca asumas que una pregunta tiene respuesta; verifica el campo `status` y la existencia del objeto `answer` antes de procesarlo.

## Errores comunes que evita o menciona
- **No usar `api_version=4`**: Sin este parámetro, no se obtienen los datos de contacto del comprador (email, teléfono, nombre) en las respuestas de preguntas.
- **Confundir endpoints de búsqueda**: Usar `/questions/search` sin `item_id` para preguntas propias en lugar de `/my/received_questions/search` puede devolver resultados incorrectos o vacíos.
- **No verificar el estado de la respuesta**: El campo `answer.status` puede ser `BANNED` (respuesta eliminada por moderación) aunque el ítem tenga `status: ANSWERED`. No asumir que toda respuesta es visible.
- **Ignorar el paginado**: Los endpoints devuelven `limit` (default 50) y `offset`; no procesar páginas completas puede omitir preguntas.
- **No manejar bloqueos**: No consultar `/block-api/search/users/$USER_ID?type=blocked_by_questions` antes de interactuar puede llevar a errores 403 o acciones fallidas.
- **Usar método incorrecto para desbloquear**: Usar POST en lugar de DELETE en `/users/$SELLER_ID/questions_blacklist/$USER_ID` resultará en error.
- **No incluir `Content-Type: application/json`**: En POST a `/questions` y `/answers`, omitir este header causa errores de parseo del body.