# 143679
**Fuente:** eh-imagen-ia | https://youtu.be/OA4gchz1Zcs

## Qué enseña
Tutorial completo sobre Ideogram 4, un generador de imágenes open-source con control de composición mediante bounding boxes en un canvas. Explica cómo instalarlo en ComfyUI para ejecutarlo offline de forma gratuita, y cómo usar su sistema de diseño por regiones para lograr resultados precisos con texto, personajes y escenas complejas.

## Lecciones accionables
- **Instalación en ComfyUI (Windows portable):**
  1. Descargar el workflow desde el enlace en la descripción (archivo `.json`).
  2. Arrastrar el workflow al interface de ComfyUI.
  3. Instalar ComfyUI Manager: en la carpeta raíz de ComfyUI, abrir CMD y ejecutar:
     ```
     git clone https://github.com/ltdrdata/ComfyUI-Manager.git
     ```
  4. En `run.bat`, agregar `--enable-manager` al final de la línea de lanzamiento.
  5. Reiniciar ComfyUI, abrir Manager → "Missing Nodes" → "Install" para todos los nodos faltantes.
  6. Si falta el nodo `KJ Prompt Builder`, clonar manualmente:
     ```
     cd ComfyUI/custom_nodes
     git clone https://github.com/kijai/ComfyUI-KJNodes.git
     ```
     Para actualizar: `cd ComfyUI-KJNodes` y ejecutar `git pull`.
  7. Descargar modelos desde la página de Hugging Face (enlace en descripción):
     - **Modelo principal:** `ideogram-4.safetensors` (FP8 o NVFP4) → `ComfyUI/models/diffusion_models/`
     - **Modelo unconditional:** `ideogram-4-unconditional.safetensors` (FP8 o NVFP4) → `ComfyUI/models/diffusion_models/`
     - **Text encoder:** `Qwen2-VL-7B-Instruct` (FP8 o NVFP4) → `ComfyUI/models/text_encoders/`
     - **VAE:** `flux2-vae.safetensors` → `ComfyUI/models/vae/`
  8. Presionar `R` para refrescar listas y seleccionar cada modelo en los nodos correspondientes.

- **Uso del workflow:**
  - **Aspect ratio y tamaño:** Nodo `Aspect Ratio` → seleccionar megapíxeles y relación (ej. 3:4, 9:32, 32:9).
  - **Prompt builder:** Nodo `Ideogram Prompt Builder` → escribir descripción general, fondo, estilo (photo/art/none), estética, iluminación, medio.
  - **Bounding boxes obligatorios:** Dibujar rectángulos en el canvas para cada elemento. Sin bounding boxes, el generador devuelve "image blocked by safety filter".
  - **Tipos de elemento:** Seleccionar "object" o "text" en cada bounding box.
  - **Texto en bounding boxes:** Especificar tipografía, color y tamaño (ej. "large bold blocky sans-serif text in deep green color").
  - **Seleccionar elementos superpuestos:** Mantener `Alt` + clic para acceder a elementos detrás.
  - **Duplicar elementos:** `Ctrl + D` sobre un bounding box seleccionado.
  - **Color de referencia:** Clic en elemento → selector de color. Para eliminar un color, clic derecho sobre él.
  - **Semilla (seed):** Fija por defecto para mantener estilo. Usar "new fixed random" para variar, o "randomize each time" para semilla aleatoria en cada generación.
  - **Batch size:** Nodo correspondiente → ajustar número de imágenes a generar simultáneamente (1, 2, 4, etc.).
  - **Edición post-generación:** Presionar "grab background" para superponer la imagen generada como referencia. Ajustar opacidad. Reposicionar bounding boxes y regenerar con la misma seed para obtener variaciones similares.

- **Ejemplo de prompt para poster:**
  - Descripción general: `"poster called matcha mayhem introducing three new matcha drinks"`
  - Estilo: `none`
  - Estética: `minimalist`
  - Iluminación: `smooth professional product photo`
  - Medio: `poster`
  - Fondo: `minimalist cafe setting`
  - Bounding boxes: título "matcha mayhem" (texto, verde oscuro, sans-serif), subheading, tres vasos de matcha con descripciones (object), etiquetas de texto para cada uno.

- **Ejemplo de escena compleja:**
  - Descripción: `"two women in bikinis riding an ostrich in the desert"`
  - Fondo: `desert, sunset`
  - Bounding boxes: mujer rubia (red bikini), mujer pelo rosa (black bikini), ostrich running.

## Reglas para agentes
- **Usa bounding boxes en el canvas siempre** antes de generar; sin ellos, el modelo devuelve "image blocked by safety filter" aunque no sea censura real.
- **Mantén la seed fija** cuando quieras editar la composición de una imagen existente sin cambiar el estilo general.
- **Usa `Alt + clic`** para seleccionar elementos detrás de otros en el canvas.
- **Nunca asumas que el modelo acepta imágenes como input** — Ideogram 4 es solo texto a imagen, el "grab background" es solo referencia visual, no entrada.
- **Verifica la licencia no comercial** antes de usar las imágenes generadas para fines comerciales; contactar a ventas de Ideogram para uso comercial legal.
- **Configura `--enable-manager`** en el archivo de lanzamiento de ComfyUI para facilitar la instalación de nodos faltantes.

## Errores comunes que evita o menciona
- **"Image blocked by safety filter"** no es censura real; ocurre porque no se dibujaron bounding boxes en el canvas. Solución: siempre dibujar al menos un bounding box.
- **No confundir "grab background" con image-to-image**: la función solo superpone la imagen generada como referencia visual para reposicionar elementos, no la usa como input.
- **JSON manual propenso a errores**: el workflow oficial requiere formatear el prompt en JSON; el workflow alternativo con KJ Prompt Builder evita este problema.
- **Modelos grandes requieren RAM, no solo VRAM**: ComfyUI descarga automáticamente a RAM, permitiendo ejecutar modelos de 9 GB con solo 6 GB de VRAM.
- **No olvidar descargar ambos modelos** (principal y unconditional) más el text encoder y VAE; faltando uno, el workflow no funciona.
- **Actualizar KJ Nodes** con `git pull` dentro de la carpeta si ya estaba instalado previamente.