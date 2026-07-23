# How To Make an AI Animated Short Film (Full Workflow)
**Fuente:** hf_ola2 | https://youtu.be/zYPgz6sOy74

## Que ensena sobre Higgsfield (2-3 lineas)
Higgsfield integra **Soul Cinema** para generar keyframes estilizados (paper cutout, French graphic novel, chibi, stop-motion, claymation) y **Stability 2.0** para animar escenas completas de hasta 15 segundos con múltiples ángulos y movimientos de cámara. El flujo clave es: Soul Cinema crea el estilo visual → Stability 2.0 anima y mantiene consistencia → Claude escribe los prompts shot-by-shot. La herramienta permite editar personajes post-generación (swap de ropa/cabello) sin regenerar desde cero.

## Tips y flujos accionables

### Flujo completo paso a paso (8 escenas)

1. **Generar personaje principal** (Soul Cinema)
   - Prompt exacto: `"cartoon highly stylized a man waking up in the bedroom"`
   - Activar **Enhancer** en Soul Cinema
   - Prompt enhancer: `"cartoon style man waking up in the bedroom"`
   - Costo: 4 generaciones = 0.5 créditos
   - Si el personaje no funciona → llevar a Stability 2.0 y hacer **swap** de lo que no gusta

2. **Crear prop sheet del objeto clave (reloj)**
   - Subir imagen del personaje a **Claude** → pedir: `"prop sheet for a watch that matches the exact style"`
   - Generar en **Stability 2.0** (no Soul Cinema)
   - Incluir: material breakdown, interior del reloj, **múltiples ángulos** (crítico para consistencia)

3. **Escribir prompts de escena con Claude**
   - Subir a Claude: imagen del personaje + prop sheet del reloj
   - Describir la escena completa (acción, duración ~15s, final con teletransporte)
   - Claude devuelve prompt shot-by-shot para Stability 2.0

4. **Animar cada escena** (Stability 2.0)
   - Cada escena: **máximo 15 segundos**, un estilo por escena
   - Alimentar a Stability: prompt de Claude + keyframe de Soul Cinema + **video de la escena anterior** (para consistencia narrativa)

5. **Para cambios de estilo extremos** (ej: chibi → manga → claymation)
   - Soul Cinema para el keyframe del nuevo estilo
   - Si el personaje no coincide → Stability 2.0 para **swap de atributos** (cabello negro, traje)
   - Luego mismo flujo: Claude + video anterior

### Prompts exactos usados por escena

| Escena | Estilo | Prompt Soul Cinema (keyframe) | Notas |
|--------|--------|-------------------------------|-------|
| 1 | Paper cutout | `"cartoon highly stylized a man waking up in the bedroom"` | Enhancer activado |
| 2 | French graphic novel | `"French graphic novel style, a young man in his early 20s in a suit on a horse and a cowboy chasing him in a futuristic environment"` | Palabras clave: `French graphic novel style`, `futuristic environment` |
| 3 | Chibi low-poly | `"chibi gladiator toy in a low-poly arena"` | Luego swap en Stability: cabello negro + traje |
| 4 | Stop-motion cyberpunk | `"stop-motion style character in a black suit, looks over his shoulder, there's a futuristic helicopter behind him"` | Palabras clave: `stop-motion`, `futuristic helicopter` |
| 5 | Japanese manga B/N | Usar Stability 2.0 directo (subir keyframe del inicio + prop sheet a Claude → pedir manga character sheet) | `ink outlines`, `screen tone dots` |
| 6 | Claymation | `"claymation style guy in a suit over a black cauldron carried by red demon"` | Primer batch funcionó |
| 7 | 2D cartoon + live-action | `"a couple during a wedding kissing a 2D character"` | Swap en Stability para que el personaje coincida |
| 8 | Realista (restaurante) | **Sin Soul Cinema** | Solo Stability 2.0 + video anterior + prop sheet del reloj |

### Trucos para look cinematográfico y evitar alucinaciones

- **Para que no alucine**: Usar el **video de la escena anterior** como referencia al generar la siguiente (mantiene portal, personajes, estilo)
- **Para consistencia de objeto**: El prop sheet debe tener **múltiples ángulos** del objeto clave
- **Para que el personaje reaccione**: Describir emociones y reacciones en el prompt de Claude (ej: "demon is left holding nothing", "sad clay pout")
- **Para efectos especiales**: El teletransporte se mantiene automáticamente al pasar el video anterior
- **Para slow-motion**: Describir `"extreme slow-mo"` en el prompt, excepto para la acción de teletransporte
- **Para estilo manga**: Stability entiende `"speech bubbles with question marks"` y `"kanji sound effects"` como parte del lenguaje visual

## Reglas para el erudito de Higgsfield

- **Para generar personaje principal**: usa **Soul Cinema** con **Enhancer activado** y prompt simple (`"cartoon highly stylized [descripción]"`)
- **Para crear prop sheets de objetos**: usa **Stability 2.0** (NO Soul Cinema) con múltiples ángulos generados desde Claude
- **Para animar escenas de hasta 15s**: usa **Stability 2.0** alimentando: prompt de Claude + keyframe de Soul Cinema + video de escena anterior
- **Para cambiar estilo visual drásticamente**: usa **Soul Cinema** para el keyframe del nuevo estilo, luego **Stability 2.0** para swap de atributos del personaje (cabello, ropa)
- **Para editar personaje post-generación**: lleva la imagen a **Stability 2.0** y haz swap de lo que no gusta (sin regenerar desde cero)
- **Para mantener consistencia narrativa**: pasa el **video de la escena anterior** como referencia a Stability 2.0 en cada nueva generación
- **Para escribir prompts de escena**: usa **Claude** con input de: imagen del personaje + prop sheet + descripción de la acción en 15s
- **Para escena final sin keyframe**: usa solo **Stability 2.0** + video anterior + prop sheet del objeto clave (el modelo inventa personajes nuevos consistentes)

## Errores comunes / que evitar

- **No usar el enhancer en Soul Cinema**: pierdes estilos creativos que no habrías imaginado
- **Generar prop sheet en Soul Cinema**: debe ser en Stability 2.0 para mejor control de ángulos
- **No incluir múltiples ángulos en el prop sheet**: el objeto será inconsistente entre escenas
- **No pasar el video anterior a Stability**: la historia pierde continuidad (portal, personajes, estilo)
- **Hacer escenas de más de 15 segundos**: Stability 2.0 maneja mejor tomas cortas; facilita la edición
- **Regenerar todo si el personaje no coincide**: usa swap en Stability 2.0 en lugar de empezar de cero
- **Ignorar las reacciones de personajes secundarios**: describirlas en el prompt mejora la narrativa (ej: "demon is left holding nothing")
- **Usar prompts genéricos sin palabras clave de estilo**: `"French graphic novel style"`, `"stop-motion"`, `"chibi"` son críticos para resultados específicos
- **No describir el ritmo de la escena**: especificar `"slow motion"` o `"extreme slow-mo"` cuando sea necesario, excepto para la acción de teletransporte