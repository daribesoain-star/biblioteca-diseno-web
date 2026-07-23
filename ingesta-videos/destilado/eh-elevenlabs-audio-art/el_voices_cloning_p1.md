# el_voices_cloning
**Fuente:** elevenlabs-audio | https://elevenlabs.io/docs/eleven-creative/voices/voice-cloning
## Qué enseña
Documenta los métodos de clonación de voz de ElevenLabs: Instant Voice Cloning (muestras cortas) y Professional Voice Cloning (entrenamiento extendido). Explica Voice Design para crear voces desde descripciones de texto, Voice Remixing para modificar atributos de voces existentes, y la gestión de voces a través de la Voice Library con más de 10,000 voces comunitarias.

## Lecciones accionables
- **Instant Voice Cloning**: Clona una voz desde muestras de audio cortas (menos de 2 minutos). Disponible en la mayoría de planes.
- **Professional Voice Cloning**: Requiere audio de entrenamiento extendido para máxima fidelidad. Requiere plan Creator o superior. Usa tecnología "voice-captcha" para verificar que las muestras sean de tu propia voz.
- **Voice Design**: Crea voces nuevas especificando atributos (edad, género, acento, tono). Requiere:
  - **voice description**: entre 20 y 1000 caracteres.
  - **text** opcional para previsualizar la voz: entre 100 y 1000 caracteres.
  - Genera 3 previsualizaciones de voz.
- **Voice Design con Eleven v3**: Usando el modelo Eleven v3, las voces pueden diseñarse mediante un prompt para lograr un rango amplio de emociones. Soporta etiquetas de audio en generaciones de previsualización. Compatible hacia atrás con modelos v2.
- **Voice Remixing**: Transforma voces que posees modificando atributos (género, acento, estilo de habla, ritmo, calidad de audio) mediante prompts en lenguaje natural. Funciona con voces clonadas (Instant o Professional) y voces creadas con Voice Design.
- **Voice Library**: Más de 10,000 voces compartidas por la comunidad. Se han pagado más de **$14M** a creadores. Las voces de la biblioteca NO están disponibles vía API para usuarios del plan gratuito.
- **Gestión de voces**: Administra voces desde **My Voices** (https://elevenlabs.io/app/voice-lab). Permite buscar, filtrar, categorizar, agregar descripciones y etiquetas personalizadas.
- **Idiomas soportados**: 32 idiomas. Modelos v2 multilingües soportan 29 idiomas. Flash v2.5 soporta 32 idiomas (agrega húngaro, noruego y vietnamita).
- **Voces por defecto**: Todas las voces por defecto expirarán el **31 de diciembre de 2026** y dejarán de ser accesibles después de esa fecha.

### Tabla de tipos de voz

| Tipo de Voz | Descripción | Disponibilidad |
|-------------|-------------|----------------|
| Community | Voces compartidas por la comunidad en Voice Library | No disponible vía API para usuarios gratuitos |
| Cloned (Instant) | Clonación rápida desde muestras cortas (<2 min) | Mayoría de planes |
| Cloned (Professional) | Clonación profesional con audio extendido | Plan Creator o superior |
| Voice Design | Voces generadas desde descripciones de texto | Todos los planes |
| Voice Remixing | Transformación de atributos de voces existentes | Voces propias clonadas o diseñadas |

## Reglas para agentes
- Usa Instant Voice Cloning cuando necesites clonar una voz rápidamente con menos de 2 minutos de muestra.
- Usa Professional Voice Cloning solo si el usuario tiene plan Creator o superior y puede proporcionar audio de entrenamiento extendido.
- Nunca uses voces de la Voice Library vía API para usuarios del plan gratuito.
- Nunca uses voces por defecto de ElevenLabs después del 31 de diciembre de 2026.
- Usa Voice Design con modelo Eleven v3 cuando necesites voces con rango emocional amplio y control sobre características.
- Usa Voice Remixing solo con voces que el usuario posea (clonadas o diseñadas), no con voces comunitarias.
- Para Voice Design, asegura que la descripción tenga entre 20 y 1000 caracteres y el texto opcional entre 100 y 1000 caracteres.
- Para Professional Voice Cloning, verifica que el usuario tenga plan Creator o superior antes de iniciar el proceso.

## Errores comunes que evita o menciona
- **Voces por defecto expirando**: Todas las voces por defecto expirarán el 31 de diciembre de 2026 y no serán accesibles después. Planificar migración antes de esa fecha.
- **Voice Library no disponible vía API para gratuitos**: Los usuarios del plan gratuito no pueden acceder a voces de la biblioteca comunitaria mediante la API.
- **Professional Voice Cloning requiere plan Creator**: Intentar crear clones profesionales sin el plan adecuado fallará.
- **Voice-captcha obligatorio**: Para Professional Voice Cloning, se requiere verificación mediante voice-captcha para confirmar que las muestras son de la propia voz del usuario.
- **Instant Voice Clones no compartibles**: Los clones instantáneos y las voces generadas no pueden compartirse públicamente en la Voice Library; solo los clones profesionales pueden compartirse.
- **Límites de caracteres en Voice Design**: La descripción debe tener entre 20 y 1000 caracteres; el texto de previsualización entre 100 y 1000 caracteres.