# A $350,000 AI AD Using Only 1 Tool (2026)
**Fuente:** hf_ola2 | https://youtu.be/em66Mvt8QLc

## Que ensena sobre Higgsfield (2-3 lineas)
Higgsfield (Kickstart Cinema Studio 2.5) permite crear comerciales cinematográficos completos usando un solo plan Creator, combinando generación de personajes consistentes, locaciones, keyframes y animación multi-shot. El flujo clave es: personajes → locaciones → keyframes → video → edición, todo dentro de Cinema Studio sin salir de la herramienta.

## Tips y flujos accionables

### Flujo completo (5 pasos exactos)

1. **Personajes en Cinema Studio 2.5**
   - Seleccionar `Characters` → género `Action` → presupuesto `100 mil` para protagonista, `50 mil` para secundarios
   - Era: `2020s`
   - Arquetipo: `Lover` (para ambos personajes)
   - Identidad: `Male, Latino, 30` / `Female`
   - Físico: `Athletic, Tall, Hazel eyes` / cabello `Slicked back, Wavy, Brown` + bigote (`Mustache`)
   - Outfit: escribir `black tuxedo` (texto libre)
   - Costo: **0.5 créditos** por 4 imágenes (vs 2 créditos de Nano Banana)
   - Resultado: `Orlando Salazar` + `Maria` con ficha de personaje completa

2. **Locaciones en Cinema Studio**
   - Seleccionar `Locations` dentro de Cinema Studio
   - Prompt exacto usado: *"Gatsby style mansion lobby, grand twin staircases, glossy marble floor under warm golden lights. An elegant yet slightly ominous atmosphere of a secret late-night rendezvous"*
   - Estructura del prompt: detalles físicos + iluminación (`warm golden lights`) + sensación/atmósfera
   - Costo: **0.5 créditos** por 4 opciones

3. **Keyframes con Claude + Cinema Studio Scenes**
   - Prompt base para Claude: *"Give me a detailed prompt to generate a keyframe. I want a [descripción simple]"*
   - En Cinema Studio: `Scenes` → seleccionar personajes + locación → pegar prompt de Claude
   - Costo por keyframe: **16 créditos** (varias iteraciones hasta obtener el correcto)
   - Truco: si el cabello o detalles no quedan, regenerar (es normal)

4. **Video generation en Cinema Studio**
   - Seleccionar `Video` dentro de Cinema Studio
   - Usar keyframe como `Start Frame`
   - Prompt simple (el modelo se adapta nativamente)
   - **Multi-shot auto mode**: genera diferentes ángulos automáticamente
     - Costo: **96 créditos** por tanda
   - **Multi-shot manual mode**: controlar duración por escena (ej: escena1=5s, escena2=7s = 12s total)
     - Costo: **192 créditos** para escenas complejas
   - Para continuar misma escena: tomar screenshot del último frame y usarlo como start frame del siguiente video
   - Para nuevas locaciones: repetir ciclo (locación → combinar personajes → animar)

5. **Edición final**
   - Combinar clips en DaVinci Resolve
   - Añadir efectos: lens distortions, scanlines para look CCTV/acción
   - Costo total del proyecto: **5,420 créditos** + 6 horas

### Trucos específicos para look cinematográfico

- **Para que no alucine**: adjuntar texturas de pared/piso del frame anterior como referencia
- **Para consistencia de producto**: usar imagen sin láser como start frame + imagen con láser como end frame (1 iteración, 8 créditos)
- **Para POV desde ventilación**: generar vent en escena original primero, luego crear shot desde dentro
- **Para zoom dramático**: dejar prompt vacío y solo seleccionar `zoom in` en camera movement
- **Para reflejo en ojos**: generar keyframe con personaje + referencia de habitación, luego animar con zoom in
- **Para CCTV look**: generar múltiples ángulos de la misma habitación (con láser) desde esquinas, luego añadir personaje

### Prompts exactos mencionados

- Para locación baño: prompt personalizado + refinamiento con más detalles
- Para holograma: prompt simple en Cinema Studio Image
- Para ID card, blowgun tube, sleep dart: prompts separados en Cinema Studio Images
- Para escena final (beso): prompt super simple en Cinema Studio Video

## Reglas para el erudito de Higgsfield

- **Para generar personajes consistentes**: usa Cinema Studio 2.5 → Characters → selecciona género `Action`, presupuesto `100 mil`, era `2020s`, arquetipo `Lover`. No uses Nano Banana (2 créditos vs 0.5 créditos y peor calidad)
- **Para locaciones premium**: estructura el prompt como: [descripción física] + [iluminación: warm golden lights] + [atmósfera: elegant yet slightly ominous]
- **Para keyframes cinematográficos**: usa Claude con el prompt exacto *"Give me a detailed prompt to generate a keyframe. I want a [descripción]"* y pega el resultado en Cinema Studio → Scenes
- **Para animación fluida**: usa Multi-shot auto mode (96 créditos) para obtener múltiples ángulos, selecciona el mejor, toma screenshot del último frame como start frame del siguiente
- **Para acción/movimiento complejo**: usa Multi-shot manual mode con duraciones específicas (5s + 7s = 12s total, 192 créditos)
- **Para zooms dramáticos**: deja el prompt vacío y selecciona solo `zoom in` en camera movement
- **Para transiciones con objetos**: usa start frame (sin objeto) + end frame (con objeto) en single shot (8 créditos, 1 iteración)
- **Para consistencia de producto en múltiples ángulos**: genera primero la locación/ángulo correcto, luego añade el personaje (no al revés)
- **Para ahorrar créditos**: genera keyframes en Scenes (0.5 créditos) en lugar de generar nuevas imágenes desde cero

## Errores comunes / que evitar

- **No usar Nano Banana** para personajes: cuesta 2 créditos vs 0.5 créditos de Cinema Studio y la calidad es inferior
- **No generar personaje y locación al mismo tiempo**: primero obtener la locación/ángulo correcto, luego añadir el personaje (evita imágenes inútiles que desperdician créditos)
- **No esperar el primer intento perfecto**: el cabello y detalles finos pueden fallar; es normal regenerar varias veces (gastó 16 créditos en un keyframe)
- **No ignorar las texturas de fondo**: para consistencia, adjuntar screenshot del frame anterior mostrando pared/piso como referencia
- **No usar el mismo start frame para locaciones diferentes**: cada nueva escena requiere su propio ciclo (locación → combinar → animar)
- **No olvidar la ficha de personaje**: viene con cada personaje generado y es clave para mantener consistencia en animación
- **No subestimar las iteraciones**: escenas complejas (como ventilación) pueden requerir muchas iteraciones; tener paciencia