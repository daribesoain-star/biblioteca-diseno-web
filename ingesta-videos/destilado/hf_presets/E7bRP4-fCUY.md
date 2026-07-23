# Higgsfield - Create Visual Effects For Films, Music Videos, Fashion & Advertising - Full Course
**Fuente:** hf_presets | https://youtu.be/E7bRP4-fCUY

## Que ensena sobre Higgsfield (2-3 lineas)
Higgsfield es una plataforma de IA que genera efectos visuales cinematográficos mediante presets predefinidos (fuego, transformaciones, inundaciones, etc.) sin necesidad de prompting complejo. Cubre generación de imágenes realistas con Higgsfield Soul, edición con Flux Context, inpainting en Canvas, y video VFX con control de cámara y mezcla de efectos. Ideal para cortometrajes, videos musicales, moda y publicidad.

## Tips y flujos accionables

### Generación de imagen base (Higgsfield Soul)
- **Modelo exacto:** Higgsfield Soul (seleccionar icono de imagen, asegurar que esté activo)
- **Aspect ratio:** Cambiar en el menú desplegable antes de generar
- **Calidad:** Poner en "High" para máxima calidad (consume más créditos)
- **Presets de imagen:** Click en "Change" para acceder a la biblioteca. Presets clave:
  - `iPhone Photo` - look amateur realista
  - `Y2K` - estética retro
  - `Digital Cam` - ideal para fashion editorial
  - `Fashion Runway` - pasarela de moda
  - `Fisheye Lens` - efecto ojo de pez
  - `Giant People` - personas gigantes
  - `Quiet Luxury` - lujo discreto
- **Modo General:** Si seleccionas "General", aparece un botón para desactivar "Enhance Prompt" (el AI no modificará tu prompt). En cualquier otro preset, el AI siempre enriquece el prompt automáticamente.
- **Prompt ejemplo usado:** "bring a charismatic grandma to life"

### Edición de imagen (Flux Context)
- **Flujo:** Descargar imagen generada → Ir a "Image" → Seleccionar "Flux Context" → Arrastrar imagen
- **Uso:** Edición basada en texto. Ejemplo exacto: "make her wear yellow heart-shaped glasses and a yellow puffer jacket" (resultado: retain consistency, cambió a pelo morado)
- **Cambio de estilo:** Prompt ejemplo: "in the style of a crayon drawing"
- **Ventaja sobre GPT-4o:** Retiene mejor la consistencia general de la imagen original

### Canvas (Inpainting para producto/vestimenta)
- **Acceso:** Click en "Canvas" desde el menú principal
- **Máscara:** Hover sobre la imagen → aparece círculo verde → click y arrastrar para pintar máscara (no necesita ser precisa)
- **Subir producto:** Click "Add Photo" → arrastrar imagen del producto real
- **Prompt contexto:** Ejemplo: "she is holding an energy drink can"
- **Resultado:** Solo modifica el área enmascarada, el resto permanece idéntico. Conserva texto pequeño y consistencia del producto original
- **Costo:** 1 crédito por generación
- **Flujo completo de reemplazo múltiple:**
  1. Imagen inicial → máscara en bolso → subir imagen de bolso nuevo → generar
  2. Resultado como nueva base → máscara en zapatillas → subir imagen de zapatilla nueva → generar
  3. Resultado como nueva base → máscara en chaqueta → subir imagen de chaqueta nueva → generar
- **Inpainting de vestimenta:** Máscara sobre el cuerpo → subir imagen de la prenda → prompt: "make her wear this blazer"

### Generación de video VFX
- **Flujo:** Seleccionar imagen → Click "Video" → la imagen se coloca automáticamente en el primer frame
- **Modelo:** Seleccionar "Standard" para mejor calidad
- **Calidad extra:** Click en ícono de settings → aumentar "Steps" (consume más créditos, mejora calidad)
- **Duración máxima:** 5 segundos
- **Presets de VFX:** Click en "Change" para acceder a biblioteca. Presets mencionados:
  - `Garden Bloom` - flores creciendo sobre el sujeto
  - `Paparazzi` - efecto de fotógrafos
  - `Morph Skin` - transición entre dos imágenes (ideal con start/end frame)
  - `3D Rotation` - rotación completa 3D (ideal para transiciones)
  - `Angel Wings` - alas de ángel
- **Prompt:** No es necesario escribir prompt, pero se puede para guiar. Dejar "Enhanced" activado para mejores resultados

### Mix (Mezcla de efectos + cámara)
- **Acceso:** Click en "Mix" debajo del preset seleccionado
- **Slider de porcentaje:** Click y arrastrar la barra blanca hacia arriba (aumenta) o abajo (disminuye)
- **Uso:** Combinar dos efectos diferentes O agregar motion control a un efecto
- **Ejemplo exacto:** Garden Bloom al 70% + Dolly In al 75% → resultado: flores creciendo + cámara acercándose
- **Control de importancia:** Porcentaje más alto = más presencia de ese efecto en el resultado final

