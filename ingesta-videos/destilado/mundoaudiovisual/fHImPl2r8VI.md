# 🔵 NEW COURSE 2.0 OF DAVINCI SOLVES 18 🎬 Chapter 15: VOICE EDITING
**Fuente:** mundoaudiovisual | https://youtu.be/fHImPl2r8VI

## Qué enseña
Cómo transformar audio grabado con un teléfono móvil (con ruido ambiental, como aire acondicionado) en un audio profesional para voiceovers, podcasts o YouTube usando DaVinci Resolve 18 Studio. Cubre dos flujos: uno con la herramienta mágica "Voice Isolation" (solo Studio) y otro manual con "Noise Reduction" (Fairlight) para la versión gratuita.

## Lecciones accionables
- **Para versión Studio:** Aplica el efecto **Voice Isolation** desde la pestaña de efectos (aparece como "magia" que elimina todo el ruido de fondo automáticamente).
- **Para versión gratuita:** Ve a **Effects > Fairlight > Noise Reduction**. Selecciona un fragmento de audio que contenga solo ruido (sin voz), presiona **Analyze** para capturar el perfil de ruido, luego aplica la reducción.
- **Ecualización (ambas versiones):** Usa un **Equalizer** en la pista. Aumenta las frecuencias altas (bandas agudas) y las bajas (graves) para dar cuerpo a la voz. Reduce las frecuencias medias problemáticas (las que suenan "mal" o "metálicas").
- **Diálogo dinámico:** Activa **Dialogue Leveler** en la pista para que el volumen suba y baje automáticamente según la intensidad de la voz (el video menciona que se explicará en un capítulo avanzado).
- **Limitador:** Agrega un **Limiter** en la pista (no en el clip). Configura el **Ceiling** a **-1 dB** para evitar recortes y poder subir el volumen general del track sin distorsión.
- **Ajuste fino:** Después de aplicar efectos, escucha y retoca el ecualizador: refuerza un poco más las frecuencias que suenan débiles y atenúa las que aún suenan "chillonas" o con ruido residual.

## Reglas para agentes
- Usa **Voice Isolation** solo si el proyecto está en DaVinci Resolve Studio (versión de pago); en la gratuita, usa **Noise Reduction** con análisis manual.
- Siempre analiza el ruido en un fragmento **sin voz** antes de aplicar Noise Reduction.
- Configura el **Ceiling del Limiter a -1 dB** para permitir subir el volumen del track sin saturar.
- Aplica el **Limiter en la pista** (track), no en el clip individual.
- No uses Dialogue Leveler sin antes haber eliminado el ruido de fondo con Voice Isolation o Noise Reduction.

## Errores comunes que evita o menciona
- No aplicar ningún filtro de ruido al audio grabado con móvil: el resultado suena "metálico", con ruido ambiental (aire acondicionado, estudio) audible.
- Usar Noise Reduction sin analizar primero una muestra de ruido puro: la reducción será menos efectiva.
- Olvidar ecualizar después de la reducción de ruido: la voz queda sin cuerpo, "chillona" o "metálica".
- Poner el limitador en el clip en lugar de en la pista: limita la capacidad de subir el volumen general.
- No ajustar manualmente las bandas del ecualizador después de la primera pasada: el audio puede sonar aún con frecuencias molestas.