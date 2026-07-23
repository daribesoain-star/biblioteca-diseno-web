# Higgsfield AI 2026: Tutorial Completo paso a paso para dominarlo
**Fuente:** hf_es | https://youtu.be/sWwKzbk2jYk

## Que ensena sobre Higgsfield (2-3 lineas)
Higgsfield es una plataforma todo-en-uno que centraliza múltiples modelos de IA (Nano Banana, Kling, Seedance, Flux, Sora, etc.) para generar imágenes y videos con consistencia de producto/personaje. El flujo clave es: generar imagen inicial + imagen final con Nano Banana Pro, luego animar la transición con Kling 3.0, manteniendo coherencia visual mediante imágenes de referencia y paletas de color.

## Tips y flujos accionables

### Flujo principal: Imagen consistente + video con transición
1. **Generar imagen inicial y final con Nano Banana Pro:**
   - Ve a `Imágenes` > `Crear imagen`
   - Modelo: **Nano Banana Pro** (mejor calidad para producto/personaje consistente)
   - Sube **imagen de referencia** del producto/personaje (hasta 8 imágenes)
   - Añade **paleta de colores** como referencia extra si quieres mantener tonos exactos
   - Prompt: describe la escena deseada (ej: "chica sosteniendo el perfume en un café")
   - Relación de aspecto: **9:16** para vertical (Instagram/TikTok), **16:9** para horizontal
   - Calidad: **2K** o **4K** (mayor calidad = mejor resultado)
   - Genera **4 imágenes** máximo para elegir la mejor
   - Descarga la imagen que más te guste

2. **Animar la transición con Kling 3.0:**
   - Ve a `Video` > `Crear video`
   - Modelo: **Kling 3.0** (mejor para transiciones imagen a imagen)
   - Sube **imagen inicial** (la primera escena)
   - Sube **imagen final** (la segunda escena)
   - Prompt: describe el movimiento/transición (ej: "la chica levanta el perfume lentamente")
   - Duración: **3-5 segundos** (ideal para transiciones cortas)
   - Calidad: **Alta**
   - Genera y descarga

### Flujo avanzado: Multishot con Kling 3.0 OVNI
- Para videos de **hasta 15 segundos** con múltiples escenas
- Activa **Multishot** en la sección de video
- Sube **3-6 imágenes** de referencia (misma modelo/producto en diferentes poses/ángulos)
- Define transiciones: "imagen 1 se convierte en imagen 2", "imagen 2 se convierte en imagen 3", etc.
- Modelo: **Kling 3.0 OVNI** (permite múltiples imágenes de entrada)
- Duración total: hasta **15 segundos** (3s por escena)

### Motion Control: Clonar movimiento
1. Ve a `Video` > `Motion Control`
2. Sube un **video de referencia** (alguien gesticulando, 3-30 segundos)
3. Sube una **imagen** de la persona/modelo que quieras animar
4. El modelo replica el movimiento del video de referencia en la imagen subida
5. Ideal para: avatares, influencers virtuales, lipsync

### Crear personaje/avatar consistente (Soul ID)
- Ve a `Imágenes` > `Soul ID Carter`
- Sube **3-5 fotos** de la misma persona desde diferentes ángulos
- El modelo aprende el rostro y cuerpo
- Luego en cualquier generación, selecciona ese **Soul ID** como referencia
- Útil para: mantener el mismo personaje en todas las imágenes/videos

### Inpainting: Editar partes de una imagen
1. En la sección de imágenes, selecciona una imagen generada
2. Haz clic en **Inpaint**
3. Selecciona el área a modificar (ej: fondo, objeto)
4. Prompt: describe lo que quieres en esa área (ej: "que sea de día" en el fondo)
5. El modelo rellena solo esa zona manteniendo el resto

### Face Swap
- En la sección de imágenes, usa **Facewap**
- Sube imagen de referencia (tu rostro) + imagen objetivo (ej: Will Smith)
- El modelo intercambia el rostro manteniendo el resto

## Reglas para el erudito de Higgsfield

- **Para consistencia de producto/personaje:** usa **Nano Banana Pro** con **imagen de referencia** + **paleta de colores** como input
- **Para transiciones suaves entre imágenes:** usa **Kling 3.0** con imagen inicial + imagen final + prompt de movimiento (duración 3-5s)
- **Para videos largos con múltiples escenas:** usa **Kling 3.0 OVNI** con **Multishot** activado y 3-6 imágenes de referencia
- **Para clonar movimiento de un video a una imagen:** usa **Motion Control** con video de referencia (3-30s) + imagen estática
- **Para editar partes específicas de una imagen:** usa **Inpaint** seleccionando el área y dando prompt descriptivo
- **Para mantener el mismo personaje en todas las generaciones:** crea un **Soul ID** con 3-5 fotos y selecciónalo como referencia
- **Para formato vertical (Instagram/TikTok):** relación de aspecto **9:16**
- **Para formato horizontal (YouTube):** relación de aspecto **16:9**
- **Para máxima calidad de imagen:** usa calidad **4K** en Nano Banana Pro
- **Para videos de alta calidad:** usa **Kling 3.0** con calidad **Alta**

## Errores comunes / que evitar

- **No usar imagen de referencia** al generar imágenes de producto/personaje → pierde consistencia visual (logo, colores, forma cambian)
- **Usar solo un prompt sin imagen final** en Kling 3.0 → el video no tiene transición clara, parece aleatorio
- **Seleccionar modelos incorrectos** (ej: Seedance 5.0 Lite en lugar de Nano Banana Pro) → resultados de menor calidad
- **No activar Multishot** cuando necesitas múltiples escenas → videos cortos y sin narrativa
- **Usar duración muy larga** (15s) en transiciones simples → el video se vuelve errático o alucina
- **No subir suficientes fotos** (menos de 3) para Soul ID → el personaje no se reconoce bien en diferentes ángulos
- **Ignorar la paleta de colores** cuando el producto tiene colores específicos → el modelo puede cambiar tonos
- **Usar Motion Control sin video de referencia claro** → el movimiento sale robótico o no se replica bien
- **No descargar la imagen antes de animar** → si cierras la sesión pierdes la referencia
- **Confiar en el prompt sin verificar** → siempre revisa las 4 variantes generadas y elige la mejor