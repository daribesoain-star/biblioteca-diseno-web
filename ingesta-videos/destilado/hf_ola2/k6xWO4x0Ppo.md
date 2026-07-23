# How I Make Cinematic AI Videos Using Higgsfield | 100% Character Consistency
**Fuente:** hf_ola2 | https://youtu.be/k6xWO4x0Ppo

## Que ensena sobre Higgsfield (2-3 lineas)
Flujo completo para crear videos cinematográficos con personaje 100% consistente desde una sola foto: entrenar un "Soul ID Character" usando múltiples ángulos generados con Angles 2.0, luego usar ese personaje en Cinema Studio (con C-Dance 2.0 integrado) para generar videos de alta calidad controlando género, estilo, cámara y duración.

## Tips y flujos accionables

### Paso 1: Crear ángulos del personaje (Angles 2.0)
- **Herramienta exacta:** Apps > Angles 2.0
- **Input:** Una sola imagen de la persona
- **Método:** NO usar prompts. Solo arrastrar esfera o click en "Generate from 12 best angles"
- **Cantidad recomendada:** Generar mínimo 20-30 imágenes, máximo 80 para entrenamiento
- **Clave:** Mientras más variedad de ángulos, más fuerte será el Character ID

### Paso 2: Entrenar Character ID (Soul ID Character)
- **Ruta exacta:** Navigation bar > Images > Soul ID Character > Create a Character
- **Subir:** Todas las imágenes descargadas del paso anterior (mínimo 20)
- **Modelo:** Seleccionar "Soul ID 2.0"
- **Nombre:** Asignar un nombre al personaje (ej: "Akari")
- **Verificar:** Quality score debe ser bueno antes de crear
- **Tiempo:** Esperar a que aparezca en Character Library

### Paso 3: Usar el personaje en generaciones
- **Sintaxis exacta:** En cualquier generador de video/imagen, escribir "@" + seleccionar personaje de la lista
- **Ejemplo prompt:** "@Akari exploring the Amazon jungle, cinematic lighting"

### Paso 4: Crear video cinematográfico (Cinema Studio)
- **Ruta exacta:** Navigation bar > Cinema Studio
- **Motor interno:** C-Dance 2.0
- **Input:** Una sola imagen de referencia del personaje
- **Configuración recomendada:**
  - **Genre:** "Epic"
  - **Style:** "Auto" (o "Naturalistic Clean" para look más realista)
  - **Camera:** "Auto" (los detalles de cámara se meten en el prompt)
  - **Duration:** 15 segundos
  - **Resolution:** 1080p (máxima calidad)
  - **Sound:** ON
- **Prompt avanzado:** Incluir ángulos de cámara, focal length, movimientos, estilo y tono de color DENTRO del prompt

### Paso 5: Flujo para múltiples escenas
1. Generar imagen del personaje en escena deseada (usando @CharacterName)
2. Usar esa imagen como referencia en Cinema Studio
3. Escribir prompt detallado con dirección de cámara y movimiento
4. Generar video de 15s a 1080p

## Reglas para el erudito de Higgsfield

- **Para crear ángulos de personaje:** usa Apps > Angles 2.0, sin prompts, solo arrastra esfera o click en "Generate from 12 best angles"
- **Para entrenar personaje consistente:** usa Images > Soul ID Character > Create a Character con modelo "Soul ID 2.0", mínimo 20 imágenes, máximo 80
- **Para invocar personaje entrenado:** escribe "@" + nombre del personaje en cualquier prompt de video o imagen
- **Para video cinematográfico:** usa Cinema Studio (C-Dance 2.0), género "Epic", duración 15s, resolución 1080p, sonido ON
- **Para control de cámara:** pon todos los parámetros de cámara (ángulo, focal length, movimiento, estilo, tono) DENTRO del prompt, no en los sliders
- **Para look naturalista:** usa color palette "Naturalistic Clean" en Style
- **Para máxima calidad:** siempre selecciona 1080p como resolución

## Errores comunes / que evitar

- **No usar menos de 20 imágenes** para entrenar el Character ID (el mínimo recomendado es 20-30)
- **No saltarse Angles 2.0** para crear variedad de ángulos; una sola foto no basta para consistencia
- **No escribir prompts en Angles 2.0** (es zero-prompt, solo arrastrar esfera)
- **No dejar los parámetros de cámara vacíos** en Cinema Studio si no se especifican en el prompt; mejor poner todo en "Auto" y detallar en el texto
- **No usar duración menor a 15s** para videos cinematográficos completos
- **No olvidar activar el sonido** en Cinema Studio
- **No usar resolución menor a 1080p** si se busca calidad cinematográfica
- **No asumir que el personaje se transfiere automáticamente** entre herramientas; siempre hay que invocarlo con "@"