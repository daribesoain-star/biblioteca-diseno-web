# The Most Important CAMERA SETTINGS for VIDEO | Filmmaking with Aidin Robbins
**Fuente:** esc_expo | https://youtu.be/49W2s-mbEV0

## Que ensena (2-3 lineas)
Cómo dominar los ajustes técnicos de cámara (shutter speed, frame rate, picture profile, white balance, ISO, bit depth) para lograr imágenes cinematográficas y efectos creativos intencionales. Enfatiza la regla del 180° shutter, el uso de perfiles planos/log para postproducción, y la importancia de verificar bit rate para evitar errores que arruinen el metraje.

## Lecciones accionables

**Aspect Ratio & Resolution:**
- 16:9 para YouTube, 9:16 para TikTok, open gate para ambas
- Higher resolution = más nitidez pero archivos más pesados
- En prompts: `16:9 aspect ratio`, `9:16 vertical video`, `open gate`

**Frame Rate & Shutter Speed (180° Rule):**
- 24fps → 1/50s shutter (natural, cinematográfico)
- 30fps → 1/60s shutter (ligeramente onírico)
- 60fps → 1/120s shutter
- 120fps → 1/240s shutter (slow motion dramático)
- Efecto creativo: bajar shutter a 1/6s para look "quiet and dream-like" (como en Olympic Peninsula)
- En prompts: `24fps`, `180-degree shutter`, `slow motion 120fps`, `dreamy 1/6s shutter`

**Picture Profile:**
- Usar flat profile o log profile (mínimo contraste/saturación) para máximo detalle en post
- Evitar standard o vivid profiles si se planea color grading
- En prompts: `log profile`, `flat color profile`, `cinematic color grade`

**White Balance:**
- Siempre manual, nunca automático
- Shade white balance en día normal = imagen sobreamarillenta (ruina el shot)
- Consistencia entre tomas para facilitar el grade
- En prompts: `custom white balance 5600K`, `tungsten white balance 3200K`

**ISO:**
- Usar native ISO del sensor (ej: 640 ISO si es nativo)
- Subir ISO = grano y pérdida de color
- Bajar ISO por debajo del nativo = imagen sucia, colores inexactos
- En prompts: `native ISO`, `low noise ISO`

**Bit Rate & Bit Depth:**
- 10-bit es mínimo profesional; 12-bit es superior
- 8-bit limita drásticamente el color grading
- Verificar al cambiar resolución/frame rate (error común de Aidin con CamelBak)
- En prompts: `10-bit color`, `high bitrate`, `12-bit depth`

**Display Tools:**
- Gridlines y level para composición
- Histogram para exposición
- Zebras para alerta de highlights quemados
- Focus peaking para confirmar foco
- False color para mapa de exposición
- En prompts: `zebra exposure`, `focus peaking`, `false color exposure map`

**Autofocus & Stabilization:**
- Continuous autofocus + tracking para video
- IBIS (in-body stabilization): apagar en lentes gran angular para evitar wobble
- En prompts: `continuous autofocus tracking`, `IBIS off wide lens`, `smooth gimbal movement`

## Reglas para el director de fotografia IA

1. **Usa 24fps + 1/50s shutter** cuando quieras look cinematográfico natural; **usa 120fps + 1/240s shutter** para slow motion dramático en comerciales.
2. **Para no alucinar en video IA, especifica "180-degree shutter"** en el prompt si quieres motion blur realista; omítelo si buscas efecto estroboscópico o hipernítido.
3. **Usa "log profile" o "flat color profile"** en prompts cuando planees postproducción; evita "vivid" o "standard" si quieres control de color.
4. **Especifica white balance manual** en prompts: `custom white balance 5600K` para día, `3200K` para tungsteno; nunca `auto white balance` porque los colores variarán entre frames.
5. **Usa "native ISO"** en prompts para máxima calidad; evita `high ISO` a menos que busques grano intencional.
6. **Para evitar wobble en IA**, si usas lente gran angular (≤24mm), añade `IBIS off` o `no stabilization` en el prompt.
7. **Para consistencia entre clips**, mantén el mismo aspect ratio, frame rate y white balance en todos los prompts de una secuencia.
8. **Usa "10-bit color depth"** en prompts cuando necesites gradación agresiva; omítelo para outputs simples.

## Errores comunes que evita o menciona

- **Shutter speed desincronizado al cambiar frame rate:** pasar de 24fps (1/50s) a 120fps sin subir shutter a 1/240s arruina el footage.
- **White balance automático:** causa inconsistencia de color entre tomas; usar manual siempre.
- **ISO por debajo del nativo:** genera imagen sucia y con colores inexactos (ej: 100 ISO en cámara con nativo 640).
- **Bit rate incorrecto:** Aidin grabó un comercial para CamelBak en 8-bit en lugar de 10-bit, dificultando el grade. Verificar al cambiar resolución/frame rate.
- **IBIS activado en lente gran angular:** produce wobble extraño en bordes del encuadre.
- **Autofocus sin tracking:** el foco salta entre sujetos durante la grabación.
- **No usar presets de cámara:** tener modos preconfigurados para 24fps y 60fps evita errores de shutter speed.