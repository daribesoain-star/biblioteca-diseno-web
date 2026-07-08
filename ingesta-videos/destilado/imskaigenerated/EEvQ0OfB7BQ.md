# Claude Code + Higgsfield AI = Insane AI Ads
**Fuente:** imskaigenerated | https://youtu.be/EEvQ0OfB7BQ

## Qué enseña (2-3 líneas)
El video muestra cómo combinar Claude Code (como cerebro) con Higgsfield AI (como motor) para automatizar la creación de anuncios UGC hiperrealistas, imágenes estáticas para AB testing y comerciales 3D de productos, todo desde un solo prompt sin necesidad de experiencia en codificación. Incluye la instalación de Claude Code en Google Antigravity, conexión con la API de Higgsfield, y el uso de archivos "skill" personalizados para generar lotes completos de assets publicitarios.

## Lecciones accionables
- **Instalación de Claude Code en Antigravity:**
  1. Descargar e instalar Google Antigravity (gratuito)
  2. Crear una carpeta para el proyecto: `Abrir carpeta` → `Terminal` → `Nuevo terminal`
  3. Ejecutar comando de instalación: `npm install -g @anthropic-ai/claude-code` (o el comando exacto provisto en la descripción del video)
  4. Instalar dependencias de Higgsfield: `pip install higgsfield-sdk` (comando exacto mostrado)
  5. Configurar credenciales de API:
     - `export HIGGSFIELD_API_KEY_ID="tu_api_key_id"`
     - `export HIGGSFIELD_API_KEY_SECRET="tu_api_key_secret"`
     - Reemplazar el contenido entre comillas con los valores reales
  6. Iniciar Claude Code: `claude` + Enter

- **Obtener credenciales de Higgsfield:**
  1. Ir a `cloud.higgsfield.ai` → `Billing` → recargar créditos
  2. Ir a `API Keys` → `Create API Key`
  3. Asignar un nombre descriptivo
  4. Guardar de forma segura tanto el `API Key ID` como el `API Key Secret`

- **Generación de anuncios UGC (video con avatar):**
  1. Arrastrar archivo `skill` personalizado (ugc_ad_skill.md) a la carpeta del proyecto en Antigravity
  2. Arrastrar foto del producto al terminal de Claude Code
  3. Prompt usado: *"Generate a 21-year-old female fitness creator"* (puede detallarse más)
  4. Claude Code genera: 3 imágenes A-roll, 3 videos B-roll, 1 avatar AI, 1 guion de voz en off
  5. Aceptar solicitudes de permiso que aparezcan
  6. Llevar la mejor imagen A-roll a `higgsfield.ai` → `Cinema Studio`
  7. Pegar el guion de voz en off generado
  8. Configurar duración: 12 segundos
  9. Click `Generate`
  10. Editar en software de edición (ej. Premiere Pro): unir A-roll, B-roll, recortar y añadir toques finales

- **Generación masiva de imágenes estáticas para AB testing:**
  1. Arrastrar archivo `static_ad_skill.md` a la carpeta del proyecto
  2. Arrastrar imagen de referencia del producto al terminal
  3. Prompt usado: *"One-to-one aspect ratio, core marketing message: 50% off"*
  4. Claude Code genera 5 imágenes estáticas distintas en una carpeta nueva
  5. Cada imagen tiene estética diferente (cyberpunk, tropical, etc.) y texto perfectamente renderizado

- **Generación de comerciales 3D de producto:**
  1. Arrastrar archivo `3d_commercial_skill.md` a la carpeta del proyecto
  2. Arrastrar imagen de referencia del producto al terminal
  3. Prompt usado: *"Generate 5 start frames for 3D product commercials"* (mantener simple, el skill se encarga del resto)
  4. Claude Code genera 5 imágenes de inicio (start frames) + archivo de texto con prompts de movimiento perfectos para cada escena
  5. Elegir el mejor start frame → `higgsfield.ai` → `Cinema Studio`
  6. Copiar y pegar el prompt de movimiento generado por Claude Code
  7. Click `Generate` → obtener video 3D con movimiento de cámara dinámico

## Reglas para agentes
- Usa `export HIGGSFIELD_API_KEY_ID` y `export HIGGSFIELD_API_KEY_SECRET` antes de iniciar Claude Code para autenticar la conexión con Higgsfield
- Guarda siempre el API Key ID y API Key Secret en un lugar seguro; nunca los compartas ni los subas a repositorios públicos
- Cuando generes por primera vez, acepta todas las solicitudes de permiso de Claude Code; la primera ejecución tarda más porque genera el script Python base
- Usa archivos `skill.md` personalizados (ugc_ad_skill.md, static_ad_skill.md, 3d_commercial_skill.md) para automatizar la generación por lotes; arrastra el archivo a la carpeta del proyecto antes de ejecutar el prompt
- Mantén los prompts simples cuando uses skills personalizados; el skill se encarga de los detalles técnicos
- Especifica aspect ratio y mensaje de marketing explícitamente en el prompt para imágenes estáticas
- Para comerciales 3D, usa los prompts de movimiento generados automáticamente por Claude Code; no los inventes manualmente

## Errores comunes que evita o menciona
- **Pensar que se necesita experiencia en codificación para usar Claude Code:** el video aclara que Claude Code hace toda la codificación automáticamente, el usuario solo da instrucciones en lenguaje natural
- **Gastar en suscripciones dispersas para producir anuncios AI:** el video propone simplificar usando solo Higgsfield como motor y Claude Code como cerebro, evitando costos innecesarios
- **Generar imágenes una por una manualmente:** el método automatizado con skills genera lotes completos (3 A-roll, 3 B-roll, avatar, guion) con un solo prompt
- **No guardar las credenciales API de forma segura:** se menciona explícitamente que el API Key es una "llave literal" que da acceso a los créditos de la cuenta
- **Olvidar que la primera generación toma más tiempo:** Claude Code debe generar el script Python base; las ejecuciones posteriores son mucho más rápidas