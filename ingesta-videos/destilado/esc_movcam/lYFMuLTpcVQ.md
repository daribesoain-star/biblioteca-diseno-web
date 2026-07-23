# DJI MAVIC Pro Drone Filming Techniques Part 2 - How to do a Drone Dolly Shot or Slider Shot
**Fuente:** esc_movcam | https://youtu.be/lYFMuLTpcVQ

## Que enseña (2-3 líneas)
Tutorial práctico para ejecutar un *dolly shot* o *slider shot* con dron, replicando el movimiento de un travelling sobre rieles pero en exteriores amplios. Explica la configuración de cámara (ISO, obturador, perfil de color) y la técnica de vuelo lateral lento con composición en tres planos (foreground, mid-ground, background) para lograr un efecto cinematográfico.

## Lecciones accionables

- **Configuración de cámara para dolly shot con dron:**
  - ISO: 100 (film speed base)
  - Frame rate: 24 fps (cadencia cine)
  - Shutter speed: 1/50 (regla del doble de fps para motion blur natural)
  - Perfil de color: *Decent Light* (similar a un perfil plano sin llegar a D-Log)
  - White balance: *Sunny* (fijo, no automático)
  - Custom style: Sharpness 0, Contrast -1, Saturation -1 (para retener rango dinámico en post)

- **Técnica de vuelo para el dolly lateral:**
  - Posicionar el dron al inicio del recorrido, girar 90° a la derecha (perpendicular a la trayectoria deseada).
  - Usar el mapa en pantalla para verificar que el puntero del dron apunte exactamente a 90°.
  - Subir el gimbal para alinear 1/3 de cielo con la línea superior de la cuadrícula (regla de tercios).
  - Iniciar vuelo lateral empujando el stick de roll (movimiento lateral) muy suavemente, manteniendo velocidad constante y lenta.

- **Composición cinematográfica:**
  - Mantener objetos en *foreground* (primer plano), *mid-ground* (plano medio) y *background* (fondo) para crear profundidad.
  - Ejemplo del video: árboles (foreground), casa en la colina (mid-ground), montaña (background).

- **Técnica de pullback (dolly inverso):**
  - Acercarse al sujeto (ej. granero) y luego volar en reversa (dolly pullback) para generar un efecto dramático.
  - En postproducción, se puede acelerar el clip (time-ramp) para aumentar el impacto visual.

- **Efecto vertigo (mencionado):**
  - Combinar el dolly pullback con zoom digital en post (en MAGIX Movie Edit Pro) para crear el efecto *Vertigo* (dolly zoom).

## Reglas para el director de fotografía IA

- **Usa `slow lateral movement` (camera movement: dolly right/left) cuando quieras replicar un slider shot con dron en IA.** Especifica `speed: very slow` para evitar movimientos bruscos.
- **Para prompts de video IA, incluye `24fps, shutter speed 1/50, ISO 100`** si el modelo lo permite, o usa `cinematic motion blur` como parámetro.
- **Define la composición en tres planos:** `foreground elements (trees, rocks), mid-ground subject (house, barn), background (mountains, sky)`. Esto evita fondos planos y da profundidad.
- **Para un pullback dramático, usa `camera movement: dolly out (reverse), speed: slow to fast`** y luego acelera en post (time-ramp). No confíes en que la IA lo haga solo.
- **Para no alucinar en video IA:** No pidas `dolly zoom` directamente si el modelo no lo soporta; en su lugar, genera un dolly pullback y aplica el zoom en postproducción.
- **Usa `gimbal tilt up: 1/3 sky`** como prompt de ángulo de cámara para replicar la regla de tercios aérea.

## Errores comunes que evita o menciona

- **No usar white balance automático:** El video lo fija en *Sunny* para evitar cambios de color durante el movimiento lateral.
- **No volar demasiado rápido:** El dolly shot requiere velocidad muy lenta; el video enfatiza empujar el stick "just a little bit".
- **No descuidar la orientación:** Verificar en el mapa que el dron apunte exactamente a 90° para que el movimiento lateral sea recto y no diagonal.
- **No olvidar la profundidad:** Un dolly shot sin foreground, mid-ground y background resulta visualmente plano y poco cinematográfico.
- **No usar perfiles de color muy planos (D-Log) sin postproducción:** El video cambia a *Decent Light* para obtener un look usable directo de cámara.