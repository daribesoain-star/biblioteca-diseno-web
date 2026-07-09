# Higgsfield AI — Plataforma de generación de imágenes y video con control de personajes, cámara y modelos de IA

## que_ensena
Higgsfield AI es una plataforma que centraliza múltiples modelos de IA generativa (Nano Banana Pro, Sea Dream, Kling, Google Veo, Sora, entre otros) para crear imágenes y videos con consistencia de personaje, producto y escena. Enseña flujos completos: desde generación de imágenes con el modelo correcto, creación de personajes personalizados con 20-30 fotos de referencia, animación con control de cámara y movimiento, transiciones cinematográficas entre escenas, hasta herramientas de edición como Outfit Swap, Shots (9 ángulos automáticos), Skin Enhancer, Inpainting y Cinema Studio para simular equipos de cámara profesionales. También cubre el uso del agente "Supercomputer" que integra modelos de pensamiento (Claude Opus 4.7, GPT-5.5, Gemini 3.1 Pro) para lanzar marcas completas desde un solo prompt.

## reglas_para_agentes
- Usa **Nano Banana Pro** (o Nano Banana 2) cuando necesites imágenes ultrarealistas fotográficas; usa **Sea Dream 4.0** (o Sea Dream 5.0) para estilos artísticos o estilizados.
- Usa **Higgsfield Soul** exclusivamente cuando generes imágenes de un personaje personalizado (Character); otros modelos no lo soportan.
- Para crear un personaje consistente, sube siempre entre **20 y 30 fotos de referencia** con variedad de ángulos (frente, perfiles, detrás, expresiones variadas) frente a un fondo sólido; menos fotos reduce la consistencia.
- Para generar fotos de referencia del personaje, usa fondo blanco y pose simple en la imagen base, luego aplica la app **Shots** para obtener 9 ángulos; repite hasta tener 20-30 imágenes.
- Cuando uses **Image to Video**, nunca describas el personaje o entorno en el prompt; describe solo la acción y el movimiento de cámara (la imagen base ya contiene esa información).
- Cuando uses modelos de video con audio (Kling 3.0, Google Veo 3.1, Kling 2.6), **siempre especifica el sonido ambiente** en el prompt o escribe "no dialogue" para evitar diálogos aleatorios o sonidos extraños.
- Activa **multi shot mode** y duración de **10 segundos** cuando generes videos con múltiples tomas; usa **6 segundos** para ahorrar créditos en videos simples.
- Usa **resolución 1080p** para máxima calidad en video; en imágenes usa **4K** para máximo detalle o **2K** para calidad profesional.
- En **Cinema Studio**, selecciona siempre una combinación cámara-lente: **ARRI Alexa 35 + Panavision C Series 35mm** para look cinematográfico, o **RED V-Raptor + Cooke S4** para trabajo comercial nítido.
- En **AI Influencer Studio**, selecciona **hyperrealistic** como render style para máxima calidad humana.
- Usa la app **Shots** (en pestaña Apps) para obtener **9 ángulos de cámara diferentes** de una sola imagen sin regenerar ni escribir prompts.
- Usa la app **Skin Enhancer** con **realistic skin** en imágenes con personas para mejorar texturas y naturalidad.
- Usa **Assets Library** con carpetas para mantener organizados todos los proyectos por nombre.
- Para videos con transiciones suaves, proporciona siempre **imagen inicial E imagen final**, más un prompt descriptivo del movimiento entre ambas.
- En **generación de imágenes**, especifica aspect ratio explícitamente (9:16 para vertical, 16:9 para horizontal) y calidad (2K o 4K para resultados profesionales).
- Usa la **fórmula de prompt** para imágenes: "Subject + action + environment + lighting + camera angle" para resultados específicos y evitar prompts vagos.
- En **Cinema Studio con start/end frame**, describe explícitamente la acción entre ambos fotogramas en el prompt de transición.
- Para mantener coherencia de personaje entre frames en Cinema Studio, usa el icono "+" junto al prompt para cargar imagen de referencia o personaje guardado.
- En el agente **Supercomputer**, usa **Claude Opus 4.7** para trabajo creativo y de marca; **Gemini 3.1 Pro** para análisis multimodal; **GPT-5.5** para generación visual rápida.
- Cuando el agente Supercomputer reciba un enlace de video de competidor, **analiza conflicto de identidad de marca antes de recrear**; si el tono choca con la identidad establecida, ofrece rutas alternativas.
- Entrena un **SOUL ID dedicado** para cada personaje de IA en el agente Supercomputer; alimenta múltiples stills del mismo personaje para crear identidad persistente entre sesiones.
- En el agente Supercomputer, **pide aprobación en cada etapa crítica** antes de avanzar (duración, arco narrativo, manejo de locaciones).
- Usa **"less is more"** en prompts de Higgsfield: no escribir párrafos cinematográficos extensos, solo movimiento, estado de ánimo o acción sutil; los presets ya manejan la cámara.
- Siempre empieza con una **imagen concreta** (subida o generada) como base del video, nunca desde cero, para mantener control.
- Usa **presets de cámara preconstruidos** en lugar de describir movimientos manualmente en el prompt.
- En **generación de imágenes**, no generes más de **2 variaciones** por lote para no desperdiciar créditos.
- Para **vehículos**, especifica "this is the front of the car" en el prompt para evitar que la IA los muestre en dirección incorrecta.
- Añade **"no text on clothing"** y **"looking at the camera"** en prompts de personajes para evitar errores comunes de la IA.

