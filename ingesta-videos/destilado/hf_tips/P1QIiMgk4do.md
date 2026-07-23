# Higgsfield Cinema Studio 2.0 Full Workflow Tutorial
**Fuente:** hf_tips | https://youtu.be/P1QIiMgk4do

## Que ensena sobre Higgsfield (2-3 lineas)
Flujo completo para crear secuencias cinematográficas multi-shot: subir foto propia, generar imagen base con control de cámara/lente, y convertirla en video con movimiento, speed ramp y audio. Permite usar personajes (characters) pre-creados y combinar múltiples tomas automáticas.

## Tips y flujos accionables

**1. Creación de imagen base (primer paso obligatorio)**
- Subir foto propia → botón upload en panel de imagen
- Prompt ejemplo usado: *"man running in the streets of Amsterdam, running away from the police and getting into a car"*
- Settings exactos: Generar **4 imágenes**, tamaño **16:9**, resolución **4K**, grid **1x1**
- Cámara: **Modular 8K digital**
- Lente: **Classic anamorphic**
- Longitud focal: **50mm**
- Apertura: **1.4** (para fondo borroso cinematográfico)
- Truco: si no sabes qué lente usar, genera pruebas con diferentes combinaciones para ver resultados

**2. De imagen a video (flujo principal)**
- Ir a pestaña **Video** (abajo)
- En Director Panel: usar **Character** pre-creado (o subir misma imagen como elemento)
- Prompt de video: *"running away from the police in Amsterdam and getting into a car and driving away, maybe into a Mustang car 1967"*
- Movimiento: **Auto** (deja que AI decida)
- Speed Ramp: **Auto** (para acción, AI elige el ritmo)
- Duración: **12 segundos**
- Tipo de toma: **Multi shot auto** (genera múltiples ángulos automáticamente)
- Escena: **Action** (en selector de género: horror, comedy, western, suspense, intimate, spectacle)
- Audio: **On**
- Generar: **4 videos** para elegir el mejor
- Start frame: **Sí**, usar la imagen generada previamente (mejora coherencia)

**3. Post-procesamiento**
- Importa los 4 videos generados a editor de video
- Corta las mejores tomas de cada uno y combínalas
- Los multi-shot ya vienen con cambios de ángulo, lens flares y sonido

## Reglas para el erudito de Higgsfield

- Para look cinematográfico: usa preset **Modular 8K digital** + lente **Classic anamorphic** + apertura **1.4** + focal **50mm**
- Para acción: selecciona género **Action** y speed ramp **Auto**
- Para múltiples ángulos automáticos: usa **Multi shot auto** (no single shot)
- Para coherencia visual: siempre usa **start frame** (la imagen generada como base del video)
- Para personajes consistentes: crea un **Character** desde tu foto antes de generar videos
- Para mejor selección: genera **4 videos** y **4 imágenes** siempre, luego edita las mejores partes

## Errores comunes / que evitar

- **No saltarse la imagen base**: generar video directo sin start frame da resultados incoherentes
- **No usar resolución 4K en imagen**: si usas menor resolución, el video final pierde calidad
- **No mezclar géneros**: seleccionar el género incorrecto (ej: horror en vez de action) cambia tono y movimiento
- **No generar suficientes variantes**: con 1 solo video te pierdes de elegir las mejores tomas
- **No usar character pre-creado**: subir la foto cada vez puede dar resultados inconsistentes entre tomas
- **Olvidar que es multi-shot**: si usas single shot, pierdes los cambios de ángulo automáticos