### Start/End Frame (Keyframes)
- **Flujo:** Arrastrar primera imagen (start frame) → Arrastrar segunda imagen (end frame) → Seleccionar preset VFX
- **Preset recomendado:** `Morph Skin` para transiciones mágicas (ropa/cabello cambiando)
- **Otro uso:** `3D Rotation` con dos imágenes diferentes para transiciones estilizadas
- **No requiere prompt** - solo seleccionar efecto y generar

### Speak (Lip Sync)
- **Acceso:** Desde "Video" o menú "Create" → "Speak"
- **Presets de lip sync:** Elegir según el tipo de imagen:
  - `Selfie` - para selfies
  - `Walk and Talk` - caminando y hablando
  - `Selling Products` - vendiendo productos
- **Selección de voz:** Click en el cuadro de voz → elegir entre voces disponibles (reproducir con play)
- **Ambiente sonoro:** Opción para simular ubicación (ej: "I'm on a street. Cars, people, city.")
- **Texto:** Escribir texto para text-to-speech
- **Calidad:** "Basic" es suficiente; "Highest" consume 85 créditos
- **Problema conocido:** La sincronización labial se desincroniza en videos largos; aspecto artificial

### Explorar inspiración
- **Ruta:** "Explore" → "View All Visual Effects" → Click en un efecto específico → Muestra más ejemplos del mismo efecto
- **Desde ahí:** Click "Generate" para empezar a crear con ese preset

## Reglas para el erudito de Higgsfield

- **Para generar imágenes realistas indistinguibles de fotos reales:** usa el modelo `Higgsfield Soul` con preset `iPhone Photo` o `Quiet Luxury`, calidad en `High`
- **Para look amateur/fotografía de viaje:** usa `Higgsfield Soul` con preset `iPhone Photo` (el AI genera ese "amateur aesthetic")
- **Para moda editorial:** usa `Higgsfield Soul` con preset `Digital Cam` o `Fashion Runway`
- **Para efecto ojo de pez:** usa `Higgsfield Soul` con preset `Fisheye Lens`
- **Para estética Y2K:** usa `Higgsfield Soul` con preset `Y2K`
- **Para que el AI siga EXACTAMENTE tu prompt sin modificarlo:** selecciona preset `General` y desactiva el botón de "Enhance Prompt"
- **Para editar imagen manteniendo consistencia:** usa `Flux Context` en lugar de GPT-4o
- **Para reemplazar productos/publicidad en imágenes:** usa `Canvas` con máscara verde (no necesita ser precisa) y sube la imagen del producto real
- **Para reemplazar vestimenta con control preciso:** usa `Canvas` con máscara sobre el cuerpo y sube imagen de la prenda
- **Para reemplazar vestimenta rápido sin máscara:** usa `Image` → `Flux Context` → sube dos imágenes (modelo + prenda) → prompt: "Make the female wear this blazer"
- **Para generar video VFX:** selecciona imagen → ve a `Video` → elige preset de efecto visual en "Change" → deja "Enhanced" activado
- **Para agregar movimiento de cámara a un efecto:** usa `Mix` → combina el efecto VFX con un preset de cámara (ej: `Dolly In`) usando el slider de porcentaje
- **Para transiciones entre dos imágenes:** usa `Start Frame` y `End Frame` con preset `Morph Skin` o `3D Rotation`
- **Para mejor calidad en video:** selecciona modelo `Standard` y aumenta los `Steps` en settings
- **Para lip sync:** usa preset `Selfie` si es selfie, y mantén videos cortos para evitar desincronización

## Errores comunes / que evitar

- **No usar "General" sin desactivar "Enhance Prompt" si quieres control exacto del prompt** - el AI modificará tu texto automáticamente
- **No subestimar la máscara en Canvas** - no necesita ser precisa, el AI entiende el contexto aunque la máscara solape otros elementos
- **No olvidar descargar la imagen generada antes de editarla con Flux Context** - necesitas el archivo local
- **No usar GPT-4o para edición si buscas consistencia** - Flux Context retiene mejor la imagen original
- **No escribir prompt complejo para video VFX** - los presets ya determinan el efecto; el prompt es opcional y solo para guiar
- **No olvidar que el slider de Mix controla la importancia del efecto** - porcentaje más alto = más presencia en el resultado final
- **No esperar lip sync preciso en videos largos** - la sincronización se degrada con la duración
- **No usar la versión gratuita para trabajo serio** - solo 12 créditos (2 videos); necesitas plan Pro o Ultimate
- **No ignorar la sección "Explore"** - ver ejemplos de cada efecto da ideas para combinaciones creativas
- **No asumir que todos los presets funcionan igual** - algunos requieren start/end frame (Morph Skin), otros funcionan con una sola imagen