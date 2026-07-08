# Motion graphics en DaVinci Resolve: el workflow real de un director creativo con cliente

**Fuente:** @JoshT Creativity (Instagram) | URL https://www.instagram.com/reel/DS-mTLriWkZ/ | 48 s | motion graphics en DaVinci Resolve

---

## Qué enseña (2-3 líneas)

JoshT revela su pipeline completo para producir motion graphics de cliente usando DaVinci Resolve en lugar de After Effects, demostrando que el resultado es igual de competitivo. La lección central no es técnica: es de método. Antes de abrir cualquier software, el especialista diseña la animación cuadro a cuadro en un whiteboard digital, como storyboard, y recién entonces anima en Fusion (el compositor de nodos de DaVinci). La frase final lo cierra: "al final son ceros y unos" — la herramienta no importa, importa el proceso.

---

## El workflow del especialista (paso a paso según audio + frames)

1. **Recibir el brief y reconocer sus vacíos.** El brief del cliente (visto en Frame.io, f04) especificaba el estilo general ("premium, high-end animations, organic but elevated") y algunos elementos puntuales (timer de 60 s, animaciones de depósito bancario con efecto glass, tarjeta de identidad), pero dejaba abierta la dirección creativa. JoshT describe esto como "no decía mucho" — señal para activar el siguiente paso.

2. **Buscar referencias que encajen con la marca.** Antes de cualquier boceto, JoshT recorre referencias visuales en un grid rotatorio (f05): animaciones de UI, renders de producto, estilos de iluminación. Las referencias no son inspiración genérica: deben calzar con la identidad de la marca del cliente.

3. **Diseñar la animación en el whiteboard, frame por frame.** Con las referencias claras, abre un whiteboard digital en el navegador (interfaz con header azul/teal, parece Excalidraw u equivalente) y dibuja a mano cada fotograma clave de la animación (f08, f09, f10, f13). Los dibujos son wireframes simples: rectángulos para frames de teléfono, formas esquemáticas para los elementos UI, flechas indicando transiciones, anotaciones de tipo "zoom in blur". Este paso produce un storyboard funcional de entre 5 y 8 frames que mapea el movimiento completo antes de tocar DaVinci.

4. **Animar en DaVinci Resolve — módulo Fusion (nodos).** La animación se construye en el compositor de nodos de Fusion (f03, f14, f16). Nodos visibles: `Background`, `Medium`, `Merge`, `ImagePlane`, `Displace1`. El nodo `Displace1` con fondo amarillo en checkerboard (fondo transparente) produce el efecto de distorsión que da vida a las transiciones. Los nodos se conectan visualmente, de forma similar a como Blender compositor o Nuke manejan capas — cada elemento es un nodo y las conexiones definen el orden de composición.

5. **Resultado final para el cliente: animación de phone mockup.** El producto terminado (f15, f17) muestra un teléfono animado con la app de "Edgard Cooper" (marca de comida para mascotas), desplegando una notificación de pago con efecto glass ("You paid 430 M"). El resultado es indistinguible de lo que se haría en After Effects.

---

## Lo visual observado (frames: proceso, UI, resultado)

| Frame | Qué muestra | Nota clave |
|---|---|---|
| f01 | Title card: "motion graphics" en negro total | Tipografía dos pesos: label pequeño italic ("he's really") + word grande bold. Patrón de revelación progresiva |
| f02 | Ícono de After Effects flotando sobre timeline de DaVinci | El timeline muestra Adjustment Clips, Text+, Fusion Composition — estructura real de proyecto |
| f03 | Nodo graph de Fusion con Background/Medium/Merge/ImagePlane | Texto: "igual de bueno" — argumento central del reel |
| f04 | Brief del cliente en Frame.io | Documento real con instrucciones, stills de referencia e imagen de ID card del personaje |
| f05 | Grid 3D rotatorio de referencias visuales | Múltiples pantallas girando: UI glow, renders de autos, After Effects screenshots |
| f08–f10 | Whiteboard con 2 frames de phone wireframe | El creador dibuja el primer par de frames del storyboard en tiempo real |
| f13 | Whiteboard con storyboard completo (5–8 frames en 2 filas) | Anotación "Zoom in blur" escrita a mano — documenta la transición entre escenas |
| f14 | Nodo Displace1 → Merge2 en Fusion, fondo checkerboard | El nodo de distorsión es la clave del efecto de transición orgánico |
| f15, f17 | Monitor con DaVinci abierto + phone mockup del resultado final | La app Edgard Cooper con notificación glass — el entregable real |
| f19 | Timeline de DaVinci (Cut page) con tracks naranja/teal | CTA: "si quieres Vlog" para ver el proceso completo |

**Estética del reel:** fondo negro total o muy oscuro, tipografía sans-serif bold para las palabras clave, label italic pequeño arriba como "contexto", subtítulos en blanco pequeños para el audio. Jerarquía tipográfica de dos niveles constante (contexto + concepto). Talking head con bokeh fuerte, luz cálida lateral (naranja/roja para dramatismo). Sin transiciones complejas en el reel mismo — los cortes son secos y rápidos.

