# I Mixed AI With Real Footage! (Premiere Pro + Higgsfield AI)
**Fuente:** hf_ola2 | https://youtu.be/DvRGamF7uRo

## Que ensena sobre Higgsfield (2-3 lineas)
Enseña a usar el plugin KEAXL para Premiere Pro para editar footage real con IA directamente en la línea de tiempo: eliminar objetos, añadir personas, cambiar ropa/fondo, crear transiciones dinámicas, generar múltiples ángulos de cámara, reframe horizontal a vertical y upscaling. Todo sin salir de Premiere.

## Tips y flujos accionables

**Instalación del plugin KEAXL:**
1. Ir a keaxl.ai → Plugins → Download
2. Ejecutar setup → Abrir Premiere Pro
3. Ventana → Extensiones → KEAXL plugin
4. Iniciar sesión con cuenta KEAXL

**Eliminar objeto no deseado:**
- Clip en timeline → Click "Edit Video"
- Prompt exacto: `remove the car`
- Generar → Arrastrar resultado a timeline

**Añadir persona/personaje:**
- Click "Edit Video"
- Adjuntar "character sheet" (hoja de personaje de referencia)
- Prompt exacto: `add an old man`
- Generar → Arrastrar a timeline

**Cambiar ropa (inpainting localizado):**
- Click "Draw the video"
- Pintar/Seleccionar área específica a cambiar
- Prompt exacto: `change the outfit to pajamas`
- Generar

**Cambiar fondo completo:**
- Click "Edit Video"
- Prompt exacto: `change the background behind the person to a sunset view from the hill`
- Generar

**Transición dinámica entre clips:**
- Ir a "Video Generation"
- Adjuntar frame de inicio y frame final
- Prompt exacto: `make a dynamic transition`
- Generar → Insertar entre clips

**Multi-ángulo desde un solo clip:**
- Prompt exacto: `create a multi-shot with two different camera angles`
- Opciones: cambiar ángulo o revertir al original

**Reframe para redes sociales:**
- Click "Reframe"
- Elegir formatos: 9:16, 4:3, 21:9
- Ajustar ancho: "wider", "more wide", "cinematic"

**Upscaling de video de baja calidad:**
- Sin prompt necesario
- Click botón "Upscale it"

## Reglas para el erudito de Higgsfield

- Para eliminar objetos no deseados usa "Edit Video" con prompt directo `remove [objeto]`
- Para añadir personajes usa "Edit Video" + attach "character sheet" + prompt `add [descripción]`
- Para cambiar ropa usa "Draw the video" seleccionando el área exacta + prompt `change the outfit to [nueva prenda]`
- Para cambiar fondo usa "Edit Video" + prompt `change the background behind the person to [descripción de escena]`
- Para transiciones usa "Video Generation" con frame inicial y final + prompt `make a dynamic transition`
- Para multi-ángulo usa prompt `create a multi-shot with two different camera angles`
- Para reframe usa "Reframe" y selecciona 9:16, 4:3 o 21:9 según plataforma
- Para upscaling usa el botón "Upscale it" sin prompt

## Errores comunes / que evitar

- No olvidar adjuntar "character sheet" al añadir personas para mantener consistencia visual
- No usar prompts genéricos para eliminación; sé específico: `remove the car` no `delete object`
- No pintar áreas demasiado grandes al cambiar ropa; seleccionar solo la prenda a modificar
- No usar frames de inicio/final muy diferentes en transiciones; deben tener continuidad visual
- No generar reframe sin antes previsualizar el ancho; ajustar con "wider" o "cinematic" según necesidad
- No olvidar arrastrar el resultado generado a la timeline después de cada operación