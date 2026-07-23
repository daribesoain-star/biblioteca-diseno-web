# 5 Techniques for High-End Motion Design (After Effects)
**Fuente:** Stephan Zammit | https://youtu.be/xMUn0LZp21o

## Qué enseña (2-3 líneas)
El tutorial desglosa cinco flujos de trabajo profesionales para motion design de alto nivel en After Effects, enfocados en transiciones invisibles, uso estratégico de 3D, interacción entre elementos y tipografía táctil. Cada técnica está diseñada para integrarse como capas de un sistema profesional que eleva la calidad final del proyecto.

## Técnicas accionables

- **Continuous Flow (Flujo Continuo):**
  - Seleccionar todas las capas de fotos, cambiar a 3D (activar casilla de cubo 3D en cada capa).
  - Ir a `Layer > Transform > Auto-Orient` y seleccionar `Orient Towards Camera`.
  - Animar la rotación del null padre (tecla `R` para abrir rotación) en cualquier eje (Y, X, Z); las fotos se mantienen siempre rectas hacia la cámara.

- **Kinetic Cut (Corte Cinético):**
  - Crear un nuevo null (`Layer > New > Null Object`).
  - Parentar ambas capas (fotos o textos) al null.
  - Animar una propiedad de transformación del null (ej: Scale de 100% a 200%, o Position, Rotation).
  - Seleccionar ambos keyframes en el `Graph Editor`, presionar `F9` para aplicar Easy Ease.
  - Ajustar los manejadores de la curva de velocidad: arrastrar el manejador inicial hacia arriba (aceleración lenta → rápida) y el manejador final hacia abajo (desaceleración rápida → lenta). El pico de velocidad debe coincidir con el punto de transición entre capas.
  - Aplicar la misma curva a múltiples propiedades (posición, rotación) en diferentes elementos para transiciones compuestas.

- **Strategic 3D (3D Estratégico):**
  - Convertir una imagen 2D a 3D usando Meshify (web app): arrastrar imagen, generar modelo 3D, texturizar con la misma foto, descargar en formato GLB.
  - En After Effects, arrastrar el archivo GLB a la composición, escalar y rotar para que coincida con la foto original.
  - Agregar luces: `Layer > New > Light` → Environment Light (intensidad 200), luego Spot Light (ajustar posición, intensidad y `Falloff Distance` para controlar el haz).
  - Para aplicar efectos (ej: Curves) al modelo 3D: `Layer > Create > Create 3D Layer Instance`, luego arrastrar el efecto sobre esa capa instancia.
  - Animar rotación del modelo 3D con keyframes, aplicar `F9` y curva de velocidad (inicio rápido, final lento) en el Graph Editor.

- **Reactive Environments (Entornos Reactivos):**
  - Convertir una capa (ej: puntero) en capa de ajuste: hacer clic en el botón de ajuste (switch de Adjustment Layer) en la línea de tiempo.
  - Aplicar efecto `Invert` a la capa de ajuste para que el puntero cambie de color según el fondo.
  - Para interacción múltiple: aplicar efecto `Tint` a cada foto. En `Amount to Tint`, usar el preset MoGraph Pro Effector (disponible en descripción del video).
  - Nombrar la capa del puntero como "effector" (exactamente así). Seleccionar la capa effector, ir a `Effects & Presets`, buscar `MoGraph Pro effector`, hacer doble clic.
  - Presionar `U` + `U` para abrir atributos. En `Amount to Tint`, agregar `MoGraph Special Property 1` (desde el effector). Copiar y pegar el efecto Tint en todas las fotos.
  - Ajustar en el effector: `Affected Properties > Special Properties > Property 1` a 0 (valor inicial). Aumentar `Radius Strength` para controlar el área de influencia.

- **Tactile Typography (Tipografía Táctil):**
  - Usar una fuente variable (ej: Drummond Variable desde Adobe Typekit).
  - Seleccionar la capa de texto, ir a `Animate > Variable Font Axis > Weight`.
  - En el nuevo animador `Font Axis Weight`, ajustar el valor de peso (ej: 700 para grosor máximo).
  - Usar el `Range Selector`: animar `Offset` de 0 a 100 para revelar el texto progresivamente.
  - En `Advanced` del Range Selector: reducir `Smoothness` para un cambio más abrupto, activar `Randomize Order` para que los caracteres cambien aleatoriamente.

## Reglas para el erudito (imperativas y verificables)

- Usa `Auto-Orient > Orient Towards Camera` solo cuando las capas estén en 3D y parentadas a un null rotatorio; no aplicar a capas 2D.
- En el Kinetic Cut, el pico de velocidad en el Graph Editor debe coincidir exactamente con el frame de la transición entre capas; usa `F9` antes de ajustar manejadores.
- Para Strategic 3D, nunca arrastres efectos directamente sobre un modelo 3D nativo; siempre crea primero una `3D Layer Instance`.
- En Reactive Environments, la capa effector debe llamarse exactamente "effector" (minúsculas) para que el preset funcione.
- Para Tactile Typography, la fuente debe ser variable obligatoriamente; si no lo es, el animador `Variable Font Axis` no aparecerá.
- Valores por defecto recomendados: Environment Light intensity = 200; MoGraph Special Property 1 inicial = 0; Font Axis Weight = 700 para grosor máximo.

## Errores comunes que evita o menciona

- No parentar fotos a un null sin activar 3D y Auto-Orient: las imágenes rotarán torcidas en lugar de mantenerse rectas hacia la cámara.
- No colocar la transición en el pico de velocidad del Kinetic Cut: el corte se notará visualmente; la velocidad alta oculta el cambio.
- No ajustar el `Falloff Distance` en Spot Lights: la luz no se proyectará correctamente sobre el modelo 3D.
- No nombrar la capa effector como "effector": el preset MoGraph no reconocerá la capa y no aplicará la interacción.
- Usar fuentes no variables para Tactile Typography: el animador `Variable Font Axis` no estará disponible en el menú.