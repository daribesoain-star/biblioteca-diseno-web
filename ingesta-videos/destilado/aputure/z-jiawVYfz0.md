# 3 Lighting Setups for Narrative Filmmaking
**Fuente:** aputure | https://youtu.be/z-jiawVYfz0

## Que ensena (2-3 lineas)
Tres configuraciones de iluminación narrativa (low-key, high-key, golden hour interior) usando el mismo set, talento y fondo, solo encendiendo/apagando luces y ajustando balance de blancos. Enseña a exponer primero el fondo, motivar la luz desde prácticos en escena y usar temperatura de color como herramienta narrativa sin necesidad de geles.

## Lecciones accionables

**Regla fundamental:** Exponer para el fondo primero, luego para el talento. Usar prácticos (lámparas, ventanas) como motivación de la luz principal.

**Look 1: Low-Key**
- **Motivación:** Luz desde ventana y lámpara práctica en escena
- **Relación de exposición alta:** Lado clave mucho más brillante que lado de relleno (high exposure ratio on the face)
- **Equipo:**
  - 1x Aputure 300d II con Light Dome + Control Grid en techo (cámara derecha) → retroiluminación desde ventana
  - 1x Aputure 300d II con Light Dome + Control Grid a cámara izquierda → luz clave en rostro
  - 1x 4x4 Bleach Muslin (reflector) ligeramente a la derecha de cámara → relleno suave
- **Control:** Grid evita que la luz caiga al suelo, lámpara y silla. Se inclina la luz hacia arriba para centrarla en el rostro.
- **Prompt sugerido:** "Low-key interior lighting, motivated by window light and desk lamp, high contrast ratio on face, key side bright, fill side dark, soft backlight from window, cinematic shadows, shallow depth of field, 50mm lens, film grain"

**Look 2: High-Key**
- **Motivación:** Misma base, pero se añade luz frontal suave masiva
- **Relación de exposición baja:** Se reduce el contraste en sujeto y fondo
- **Equipo adicional:**
  - 2x Aputure 300d II a través de 4x4 frame de 129 (heavy frost) + 4x4 frame de Magic Cloth → luz clave frontal suave
  - Foot wag flag (bottomer) en la parte inferior del frame para cortar luz del suelo y evitar gradiente
- **Resultado:** Misma configuración base + gran luz suave a la izquierda de la silla
- **Prompt sugerido:** "High-key interior lighting, soft diffused key light from camera left, low contrast ratio, even illumination on subject and background, clean shadows, bright and airy mood, 35mm lens, soft fill light"

**Look 3: Indoor Golden Hour**
- **Técnica clave:** Cambiar balance de blancos en cámara de 5500K a 9000K → todo se vuelve cálido sin usar geles (evita pérdida de exposición y molestia de geles en ventanas grandes)
- **Ventana:** 8x8 frame de Bleach Muslin detrás de la ventana para reducir exposición y permitir que la lámpara práctica sea la clave
- **Lámpara práctica:** Bombilla Philips Hue a 6500K (azul) → cuando el balance sube a 9000K, la lámpara se ve como tungsteno cálido. Además, se puede dimerizar manteniendo temperatura de color.
- **Luz lateral:** 300d cámara izquierda se convierte en rim light (luz de borde)
- **Efecto especial:** 300d con Spotlight Attachment + Gobo + Haze → haces de luz nítidos en el fondo. Enfocar el spotlight no en la pared sino en el centro de los haces para que sean sharp y crisp.
- **Prompt sugerido:** "Indoor golden hour, warm sunset light from window, 9000K white balance, desk lamp as main key light, warm tungsten practical, volumetric light beams through haze, gobo projection on background, rim light on subject, cinematic atmosphere, 24mm lens, anamorphic flare"

## Reglas para el director de fotografia IA

- **Usa "motivated lighting" siempre:** La fuente de luz debe ser visible o implícita en el frame (ventana, lámpara, farola). No pongas luz sin origen.
- **Usa "exposure ratio" en prompts:** Especifica "high contrast ratio" para low-key, "low contrast ratio" para high-key. Esto guía al modelo a generar sombras duras o suaves.
- **Para no alucinar en video IA, especifica la dirección de la luz:** "key light from camera left at 45 degrees", "rim light from behind", "fill light from camera right". La IA tiende a iluminar todo parejo si no se lo ordenas.
- **Usa "practical light" como ancla:** Si hay una lámpara en escena, el prompt debe decir "light motivated by desk lamp" o "practical lamp as main source". Esto evita que la IA genere sombras inconsistentes.
- **Para controlar temperatura de color sin geles, usa "white balance shift":** En prompts, escribe "white balance set to 9000K for warm golden hour" o "cool white balance at 4000K for moody blue". La IA entiende el cambio cromático global.
- **Para haces de luz volumétricos, usa "gobo projection" + "haze/atmosphere":** Especifica "sharp focused light beams through haze" y "gobo pattern on background". Sin "haze" la IA no genera partículas en el aire.
- **Usa "control grid" o "barn doors" en prompts para luz direccional:** "softbox with grid for controlled spill" evita que la luz se desparrame al suelo o paredes.
- **Para reducir contraste en IA, usa "heavy frost diffusion" o "magic cloth":** "diffused key light through 4x4 frame of heavy frost" produce luz suave sin bordes duros.

## Errores comunes que evita o menciona

- **No exponer primero el fondo:** Si iluminas al talento antes que el fondo, la escena se ve desconectada. En IA, especifica "background exposure set first" o "ambient light on background before subject".
- **No motivar la luz desde prácticos:** La IA genera luces sin origen que rompen la lógica espacial. Siempre vincula la clave a un práctico visible.
- **Usar geles en ventanas grandes:** Pérdida de exposición y logística pesada. En su lugar, cambia el balance de blancos en cámara (o en prompt: "white balance shift to 9000K").
- **No usar grid en softbox:** La luz se derrama al suelo y paredes, creando gradientes no deseados. En IA, añade "grid to control light spill" o "flagged light".
- **Enfocar spotlight en la pared, no en el haz:** Los haces de luz se ven borrosos. En IA, especifica "focused light beam in mid-air, not on wall" o "sharp volumetric rays".
- **Usar bombillas incandescentes dimerizables:** Cambian de temperatura al atenuarse. En IA, usa "dimmable LED bulb maintaining color temperature" o "Philips Hue bulb at 6500K".
- **No usar bottomer/cutter en luz frontal suave:** La luz crea un gradiente obvio en el suelo. En IA, añade "flag at bottom of light to cut floor gradient" o "foot wag flag".