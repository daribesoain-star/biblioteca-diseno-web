# Higgsfield AI Marketing Studio - The AI Ad Generator I’m Actually Impressed By
**Fuente:** hf_product | https://youtu.be/E3AUM3XuH2I

## Que ensena sobre Higgsfield (2-3 lineas)
Higgsfield Marketing Studio es un flujo completo de producto a anuncio final en una sola sesión, sin agencia ni edición. Usa el modelo **SeaDance 2.0** (el más barato del mercado para este modelo) y ofrece 9 formatos de anuncio preconfigurados. La clave: consistencia de avatar y producto a través de todos los formatos, con entrada manual o por URL de e-commerce.

## Tips y flujos accionables

### Flujo básico (producto + avatar + formato)
1. **Crear proyecto:** Usa el panel izquierdo como carpetas por campaña.
2. **Cargar producto:** Botón `+` > `Product`. Dos caminos:
   - **Manual:** Sube imagen. El sistema extrae nombre y descripción automáticamente. Solo haz clic en `Create Product`.
   - **URL:** Pega link de Amazon/e-commerce. Scrapea imágenes y detalles. Sin escribir nada.
3. **Seleccionar avatar:** Botón `Avatar`. 40 avatares predefinidos (ej. **Sophia**, **Stefan**). Misma cara en todos los formatos.
4. **Ajustes avanzados:** Ícono de control deslizante junto al selector de formato.
   - **Aspect ratio:** 7 opciones. Para TikTok/Reels usa `9:16`. Para YouTube `16:9`. Para feed `1:1`.
   - **Resolution:** `720p` recomendado.
   - **Duration:** `4` a `15` segundos. Para unboxing usa `12s`. Para UGC usa `8s`.
5. **Formato:** Selector de formato. 9 opciones: `UGC`, `Tutorial`, `Unboxing`, `Hypermotion`, `Product Review`, `TV Spot`, `Wildcard`, `UGC Virtual Try-On`, `Pro Virtual Try-On`.
6. **Prompt:** Opcional. Puedes dejarlo vacío (el AI deduce del producto), escribir una línea, o un script completo.
7. **Generar:** Botón rosa `Generate`.

### Prompts VERBATIM que funcionaron
- **Sin prompt (UGC):** Dejó el campo vacío. Resultado: Sophia sosteniendo el perfume, hablando, lip sync preciso, producto exacto.
- **Unboxing (12s):** *"Stefan in a home gym setup opening the box and pulling the dumbbell set out. Something like a real fitness unboxing you'd see on TikTok."* Resultado: abre caja, saca pesas, gira el dial para cambiar peso.
- **Hypermotion:** Solo `"hypermotion"` (dos palabras). Resultado: movimiento intencional, direccional, estilo estudio profesional.
- **Pro Virtual Try-On:** *"Walking down a sunlit Mediterranean street on a hot summer day, golden hour light, warm breeze."* Resultado: avatar exacto, ropa exacta del link, entorno Mediterráneo con luz dorada.

### Crear avatar personalizado
1. Botón `Avatar` > tarjeta `Create Avatar`.
2. Dos opciones:
   - **Generate from text prompt:** Describe edad, estilo, vibe.
   - **Upload:** Sube una foto. Pon nombre (ej. `Ann`). Clic `Create Avatar`.
3. El avatar queda en tu biblioteca. Misma cara en todos los formatos.

### Traducción y cambio de voz
- Botón `Translate`: dobla el video a otro idioma con lip sync.
- Botón `Change Voice`: intercambia la locución.

### Galería de anuncios reales
Debajo de la barra de generación hay una galería. Cada anuncio tiene botón `Recreate` para usarlo como plantilla.

## Reglas para el erudito de Higgsfield

- **Para UGC sin prompt:** usa formato `UGC`, avatar `Sophia`, producto manual o URL, duración `8s`, resolución `720p`, aspect ratio `9:16`. Deja el prompt vacío.
- **Para unboxing detallado:** usa formato `Unboxing`, avatar `Stefan`, duración `12s`, prompt con descripción de acción específica (abrir caja, sacar objeto, mostrar mecanismo).
- **Para hypermotion puro (sin avatar):** usa formato `Hypermotion`, NO selecciones avatar (slot vacío), prompt solo el nombre del formato `"hypermotion"`, producto con imagen dramática.
- **Para virtual try-on premium:** usa formato `Pro Virtual Try-On`, avatar personalizado (subido desde foto), producto desde URL de ropa, prompt con descripción de entorno y luz (ej. "golden hour", "Mediterranean street").
- **Para consistencia multiplataforma:** crea un avatar personalizado una vez, úsalo en todos los formatos. La cara se mantiene idéntica.
- **Para ahorrar costos de iteración:** usa Higgsfield porque es el lugar más barato para ejecutar SeaDance 2.0. Costo por generación bajo = más variantes probadas.
- **Para escalar a 10 variantes:** usa la URL to ad tool (ruta totalmente automática). Pega link, obtén anuncio, listo.

## Errores comunes / que evitar

- **No escribir prompt en UGC:** No es necesario. El AI deduce del producto. Escribir prompt puede forzar direcciones que rompan la naturalidad.
- **Usar duración corta para unboxing:** No uses menos de `12s`. El unboxing necesita tiempo para la revelación.
- **Olvidar que Hypermotion no usa avatar:** Si seleccionas avatar en Hypermotion, el formato no funciona como debe. Déjalo vacío.
- **Esperar que el prompt controle todo:** El modelo prioriza el producto y el avatar sobre el prompt. Si el prompt contradice el producto, el producto gana.
- **No usar la galería de recreación:** Cada anuncio generado tiene botón `Recreate`. Es la forma más rápida de iterar sobre un estilo que ya funcionó.
- **Subir foto de mala calidad para avatar personalizado:** La cara debe ser clara, frontal, bien iluminada. Si no, el avatar no se mantendrá consistente.
- **Ignorar la traducción y cambio de voz:** Son post-procesos integrados. No necesitas herramientas externas para doblaje o reemplazo de locución.