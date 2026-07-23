# Cómo crear PERSONAJES IA consistentes y cambiar su ropa al instante
**Fuente:** hf_ola2 | https://youtu.be/SaAoZbqQkdQ

## Que ensena sobre Higgsfield (2-3 lineas)
Muestra el flujo completo para crear un personaje consistente con **Soul ID Character** usando una sola foto de referencia, y luego reutilizarlo en **Higgsfield Soul** para cambiar ropa, pose y fondo con prompts descriptivos. Demuestra que incluso con 1 foto se logra consistencia facial aceptable, y que subir más fotos (hasta 70) mejora la fidelidad.

## Tips y flujos accionables

### Flujo paso a paso para crear personaje consistente
1. **Crear el personaje base:**
   - Ve a la pestaña **Character tool** → selecciona **Soul ID Character**.
   - Haz clic en **Upload images** (sube 1 foto como mínimo, hasta 70 para mejor consistencia).
   - Asigna un **nombre al personaje**.
   - Haz clic en **Generate** y espera ~2-3 minutos.

2. **Usar el personaje en nuevas escenas:**
   - Ve a **Image** → **Higgsfield Soul** (etiquetado como "ultra-realistic fashion visuals").
   - Abajo, en el selector **Character**, elige el personaje que creaste.
   - Escribe un **prompt descriptivo** (ej: "winter outfit", "riding a bicycle", "exercising in a home gym").
   - Ajusta parámetros:
     - **Model:** Higgsfield Soul (general), o prueba otros modelos disponibles.
     - **Aspect ratio:** selecciona el que necesites.
     - **Quality:** "Rise" (recomendado para mejor resultado).
     - **Auto-improve prompt:** activar/desactivar según prefieras.
     - **Number of images:** 4 (por defecto, da opciones para elegir la mejor).
     - **Image style:** "General" por defecto; opciones adicionales como "iPhone photo style" o "Tokyo style".
   - Haz clic en **Generate** y espera ~2 minutos.

### Prompts VERBATIM usados en el video
- Cambio de ropa a invierno: *"winter outfit"*
- Cambio de pose: *"riding a bicycle"*
- Cambio a ropa deportiva: *"exercising"* (el software infiere fondo de home gym automáticamente)

### Trucos para look cinematográfico y evitar alucinaciones
- **Para mejor consistencia facial:** sube múltiples fotos del personaje en diferentes poses y ángulos (hasta 70).
- **Para cambios de ropa sin perder rostro:** usa prompts simples y directos; el modelo **Higgsfield Soul** mantiene la cara incluso con cambios drásticos de vestimenta y fondo.
- **Para elegir la mejor imagen:** pasa el cursor sobre cada resultado; en la esquina inferior derecha aparece qué **Character** y qué **Model** se usó.
- **Para variar estilo visual:** cambia el **Image style** a "iPhone" para look más realista o "Tokyo" para estética japonesa.

## Reglas para el erudito de Higgsfield
- **Para crear un personaje base consistente:** usa **Soul ID Character** con al menos 1 foto (ideal 10-70) y nómbralo antes de generar.
- **Para cambiar ropa, pose o fondo del personaje:** usa el modelo **Higgsfield Soul** en la sección **Image**, selecciona el personaje creado, y escribe un prompt descriptivo.
- **Para obtener múltiples opciones:** fija **Number of images** en 4 y elige manualmente la que mejor conserve el rostro.
- **Para mejorar calidad visual:** mantén **Quality** en "Rise" y activa **Auto-improve prompt** si el prompt es muy simple.
- **Para estilos específicos:** selecciona **Image style** como "iPhone" (look de foto realista) o "Tokyo" (estética urbana japonesa).

## Errores comunes / que evitar
- **Usar solo 1 foto cuando se necesita máxima consistencia:** sube al menos 5-10 fotos en diferentes poses para que el modelo aprenda mejor el rostro.
- **No seleccionar el personaje creado antes de generar:** verifica que en el selector **Character** aparezca el nombre de tu personaje, no uno por defecto.
- **Ignorar la previsualización de resultados:** siempre pasa el cursor sobre las imágenes para confirmar que el **Character** correcto está siendo usado.
- **Usar prompts demasiado complejos o contradictorios:** mantén prompts simples (ej: "winter outfit" en vez de "winter outfit with a red scarf and snow in background").
- **Olvidar cambiar el modelo:** si buscas ultrarealismo, asegúrate de usar **Higgsfield Soul** y no otro modelo genérico.