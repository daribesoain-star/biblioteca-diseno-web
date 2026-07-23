# DOCTRINA ACCIONABLE EN ESPAÑOL NEUTRO

## 1) Fundamentos de animación (timing, easing, spacing, keyframes, graph editor)

- **Crear fotogramas clave:** Activa el cronómetro (stopwatch) junto a la propiedad deseada (ej. Scale) para establecer un keyframe inicial. Mueve el playhead a otro punto y cambia el valor; After Effects añade automáticamente un nuevo keyframe. (Animation in After Effects — https://youtu.be/mT2Fv5bF6Ik)
- **Atajos de propiedades de capa:** Selecciona una o varias capas y presiona: `P` = Position, `S` = Scale, `R` = Rotation, `T` = Opacity. (Animation in After Effects — https://youtu.be/mT2Fv5bF6Ik)
- **Previsualización RAM:** Define inicio con `B` (Begin) y final con `N` (End). Presiona `0` en teclado numérico para iniciar RAM Preview. (Animation in After Effects — https://youtu.be/mT2Fv5bF6Ik)
- **Easy Ease:** Selecciona keyframes y presiona `F9` para aplicar Easy Ease. (5 Techniques for High-End Motion Design — https://youtu.be/xMUn0LZp21o)
- **Ajuste de curvas de velocidad en Graph Editor:** En el Kinetic Cut, arrastra el manejador inicial hacia arriba (aceleración lenta → rápida) y el manejador final hacia abajo (desaceleración rápida → lenta). El pico de velocidad debe coincidir con el punto de transición entre capas. (5 Techniques for High-End Motion Design — https://youtu.be/xMUn0LZp21o)
- **Time Remapping:** Selecciona la capa, presiona `Ctrl+Alt+T` para activar "Time Remap". Ajusta la curva en el Graph Editor para ralentizar o acelerar secciones. (How to Use Text Animators in After Effects! — https://youtu.be/qNvlDZeVStQ)
- **Time Reverse Keyframes:** Selecciona keyframes, clic derecho > "Keyframe Assistant" > "Time-Reverse Keyframes" para invertir dirección. (How to Use Text Animators in After Effects! — https://youtu.be/qNvlDZeVStQ)
- **Motion Sketch:** Ve a `Window > Motion Sketch`. Dibuja un null aleatoriamente. Copia el path de posición del null a un path de máscara de un sólido, luego agrega el efecto "Stroke". (How to Use Text Animators in After Effects! — https://youtu.be/qNvlDZeVStQ)
- **Crear arco en trayectoria:** `Ctrl + Alt + clic` y arrastrar en un keyframe de Position para crear un arco en la trayectoria. (Learn VFX Workflows — https://youtu.be/sGjODH6e2BM)
- **Convertir expresión a keyframes:** Selecciona la propiedad con expresión, ve a `Animation > Keyframe Assistant > Convert Expression to Keyframes`. La expresión se deshabilita y se generan keyframes. (Mastering Expressions In After Effects — https://youtu.be/pESJ6G35WGc)

## 2) Motion graphics (shape layers, transiciones, MoGraph, ritmo del edit)

- **Crear capa de forma (elipse):** Selecciona la elipse con `Q`, mantén `Shift` para círculo perfecto, `Shift+Option+Cmd` (Mac) / `Shift+Alt+Ctrl` (Windows) + arrastrar para escalar desde el centro exacto. (Animation in After Effects — https://youtu.be/mT2Fv5bF6Ik)
- **Alinear y distribuir:** Selecciona múltiples capas, ve al panel Align. Usa "Align Bottom" para alinear bordes inferiores, "Distribute Horizontally" para espaciar uniformemente. (Animation in After Effects — https://youtu.be/mT2Fv5bF6Ik)
- **Continuous Flow (Flujo Continuo):** Selecciona todas las capas de fotos, cambia a 3D. Ve a `Layer > Transform > Auto-Orient` y selecciona `Orient Towards Camera`. Anima la rotación del null padre (tecla `R`) en cualquier eje (Y, X, Z). (5 Techniques for High-End Motion Design — https://youtu.be/xMUn0LZp21o)
- **Kinetic Cut (Corte Cinético):** Crea un null (`Layer > New > Null Object`). Parenta ambas capas al null. Anima una propiedad de transformación del null (ej: Scale de 100% a 200%). Selecciona ambos keyframes en Graph Editor, presiona `F9` para Easy Ease. Ajusta manejadores: inicial hacia arriba, final hacia abajo. El pico de velocidad debe coincidir con el punto de transición. (5 Techniques for High-End Motion Design — https://youtu.be/xMUn0LZp21o)
- **Reactive Environments (Entornos Reactivos):** Convierte una capa (ej: puntero) en capa de ajuste (clic en switch de Adjustment Layer). Aplica efecto `Invert`. Para interacción múltiple: aplica `Tint` a cada foto. En `Amount to Tint`, usa preset MoGraph Pro Effector. Nombra la capa del puntero como "effector". Selecciona la capa effector, busca `MoGraph Pro effector` en Effects & Presets, haz doble clic. Presiona `U` + `U` para abrir atributos. En `Amount to Tint`, agrega `MoGraph Special Property 1`. Ajusta en effector: `Property 1` a 0, aumenta `Radius Strength`. (5 Techniques for High-End Motion Design — https://youtu.be/xMUn0LZp21o)
- **Guardar preset de animación:** Selecciona el grupo del animador, ve a `Animation > Save Animation Preset`. Guarda en carpeta de presets de AE. Reinicia After Effects. (How to Use Text Animators in After Effects! — https://youtu.be/qNvlDZeVStQ)
- **Transición de clips de footage:** Precomponer clip a tamaño HD. Crear 10 instancias del precomp, enmascararlas y apilarlas en el tiempo. Animar "Position" para que entren desde la derecha y salgan por la izquierda. Llevar a nueva composición con "Continuous Rasterization" activado. (How to Use Text Animators in After Effects! — https://youtu.be/qNvlDZeVStQ)
- **Audio collage:** Usar clips de audio de películas y efectos de sonido. Sincronizar con la animación. Sitio recomendado: Play Phrase Me. (How to Use Text Animators in After Effects! — https://youtu.be/qNvlDZeVStQ)

## 3) Expressions (sintaxis, wiggle, loopOut, sourceRectAtTime, linear/ease, valueAtTime, time, links)

- **Agregar expresión:** Mantén presionada `Alt` (Windows) u `Option` (Mac) y haz clic en el cronómetro de la propiedad deseada. Los números se vuelven rojos. (Mastering Expressions In After Effects — https://youtu.be/pESJ6G35WGc)
- **Wiggle básico:** Escribe `wiggle(2, 200)`. Primer parámetro = frecuencia (veces/segundo), segundo = magnitud (píxeles para posición, % para escala, grados para rotación). (Mastering Expressions In After Effects — https://youtu.be/pESJ6G35WGc)
- **Separar dimensiones de posición con variables:**
  ```
  a = transform.position[0];
  b = wiggle(2, 250);
  [a, b]
  ```
  Usa pick whip para arrastrar desde `a` al valor X y desde `b` al valor Y. Termina cada línea con `;`. (Mastering Expressions In After Effects — https://youtu.be/pESJ6G35WGc)
- **Conectar propiedades con pick whip:** Con posición keyframeada y rotación visible (Shift+R), Alt+clic en cronómetro de rotación, arrastra pick whip al valor X de posición. Resultado: `thisComp.layer("nombre").transform.position[0]`. Para ajustar velocidad, divide: `thisComp.layer("nombre").transform.position[0] / 2`. (Mastering Expressions In After Effects — https://youtu.be/pESJ6G35WGc)
- **Interpolación con ease:** Sintaxis: `ease(t, tMin, tMax, value1, value2)`. Ejemplo: `ease(time, 2, 5, [230, 438], [430, 438])` mueve la capa entre segundos 2 y 5. (Mastering Expressions In After Effects — https://youtu.be/pESJ6G35WGc)
- **LoopOut ping-pong:** Con dos keyframes de posición, Alt+clic en cronómetro, ve a Expression Language Menu > Property > `loopOut("pingpong")`. Para suavizar, aplica Easy Ease a los keyframes. (Mastering Expressions In After Effects — https://youtu.be/pESJ6G35WGc)
- **Clampear valores:** `clamp(valor, min, max)`. Ejemplo: `clamp(wiggle(2, 60), -45, 45)` limita rotación entre -45 y 45 grados. (Mastering Expressions In After Effects — https://youtu.be/pESJ6G35WGc)
- **Controlar wiggle con Slider Control:** Crea Null Object, renómbralo "Control Layer". Aplica `Effect > Expression Controls > Slider Control`. En expresión de wiggle, reemplaza magnitud con pick whip al slider: `wiggle(2, thisComp.layer("Control Layer").effect("Slider Control")("Slider"))`. (Mastering Expressions In After Effects — https://youtu.be/pESJ6G35WGc)
- **Expresión de delay entre capas:** En propiedad "Rotation": `thisComp.layer(index - 1).transform.rotation.valueAtTime(time - delay)` donde `delay = framesToTime(X)` (X = frames de retardo). (Kinetic Typography Motion Posters — https://youtu.be/u4Y84MBFM-Q)
- **Expresión para animar Core Radius en Advanced Lightning:** `wiggle(7, 3)` (7 veces/segundo, variación de 3 unidades). (Advanced Electric FX Tutorial! — https://youtu.be/yxncS9gVDYI)
- **Expresión para animar Conductivity:** `time*4*2` (multiplica tiempo por 4 y luego por 2 para animación continua). (Advanced Electric FX Tutorial! — https://youtu.be/yxncS9gVDYI)
- **Expresión para flicker en Exposure:** `wiggle(9, 3)` (9 veces/segundo, variación de 3). (Advanced Electric FX Tutorial! — https://youtu.be/yxncS9gVDYI)
- **Expresión para animar escala con tiempo:** `time * 50` aumenta escala 50% por segundo. Para ralentizar, divide: `time * 50 / 2`. (Mastering Expressions In After Effects — https://youtu.be/pESJ6G35WGc)
- **Expresión con texto y animador de escala:**
  ```
  freq = 3;
  amp = 75;
  a = transform.scale[0] + amp * Math.sin(freq * time);
  b = transform.scale[1] + amp * Math.cos(freq * time);
  [a, b]
  ```
  (Mastering Expressions In After Effects — https://youtu.be/pESJ6G35WGc)

## 4) 3D en AE (cámaras, luces, extrusión, integración Cinema 4D)

- **Convertir capas a 3D:** Seleccionar capas, activar el interruptor 3D (casilla de cubo). (Advanced 3D After Effects Motion Graphics Tutorial — https://youtu.be/nE9l37cs8Fs)
- **Crear cámara:** `Layer > New > Camera`. Longitud focal (focal length) 230. Usar herramienta Orbit (C) para rotar vista. (Advanced 3D After Effects Motion Graphics Tutorial — https://youtu.be/nE9l37cs8Fs)
- **Configurar geometría 3D avanzada:** Seleccionar capas de forma, ir a `Geometry Options`, cambiar `Bevel Style` a `Convex`, ajustar `Bevel Depth` y `Extrusion Depth`. Asegurarse de que el renderizador esté en `Advanced 3D` (no Classic 3D). (Advanced 3D After Effects Motion Graphics Tutorial — https://youtu.be/nE9l37cs8Fs)
- **Iluminación 3D:** Crear `Point Light` (`Layer > New > Light`), reducir radio (Radius), aumentar intensidad a ~200%. Parentearla al null "fector". Duplicar luz, quitar parentesco, colocar otra luz en otra posición. Agregar tercera luz. Reducir intensidad de luces no parentadas a ~1%. (Advanced 3D After Effects Motion Graphics Tutorial — https://youtu.be/nE9l37cs8Fs)
- **Strategic 3D con Meshify:** Convertir imagen 2D a 3D usando Meshify (web app): arrastrar imagen, generar modelo 3D, texturizar con misma foto, descargar en GLB. En AE, arrastrar GLB a composición, escalar y rotar. Agregar luces: `Layer > New > Light` → Environment Light (intensidad 200), luego Spot Light (ajustar posición, intensidad y `Falloff Distance`). Para aplicar efectos al modelo 3D: `Layer > Create > Create 3D Layer Instance`, luego arrastrar efecto sobre esa capa instancia. (5 Techniques for High-End Motion Design — https://youtu.be/xMUn0LZp21o)
- **Configuración en Cinema 4D:** Presionar `Shift + C` para abrir búsqueda, escribir "background" y añadir Background object. Crear Classic Material, en pestaña Color asignar textura con placa renderizada. Asignar material al Background object. Crear nueva cámara y activarla. (Learn VFX Workflows — https://youtu.be/sGjODH6e2BM)
- **Importar modelo 3D en Cinema 4D:** Arrastrar FBX del modelo a la escena. Mantener `Shift` presionado antes de soltar para añadirlo al proyecto existente. (Learn VFX Workflows — https://youtu.be/sGjODH6e2BM)
- **Sincronizar frame rate:** En AE: `Composition > Composition Settings`, verificar frame rate (23.976). En Cinema 4D: `Ctrl + D` para Project Settings, cambiar FPS de 30 a 24. (Learn VFX Workflows — https://youtu.be/sGjODH6e2BM)
- **Renderizar desde Cinema 4D:** Activar cámara. En Render Settings, cambiar Output width/height al mismo tamaño que composición de AE, Frame Rate a 24, Current Frame a All Frames. En pestaña Save, asignar destino, activar Alpha Channel, elegir formato Open EXR. (Learn VFX Workflows — https://youtu.be/sGjODH6e2BM)
- **Per-Character 3D:** Activar "Per-Character 3D" en capa de texto. Rotar y posicionar cada carácter individualmente. Animar "Y Rotation" del texto para efecto 3D. (Kinetic Typography Motion Posters — https://youtu.be/u4Y84MBFM-Q)
- **Collapse Transformations:** Activar en pre-comps 3D para que transformaciones 3D de comps anidados se hereden correctamente. (Kinetic Typography Motion Posters — https://youtu.be/u4Y84MBFM-Q)

## 5) VFX y compositing (tracking Mocha, Rotobrush, keying, color match, integración)

- **Point tracking con Mocha AE:** Seleccionar toma, añadir efecto Mocha AE, lanzar panel, dibujar forma con herramienta X spline alrededor de punto de contraste, analizar hacia adelante. Al recibir error "tracking terminated prematurely", hacer clic en OK. Salir y presionar Save. Crear Null Object. En Effects Controls del clip, ir a Tracking Data dropdown, Create Track Data, cambiar Export Option de Corner Pin a Transform, Layer Export al null creado, Apply. Ir al último frame trackeado, seleccionar null, presionar `U` para mostrar keyframes, eliminar todos posteriores. Usar Page Up/Page Down para ajustar manualmente. (Learn VFX Workflows — https://youtu.be/sGjODH6e2BM)
- **Trackeo de movimiento nativo:** Seleccionar footage → Ventana Tracker → Track Motion → Elegir punto de alto contraste → Analyze Forward → `Layer > New > Null Object` → Edit Target (seleccionar null) → Apply (X e Y). (Start Compositing in After Effects — https://youtu.be/sfkaCESPE5c)
- **Parenting con Pick Whip:** Arrastrar Pick Whip desde capa del asset hasta el null object para fijarlo al fondo trackeado. (Start Compositing in After Effects — https://youtu.be/sfkaCESPE5c)
- **Rotobrush 3:** Duplicar footage original (`Ctrl + D`), eliminar Mocha AE del panel de efectos en la copia. Seleccionar Rotobrush tool, asegurar resolución en Full. Hacer doble clic en footage para abrirlo. Dibujar formas sobre el actor. Para restar selección, mantener `Alt`. Avanzar frame a frame corrigiendo. Cuando esté correcto, hacer clic en Freeze (se vuelve color púrpura/azul). Colapsar capa, renombrar a "roto", arrastrar sobre renders. Activar "Use Motion Blur" en capa roto. (Learn VFX Workflows — https://youtu.be/sGjODH6e2BM)
- **Corrección de color por canales:** Haz clic en icono rojo-verde-azul debajo de previsualización para ver metraje en canales separados. Aplica efecto `Curves`. Cambia canal del efecto Curves al canal correspondiente. Ajusta curva para que coincida con fondo. Repite para cada canal. (5 Essential Techniques for Compositing — https://youtu.be/vJ8X58uknsk)
- **Ajuste de niveles de negro con Lumetri Scopes:** Ve a `Window > Lumetri Scopes`. Usa efecto `Curves` para ajustar niveles de negro del elemento de primer plano hasta que coincidan con fondo, guiándote por los scopes. (5 Essential Techniques for Compositing — https://youtu.be/vJ8X58uknsk)
- **Supresión de derrame de color:** Ve a `Effect > Keying > Advanced Spill Suppressor`. Mantén método en `Standard` o cambia a `Ultra`. Selecciona color de fondo original (key color). (5 Essential Techniques for Compositing — https://youtu.be/vJ8X58uknsk)
- **Adición de grano final:** Aplica `Effect > Noise & Grain > Add Grain` para unificar visualmente todos los elementos. (5 Essential Techniques for Compositing — https://youtu.be/vJ8X58uknsk)
- **Pluma variable en máscaras:** Después de crear máscara con Pen Tool (atajo `G`), mantén presionado icono de Pen Tool y selecciona `Mask Feather Tool`. Haz clic y arrastra sobre diferentes puntos del borde para añadir gradientes de pluma variables. (5 Essential Techniques for Compositing — https://youtu.be/vJ8X58uknsk)
- **Curves para igualar color:** Efecto Curves → Arrastrar punto inferior hacia arriba para reducir contraste → Canal Red: subir para tonos cálidos → Canal Blue: bajar para quitar azul. (Start Compositing in After Effects — https://youtu.be/sfkaCESPE5c)
- **Matching de desenfoque de fondo:** Añadir efecto `Camera Lens Blur`, ajustar `Blur Radius` a aproximadamente 3. (Learn VFX Workflows — https://youtu.be/sGjODH6e2BM)
- **Aislar glow con Keylight:** Duplicar pre-comp. Aplicar Keylight → Screen Color: seleccionar naranja de explosión. Abrir Screen Matte, ajustar settings para aislar naranja. Fast Box Blur (Blur Radius: 100). Tint → White Color: naranja/rojo. Modo de transferencia: Screen. (Start Compositing in After Effects — https://youtu.be/sfkaCESPE5c)
- **Motion Tile para bordes negros:** Efecto Motion Tile → Activar Mirror Edges → Output Width: 150 → Output Height: 150. (Start Compositing in After Effects — https://youtu.be/sfkaCESPE5c)
- **Intercambiar clips manteniendo propiedades:** Duplicar capa (`Ctrl + D`) → Arrastrar nuevo clip desde Project Panel sobre la capa duplicada mientras se presiona `Alt`. (Start Compositing in After Effects — https://youtu.be/sfkaCESPE5c)

## 6) Character animation y rigging (Duik Angela)

*(No se encontró contenido sobre este subtema en el material proporcionado)*

## 7) Tipografía cinética

- **Agregar Text Animator:** Desplegar capa de texto, hacer clic en ícono "Animate" (junto al nombre de la capa) y seleccionar "Position". Esto crea grupo de animador con "Range Selector". (How to Use Text Animators in After Effects! — https://youtu.be/qNvlDZeVStQ)
- **Configurar Range Selector:** Dentro del animador, ajustar "Position" (ej. Y = 400). En "Advanced", cambiar "Shape" de "Square" a "Ramp Up" o "Ramp Down". Animar "Offset" con keyframes (ej. de -100 a 100 en 20 frames). (How to Use Text Animators in After Effects! — https://youtu.be/qNvlDZeVStQ)
- **Ajustar suavizado:** En "Advanced", modificar "Ease High" y "Ease Low" a 100% para transiciones suaves. (How to Use Text Animators in After Effects! — https://youtu.be/qNvlDZeVStQ)
- **Duplicar animadores:** Para animar en dirección opuesta, duplicar grupo del animador (Ctrl+D), renombrarlo (ej. "on" y "off"), cambiar valores de "Position" (ej. de -2000 a 2000) y ajustar "Shape". (How to Use Text Animators in After Effects! — https://youtu.be/qNvlDZeVStQ)
- **Keyframes de Tracking:** Agregar animador de "Tracking" (desde "Animate" > "Tracking") y keyframear de 0 a 30 en misma duración que animación principal. (How to Use Text Animators in After Effects! — https://youtu.be/qNvlDZeVStQ)
- **Texto en trayectoria (Path):** Dibujar path con Pen Tool. En capa de texto, desplegar "Path Options" y seleccionar el path en "Path". Ajustar "First Margin" o "Last Margin". (How to Use Text Animators in After Effects! — https://youtu.be/qNvlDZeVStQ)
- **Typewriter preset:** Aplicar "Animate In" > "Typewriter" desde menú de efectos y presets. Ajustar duración a 15 frames. (How to Use Text Animators in After Effects! — https://youtu.be/qNvlDZeVStQ)
- **Wiggly Selector:** Agregar animador, luego hacer clic en "Add" > "Selector" > "Wiggly". Eliminar "Range Selector" por defecto. Afectar propiedades como "Scale" (200%) y "Rotation" (70°). Ajustar "Wiggles Per Second" y keyframear "Min/Max Amount". (How to Use Text Animators in After Effects! — https://youtu.be/qNvlDZeVStQ)
- **Animación de números con 23 copias:** Escribir número "1" 23 veces. Fuente: Helvetica Neue LT Com, tamaño 400, Kerning 200. Animator de escala: Shape: Ramp Down, escalar a 0, Ease High: 50. Animator de opacidad (type on): Ease High: 50, keyframe End de 100 a 0, Smoothness: 0. Animator de tracking: Tracking Amount: -150, keyframe End de 100 a 0, Based On: Words. Animator de rotación: Shape: Ramp Up, Ease High: -100, Ease Low: 40, keyframe Offset de 100 a -100. (Broadcast Graphics Kinetic Type — https://youtu.be/qJbV27ic1Wk)
- **Tactile Typography (Tipografía Táctil):** Usar fuente variable (ej: Drummond Variable desde Adobe Typekit). Seleccionar capa de texto, ir a `Animate > Variable Font Axis > Weight`. Ajustar valor de peso (ej: 700). Usar Range Selector: animar `Offset` de 0 a 100. En `Advanced`: reducir `Smoothness`, activar `Randomize Order`. (5 Techniques for High-End Motion Design — https://youtu.be/xMUn0LZp21o)
- **Time Displacement con ramp:** Crear adjustment layer con efecto "Time Displacement". Configurar "Time Displacement (sec)" en -0.4. Usar como mapa una capa con "Gradient Ramp" + "Posterize" (valor 10) + "Colorama" con "Cycle Repetitions" en 11. (Kinetic Typography Motion Posters — https://youtu.be/u4Y84MBFM-Q)
- **CC Mercury para gotas:** Aplicar efecto "CC Mercury" a capa de texto. Ajustar settings. Añadir "Levels" para controlar contraste. Fondo con black solid. (Kinetic Typography Motion Posters — https://youtu.be/u4Y84MBFM-Q)
- **Echo effect en texto duplicado:** Duplicar capa de texto. En copia aplicar "Echo". Configurar "Echo Time (seconds)" y "Number Of Echoes". "Composite Echo" en "In Front". (Kinetic Typography Motion Posters — https://youtu.be/u4Y84MBFM-Q)
- **CC RepeTile + CC Cylinder:** Aplicar "CC RepeTile" a capa de texto. Luego aplicar "CC Cylinder". Ajustar "Radius" y "Rotation". Añadir expresión a "Rotation Y": `time * X`. (Kinetic Typography Motion Posters — https://youtu.be/u4Y84MBFM-Q)

## 8) Color y look dev

- **Corrección de color con Levels por canales:** Añadir efecto Levels. Cambiar visualización a canal Red (clic en botón de canal), ajustar niveles para que coincida con color de referencia. Repetir para Green y Blue. Volver a RGB. (Learn VFX Workflows — https://youtu.be/sGjODH6e2BM)
- **Corrección de saturación:** Añadir efecto Hue/Saturation, reducir Saturation si el reflejo del cielo no coincide. (Learn VFX Workflows — https://youtu.be/sGjODH6e2BM)
- **Corrección de color final con Lumetri:** `Ctrl + Alt + Y` para Adjustment Layer. Añadir efecto Lumetri Color. En Basic Corrections, ajustar Contraste, Temperatura (calentar), Blacks (aplastar), Whites (subir). En Creative, seleccionar LUT (ej. Kodak), Intensity a 50%. (Learn VFX Workflows — https://youtu.be/sGjODH6e2BM)
- **Ajuste de color final con Curves:** Adjustment Layer → Curves → Bajar midtones, subir highlights → Canal Blue: subir en sombras, bajar en altos y medios → Canal Red: bajar en sombras, subir en medios → Efecto Vignette (Amount reducido) → Levels para contraste fino → Hue/Saturation: Channel Control > Reds → Hue Angle: +5°, Saturación: reducir. (Start Compositing in After Effects — https://youtu.be/sfkaCESPE5c)
- **Tritone para igualar color de suelo:** Efecto Tritone → Eyedropper en Mid-tone Color → Seleccionar color oscuro del suelo → Ajustar manualmente. (Start Compositing in After Effects — https://youtu.be/sfkaCESPE5c)
- **Añadir glow a explosión:** Duplicar capa precompuesta. Añadir efecto Keylight a copia superior. Con color picker, seleccionar naranja de explosión. Cambiar Keylight de Final Result a Combined Matte. Ajustar Clip White y Clip Black. Añadir efecto Invert. Añadir Production Crate Easy Glow, cambiar preset a Sunset. Cambiar Blend Mode a Screen. (Learn VFX Workflows — https://youtu.be/sGjODH6e2BM)
- **32 bits por canal:** Mantén presionado `Alt` y haz clic en indicador de profundidad de bits en parte inferior del panel de composición para ciclar entre 8, 16 y 32 bpc. Usa 32 bpc para efectos brillantes y glowing. (Advanced Electric FX Tutorial! — https://youtu.be/yxncS9gVDYI)

## 9) Workflow, performance y rendering (atajos, preferencias, cache, plugins, exportación)

- **FX Console (Video Copilot, gratuito):** Presionar `Control + Espacio` → escribir nombre del efecto → Enter. Permite buscar efectos, guardar favoritos, guardar imágenes y copiar composición al portapapeles. (Start Compositing in After Effects — https://youtu.be/sfkaCESPE5c)
- **Ease Copy (gratuito):** Copia la influencia de easing de múltiples keyframes y la pega en otros keyframes. (10 Ways to Get Faster in After Effects — https://youtu.be/whFa347JtDE)
- **K Bar:** Guarda tareas frecuentes en una barra de herramientas personalizada. (10 Ways to Get Faster in After Effects — https://youtu.be/whFa347JtDE)
- **Overlord:** Copia y pega elementos vectoriales de Illustrator a After Effects rápidamente. (10 Ways to Get Faster in After Effects — https://youtu.be/whFa347JtDE)
- **Eliminar pantalla de inicio:** Ir a `Edit > Preferences > General` y desmarcar `Enable Home screen`. (10 Ways to Get Faster in After Effects — https://youtu.be/whFa347JtDE)
- **Pre-renderizar:** Renderizar elemento complejo (ej. fondo con Wave Warp) como archivo de video, reimportarlo y usarlo en lugar de mantener capas y efectos activos. Para render final, desactivar capa pre-renderizada y renderizar de nuevo. (10 Ways to Get Faster in After Effects — https://youtu.be/whFa347JtDE)
- **Mini Flowchart:** Atajo de teclado: `` ` `` (tecla de acento grave). Muestra diagrama con composición actual, composiciones donde aparece (izquierda) y composiciones internas (derecha). (10 Ways to Get Faster in After Effects — https://youtu.be/whFa347JtDE)
- **Plantillas de render:** Ir a `Composition > Add to Render Queue`, personalizar ajustes, hacer clic en flecha desplegable junto a `Render Settings` o `Output Module`, seleccionar `Make Template`. Ejemplos: PNG sequence, ProRes 422, H.264 al 70% de calidad. (10 Ways to Get Faster in After Effects — https://youtu.be/whFa347JtDE)
- **Auto-guardado:** Ir a `Edit > Preferences > Auto-Save`. Cambiar intervalo de 20 minutos a 5-10 minutos. Aumentar `Maximum Project Versions` de 5 a 15. (10 Ways to Get Faster in After Effects — https://youtu.be/whFa347JtDE)
- **Atajos de teclado:** Ir a `Edit > Keyboard Shortcuts`. Aprender al menos uno nuevo por semana. Ejemplo: `Command + Shift + D` para dividir capas. (10 Ways to Get Faster in After Effects — https://youtu.be/whFa347JtDE)
- **Organización del proyecto:** Crear carpetas como "Assets" y "Comps" con subcarpetas específicas. Usar plantilla de proyecto en blanco que se cargue automáticamente: `Edit > Preferences > New Project`, marcar `New project loads template`, elegir archivo .aep de plantilla. (10 Ways to Get Faster in After Effects — https://youtu.be/whFa347JtDE)
- **Configurar espacios de trabajo:** Usar espacios predeterminados (Motion Tracking, Color) o crear propio: `Window > Workspace > Save as New Workspace`. (10 Ways to Get Faster in After Effects — https://youtu.be/whFa347JtDE)
- **Hardware recomendado:** Priorizar buen CPU (múltiples núcleos no ayudan tanto); más RAM permite más RAM previews pero no acelera render final; usar SSD para todos los archivos. (10 Ways to Get Faster in After Effects — https://youtu.be/whFa347JtDE)
- **Ocultar controles de máscara:** Presiona `Ctrl+Shift+H` para ocultar los controles de máscara. (Advanced Electric FX Tutorial! — https://youtu.be/yxncS9gVDYI)
- **Precomponer capas renderizadas** (como texto 3D de Element) antes de añadir efectos para que After Effects gestione el renderizado y no tenga que recalcular cada fotograma. (Advanced Electric FX Tutorial! — https://youtu.be/yxncS9gVDYI)
- **Time Stretch para cámara lenta:** Click derecho > Time > Time Stretch → Setear a 200 (duplica duración) → Activar Frame Interpolation (clic dos veces en checkbox vacío hasta que aparezca flecha). (Start Compositing in After Effects — https://youtu.be/sfka