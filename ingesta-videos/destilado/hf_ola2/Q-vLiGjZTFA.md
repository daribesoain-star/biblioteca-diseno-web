# Higgsfield AI Cinema Studio 2.5 SOLVED Consistent AI Characters!
**Fuente:** hf_ola2 | https://youtu.be/Q-vLiGjZTFA

## Que ensena sobre Higgsfield (2-3 lineas)
Enseña a usar **Soulcast** para crear personajes consistentes con perfil completo (genero, presupuesto, era, arquetipo, apariencia fisica, vestuario) y luego invocarlos con **@nombre** en Cinema Studio 2.5. Tambien cubre **Multishot Auto** y **Multishot Manual** para secuencias de accion con emociones asignadas por emoji y dialogo sincronizado.

## Tips y flujos accionables

### Creacion de personaje con Soulcast (paso a paso)
1. **Ir a:** Higgsfield > Cinema Studio 2.5 > boton **Cast**
2. **Configurar perfil del personaje:**
   - **Genero:** Elegir entre opciones (ej: "war", "drama")
   - **Presupuesto:** Rango 10M a 500M (ej: 300M para accion, 150M para drama)
   - **Era:** 90s a 2020s (ej: 2000, 2020)
   - **Arquetipo:** hero, innocent, etc.
   - **Identidad:** genero, raza, edad (ej: male, white, 25 years old)
   - **Apariencia fisica:**
     - Build: thin, muscular, athletic
     - Height: short, very short, average, tall
     - Eye color: brown (personalizable)
     - Hairstyle: medium (largos tienden a femeninos)
     - Hair texture: straight, wavy, curly, coily
     - Hair color: black (personalizable)
     - Facial hair: 6 opciones (ej: short beard)
   - **Detalles:** face scar, eyepatch, tattoos, freckles (o custom prompt)
   - **Outfit:** presets (military, casual) o custom prompt
3. **Generar:** Click **Generate** > elegir entre opciones
4. **Opcional:** Comprar derechos exclusivos del personaje

### Invocar personajes en prompts
- **Sintaxis:** Escribir `@nombre_del_personaje` directamente en el prompt
- **Multiples personajes:** Usar `@personaje1` y `@personaje2` en el mismo prompt
- **Guardado:** Click **Save** > personajes quedan en libreria

### Asignar emociones
- **Metodo:** Click en el **emoji** junto al nombre del personaje
- Seleccionar emocion especifica (calm, focused, extreme fear, panic, tense, uncertain, sincere, quiet)
- **Beneficio:** El modelo entiende el estado emocional sin describirlo en el prompt

### Generacion de video

#### Multishot Auto (secuencia de 4 tomas)
1. **Prompt:** Describir accion completa (ej: "soldier getting up from cover, running toward damaged building, stepping inside, scanning room, spotting girl hiding in corner")
2. **Mencionar:** Ambos personajes con @
3. **Configurar:**
   - **First frame:** Subir imagen de referencia
   - **Camera movement:** handheld
   - **Duration:** 12 seconds
   - **Quality:** 1080p
   - **Genre:** action
4. **Generar:** Click **Generate**

#### Multishot Manual (control total por toma)
1. **Referencia:** Subir ultimo frame del video anterior como imagen de referencia
2. **Por cada toma:**
   - **Prompt individual:** Describir accion especifica
   - **Tag:** @personaje
   - **Emocion:** Click emoji > seleccionar
   - **Duration:** 3 seconds (recomendado)
   - **Dialogue:** Texto exacto que dira el personaje
3. **Ejemplo de 4 tomas:**
   - Toma 1: Soldado baja arma, gesto para que nina vaya con el. Emocion: calm and focused. Dialogo: "Hey, it's okay. You need to come with me, now."
   - Toma 2: Close-up nina negando, retrocediendo. Emocion: extreme fear and panic. Dialogo: "No, stay back, please."
   - Toma 3: Close-up soldado, conflicto, disparos de fondo. Emocion: tense and uncertain. Dialogo: "If you stay here, you won't make it."
   - Toma 4: Wide shot soldado, decide quedarse, postura suave. Emocion: sincere and quiet. Dialogo: "I'm not leaving you."
4. **Generar:** Click **Generate**

### Post-produccion
- **Edicion:** Combinar clips en **CapCut** (o cualquier editor de video)
- **Resultado:** Escena continua y coherente por personajes consistentes

### Parametros recomendados
| Parametro | Valor |
|-----------|-------|
| Aspect ratio | 16:9 |
| Resolution | 2K (imagen), 1080p (video) |
| Duration | 12s (auto), 3s por toma (manual) |
| Camera movement | handheld |
| Genre | action, drama (segun escena) |

## Reglas para el erudito de Higgsfield

- **Para crear personajes consistentes** usa **Soulcast** con perfil completo (genero, presupuesto, era, arquetipo, identidad, apariencia fisica, outfit) y luego invocalos con **@nombre** en Cinema Studio 2.5
- **Para asignar emociones sin describirlas en el prompt** usa el **emoji** junto al nombre del personaje y selecciona la emocion especifica (calm, focused, extreme fear, panic, tense, uncertain, sincere, quiet)
- **Para secuencias de accion rapidas** usa **Multishot Auto** con un solo prompt, duracion 12s, camera handheld, genero action
- **Para control total por toma** usa **Multishot Manual** con prompts individuales, emociones por emoji, duracion 3s por toma, dialogo exacto
- **Para mantener continuidad entre tomas** sube el **ultimo frame** del video anterior como imagen de referencia en Multishot Manual
- **Para usar multiples personajes en una misma generacion** menciona ambos con **@nombre1** y **@nombre2** en el prompt
- **Para look cinematografico** usa aspect ratio 16:9, resolucion 2K en imagenes, 1080p en video, camera movement handheld, y asigna genero (action, drama) segun escena
- **Para proteger personajes a largo plazo** compra los **derechos exclusivos** del personaje en Soulcast

## Errores comunes / que evitar

- **No subir multiples imagenes de referencia cada vez:** Soulcast ya tiene el perfil completo del personaje, solo usa @nombre
- **No confiar solo en text prompts para emociones:** Usa el emoji de emocion para que el modelo entienda directamente el estado del personaje
- **No usar prompts largos describiendo apariencia:** Soulcast ya definio todo, solo menciona @nombre
- **No mezclar personajes sin tag:** Siempre usa @nombre para cada personaje en el prompt
- **No olvidar subir el ultimo frame como referencia en Multishot Manual:** Asegura continuidad visual entre tomas
- **No usar duraciones muy largas por toma en Manual:** 3 segundos es optimo para mantener control y naturalidad
- **No saltarse la asignacion de genero en configuracion:** Ayuda al modelo a interpretar el tono de la escena
- **No editar sin verificar consistencia:** Revisa que el personaje se vea identico en todas las tomas antes de unir clips