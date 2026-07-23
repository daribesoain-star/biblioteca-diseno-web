# How to Make Product Videos with AI Using Higgsfield Marketing Studio
**Fuente:** hf_product | https://youtu.be/mAq_q4xs_aw

## Que ensena sobre Higgsfield (2-3 lineas)
Muestra como crear comerciales de producto completos usando Marketing Studio, alimentado por Seedance 2.0. Enfocado en subir assets (producto, avatar, referencias), elegir estilos de anuncio predefinidos (UGC, unboxing, product review, wildcard, etc.) y generar videos de hasta 15 segundos sin necesidad de prompts complejos. Incluye flujo para enlazar URL de producto y extraer automaticamente fotos y descripcion.

## Tips y flujos accionables

**1. Preparacion de assets (orden exacto)**
- **Producto:** Sube URL del producto (ej: pagina de tienda). Higgsfield extrae automaticamente nombre, descripcion y todas las fotos de la pagina. No necesitas subir fotos manualmente si la pagina ya las tiene.
- **Referencias (opcional pero recomendado):** Haz clic en "+" y sube 2-3 fotos reales del producto desde angulos distintos (ej: estuche, caja, producto dentro del estuche). Esto mejora la consistencia visual y escala.
- **Avatar:** Puedes usar avatares predefinidos (Nico, Sora, etc.), generar uno desde texto ("hombre vintage estilo 90s") o subir tu propia foto (1 imagen, nombrarla, cargar desde PC).

**2. Configuracion de parametros**
- **Estilo de anuncio:** Elige entre UGC style, tutorial, unboxing, hyper motion, product reviews, TV spot, wild card, UGC virtual try on, pro virtual try on.
- **Aspect ratio:** 16:9 (recomendado).
- **Calidad:** 480p o 720p. No hay 1080p (limitacion de Seedance 2.0).
- **Duracion:** 4 a 15 segundos. Recomendado: 8-10 segundos (32-40 creditos).
- **Prompt box:** Opcional. Si lo dejas en blanco, el sistema genera voz en off y escenas automaticamente. Si usas prompt, se respeta mas la instruccion.

**3. Prompts VERBATIM que funcionaron**
- Para unboxing sin voz: `"Unboxes the headphones ASMR style. No dialogue or music."` (genero video sin dialogo ni musica, solo sonidos ASMR).
- Para dejar que el sistema decida: dejar prompt en blanco (genera voz en off automatica con descripcion del producto).

**4. Flujo para evitar fallos de generacion**
- Si la generacion falla (error "credits refunded. Please try again"), cambia el estilo de anuncio O agrega un prompt especifico.
- Ejemplo practico: fallo con "unboxing" sin prompt; se soluciono cambiando a "wildcard" (sin prompt) o agregando prompt ASMR al unboxing.

**5. Trucos para look cinematografico**
- Usa el estilo "wildcard" para resultados mas creativos y musicalizados (genera musica de fondo automaticamente).
- Para consistencia de producto: sube fotos reales del empaque, caja y producto desde angulos distintos como referencias.
- El sistema hace cross dissolve (transicion) entre escenas automaticamente.

**6. Gestion de creditos**
- 8 segundos = 32 creditos. Con 380 creditos ($20 USD) haces ~10-12 generaciones.
- Plan mensual tipico: 1,200 creditos por ~$35 USD (precios variables).
- Para comerciales de 30 segundos: genera dos clips de 15 segundos y unelos.

## Reglas para el erudito de Higgsfield

- **Para extraer automaticamente fotos y descripcion del producto:** usa la URL del producto en el campo "product link" en lugar de subir imagenes manualmente.
- **Para evitar que el avatar hable (solo voz en off):** deja el prompt en blanco y selecciona "product review" o "wildcard".
- **Para que el avatar hable en pantalla (lip sync):** usa el estilo "UGC style" o "tutorial" y escribe un prompt con dialogo especifico.
- **Para unboxing sin dialogo ni musica:** usa el estilo "unboxing" con el prompt `"Unboxes the [product] ASMR style. No dialogue or music."`
- **Para resultados mas creativos y musicalizados:** usa el estilo "wildcard" sin prompt.
- **Para mantener consistencia de producto en multiples escenas:** sube 2-3 fotos reales del producto como referencias (no solo la URL).
- **Para subir tu propio avatar:** usa "create avatar" > "upload your own photo" (1 imagen, nombrarla, cargar desde PC).
- **Para duracion optima calidad/creditos:** usa 8-10 segundos (32-40 creditos).
- **Para calidad maxima disponible:** selecciona 720p (no hay 1080p en Seedance 2.0).

## Errores comunes / que evitar

- **No subir referencias del producto:** si solo usas la URL, el sistema puede alucinar la forma, color o escala del producto. Sube 2-3 fotos reales como referencias.
- **Usar prompt demasiado generico sin especificar estilo:** si dejas el prompt en blanco, el sistema decide todo (voz, musica, escenas). Si quieres control, escribe instrucciones claras.
- **Ignorar el error de "product" en la interfaz:** aparece un error visual en la parte inferior que no afecta la generacion. No detengas el proceso por eso.
- **Esperar 1080p:** Seedance 2.0 solo soporta hasta 720p. No pierdas tiempo buscando resolucion superior.
- **No cambiar de estilo cuando falla la generacion:** si un estilo falla dos veces, cambia a otro estilo (ej: de "unboxing" a "wildcard") o agrega un prompt especifico.
- **Asumir que el avatar siempre sincroniza labios:** solo ciertos estilos (UGC, tutorial) activan lip sync. Para voz en off sin avatar hablando, usa "product review" o "wildcard".
- **No verificar detalles finos del producto:** el sistema puede alucinar detalles (ej: solo un cable en auriculares estereo). Revisa cada generacion y ajusta referencias si es necesario.