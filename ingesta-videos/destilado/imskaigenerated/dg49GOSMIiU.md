# How To Start Making AI Anime in 2026
**Fuente:** imskaigenerated | https://youtu.be/dg49GOSMIiU

## Qué enseña
Un flujo de trabajo completo para crear un anime corto con IA manteniendo consistencia de personaje, estilo visual y narrativa. Cubre preproducción con LLM, generación de frames base con referencia de personaje, animación con control de cámara y audio emocional, todo antes de editar.

## Lecciones accionables
- Abre **Google AI Studio**, pega en "system instructions" la instrucción personalizada del creador (enlace en descripción) y nómbrala "anime maker". Escribe "hi" para activarla.
- Dale al LLM tu idea: **estilo de anime** (Ghibli, 90s anime, Pixar, K-pop demon hunter) + **2-3 oraciones de historia**. Ejemplo usado: "90s anime about a woman in her late 30s who is done with her corporate life, packs her bags, and moves to rural Japan to start a completely different life."
- Pide "I need 10 shots and dialogues" para expandir el shot list. Refina iterativamente hasta que el guion te guste.
- Escribe "yes to create your character anchor image". El LLM devuelve un prompt para generar una **hoja de personaje de 4 ángulos** (close-up, front, side, back view).
- En **Higgsfield AI**, selecciona **Nano Banana 2**, pega el prompt, configura **aspect ratio 16:9**, **resolución 2K**, **batch size 2-3**. Genera hasta obtener un personaje que te guste.
- Para cada shot: en Nano Banana 2, **sube la character anchor image como referencia** (mantiene rostro y ropa consistentes). Opcional: sube imágenes previas para consistencia de locación. Pega el **image prompt** del LLM y genera el base frame.
- Para animar: en **Higgsfield AI Cinema Studio 2.5**, selecciona **multi-shot manual**. Sube el base frame, pega el **video prompt** del LLM, activa **audio**, **speed ramp: linear**, elige **camera movement** (static, handheld, zoom out, dolly). Genera hasta que el shot se vea limpio.
- Para diálogos: usa **Higgsfield audio**, pega el diálogo con **emotion tags** (ej: angry, sad, excited), selecciona **voiceover**, **11 v3**, voz **Chloe**. Genera.
- Descarga todos los videos y audios, edita en **CapCut** (o cualquier editor).

## Reglas para agentes
- Usa la **character anchor image como referencia en cada generación de imagen** para mantener consistencia de rostro y vestimenta.
- Nunca generes imágenes o videos sin tener primero un **shot list completo y un guion refinado** en el LLM.
- Siempre configura **aspect ratio 16:9, resolución 2K** en Nano Banana 2 para frames base.
- Siempre selecciona **multi-shot manual** en Cinema Studio 2.5 para controlar cada plano individualmente.
- Nunca uses prompts de cámara en el texto; selecciona el movimiento desde el menú de Cinema Studio.
- Siempre regenera un shot si la primera generación no se ve limpia; un mal shot arruina el flujo completo.

## Errores comunes que evita o menciona
- Saltar la etapa de planificación visual y generar directamente, causando **inconsistencia de personaje** (pelo cambia de color entre shots, estilo cambia entre escenas).
- Generar imágenes sin una **hoja de personaje de referencia**, lo que hace que el rostro y la ropa varíen en cada frame.
- Usar prompts de cámara en el texto en lugar de seleccionar el movimiento desde el menú de la herramienta.
- Aceptar diálogos y guiones genéricos sin refinar iterativamente con el LLM hasta que se sientan auténticos.
- Gastar créditos de IA sin tener un guion y shot list claros primero.