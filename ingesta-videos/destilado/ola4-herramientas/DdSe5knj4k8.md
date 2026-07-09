# FLUX: How To Generate UNLIMITED AI Images For FREE [fal]
**Fuente:** ola4-herramientas | https://youtu.be/DdSe5knj4k8

## Qué enseña (2-3 líneas)
Este tutorial enseña a instalar y ejecutar el modelo FLUX (desarrollado por Black Forest Labs, creadores de Stable Diffusion) en Comfy UI localmente, cubriendo descarga de modelos, encoders, VAE y configuración del workflow. También muestra cómo generar imágenes realistas, con texto preciso y manos correctas, y cómo upscalear con herramientas externas.

## Lecciones accionables
- Descargar el modelo FLUX dev (prioriza calidad) o Schnell (prioriza velocidad) desde los enlaces proporcionados y guardarlo en `ComfyUI/models/unet/`
- Descargar los tres encoders necesarios desde la página indicada y guardarlos en `ComfyUI/models/clip/`
- Descargar el VAE correspondiente (dev o Schnell) y guardarlo en `ComfyUI/models/vae/`
- Abrir Comfy UI, ir a "Manager" y hacer clic en "Update All" para tener la versión más reciente
- Ir a openart.ai, descargar el workflow simple para FLUX y arrastrarlo a la interfaz de Comfy UI
- En el nodo de modelo, seleccionar el archivo FLUX descargado (el nombre puede variar según la fuente)
- En el nodo de encoder, cambiar a "T5 XXL fp16" para mayor precisión (opcional: dejar "fp8" para más velocidad)
- Escribir el prompt en el nodo correspondiente (ejemplo usado: "an elderly woman sitting in a garden with a bunch of flowers around her")
- Ajustar width y height (valores más altos = más tiempo de generación)
- Configurar seed en "randomize" para obtener resultados diferentes cada vez
- Dejar sampler en "uler" (o experimentar con otros) y scheduler en "sgm uniform"
- Steps por defecto en 20 (valores más altos = mejor calidad pero más lento)
- Seleccionar el VAE descargado en el nodo correspondiente
- Hacer clic en "Queue Prompt" para iniciar la generación
- Para upscaling, usar Topaz Photo AI (tercera herramienta) para afinar y aumentar resolución

## Reglas para agentes
- Usa el modelo FLUX dev cuando priorices calidad sobre velocidad; usa Schnell cuando necesites generación más rápida
- Nunca uses un VAE incorrecto para el modelo (dev VAE con dev, Schnell VAE con Schnell)
- Asegúrate de que todos los archivos estén en las carpetas correctas de Comfy UI (unet, clip, vae) antes de cargar el workflow
- Si tienes GPU con 12GB o 8GB de VRAM, usa primero Schnell o el encoder fp8 para evitar problemas de memoria
- Siempre actualiza Comfy UI al iniciar si ha pasado tiempo desde la última vez que lo usaste
- Usa seed randomizado para explorar variaciones del mismo prompt

## Errores comunes que evita o menciona
- No colocar los modelos en las carpetas incorrectas (unet para FLUX, clip para encoders, vae para VAE)
- No actualizar Comfy UI antes de usar FLUX (puede causar incompatibilidades)
- Usar valores de steps demasiado altos sin considerar el tiempo de generación (especialmente en GPUs de gama baja)
- No renombrar archivos arbitrariamente sin verificar que sigan en la carpeta correcta
- Esperar velocidad rápida en GPUs con poca VRAM (el presentador con RTX 4090 24GB usa casi toda la memoria y va lento)
- No probar el modelo Schnell si la GPU tiene menos de 12GB de VRAM como alternativa viable
- Ignorar que el texto generado por FLUX es preciso "word for word, letter for letter" (no necesita corrección manual)