# This One Prompt Fixes AI Character Consistency (Use This)
**Fuente:** hf_ola2 | https://youtu.be/G01kghX152g

## Que ensena sobre Higgsfield (2-3 lineas)
El metodo clave es generar una **character sheet** (hoja de personaje) con vistas frontal, lateral, 3/4 y trasera, mas primeros planos de rostro. Esto sirve como referencia visual para mantener consistencia en videos. La herramienta principal usada es **Google Flow** (no Higgsfield directamente), pero el prompt y flujo son aplicables a cualquier modelo de imagen/video, incluyendo los que usa Higgsfield (Cinema Studio, Seedance, Kling).

## Tips y flujos accionables

- **Prompt exacto para la character sheet:** Usa el prompt del "Prompt Guide" (link en descripcion del video). Pide un layout especifico: protagonista en poses concretas, estilo hiperrealista (evitar 3D render). No se transcribe completo, pero el resumen es: "vista frontal, lateral, 3/4, trasera, cuerpo completo y primer plano de rostro".
- **Numero de outputs:** Selecciona **4** como cantidad de salidas. Rara vez se acierta en el primer intento.
- **Upscaling:** Dentro de Flow, descarga en **2K** o **4K** (si tienes el tier mas alto).
- **Correccion de recorte:** Si la character sheet no muestra los pies (cabeza a pies), usa el prompt: *"remake this image, ensuring the entire top row shows full body views from head to toe. All subject in top row must be fully visible including feet with no cropping at the ankles, knees or head."*
- **Metodo rapido para video:** En Flow, cambia el dropdown a **"ingredients to video"**. Sube la character sheet como referencia, luego prompt: *"Create a video of this woman commanding a spaceship"* (o tu escena).
- **Metodo de mayor control:** Primero crea una imagen especifica (ej: personaje en moto en ciudad neon) usando la character sheet como referencia. Luego usa **"frames to video"** con esa imagen como primer frame. Resultado de mayor calidad.
- **Combinar personajes:** Sube dos character sheets como referencias. Prompt: *"Show these two characters standing and talking at the edge of a cinematic bridge"*.
- **Metaprompting para prompts largos:** Usa ChatGPT para mejorar tu prompt inicial. Ej: "Enhance my prompt for cinematic quality".
- **Cambiar iluminacion:** Usa la character sheet + prompt de iluminacion del guide (ej: "neon lit situation").
- **Cambiar vestimenta:** Sube character sheet + imagen de referencia de la ropa (ej: vestido rojo). Prompt: *"Show this character wearing this red cocktail dress"*.
- **Aging (envejecimiento):** Usa prompt del guide, cambia el numero de años. Ej: "age this character by 15 years". Para time-lapse: genera dos frames (joven y viejo), usa **frames to video** con ambos como primer y segundo frame, prompt: *"time-lapse between these two ages"*.
- **Tatuajes/cicatrices complejas:** El metodo funciona incluso con tatuajes faciales detallados. Usa la character sheet como referencia y prompt especifico.
- **Personajes marginales:** Sin imagen de referencia, solo con texto. Prompt del guide para definir personaje directamente.

## Reglas para el erudito de Higgsfield

- **Para generar character sheet consistente:** usa el prompt del guide con **4 outputs**, estilo hiperrealista, y corrige recortes con el prompt de "full body including feet".
- **Para video de alta calidad:** primero crea una imagen especifica con la character sheet como referencia, luego usa **frames to video** con esa imagen como primer frame.
- **Para combinar personajes:** sube ambas character sheets como referencias y define interaccion en el prompt.
- **Para cambiar vestimenta:** sube character sheet + imagen de la ropa como referencia, prompt explicito.
- **Para envejecimiento:** usa el prompt del guide con numero de años, y para time-lapse usa **frames to video** con dos frames de edad diferente.
- **Para iluminacion:** usa character sheet + prompt de iluminacion especifico.
- **Para tatuajes/cicatrices:** el metodo funciona sin cambios adicionales, solo character sheet + prompt descriptivo.

## Errores comunes / que evitar

- **No usar solo texto sin referencia:** Pierdes control de consistencia. Siempre prefiere character sheet como referencia.
- **No conformarse con el primer output:** Genera 4 variaciones y selecciona la mejor.
- **No ignorar recortes:** Si la character sheet no muestra pies, corrige con el prompt especifico.
- **No usar el metodo rapido (ingredients to video) para escenas complejas:** Da menos control. Usa el metodo de dos pasos (imagen -> frames to video).
- **No olvidar el metaprompting:** Los prompts largos y detallados mejoran drasticamente los resultados.
- **No asumir que funciona en todos los modelos sin probar:** El metodo es universal, pero la calidad varia segun el modelo de imagen (Midjourney recomendado para estetica).