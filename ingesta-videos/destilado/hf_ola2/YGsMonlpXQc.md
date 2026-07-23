# Cómo crear Influencers de IA con Higgsfield AI (Tutorial Completo)
**Fuente:** hf_ola2 | https://youtu.be/YGsMonlpXQc

## Que ensena sobre Higgsfield (2-3 lineas)
Higgsfield permite crear un AI Influencer completo desde cero (Soul ID), generar imágenes y videos con consistencia de personaje, y orquestar campañas de marca (producto + modelo + animación) en un solo flujo. La clave está en usar Cinema Studio Image 2.0 para fotos cinematográficas, Seedance 3.0 para lip-sync en videos UGC, y Cinema Studio 2.5 para animación multi-shot de producto.

## Tips y flujos accionables

### Creación del Soul ID (personaje base)
1. **Subir 20+ fotos** del rostro desde varios ángulos (usa prompts de la descripción del video para generar ángulos y expresiones).
2. Ir a **Character > Soul ID character > Create character**.
3. Esperar minutos a que entrene.

### Generación de imagen consistente con Soul ID
- **Modelo:** Cinema Studio Image 2.0 (obligatorio para Soul ID).
- **Ajustes:** Aspect ratio 16:9, resolución 2K, número de imágenes = 2.
- **Moodboard:** Usa preset **"Terrar"** (o cualquier otro: Eras, Theatrical lighting, Street photography, Natural light). Si no te gusta, crea tu propio moodboard subiendo 20+ referencias.
- **Prompt ejemplo (sin color transfer):** *"Woman in a flowing mermaid dress in a pool by the moonlight. Whimsical atmosphere, flower behind the ear, soft night light, gentle water waves, dreamy cinematic ambiance, seductive gaze, sun in nature."*
- **Color Transfer:** Aplica paleta de colores externa. **Regla:** No menciones colores en el prompt, solo describe sujeto, iluminación y composición.

### Generación de variaciones de pose (BAND)
- Ir a **Image > Band**.
- Elegir preset (ej: **Coolg Dump** para hombre/mujer).
- Seleccionar Soul ID y generar. Obtienes múltiples poses con personaje consistente.

### Creación de video UGC (influencer hablando)
1. **Producto:** Generar con **Image > Nano Banana 2** (modelo para objetos). Prompt: descripción del producto.
2. **Modelo con producto:** Usar **Cinema Studio Image 2.0** con upload de personaje + producto. Ajustes: aspect ratio 16:9, resolución 4K, grid 2x2. Configurar cámara: **Digital 8K modular camera**, **Extreme macro lens**, focal length **8mm**, aperture **1.4mm**.
3. **Variaciones profesionales:** Usar app **Professional shots** (subir imagen, genera múltiples ángulos automáticamente).
4. **Animación con lip-sync:** Ir a **Video > Seedance 3.0**. Subir imagen. Prompt: guión. Duración: **10-12 segundos exactos** (más tiempo rompe lip-sync). Resolución: 720p.

### Animación cinematográfica de producto (multi-shot)
1. **Fotos base:** Cinema Studio Image 2.0 con upload de producto. Grid 2x2, 2K.
2. **Variaciones:** App **Professional shots** con imagen de producto.
3. **Animación:** Ir a **Cinema Studio 2.5**. Upload imagen. Elegir **Manual Multishot**, calidad 1080p.
4. **Definir escenas:**
   - Escena 1: *"Macro shot of a hand placing a glass jar in sparkling water. Zoom. Slow motion, 3 seconds."*
   - Escena 2: *"Slow-motion water waves expanding. Static shot, 3 seconds."*
5. Generar. Sigue instrucciones de escena exactamente.

### Atajo rápido para producto
- Ir a **Apps > Ads > Products**.
- Elegir template (ej: **Macro scene**).
- Subir producto y generar.

## Reglas para el erudito de Higgsfield

- **Para crear personaje consistente:** usa **Soul ID** con 20+ fotos de rostro desde múltiples ángulos.
- **Para imagen cinematográfica con personaje:** usa preset **Cinema Studio Image 2.0** con moodboard **Terrar** (u otro preset), aspect ratio 16:9, resolución 2K.
- **Para aplicar paleta de colores externa:** usa **Color Transfer** dentro de Cinema Studio Image 2.0, sin mencionar colores en el prompt.
- **Para variaciones de pose rápidas:** usa **Image > Band** con preset **Coolg Dump**.
- **Para video UGC con lip-sync:** usa **Video > Seedance 3.0**, duración exacta 10-12 segundos, resolución 720p.
- **Para animación multi-shot de producto:** usa **Cinema Studio 2.5** en modo **Manual Multishot**, calidad 1080p, definiendo escenas con descripción de movimiento y duración.
- **Para generar producto:** usa **Image > Nano Banana 2**.
- **Para variaciones profesionales de ángulo:** usa app **Professional shots** después de generar imagen base.
- **Para template rápido de producto animado:** usa **Apps > Ads > Products** con template **Macro scene**.

## Errores comunes / que evitar

- **Usar otro modelo que no sea Cinema Studio Image 2.0** con Soul ID → pierde consistencia del personaje.
- **Mencionar colores en el prompt cuando usas Color Transfer** → arruina la transferencia de paleta.
- **Poner duración mayor a 12 segundos en Seedance 3.0** → el lip-sync falla.
- **No subir suficientes fotos (menos de 20) para Soul ID** → el personaje no se entrena bien.
- **Usar resolución menor a 2K para imágenes de campaña** → pierde calidad cinematográfica.
- **No definir cámara/lente/apertura en Cinema Studio Image 2.0** → resultados genéricos sin control de look.
- **Usar moodboard por defecto sin explorar presets** → pierdes estilos específicos (Eras, Theatrical lighting, etc.).
- **Intentar hacer lip-sync con Seedance 3.0 en resoluciones mayores a 720p** → puede fallar o ser muy lento.