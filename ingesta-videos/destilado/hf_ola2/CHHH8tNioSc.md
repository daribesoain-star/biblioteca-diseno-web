# I Made a Viral AI Short Film From Scratch — Full Workflow (Seedance 4K + Claude Fable 5)
**Fuente:** hf_ola2 | https://youtu.be/CHHH8tNioSc

## Que ensena sobre Higgsfield (2-3 lineas)

Higgsfield es el motor central para generar escenas cinematográficas en 4K usando Cinema Studio y Seedance. El flujo combina generación de assets con Soul Cinema, edición en GPT Image 2.0, y prompts estructurados vía Claude para lograr consistencia visual, control de cámara y continuidad narrativa sin quemar créditos en generaciones aleatorias.

## Tips y flujos accionables

### Flujo completo paso a paso

1. **Script con Claude (no prompts genéricos)**
   - No pidas "escríbeme un guión". En su lugar: "Expande mi idea" + responde preguntas (runtime, settings, plot twists).
   - Construye iterativamente: elige settings juntos, pide sugerencias de giros.

2. **Assets: Character Sheet**
   - **Modelo:** GPT Image 2.0 (mejor para edición fotorrealista con referencia)
   - **Input:** Foto frontal + perfiles izquierdo/derecho del actor real
   - **Prompt a Claude:** "Prompt for a character sheet of a [pirate]. Full body, front and back, plus a close-up. Gray background."
   - **Pro tip:** Pide fondo gris → mayor win rate (sin clutter)
   - **Crítico:** Borra la cara del cuerpo completo en GPT Image 2.0 → solo UN rostro por imagen para que Seedance no driftée entre escenas

3. **Assets: Locations**
   - **Modelo:** Soul Cinema (8 imágenes = 1 crédito)
   - **Prompt:** Descripción detallada + "3/4 angle" (añade profundidad para movimiento de cámara)
   - **Batch:** Corre varias tandas, selecciona la mejor variación
   - **Criterio:** Busca iluminación coherente (ej: un solo farol + rayos de luz = realista)

4. **Assets: Props (ej: barcos)**
   - **Flujo:** Soul Cinema para raw pass → GPT Image 2.0 para ediciones finales
   - **Prompt simple en Soul Cinema:** "A pirate ship on water front and back three-quarter views"
   - **Edición en GPT Image 2.0:** Claude genera edit prompt con ajustes (velas abiertas, color negro, logo)

5. **Organización en Higgsfield**
   - Cinema Studio → New Project → nombrar (ej: "Blockbuster")
   - Crear carpeta por escena → subcarpeta por asset
   - **Nombrar CADA asset con el mismo nombre en Claude y en Higgsfield Elements** → los prompts auto-match por tags

6. **Scene Generation con Claude Skill**
   - **Cargar skill:** Customize → Skills → + → Upload a skill (descargar del video)
   - **Uso:** Activar skill → subir assets + script → describir qué pasa en la escena
   - **Output:** Prompt detallado con director hacks

7. **Parámetros Seedance (fijos recomendados)**
   - Aspect ratio: 21:9 (cinemático)
   - Resolución: 4K
   - Duración: 15 segundos
   - Batches: 4 (para tener opciones y combinar)

8. **Corrección de escenas**
   - **Problema:** Demasiados objetos en mesa, pacing lento, fondo inconsistente
   - **Solución:** Llevar feedback a Claude → nuevo prompt → regenerar con mismos settings
   - **Iterar hasta:** personaje reacciona a lo que pasa (ej: sonrisa, golpear mapa, moverse hacia puerta)

9. **Técnicas de cámara específicas**
   - **Zoom dramático:** "Sharp zoom in on the far away case"
   - **Cámara desde waterline:** "Camera starts at the waterline, moves up to the enemy ship"
   - **Follow cannonball:** "Camera follows the cannonball flying at the ship"
   - **POV:** "Blurry POV of main character waking up, blinking, screaming"
   - **Over-the-shoulder:** Estático, respetando regla de 180°

10. **Solución para alucinaciones de posición**
    - **Problema:** Cannonball cae en diferente lugar cada vez
    - **Solución:** Dibujar dónde debe caer y dónde están los personajes → subir imagen a Claude
    - "One drawing tells the model what 10 sentences can't"

11. **Transiciones entre escenas**
    - **Ejemplo:** Salto al agua → desierto
    - Pedir a Claude: "Smoothly transition straight from the ocean into the next scene, the desert"
    - Ajustar: "Camera needs to look toward the bow of the ship"

12. **Diálogos con over-the-shoulder**
    - **Requisito:** Generar reverse angle environment references de la misma habitación
    - **Regla de 180°:** Cámara estática, Cindy desde mismo ángulo, protagonista sobre hombro izquierdo
    - **Problema común:** Fondo cambia entre cortes → solución: alimentar modelo con imágenes de ambos lados

13. **Cambios de vestuario en medio de la historia**
    - **Problema:** Pantalones rotos se "cosen solos" en siguiente generación
    - **Solución:** Generar NUEVO character sheet con pantalones rotos + boxers visibles
    - Alimentar modelo con segunda sheet → siempre sabe el estado actual

14. **Assets de respaldo**
    - Tener variaciones de assets listas (ej: cambiar mandriles por macacos blancos si se ven muy cartoon)
    - "Changing your assets mid-production is completely normal"

## Reglas para el erudito de Higgsfield

- **Para character sheets:** usa GPT Image 2.0 con referencia facial + fondo gris + borra cara del cuerpo completo
- **Para locations:** usa Soul Cinema con prompt detallado + pide "3/4 angle" + corre batches de 8 imágenes
- **Para props:** Soul Cinema para raw pass → GPT Image 2.0 para ediciones finales
- **Para scene generation:** activa el Claude Skill → sube assets + script → describe acción → pega prompt en Seedance
- **Para parámetros Seedance:** usa 21:9, 4K, 15 segundos, 4 batches siempre
- **Para corregir alucinaciones:** dibuja la posición exacta y súbela a Claude
- **Para diálogos:** genera reverse angle environment references de AMBOS lados de la habitación
- **Para cambios de vestuario:** crea nuevo character sheet con el estado modificado
- **Para mantener consistencia:** nombra cada asset IGUAL en Claude y en Higgsfield Elements
- **Para transiciones:** describe el corte exacto a Claude (ej: "smooth transition from ocean to desert")

## Errores comunes / que evitar

- **No pedir "escribe un guión" genérico a Claude** → siempre sale terrible. Usa el método de expansión por preguntas.
- **No usar character sheet con múltiples caras** → Seedance driftea y el héroe se vuelve extraño para escena 5
- **No ignorar el naming de assets** → los prompts no harán auto-match y todo se mezclará
- **No generar locaciones sin fondo gris** → menor win rate por clutter
- **No usar ángulos frontales planos** → la cámara no tiene profundidad para moverse
- **No asumir que una locación sirve para todo** → si necesitas un oasis y tu locación no lo tiene, créalo como asset separado
- **No dejar que el fondo cambie entre cortes de diálogo** → genera reverse angles de ambos lados
- **No esperar que el modelo recuerde cambios de vestuario** → crea nuevo character sheet
- **No hacer prompts de una sola línea** → siempre usa el Claude Skill con assets + script
- **No conformarse con la primera generación** → itera: corre, evalúa, pide cambios exactos, corre otra vez
- **No ignorar los batches** → corre siempre 4 para poder combinar las mejores partes de cada uno
- **No romper la regla de 180° en diálogos** → el público pierde noción de quién está dónde