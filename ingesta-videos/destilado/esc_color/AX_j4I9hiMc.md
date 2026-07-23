# EP 2: 5 Levels to Cinematic Color in Davinci Resolve
**Fuente:** esc_color | https://youtu.be/AX_j4I9hiMc

## Que ensena
Enseña un flujo de trabajo de 5 niveles para etalonaje cinematográfico en DaVinci Resolve, desde la corrección técnica (CST, ruido, contraste) hasta el estilo creativo (halation, glow, grano, daño). Explica cómo construir un look consistente mediante múltiples nodos de ajustes pequeños, no un solo cambio drástico.

## Lecciones accionables
- **CST (Color Space Transform):** Configura nodo de entrada con `RED Komodo` → Input Color Space: `RED Wide Gamut`, Input Gamma: `RED Log3G10` → Output: `DaVinci Wide Gamut` / `DaVinci Intermediate`. Luego nodo CST de salida con mismo input y Output Gamma: `Gamma 2.4` para volver a imagen realista.
- **Reducción de ruido:** Frames: `3`, Type: `Better`, Range: `Medium`. Luma/Chroma threshold: `7` (poco ruido) o `13` (muy ruidoso).
- **Primarias (Level 2):** Ajusta ganancia para que negros toquen fondo sin clip (cerca de 0) y altos lleguen a ~896 sin sobreexponer. Usa HDR wheels: Dark `+0.07`, Shadow `+0.07`, Light `+0.07`.
- **Curvas S-base:** Sutil S-curve: sombras bajan apenas, altos suben poco. Luego puntos intermedios para afinar contraste en pelo, ventana, midtones.
- **Hue vs Hue:** Protege piel con qualifier. Sube yellows hacia naranja, blues hacia teal.
- **Hue vs Saturation:** Sube saturación de naranjas (piel) y blues.
- **Hue vs Luminance:** Sube luminancia de naranjas, baja de blues.
- **Luminance vs Saturation:** Baja saturación en negros y altos para evitar artefactos; sube en low-mid gray.
- **Contrast Pop (Level 3):** Ajusta `0.023` de fuerza, `178` detail size, low threshold `0.07`, high threshold `0.86`, softness baja.
- **Halation:** Selecciona solo ventana y reflejos en gafas. Die layer reflections: strength `1.155`, secondary glow strength `0.388`, gamma `1.85`.
- **Glow:** Shine threshold a 0, composite type `Soft Light`, color filter naranja, global blend `0.078`.
- **Log Wheels (Level 4):** Sombras: baja red (teal), sube blue a `0.03`. Offset: sube red a `0.256`, baja blue a `-0.01` o `0.2468`.
- **Grano:** Film grain preset `35mm 400T`, opacidad `0.713` (visible) o `0.094` (subconsciente).
- **Damage:** Dirt density `1`, dirt size mínimo, dirt blur `0.7`. Sin scratch ni vignette.
- **Check final:** False color para ver exposición: sujeto en green-to-pink, sombras en blue/magenta sin clip, altos en gray sin llegar a yellow/red.
- **Paleta de colores:** Activa para verificar colores de marca.

## Reglas para el director de fotografia IA
- **Usa CST en dos nodos** cuando generes imágenes logarítmicas: primero expande a espacio nativo (DaVinci Wide Gamut), luego mapea a gamma 2.4 para realismo.
- **Para no alucinar en video IA**, aplica reducción de ruido con threshold bajo (7) si la escena está bien iluminada; threshold alto (13) solo si hay ruido extremo.
- **Usa HDR wheels** en lugar de primarias globales para controlar rangos específicos (dark, shadow, light) sin afectar todo el frame.
- **Protege piel con qualifier** antes de manipular hue/saturation; la IA tiende a cambiar tonos de piel si no se aíslan.
- **Aplica halation solo en highlights** (ventanas, reflejos) para evitar glow falso en sombras.
- **Usa glow con Soft Light** y color filter naranja para calidez sutil; global blend bajo (0.078) para no saturar.
- **Grano 35mm 400T** es el preset más versátil para look cinematográfico; opacidad entre 0.09 y 0.7 según el nivel de realismo.
- **Damage con dirt density 1** para textura de cine; evita scratch y vignette en IA porque generan artefactos no deseados.
- **False color** es obligatorio en el nodo final para verificar que el sujeto esté en rango green-to-pink; si hay magenta o rojo, ajusta exposición.

## Errores comunes que evita o menciona
- **No usar log solo para cambiar color:** El log se usa para maximizar rango dinámico y profundidad de bits, no para transformar la imagen a un look estilizado.
- **No confiar en un solo nodo para cambiar toda la imagen:** Usa múltiples nodos con ajustes pequeños (primarias, HDR, curvas, hue vs hue) para construir el look gradualmente.
- **No dejar que los negros o altos clipeen:** Ajusta ganancia para que negros toquen fondo sin cortar y altos lleguen a ~896 sin sobreexponer.
- **No ignorar Luminance vs Saturation:** Muchos saltan este paso; es clave para reducir saturación en extremos de exposición y evitar artefactos.
- **No aplicar halation a toda la imagen:** Selecciona solo áreas específicas (ventanas, reflejos) para un glow natural.
- **No usar glow sin cambiar composite type a Soft Light:** El default puede dar un aspecto plástico.
- **No confiar en tu ojo después de horas de edición:** Usa false color para verificar exposición objetivamente.
- **No subir demasiado el grano o damage:** Debe ser subconsciente; si se ve evidente, arruina la ilusión cinematográfica.