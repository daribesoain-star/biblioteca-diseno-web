# el_dubbing
**Fuente:** elevenlabs-audio | https://elevenlabs.io/docs/overview/capabilities/dubbing

## Qué enseña
La herramienta de doblaje de ElevenLabs traduce audio y video a más de 90 idiomas preservando la emoción, el timing, el tono y las características únicas de cada hablante. Separa el diálogo de cada hablante de la banda sonora para recrear la entrega original en otro idioma. Incluye detección automática de múltiples hablantes, incluso con superposición de voz.

## Lecciones accionables
- **Automatic Dubbing (Dubbing v2 Alpha):** Acceso desde https://elevenlabs.io/app/dubbing. Límites de subida: hasta 2 GB y 180 minutos. Usa el modelo Dubbing v2 Alpha por defecto.
- **Dubbing Studio (modelo V1 legacy):** Acceso desde el botón **Advanced** → **Use Legacy V1 Dubbing Model** en la página de Dubbing. Límites de subida: hasta 1 GB y 45 minutos. Solo disponible con el modelo V1. Está en modo de mantenimiento (solo correcciones críticas de errores).
- **Cloning strength:** Parámetro configurable en Automatic Dubbing (Dubbing v2 Alpha). Valor por defecto: 7. Valores más altos priorizan similitud de voz pero pueden sonar menos naturales en idiomas con fonética muy diferente. Valores más bajos dan más libertad para una entrega natural en el idioma de destino a costa de menor parecido con la voz original.
- **Idiomas soportados:** Más de 90 idiomas, incluyendo inglés, español, francés, alemán, japonés, chino, árabe y más.
- **Tipos de archivo soportados:** Videos y audio desde YouTube, X, TikTok, Vimeo, URLs directas o subida de archivos.
- **Concurrencia:** Todos los planes autogestionados (Free, Starter, Creator, Pro, Scale, Business) permiten hasta 5 trabajos de doblaje concurrentes. Planes Enterprise: 100 trabajos concurrentes por defecto. Al superar el límite se recibe el error `too_many_concurrent_requests`.
- **Marcas de agua:** Dubbing v2 no incluye un toggle de marca de agua. Los doblajes del plan Free tienen marca de agua automáticamente; los de pago no. No hay opción de descuento por créditos a cambio de marca de agua en Dubbing v2.
- **Reembolsos:** Si un trabajo de Dubbing Studio falla o se cancela, los créditos se reembolsan automáticamente. Dubbing v2 (cobrado por minuto en USD en Automatic Dubbing) no cobra por trabajos fallidos.
- **Recomendación de hablantes:** Máximo 9 hablantes únicos por archivo para mejor calidad.
- **API Dubbing v2:** Aún no está en vivo, se espera su lanzamiento en las próximas semanas.

## Reglas para agentes
- Usa el modelo Dubbing v2 Alpha para doblajes automáticos rápidos con límite de 2 GB/180 minutos.
- Usa Dubbing Studio (modelo V1 legacy) solo cuando se requiera edición de transcripciones, reasignación de hablantes o regeneración por clip; ten en cuenta que está en mantenimiento.
- Configura cloning strength en 7 por defecto; ajústalo a valores más bajos si la naturalidad en el idioma de destino es prioritaria, o a valores más altos si la similitud de voz es crítica.
- Nunca intentes usar Dubbing v2 API porque aún no está disponible; usa la interfaz web de Automatic Dubbing.
- Nunca esperes que un trabajo en cola o cargando se complete si está atascado por mucho tiempo; cancélalo y reenvíalo.
- Nunca asumas que hay descuento por marca de agua en Dubbing v2; esa opción solo existe en el flujo V1 legacy y Dubbing Studio.

## Errores comunes que evita o menciona
- **Error `too_many_concurrent_requests`:** Ocurre al exceder el límite de 5 trabajos concurrentes (planes autogestionados) o 100 (Enterprise). Solución: esperar a que trabajos existentes terminen antes de iniciar nuevos.
- **Trabajo atascado en "Queued" o "Loading":** No perder créditos si se cancela y reenvía; es la acción recomendada.
- **Dubbing Studio fallido o cancelado:** Los créditos se reembolsan automáticamente; no hay doble cobro.
- **Dubbing v2 fallido:** No se cobra por trabajos fallidos (cobro por minuto en USD).
- **Confundir Dubbing v2 con V1 legacy:** Automatic Dubbing usa Dubbing v2 por defecto; para V1 legacy hay que hacer clic en **Advanced** → **Use Legacy V1 Dubbing Model**.
- **Asumir que el doblaje en vivo está disponible:** No lo está; no hay soporte para doblaje en tiempo real o en vivo.