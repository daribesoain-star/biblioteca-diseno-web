# Claude + Whop Clipping = Money Glitch (free workflow)
**Fuente:** imskaigenerated | https://youtu.be/PafYu69s5NA

## Qué enseña (2-3 líneas)
Enseña un flujo gratuito para convertir episodios largos de podcasts en clips verticales usando Claude Desktop conectado por MCP a una herramienta local de clipping.  
El objetivo es producir volumen para campañas de Whop Content Rewards, donde pagan según las vistas de los clips.

## Lecciones accionables
- Usa Whop Content Rewards para encontrar campañas pagadas de clipping: entra a la página de `content rewards`, ordena con `most paid out` y prioriza campañas que ya hayan pagado a creadores.
- Filtra campañas con 3 reglas: que no tengan más del `80%` del presupuesto gastado, que paguen aproximadamente entre `$1` y `$3` por cada `1,000 views`, y que el brief tenga recursos claros con episodios específicos para recortar.
- Evita campañas con payout demasiado alto si implican requisitos muy estrictos; evita campañas con payout muy bajo porque el volumen necesario puede no compensar.
- Ejemplo usado: campaña `David Heacock Clips`, descrita como podcast de negocios con presupuesto sano y poco usado.
- Revisa el `campaign brief` antes de editar: temas que funcionan, estilo esperado, reglas de publicación y sección de `resources` con episodios fuente.
- Instala los prerrequisitos locales antes de conectar Claude: `Node`, `Python`, `FFmpeg` y `Git`.
- En terminal, verifica que `Node`, `Python` y `FFmpeg` devuelvan número de versión antes de continuar.
- En Mac, el video menciona que Podcley/Pod Clear tiene un archivo de setup que automatiza la instalación; en Windows se ejecutan comandos manuales.
- Comandos mencionados de forma explícita o semiexplícita en la transcripción: `cd ~`, `git clone` seguido del enlace de Podcley, y luego `cd Pod Clear`.
- Después de clonar el repo, ejecuta los comandos de instalación/build incluidos en el command pack del video. La transcripción no muestra esos comandos exactos.
- Si aparecen warnings de vulnerabilidades durante la instalación, el video dice que son normales y se pueden ignorar en ese contexto.
- Conecta Claude Desktop con Pod Clear usando MCP: abre Claude Desktop, ve a `settings`, luego `developer`, luego `edit config`.
- Pega en el archivo de configuración el bloque que apunta a la instalación local de Pod Clear. La transcripción indica que ese bloque tiene `two file paths` que deben reemplazarse por las rutas reales del equipo.
- Usa la terminal para imprimir las rutas reales y copiarlas al config de Claude.
- Guarda el archivo de configuración y reinicia Claude Desktop completamente.
- Verifica la conexión en la página de developer de Claude: Pod Clear debe aparecer con etiqueta azul `running`.
- Descarga el episodio desde YouTube como archivo local porque PodClips/Pod Clear trabaja con video local, no con enlaces.
- Usa `yt-dlp` desde PowerShell para descargar el episodio. Si no está instalado, el video indica instalarlo con una línea, pero la transcripción no incluye el comando exacto.
- Ejecuta la descarga desde la carpeta de PodClips/Pod Clear para guardar el episodio dentro del proyecto.
- Si `yt-dlp` muestra texto amarillo sobre ajustes opcionales, el video dice que se puede ignorar.
- Primero pídele a Claude analizar el episodio sin renderizar, porque renderizar toma tiempo y conviene aprobar los clips antes.
- La instrucción central a Claude es que revise todo el episodio y devuelva los `top three moments`.
- Criterios de selección usados: momentos con `strong hook`, una toma `contrarian`, y capacidad de hacer que alguien deje de scrollear.
- Prompt verbatim: la transcripción no incluye el prompt exacto; solo dice “we'll just paste this prompt”.
- Evalúa manualmente los 3 momentos propuestos por Claude leyendo el texto y timestamps antes de renderizar.
- Pregunta de validación exacta mencionada: `Would this actually make someone stop scrolling?`
- Si un momento es débil, dile a Claude en lenguaje natural que lo descarte y busque otro, por ejemplo pidiendo algo más gracioso o con una línea inicial más fuerte.
- Solo después de aprobar los momentos, dile a Claude que los renderice.
- Al renderizar, Claude pasa los momentos aprobados a Pod Clear/PodClips, que corta cada momento, lo formatea verticalmente para shorts y quema los captions en el video.
- El video compara el flujo con `Opus Clip`: Opus fue más rápido y entregó clips más pulidos, cortos y punchy; Claude mantuvo más contexto alrededor del momento.
- Momento validado por comparación: Claude eligió el clip que empieza con `First of all, don't hire me`, y Opus Clip también lo eligió con score `98 out of 100`.
- Para que los clips se sientan nativos en TikTok/Reels, ajusta captions desde Claude: agrandar texto, cambiar fuente, cambiar color de highlight o usar templates integrados de PodClips.
- Prompt verbatim para cambiar captions: la transcripción no incluye el texto exacto; solo dice “we'll just paste this prompt”.

## Reglas para agentes
- Usa Claude con MCP cuando necesites que Claude opere una herramienta local en vez de solo responder texto.
- Usa Whop Content Rewards cuando el objetivo sea monetizar clips por vistas.
- Ordena campañas por `most paid out` antes de elegir una campaña.
- Nunca elijas una campaña solo porque aparece primero; revisa pagos previos, presupuesto restante y payout por mil vistas.
- Usa el umbral de `80% spent`: descarta campañas que estén casi sin presupuesto.
- Apunta a payouts de `$1-$3 per thousand views` salvo que el brief justifique otra cosa.
- Nunca renderices clips antes de aprobar los momentos seleccionados.
- Primero pide timestamps y resumen textual de los mejores momentos; después valida; después renderiza.
- Usa hooks fuertes, tomas contrarias e ironía como señales de clip potencial.
- No aceptes ciegamente los clips elegidos por Claude; valida si detendrían el scroll.
- Si un clip no cumple, pide a Claude reemplazarlo con una opción más fuerte.
- Usa `yt-dlp` para convertir un enlace de YouTube en archivo local cuando la herramienta de clipping no acepte URLs.
- Verifica que MCP esté `running` en Claude Desktop antes de iniciar el flujo.
- Ajusta captions para la plataforma final; nunca publiques captions genéricos si puedes adaptar tamaño, fuente, color de highlight o template.
- No inventes prompts exactos si la transcripción no los muestra.

## Errores comunes que evita o menciona
- Ver manualmente un podcast completo de 2 horas para encontrar un solo clip de 30 segundos.
- Editar y subtitular línea por línea a mano.
- Depender de un único clip esperando que se vuelva viral.
- Creer que clipping es una estafa cuando el problema real es hacerlo sin volumen.
- Pagar otra suscripción mensual a herramientas de clipping si ya se usa Claude.
- Usar herramientas que solo detectan buzzwords o picos de energía sin entender el contexto.
- Elegir campañas sin historial de pagos.
- Entrar a campañas con presupuesto casi agotado.
- Elegir payouts demasiado bajos o requisitos demasiado estrictos.
- Renderizar clips antes de revisarlos.
- Publicar clips con captions limpios pero genéricos que no se sienten nativos de TikTok o Reels.