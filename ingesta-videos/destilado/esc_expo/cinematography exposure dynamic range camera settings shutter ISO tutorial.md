# cinematography exposure dynamic range camera settings shutter ISO tutorial
**Fuente:** esc_expo | https://youtu.be/cinematography exposure dynamic range camera settings shutter ISO tutorial

## Que ensena (2-3 lineas)
Control técnico de cámara para video: relación entre shutter speed, frame rate, ISO nativo, picture profile y bit depth. Cómo cada ajuste impacta la calidad de imagen, el motion blur y la flexibilidad en postproducción. Errores comunes que arruinan footage si no se configuran correctamente.

## Lecciones accionables

**Aspect Ratio & Frame Rate**
- Usa 16:9 para YouTube, 9:16 para TikTok, open gate para multiplataforma
- 24fps = look natural cinematográfico; 30fps = ligeramente onírico; 120fps = slow motion dramático
- *Prompt:* "cinematic 24fps, 16:9 aspect ratio, slow motion 120fps"

**Shutter Speed (Regla 180°)**
- 24fps → 1/50s shutter; 60fps → 1/120s; 120fps → 1/240s
- Para efecto onírico: bajar shutter a 1/6s (como en el video del Olympic Peninsula)
- *Prompt:* "180 degree shutter rule, motion blur, dreamy 1/6s shutter speed, smooth motion blur"

**Picture Profile**
- Usa LOG o flat profile para máxima latitud en post
- Evita standard/vivid si planeas color grading
- *Prompt:* "flat LOG profile, minimal contrast, wide dynamic range, 10-bit color depth"

**White Balance**
- Configuración manual, nunca automática
- Shade WB en día normal = imagen sobreexpuesta en cálido, difícil de corregir
- *Prompt:* "manual white balance 5600K daylight, consistent color temperature"

**ISO Nativo**
- Identifica el ISO nativo de tu cámara (ej: 640 ISO)
- Subir ISO = grano; bajar ISO = pérdida de rango dinámico y colores imprecisos
- *Prompt:* "native ISO 640, clean image, maximum dynamic range, low noise"

**Bit Rate / Bit Depth**
- Prioriza 10-bit sobre 8-bit (o 12-bit si disponible)
- Verifica al cambiar resolución/frame rate (error común: grabar en 8-bit sin saberlo)
- *Prompt:* "10-bit 4:2:2, high bitrate, robust image for color grading"

**Display Tools**
- Zebras: alertan highlights quemados
- Focus peaking: indica zonas en foco
- False color: mapa de exposición
- *Prompt:* "zebras at 90% IRE, focus peaking enabled, false color exposure map"

**Autofocus & Estabilización**
- AF continuo + tracking para sujetos en movimiento
- IBIS: desactivar en lentes gran angular para evitar wobble
- *Prompt:* "continuous autofocus subject tracking, IBIS off for wide angle lens, smooth handheld"

## Reglas para el director de fotografia IA

- **Usa 180° shutter rule** cuando quieras motion blur natural; rompe la regla (shutter lento) para efecto onírico o staccato (shutter rápido) para acción violenta.
- **Configura ISO nativo** siempre; si necesitas más luz, sube ISO pero acepta grano; nunca bajes del nativo o pierdes rango dinámico.
- **Para no alucinar en video IA:** especifica "10-bit LOG" en prompts para que el modelo genere gradientes suaves sin posterización.
- **Usa "manual white balance"** en prompts para evitar cambios de color inconsistentes entre clips generados.
- **Desactiva IBIS en gran angular** en prompts de cámara lenta o paneos; el wobble es artefacto común en IA si no se especifica.
- **Incluye "zebras" y "false color"** en prompts de previsualización para que la IA entienda exposición controlada.
- **Para slow motion IA:** especifica "120fps, 1/240s shutter" o el modelo generará motion blur incorrecto.

## Errores comunes que evita o menciona

- **Shutter speed desincronizado al cambiar frame rate:** grabar 120fps con 1/50s arruina el footage (motion blur excesivo).
- **ISO por debajo del nativo:** produce imagen sucia, granulada y con colores imprecisos (ej: 100 ISO en cámara con nativo 640).
- **White balance automático:** causa saltos de color entre tomas, imposible de igualar en grade.
- **Bit depth incorrecto:** grabar en 8-bit pensando que es 10-bit (error del autor con CamelBak); limita severamente la corrección de color.
- **IBIS activado en gran angular:** genera wobble en bordes del encuadre, especialmente en movimientos de cámara.
- **Picture profile standard:** pierde detalle en sombras y altas luces; imposible recuperar en post.