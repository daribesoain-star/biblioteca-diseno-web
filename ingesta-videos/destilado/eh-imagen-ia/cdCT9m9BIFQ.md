# FLUX.2 Is Finally Here — Massive Upgrades Explained (2025)
**Fuente:** eh-imagen-ia | https://youtu.be/cdCT9m9BIFQ

## Qué enseña (2-3 líneas)
Flux 2 es un modelo base completamente nuevo de Black Forest Labs que reemplaza a Flux 1, con una arquitectura basada en lenguaje para interpretación de prompts, soporte de resoluciones hasta 2K, inferencia hasta 10 veces más rápida y mejoras drásticas en adherencia a instrucciones, precisión anatómica, renderizado de texto y edición imagen a imagen con contexto multimodal.

## Lecciones accionables
- Usa **prompts largos y matizados** combinando estilos opuestos (ej: "cyberpunk and naturalism") — el modelo los sintetiza lógicamente sin ignorar uno
- **Nunca uses negative prompts** (ej: "no blur", "no bad hands") — el modelo interpreta literalmente y puede añadir esos elementos
- Emplea **positive constraints**: describe exactamente lo que quieres ver, sin negaciones
- Para control preciso, usa **prompts en formato JSON** definiendo parámetros como `subject`, `camera_angle`, `lighting` — puedes pedir a ChatGPT que los genere
- Incorpora **códigos hex específicos** con la palabra clave `color` o `hex` seguida del código (ej: `color #FF5733`) para respetar paletas de marca
- Para **infografías one-shot**: proporciona datos y texto específicos; el modelo maneja layout y tipografía, pero no genera contenido
- En **edición imagen a imagen**: describe el cambio deseado en lenguaje natural sin máscaras complejas (ej: "change the wall") — el modelo reconoce objetos y protege automáticamente el resto
- Para probar Flux 2: accede a 11 Labs (primer enlace en descripción), selecciona la herramienta de imagen, elige el modelo Flux 2 y genera

## Reglas para agentes
- Usa prompts en JSON cuando necesites control preciso sobre subject, camera angle y lighting
- Usa códigos hex con la palabra clave `color` o `hex` cuando debas respetar una paleta cromática exacta
- Nunca incluyas palabras negativas como "no", "without" o "except" en el prompt
- Siempre describe el resultado deseado en afirmaciones positivas
- En edición imagen a imagen, nunca generes máscaras manuales; confía en el reconocimiento multimodal del modelo
- Para infografías, siempre proporciona los datos y textos específicos; el modelo solo diseña el layout

## Errores comunes que evita o menciona
- **Usar negative prompts**: el modelo procesa literalmente "blur" o "hands" y puede añadirlos
- **Esperar que Flux 2 sea un fine-tune de Flux 1**: es una arquitectura completamente nueva, requiere cambiar el flujo de prompting
- **Asumir que la edición imagen a imagen necesita máscaras**: Flux 2 reconoce objetos automáticamente, no requiere pintar zonas
- **Pedir a la IA que genere contenido para infografías**: el modelo solo maneja diseño, no datos ni texto
- **Ignorar la combinación de estilos opuestos**: el modelo sintetiza lógicamente, no descarta uno