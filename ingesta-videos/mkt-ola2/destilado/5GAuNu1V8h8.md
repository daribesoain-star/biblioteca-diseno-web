# Cómo crear landing pages con IA que escalan anuncios de Facebook

**Fuente:** NA | https://youtu.be/5GAuNu1V8h8
**Dominio:** meta-ads

## Qué enseña (2 líneas)
Cómo construir tres tipos de landing pages (advertorial, listicle y quiz funnel) usando IA (Claude) y herramientas como Funnelish o GemPages, y cómo probarlas contra la página de producto directa para mejorar CPA y CPM en Meta Ads.

## Tácticas accionables (con números, umbrales, pasos, nombres exactos de features/paneles — nada vago)

1. **Encontrar inspiración de landing pages:**
   - Usa **Trend Track** → filtro "Shop Straight" con: tráfico 100k–2M visitas/mes, tienda en crecimiento (+10% mensual), país visitante USA, idioma inglés, moneda USD, app Shopify "Clevio", píxel "Meta Pixel".
   - Haz clic en una tienda → pestaña "ads" → "top landing pages" → guarda la URL en un Google Doc de inspiración.

2. **Construir la landing page con Claude:**
   - Usa **Claude Opus 4.8** con "high effort".
   - Dale como input: URL de la página de producto actual + datos de encuesta Typeform (PDF) + URL de la landing page de inspiración (ej: página listicle de Hollow Socks).
   - Pídele: "Recreate this page for my product. I want it in HTML format."
   - Claude te hará preguntas: "¿Qué audiencia?", "¿Cuál es la oferta?", "¿Cuál es el sitio real?".
   - Para editar: haz screenshot del HTML → envíalo de vuelta a Claude → pídele cambios como si fuera un diseñador.
   - Sube imágenes/videos a Shopify primero, luego pega esas URLs en Claude para que las use.

3. **Publicar la landing page:**
   - Si eres agencia con múltiples clientes: usa **Funnelish** → crea nueva página → agrega sección "custom HTML" → pega el código HTML que te dio Claude.
   - Si eres dueño de una sola tienda Shopify: usa **GemPages** o **Replo**.
   - Configura el píxel: en Funnelish → Settings → "tracking code" → pega tu píxel ID de Meta (cámbialo en dos lugares dentro del código).
   - Importa un dominio personalizado en Funnelish.

4. **Probar la landing page en Meta Ads:**
   - Ve a tu campaña **CBO** → crea dos ad sets con el mismo creativo:
     - Ad set 1: tráfico a la nueva landing page.
     - Ad set 2: tráfico a la PDP (página de producto).
   - Deja que Facebook gaste según rendimiento.
   - **Regla de prueba:** toma los anuncios con mayor gasto y CPA alto pero buen CPC → duplica ese ad set → cambia solo la landing page.

## Reglas para el erudito ("usa X cuando Y")

- **Usa advertorial** cuando tu audiencia es "unaware" o "problem aware" (no sabe que tiene el problema o recién lo descubre). Ej: diagnóstico de un problema, historia personal, "esto probé y no funcionó, esta es la nueva solución".
- **Usa listicle** (3, 5, 7 o 10 razones) cuando tu audiencia es "solution aware" o "product aware" (sabe que existe una solución o conoce productos similares). Sirve para comunicar USP y por qué tu producto es mejor que la competencia.
- **Usa quiz funnel** cuando tu audiencia es "unaware" a "problem aware" y necesitas que se autodiagnostiquen. Ej: "¿Tienes baja testosterona? Responde este quiz".
- **Usa Funnelish** si manejas múltiples clientes y no quieres tocar el código Shopify de cada uno.
- **Usa GemPages o Replo** si eres dueño de una sola tienda Shopify (ya integran píxel y dominio automáticamente).
- **Prueba landing pages nuevas** con anuncios que ya tienen alto gasto y CPA alto pero buen CPC (costo por clic bajo) — ahí hay una desconexión entre creativo y landing page.

## Errores comunes

- Pensar que "landing page" solo es advertorial o listicle. **Cualquier página a la que envíes tráfico desde un anuncio es una landing page** (incluye PDP, quiz, etc.).
- Usar el término "pre-lander" — el creador lo considera un concepto sin sentido, como decir "sub-avatars".
- Creer que las landing pages personalizadas no trackean en el píxel de Meta. **Sí trackean si pegas el píxel ID en el código de tracking**.
- Pensar que no se puede editar el HTML generado por IA sin saber código. **Se puede: haz screenshot, envíalo a Claude y pídele cambios como a un diseñador**.
- Preocuparse por usar dominios diferentes dentro de la misma cuenta de anuncios. **No hay problemas, el tracking funciona igual**.
- Enviar tráfico a una PDP cuando el creativo apunta a una audiencia nueva. **El algoritmo recibe señales mixtas** (creativo optimizado para nuevo avatar, PDP no optimizado) → CPM y CPC más altos.