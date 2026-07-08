# I Made 100 Meta Ads Variations With One Claude Prompt
**Fuente:** imskaigenerated | https://youtu.be/O3_lAKhLdd8

## Qué enseña (2-3 líneas)
Cómo generar cien variaciones de anuncios para Meta (Facebook/Instagram) a partir de un solo prompt usando Claude integrado en Higgsfield Supercomputer. Muestra el flujo completo: desde crear conceptos de copy, generar imágenes estáticas (estudio y lifestyle), hasta producir videos UGC, unboxing, reseñas y virtual try-on, todo con un sistema reutilizable.

## Lecciones accionables
- **Instalar skills en Higgsfield Supercomputer:** Ve al marketplace → busca "ad creative skill" → haz clic en "install". Esto le da a Claude un playbook real de redacción publicitaria.
- **Prompt inicial (brief de producto):** Proporciona solo dos cosas: el producto (ej. "Kestra Aero premium running sunglasses") y un prompt corto que describa a quién venderle. Ejemplo de estructura: "Producto: [nombre]. Audiencia: [descripción]. Genera conceptos de anuncios con hooks, copy y formato recomendado."
- **Corregir a Claude como a un copywriter humano:** Si un hook usa "fake social proof" (ej. "reseñas de clientes que no tenemos"), dile: "El hook se apoya en reseñas que no tenemos, reescríbelo honestamente." Claude ajusta el ángulo al instante.
- **Crear herramienta de voz de marca personalizada:**
  1. Describe el skill que quieres (ej. "toma cualquier producto y escribe anuncios en la voz de esa marca").
  2. Pide a Claude que escriba las instrucciones del skill en un archivo.
  3. Ve a "Create" → elige "Skill" → sube el archivo que Claude generó.
  4. El skill se detiene a estudiar el tono, fraseo y líneas que serían off-brand antes de escribir.
- **Generar imágenes estáticas:** Pide a Claude "toma el concepto 1 y construye un studio shot" → llama automáticamente al empleado "product photographer" que produce 3 imágenes con iluminación dramática y fondo limpio. Para versión lifestyle, pide "lifestyle version".
- **Generar banners con texto renderizado:** Pide "lay out a finished ad with a headline already written on it" → Claude extrae los headlines de los conceptos originales y construye el layout completo, con texto correctamente renderizado.
- **Generar videos UGC:** Pide "UGC ad, the kind where a real person talks directly to camera about the product" → Claude llama al empleado "UGC creator", pregunta duración y tipo de personaje, luego genera el video completo con guion y footage.
- **Generar otros formatos de video desde Marketing Studio:**
  - **Unboxing:** Selecciona formato "unboxing" → genera video de alguien abriendo el empaque.
  - **Product review:** Selecciona formato "product review" → genera video de alguien reseñando el producto como si lo hubiera usado semanas.
  - **Virtual try-on:** Selecciona formato "virtual try-on" → la persona saca el producto del bolsillo y se lo pone mientras filma.
- **Ajuste de duración de video:** Si el personaje habla muy rápido, aumenta la duración del video para darle más espacio al modelo.

## Reglas para agentes
- Usa "ad creative skill" del marketplace siempre que generes conceptos de anuncios, no dejes que Claude adivine sin un playbook.
- Cuando un hook use datos inventados (ej. reseñas falsas), pídele a Claude que lo reescriba con honestidad, no aceptes la primera versión.
- Antes de que tu skill personalizado escriba un solo anuncio, haz que estudie la voz de la marca (tono, fraseo, líneas off-brand) primero.
- Nunca generes imágenes sin especificar el estilo (studio shot vs lifestyle) — Claude necesita esa dirección para llamar al empleado correcto.
- Cuando generes videos, siempre define la duración explícitamente para evitar que el modelo acelere la locución.
- Reutiliza tu brand voice tool personalizado en cada nuevo producto que lances, no crees uno nuevo cada vez.

## Errores comunes que evita o menciona
- **Fake social proof:** El hook del último concepto usaba reseñas de clientes inexistentes. Se corrige pidiendo una reescritura honesta que desafíe al cliente a probar el producto.
- **Velocidad de locución en videos:** Si el video es muy corto, el modelo fuerza al personaje a hablar demasiado rápido. Solución: dar más "breathing room" aumentando la duración.
- **Texto mal renderizado en imágenes:** Otros AI tools fallan al poner texto en imágenes. Higgsfield Marketing Studio lo maneja correctamente, extrayendo headlines de los conceptos y construyendo el layout completo.
- **No depender de un solo formato:** Meta recompensa alimentar el algoritmo con muchas variaciones diferentes. El error es crear solo un tipo de anuncio.