---

## Lecciones accionables

1. **El storyboard en whiteboard es obligatorio antes de animar.** No es un paso opcional ni para principiantes: un director creativo con clientes reales dibuja cada frame clave a mano antes de abrir DaVinci o cualquier otra herramienta. Esto previene cambios de dirección caros en medio de la producción.

2. **Las referencias son la respuesta a los briefs vagos.** Cuando el cliente no especifica el estilo, buscar referencias que "encajen con la marca" es el primer movimiento. Las referencias no son inspiración: son el brief visual que el cliente no supo escribir.

3. **DaVinci Fusion reemplaza After Effects para motion graphics.** El sistema de nodos (Displace, Merge, Background, ImagePlane) cubre los mismos efectos de compositing, con la ventaja de que el creador ya tiene DaVinci para edición — un solo software en lugar de dos suscripciones.

4. **El nodo Displace en Fusion produce transiciones orgánicas.** Para efectos de distorsión en transiciones (el equivalente al displacement map de After Effects), el nodo `Displace1` con un canal de ruido o shape como driver es el punto de partida.

5. **"Al final son ceros y unos" — el cierre filosófico como herramienta de contenido.** La frase final transforma un tutorial técnico en un argumento de marca: el creador no vende habilidad con un software, vende criterio creativo independiente de la herramienta.

6. **El brief en Frame.io como fuente de verdad del cliente.** Usar una plataforma de revisión colaborativa (Frame.io) para recibir briefs permite que el cliente adjunte imágenes de referencia, links y anotaciones en el mismo documento — elimina el email de ida y vuelta.

---

## Reglas para agentes (imperativas, verificables)

- **ANTES de abrir cualquier software de animación, producir un storyboard de wireframes.** Mínimo: un frame por escena clave, con flechas indicando transiciones y anotaciones de efecto (ej. "zoom in blur"). Si no existe el storyboard, la animación no empieza.

- **Cuando el brief del cliente sea vago en dirección visual, generar un moodboard de referencias antes de proponer conceptos.** Las referencias se filtran por identidad de marca (paleta, categoría, tono), no por preferencia personal.

- **Para motion graphics en DaVinci Resolve/Fusion: usar la cadena `Background → [elemento] → Displace1 → Merge`** para efectos de distorsión y transiciones orgánicas. El nodo Displace1 necesita un input de canal de distorsión (ruido, forma geométrica animada).

- **El resultado final de phone mockup se construye en Fusion como composición de nodos**, no en la timeline de edición. La timeline solo ensambla las composiciones terminadas de Fusion.

- **Para motion graphics con brief de cliente, documentar en Frame.io** (o equivalente): el brief escrito, las referencias de imagen, los nombres de los personajes/marcas y cualquier asset de identidad. Un documento único, no un hilo de correos.

- **La tipografía del reel de proceso sigue la regla dos niveles**: label contextual pequeño en regular/italic + palabra concepto grande en bold. NUNCA textos de igual peso compitiendo en el mismo frame.

---

## Aplicabilidad a nuestras skills

| Skill | Conexión |
|---|---|
| **motion-graphics** | El workflow completo (brief → referencias → storyboard whiteboard → Fusion nodos → resultado) es el flujo canónico que debe seguir esta skill. Agregar la etapa de storyboard como paso obligatorio antes de animar. |
| **agro-video-pipeline** | El patrón "references first, storyboard second" aplica a cualquier video comercial de Agrocomercial. Antes de generar imágenes con IA o animar, hacer el storyboard en excalidraw/whiteboard. |
| **commercial-os** | La estructura del brief en Frame.io (texto + referencias visuales + assets de marca en un solo doc) es el modelo a adoptar para briefs de clientes comerciales. Reemplaza el email con adjuntos. |
| **estudio-sintetico** | El uso de DaVinci Resolve/Fusion como alternativa gratuita a After Effects es directamente aplicable al arsenal del estudio. Fusion está incluido en DaVinci gratis. |
| **general-video** | La frase "al final son ceros y unos" es una filosofía de producción: no hay herramienta correcta, hay proceso correcto. El storyboard es el proceso, la herramienta es el instrumento. |
| **chiwilandia-video-pipeline** | El storyboard de wireframes frame a frame (incluso simple, hecho a mano en un whiteboard) antes de generar imágenes con IA es exactamente el paso que previene inconsistencias de personaje entre planos. |
| **faceless-explainer** | El formato del reel (voz en off + screen recording de proceso + talking head + tipografía kinética bold) es un template reproducible para explicar procesos técnicos sin mostrar la cara todo el tiempo. |

---

*Destilado generado: 2026-07-07 | Reel: 48 s | 107 likes | 15 comentarios*
