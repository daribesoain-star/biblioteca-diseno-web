# Cómo Crear Personajes Consistentes con IA para Cine (Higgsfield)
**Fuente:** hf_ola2 | https://youtu.be/pPN5YGeKRBU

## Que ensena sobre Higgsfield (2-3 lineas)

Higgsfield integra todos los modelos y funciones de SEDANS 2.0 en un solo lugar, permitiendo crear personajes consistentes mediante Soul ID Character (etiquetado con @), generar keyframes en Cinema Studio, animar con motion control y motion copying, y lograr lip-sync nativo con audio procesado en la misma generación. El flujo clave es: definir personajes con Soul ID → crear keyframes en Cinema Studio → animar con SEDANS 2.0 → extender clips con Video Extension.

## Tips y flujos accionables

### 1. Definición de personajes (el paso que NADIE hace)
- **Herramienta:** Nanobanana Pro dentro de Higgsfield
- **Qué generar:** Hoja de personaje con 4 vistas: frontal, lateral, trasera, primer plano
- **Prompts:** Los enlaces están en la descripción del video (no se muestran verbatim)
- **Acción crítica:** Subir la hoja generada a **Soul ID Character**
- **Cómo usarlo:** Etiquetar con @ + nombre del personaje en cualquier prompt. Ej: `@liam` en lugar de describir a Liam desde cero
- **Repetir** para cada personaje (protagonista, marciano, criatura marina)

### 2. Keyframes: el 90% del trabajo
- **Regla de oro:** NUNCA animar desde texto. Siempre empezar con una imagen (keyframe)
- **Herramienta:** Cinema Studio
- **Qué hacer:**
  1. Subir todas las referencias de personajes y entornos como "elements"
  2. Etiquetar entornos con @ igual que personajes
  3. Prompt de ejemplo para keyframe de Marte: *"Liam standing on Mars with the Martian a few meters away. The composition is clean, the lighting is realistic, and the right characters are in the right environment"*
- **Resultado:** Un keyframe por cada toma del shot list

### 3. Motion Copying (para acciones repetitivas)
- **Cuándo usarlo:** Cuando un personaje hace la misma acción (ej: chasquido de dedos)
- **Flujo:**
  1. Subir un clip de referencia (alguien chasqueando dedos) a Cinema Studio
  2. Subir un keyframe neutral de Liam
  3. Escribir instrucción corta: *"apply the snap motion to Liam's keyframe"*
- **Resultado:** El movimiento del clip original se aplica al cuerpo de Liam, manteniendo consistencia

### 4. Animación con SEDANS 2.0
- **Input:** Keyframe + movimiento
- **Prompt de movimiento:** Solo describir acción, diálogo y diseño de sonido. NO describir apariencia ni entorno (ya están en el keyframe)
- **Etiquetar** personajes y ubicación con @ exactamente como en el keyframe
- **Ejemplo de prompt:** *"@liam says 'We've been waiting for someone for about 50 years' while @martian approaches. Camera slowly zooms in. Sound: wind blowing on Mars surface"*

### 5. Multi-plano storytelling (escenas complejas)
- **Qué hace:** Múltiples planos en UNA sola generación
- **Cómo:** Describir la estructura de cortes dentro del prompt
- **Ejemplo real del video:** La secuencia de Liam cayendo por el hielo, suspendido bajo el agua, y la criatura nadando hacia él → todo en un solo prompt
- **Resultado:** El modelo "se dirige a sí mismo" manejando los cortes

### 6. Video Extension (conectar clips)
- **Qué hace:** Extender un clip desde donde terminó
- **Flujo:**
  1. Subir el clip a extender al workspace de Cinema Studio (se le asigna un tag automáticamente)
  2. Escribir prompt de movimiento corto describiendo qué pasa después
  3. **No repetir** iluminación, color grading ni entorno (SEDANS lo lee del clip original)
- **Ejemplo:** Clip termina con criatura observando espacio vacío → prompt: *"the sea creature slowly turns and swims into the depths"*

### 7. Post-producción
- **Herramienta:** Cualquier editor de video favorito
- **Pasos:**
  1. Importar todos los clips
  2. Organizar planos
  3. Corrección de color ligera para unificar look
- **Truco clave:** El audio de SEDANS 2.0 suele durar un poco más que el video. Cortar el final del audio para evitar silencios incómodos entre cortes

## Reglas para el erudito de Higgsfield

- **Para definir personajes consistentes:** usa Nanobanana Pro para generar hoja de 4 vistas, luego sube a Soul ID Character y etiqueta con @nombre
- **Para animar:** NUNCA uses texto solo. Siempre crea un keyframe primero en Cinema Studio con personajes y entornos etiquetados con @
- **Para acciones repetitivas:** usa Motion Copying con clip de referencia + keyframe neutral + instrucción corta
- **Para escenas con diálogo:** usa SEDANS 2.0 que procesa audio y video en la misma generación (lip-sync nativo perfecto)
- **Para secuencias multi-plano:** describe la estructura de cortes DENTRO del prompt de movimiento
- **Para conectar clips:** usa Video Extension con prompt solo de movimiento (no repitas descripción visual)
- **Para post-producción:** corta el exceso de audio al final de cada clip para evitar silencios entre cortes

## Errores comunes / que evitar

- **Saltarse la definición de personajes con Soul ID:** Es la razón #1 por la que los personajes se ven diferentes en cada toma
- **Animar directamente desde texto sin keyframe:** El 90% del trabajo visual debe estar en el keyframe; SEDANS solo debe agregar movimiento
- **Describir apariencia/entorno en prompts de movimiento:** Ya están en el keyframe y las referencias; solo describe acción, diálogo y sonido
- **No etiquetar personajes y entornos con @ en cada prompt:** Sin la etiqueta, el modelo no usará la referencia de Soul ID
- **Ignorar el audio sobrante en post-producción:** Crea silencios incómodos entre cortes que rompen el ritmo
- **Usar herramientas externas para diferentes pasos:** Todo está dentro de Higgsfield; saltar entre plataformas rompe referencias