# Google Gemini's Nano Banana Makes Photo Edits EASY
**Fuente:** eh-imagen-ia | https://youtu.be/QGvRZmG_ZKA

## Qué enseña
Nano Banana es el nombre en clave de una actualización masiva del modelo de edición de imágenes de Google DeepMind integrado en Gemini. Su objetivo principal es preservar la identidad de los sujetos (rostros, objetos) al hacer ediciones complejas, permitiendo cambios de escena, mezcla de fotos y edición conversacional multi-turno sin perder la coherencia visual.

## Lecciones accionables
- Para preservar la identidad facial y cambiar el fondo: arrastra una foto tuya a Gemini y usa un prompt simple como *"Place me in a magical forest sitting on a giant mushroom. Give me a fantasy elflike outfit"* — el modelo mantiene el rostro y cambia fondo, vestimenta y atmósfera en ~10 segundos.
- Para photo blending con diseño: sube dos imágenes (ej. una taza blanca y un patrón de mosaico) y usa el prompt exacto *"Apply the mosaic pattern from the second image onto the coffee mug, keeping the mug's original shape and texture"* — el modelo respeta la forma 3D y la textura original del objeto.
- Para edición multi-turno: comienza con una imagen base (ej. un perro en un parque) y haz cambios secuenciales sin reiniciar: primero *"Change the park to a snowy mountain landscape"*, luego *"Add a small, friendly looking rabbit hopping near the dog's paws. Make it look like it's a cold, overcast day"*, y finalmente *"Remove the Frisbee"* — cada paso refina sin perder el contexto previo.
- Para crear thumbnails de YouTube rápidos: usa una foto tuya y pide un cambio de escena con un prompt simple como *"cyberpunk city sunset"* — el modelo preserva tu rostro y genera un fondo listo para miniatura en segundos.
- Acceso: usa la app de Gemini (iniciando sesión) o Google AI Studio, seleccionando "Gemini Native Image with Gemini 2. Flash".
- El modelo incluye marcas de agua Synth ID para identificar contenido generado por IA.

## Reglas para agentes
- Usa prompts descriptivos y específicos (escena, vestimenta, atmósfera) cuando quieras preservar la identidad del sujeto.
- Siempre especifica "keeping the mug's original shape and texture" o similar cuando apliques un patrón a un objeto 3D para evitar deformaciones.
- Nunca asumas que el blending funciona con imágenes de estilos muy contrastantes (ej. sala acogedora + arte moderno grande) — el modelo puede fallar en naturalidad.
- En edición multi-turno, nunca reinicies desde cero: encadena comandos en la misma conversación para refinar progresivamente.
- Verifica que las imágenes de entrada tengan buena iluminación y definición para obtener resultados más realistas en cambios de escena.

## Errores comunes que evita o menciona
- El blending puede fallar cuando los estilos visuales son muy opuestos (ej. sala acogedora vs. arte moderno grande) — el modelo recorta bien pero no escala ni posiciona naturalmente.
- En edición multi-turno, añadir elementos puede reducir el realismo general (ej. el conejo junto al perro no se veía natural) — empezar con una foto más realista mejora el resultado final.
- No esperes que el modelo elimine objetos automáticamente en ediciones anteriores — necesitas un comando explícito como "Remove the Frisbee" para lograrlo.