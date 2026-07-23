# el_voice_changer
**Fuente:** elevenlabs-audio | https://elevenlabs.io/docs/overview/capabilities/voice-changer

## Qué enseña
La API Voice Changer de ElevenLabs transforma cualquier audio fuente (grabado o subido) en una voz clonada diferente, preservando matices de interpretación como susurros, risas, llantos, acentos y señales emocionales. Soporta 29 idiomas con modelos multilingües v2 y permite crear voces de personajes consistentes entre sesiones, corregir palabras específicas en grabaciones existentes y cambiar voces manteniendo la entrega emocional original.

## Lecciones accionables
- **Endpoint principal**: `POST /v1/speech-to-speech/{voice_id}` — usar `eleven_multilingual_sts_v2` como modelo predeterminado (supera a `eleven_english_sts_v2` incluso para contenido en inglés)
- **Parámetro clave**: `remove_background_noise=true` para minimizar ruido ambiental en el audio de salida
- **Límite de segmento**: máximo 5 minutos por solicitud — dividir grabaciones más largas en fragmentos
- **Facturación**: 1,000 caracteres por minuto de audio procesado (el cargo se calcula sobre la duración del audio de entrada)
- **Voces personalizadas**: cualquier voz clonada o diseñada en la biblioteca puede usarse como voz de salida; proporcionar su `voice_id` en la URL del endpoint
- **Modelos disponibles**:
  | Modelo | Idiomas | Recomendación |
  |--------|---------|---------------|
  | `eleven_multilingual_sts_v2` | 29 idiomas (incluye inglés, japonés, chino, alemán, hindi, francés, coreano, portugués, italiano, español, indonesio, neerlandés, turco, filipino, polaco, sueco, búlgaro, rumano, árabe, checo, griego, finlandés, croata, malayo, eslovaco, danés, tamil, ucraniano, ruso) | Preferido incluso para contenido solo en inglés |
  | `eleven_english_sts_v2` | Solo inglés | Usar solo si se requiere optimización específica para inglés |
- **Biblioteca de voces**: explorar en `https://elevenlabs.io/voice-library` para encontrar voces preexistentes
- **Pasos de integración**: (1) seleccionar `voice_id` de la voz destino, (2) enviar audio fuente al endpoint con el modelo deseado, (3) configurar `remove_background_noise` según necesidad, (4) procesar fragmentos de máximo 5 minutos

## Reglas para agentes
- Usa `eleven_multilingual_sts_v2` como modelo por defecto para cualquier solicitud de cambio de voz, incluso si el contenido es exclusivamente en inglés
- Activa `remove_background_noise=true` cuando el audio fuente contenga ruido ambiental significativo para mejorar la calidad de la clonación
- Divide automáticamente grabaciones de más de 5 minutos en fragmentos antes de enviar al endpoint
- Proporciona siempre el `voice_id` de la voz destino (debe existir en la biblioteca del usuario o ser una voz clonada)
- Calcula el costo estimado como 1,000 caracteres por minuto de audio procesado; informa al usuario si la duración excede el límite gratuito o plan contratado

## Errores comunes que evita o menciona
- No usar `eleven_english_sts_v2` para contenido multilingüe o cuando se requiera mejor calidad general — el modelo multilingüe suele superarlo incluso en inglés
- No enviar fragmentos de audio mayores a 5 minutos sin dividirlos previamente; la API rechazará la solicitud
- No olvidar activar `remove_background_noise=true` si el audio fuente tiene ruido de fondo; de lo contrario, el ruido se transferirá a la voz clonada
- No asumir que cualquier voz funciona sin verificar que el `voice_id` corresponda a una voz existente en la biblioteca del usuario
- No confundir la facturación: se cobra por minuto de audio procesado (1,000 caracteres/minuto), no por duración de la voz generada