## errores_comunes
- **Elegir el modelo de IA incorrecto para el tipo de imagen**: usar Nano Banana Pro para arte en lugar de ultrarealismo, o viceversa, desperdicia créditos en resultados que no coinciden con la visión.
- **Describir personaje y entorno en el prompt de Image to Video**: solo se debe describir acción y movimiento de cámara, ya que la imagen base ya contiene esa información; hacerlo causa redundancia y resultados inconsistentes.
- **No especificar sonido ambiente en prompts de video con audio (Kling, Veo)**: el modelo puede generar diálogos aleatorios o sonidos extraños no deseados si no se indica explícitamente "no dialogue" o el sonido deseado.
- **Usar pocas fotos de referencia para crear un personaje**: menos de 20-30 fotos reduce drásticamente la consistencia del personaje en diferentes escenas y ángulos.
- **No usar variedad de ángulos en las fotos de referencia del personaje**: el modelo necesita entender el rostro desde todas las direcciones para mantener consistencia.
- **Modificar el prompt y regenerar esperando cambios mínimos**: la IA cambia también elementos que te gustaban; usar apps como Outfit Swap para cambios precisos de vestimenta.
- **Escribir prompts complejos para cada ángulo**: en lugar de usar Shots (que genera 9 ángulos en un clic sin escribir prompts), se desperdician créditos regenerando desde cero.
- **Usar Text to Video cuando se necesita control sobre el personaje/entorno**: la IA toma decisiones sobre la apariencia; para consistencia, usar Image to Video con una imagen base controlada.
- **Saltarse Skin Enhancer en imágenes con personas**: el resultado se ve artificial, con piel plástica o brillante, poco realista.
- **No usar Assets Library**: el desorden dificulta encontrar archivos al editar o exportar; los assets no se agrupan automáticamente por proyecto.
- **Texto no deseado en ropa/accesorios**: la IA tiende a añadir letras o logos en sombreros y camisetas; añadir "solid black hat" y "no text on clothing" al prompt.
- **Personaje no mira a la cámara**: la IA genera ángulos aleatorios; especificar "looking at the camera" en el prompt.
- **Vehículos moviéndose en dirección incorrecta**: la IA no sabe cuál es el frente del auto; escribir "this is the front of the car" en el prompt.
- **Confundir precios mensuales vs anuales en la página de planes**: la página muestra primero el plan anual como si fuera mensual; verificar que se está en la pestaña "Monthly" para ver el precio real mensual.
- **No tratar Higgsfield como una capa de control sobre múltiples modelos**: es un agregador, no un generador único; ignorar esto limita las capacidades.
- **No usar resultados patrocinados al buscar Higgsfield**: buscar exactamente "AI Video Generator and Image Generator by Higgsfield" con logo verde-amarillo y forma de serpiente.
- **No generar vídeos sin imagen final**: para mejor control y transiciones suaves, siempre proporcionar imagen inicial E imagen final en la generación de vídeos.
- **No usar el mismo prompt esperando resultados idénticos**: cada generación crea la imagen desde cero, por lo que aunque el prompt sea el mismo, las imágenes serán ligeramente diferentes.
- **Saltar entre herramientas en el flujo de marketing**: el error es usar ChatGPT, C Lens, Premiere, Figma y Webflow por separado; el agente Supercomputer mantiene el brand bible en su cabeza y renderiza todas las superficies contra él.
- **No generar sin dirección clara en el agente Supercomputer**: el agente no debe "saltar a generar" sin antes hacer preguntas de setup para fijar la dirección; esto evita outputs genéricos.
- **Inventar datos de mercado en el agente Supercomputer**: el agente debe extraer citas reales de foros y reseñas, no datos inventados en un deck.
- **Generar un nuevo rostro cada vez para el influencer**: el error común es generar una cara diferente en cada sesión; el agente debe entrenar un SOUL ID persistente para que el personaje sea el mismo seis meses después.

## fuentes_videos
- How to Use Higgsfield AI Better than 99% of People [higgsfield] — https://youtu.be/OxNlBqHex44
- The ONLY Higgsfield AI Tutorial You Need 2026: Step-by-Step for Beginners [higgsfield] — https://youtu.be/R7GZjRMsrzM
- EXACTLY How to use Higgsfield AI in 2026 [higgsfield] — https://youtu.be/AtIrM3OS9q8
- Higgsfield AI 2026: Complete step-by-step tutorial to master it [higgsfield] — https://youtu.be/sWwKzbk2jYk
- How to Use Higgsfield AI Like a PRO – AI Marketing Workflow [higgsfield] — https://youtu.be/kNradaMZ8kk
- STOP Wasting Credits & Master Higgsfield AI in 8 Min [higgsfield] — https://youtu.be/mRF0P_hyFIk
- Higgsfield AI Ultimate Tutorial (2026) [higgsfield] — https://youtu.be/cksEVv1tArI