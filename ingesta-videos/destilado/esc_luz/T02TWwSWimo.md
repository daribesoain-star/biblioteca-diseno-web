# All You Need To Know About The Quality Of Light | Soft Light & Hard Light
**Fuente:** esc_luz | https://youtu.be/T02TWwSWimo

## Que enseña
Define la calidad de luz como la suavidad o dureza de las sombras, no su intensidad o color. Explica que el tamaño y distancia de la fuente determinan si la luz es dura (sombras nítidas, bordes definidos) o suave (sombras difusas, transiciones graduales). Aplica estos principios a la narrativa visual: dura para textura, contraste y realismo; suave para retratos favorecedores y luz ambiental.

## Lecciones accionables

### Hard Light (Luz Dura)
- **Definición técnica:** Fuente pequeña y directa respecto al sujeto. Produce sombras con bordes nítidos (crispy edges) y realza textura/profundidad.
- **Parámetros clave:**
  - Cuanto más pequeña la fuente → más dura la luz.
  - Cuanto más lejos la fuente del sujeto → más duras las sombras.
- **Ejemplo práctico:** Sol sin nubes = fuente pequeña en el cielo → sombras duras.
- **Equipo para prompts:** LED con Fresnel (ej. Aputure 100D + Fresnel 2X), tungsteno, HMI.
- **Usos en video IA:**
  - Iluminar bordes y texturas (músculos, detalles de producto).
  - Añadir contraste y punto focal (el ojo va a la parte más brillante).
  - Crear sombras con forma: persianas, ramas de árboles.
  - **Volumetric light:** Haz de luz directo a través de haze/niebla para shafts of light cinematográficos.
  - Simular luz solar o farol callejero para realismo.

### Soft Light (Luz Suave)
- **Definición técnica:** Fuente grande y difusa. Produce sombras suaves con bordes difuminados (diffuse shadow, soft edges).
- **Parámetros clave:**
  - Cuanto más grande la fuente → más suave la luz.
  - Cuanto más cerca la fuente del sujeto → más suave la luz.
- **Cómo lograrla:** Difusores (softbox, diffusion silk, muslin, camiseta blanca) o rebote en pared blanca.
- **Equipo para prompts:** LED con softbox, tubo de luz, bounce board.
- **Usos en video IA:**
  - **Key light para humanos en 90% de planos:** Oculta arrugas, imperfecciones, da aspecto favorecedor.
  - **Ambient/fill light:** No crea sombras múltiples ni antinaturales.
  - **Seguimiento de sujeto en movimiento:** Walk-and-talk con cámara y luz móvil (bounce board o softbox grande).

### Regla de distancia y tamaño (aplicable a prompts)
- **Hard light:** Fuente pequeña + lejana.
- **Soft light:** Fuente grande + cercana.
- **Ejemplo prompt:** "Close-up shot, soft key light from large diffusion panel 1 meter from face, subtle shadow transition"

## Reglas para el director de fotografía IA

1. **Usa "hard light" cuando:** Necesites textura, contraste dramático, sombras definidas (nocturno, cine negro, producto con detalles). Especifica "small light source, direct, harsh shadows, crisp edges".
2. **Usa "soft light" cuando:** El sujeto sea humano (retrato, comercial, entrevista). Especifica "large diffusion source, soft shadows, flattering, gradual falloff".
3. **Para no alucinar en video IA:** Si pides "hard light" sin especificar distancia, la IA puede generar sombras irreales. Añade "light source far from subject" o "close to subject" según el efecto deseado.
4. **Para volumetric light:** Siempre incluye "haze machine" o "atmospheric haze" en el prompt. Sin haze, el haz de luz no se ve.
5. **Para walk-and-talk:** Prompt debe incluir "moving soft light source following subject" o "large softbox on dolly tracking with camera".
6. **Evita sombras múltiples:** Si usas múltiples luces suaves, especifica "single dominant key light, soft fill only" para evitar sombras cruzadas antinaturales.

## Errores comunes que evita o menciona

- **Confundir calidad con intensidad:** La calidad de luz NO es qué tan brillante es, sino cómo son las sombras (duras vs suaves).
- **Usar luz dura para retratos sin necesidad:** Encarece imperfecciones (arrugas, poros). Para humanos, 90% de las veces usa soft light como key.
- **Poner la luz demasiado lejos cuando buscas suavidad:** La suavidad depende de la distancia. Una fuente grande pero lejana se vuelve dura.
- **No usar difusión suficiente:** Cualquier material translúcido (muslin, t-shirt, papel vegetal) puede suavizar. No necesitas equipo caro.
- **Olvidar el haze para shafts of light:** Sin partículas en el aire, el haz de luz dura no es visible. Siempre incluye "haze" en el prompt.
- **Sombras múltiples con soft light:** Si usas varias fuentes suaves, pueden crear sombras fantasma. Mejor una fuente dominante.