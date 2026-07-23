# How To Make AI Ads With Claude X Meta
**Fuente:** NA | https://youtu.be/TpZrPY6jTE8  
**Dominio:** meta-ads

## Qué enseña
Flujo completo para investigar, generar y lanzar anuncios UGC con IA usando solo Claude, conectado a Meta MCP y Arcads MCP. Permite crear campañas de Meta Ads sin salir del chat, desde el análisis de competencia hasta la publicación y optimización.

## Tácticas accionables

1. **Conectar Meta MCP en Claude:**  
   - Ir a Settings > Connectors > Add Connector  
   - Pegar la URL del servidor MCP de Meta (mostrada en pantalla)  
   - Conceder acceso → conexión lista en ~30 segundos

2. **Investigación inicial (prompt exacto):**  
   *"Using Meta MCP, pull the top performing ads in my account from the last 30 days. Then, search the web for the highest performing Meta UGC ads for [producto]. Identify which creative formats are getting the highest impressions, which hooks are generating the highest engagement rates, which audience segments are responding best, any creative patterns showing up repeatedly in winning ads. Give me a summary I can use to brief my new creatives before I launch."*

3. **Conectar Arcads MCP:**  
   - Settings > Connectors > Add Custom MCP  
   - Pegar URL de Arcads (mostrada en pantalla)  
   - Iniciar sesión con cuenta Arcads

4. **Generar scripts UGC (prompt exacto):**  
   *"You are a senior performance marketer and UGC ad script writer. My product is [producto]. What it does: [descripción]. Target audience: [audiencia]. Platform: Meta, TikTok, Instagram Reels. Do the following: 1) Identify the top three pain points this product solves. 2) Write five UGC ad scripts, one per pain point angle. Each script 18-20 seconds, natural spoken language, cold audience. Structure: hook 0-3s, problem 3-8s, solution 8-15s, proof 15-18s, CTA 18-20s. 3) Score each script out of 10, only keep scripts scoring 9.5 or above. 4) Suggest the ideal actor type for each script (age, gender, setting, emotion)."*

5. **Generar imágenes de actores:**  
   *"Using [modelo, ej: Nano Banana Pro], generate an image of a woman in her mid-20s, long brown hair, wearing the product in the attached reference image, bedroom background. Keep the product exactly as shown, no changes."*  
   → Adjuntar imagen de referencia del producto cada vez.  
   → **Aprobar cada imagen antes de pasar a video** (corregir si la prenda se ve rara).

6. **Generar videos UGC:**  
   *"Using the approved image of actor [número], create a 10 to 12-second UGC video using [modelo, ej: Seedance 2.0]. She should speak naturally and say: [insertar script]. Handheld feel, vertical format, candid, and authentic."*  
   → Cada video toma 3-5 minutos. Repetir para los 5 actores.  
   → Pedir: *"Give me the download links for all five videos."*

7. **Subir videos a Meta y lanzar campaña:**  
   *"Upload these five videos to my Meta ad account as new creatives"* (pegar los 5 links de descarga).  
   Luego: *"Create a new Meta ad campaign for [producto], objective sales, budget $30 a day. Run it for five days starting tomorrow. Target women aged 18 to 29 in [país] interested in fashion and lifestyle content, wellness and sustainable products. Use broad targeting for the first test."*

8. **Analizar resultados y escalar:**  
   Después de 5-7 días: *"Which of my five ads is performing the best? Show me a breakdown."*  
   Luego: *"Take the top performing ad and generate five more variations of it using Arcads MCP. Same actor, different scripts."*

## Reglas para el erudito

- **Usa Meta MCP** cuando necesites investigar el panorama actual de anuncios en tu cuenta y en la web antes de crear cualquier creativo.
- **Usa Arcads MCP** cuando tengas los scripts listos y necesites generar actores, imágenes y videos UGC sin cambiar de herramienta.
- **Aprueba cada imagen de actor antes de generar el video** — es más barato y rápido corregir en imagen que en video.
- **Usa objetivo "sales"** en lugar de "video views" o "link clicks" cuando el presupuesto es limitado ($30/día), para no desperdiciar presupuesto en métricas de baja intención de compra.
- **Usa broad targeting** en la primera prueba para dejar que Meta optimice la entrega.
- **Escala solo el ganador** después de 5-7 días: pide 5 variaciones del mejor anuncio con el mismo actor pero nuevos scripts.

## Errores comunes

- Saltarse la investigación inicial y lanzar anuncios sin datos → la mayoría de anuncios generados con IA fallan por esto.
- No aprobar las imágenes de actores antes de generar videos → corregir después es más caro y lento.
- Optimizar para "video views" o "link clicks" en lugar de "sales" con presupuesto bajo → se gasta en usuarios que no convierten.
- No iterar sobre el ganador → el verdadero valor está en el ciclo: investigación → generación → lanzamiento → análisis → más variaciones del ganador.