# Advanced Electric FX Tutorial! 100% After Effects!
**Fuente:** Video Copilot | https://youtu.be/yxncS9gVDYI

## Qué enseña
Creación de efectos de electricidad avanzados en After Effects 100% nativos, incluyendo rayos que interactúan con superficies, reflejos especulares y difusos procedurales, efecto de dispersión subsuperficial en nubes, y electricidad direccional controlada. Todo el flujo de trabajo usa efectos nativos de AE sin plugins externos (excepto Element 3D para una demostración opcional).

## Técnicas accionables
- **Configuración inicial:** Mantén presionado **Alt** y haz clic en el indicador de profundidad de bits en la parte inferior del panel de composición para ciclar entre 8, 16 y 32 bits por canal. Usa **32 bpc** para trabajar con efectos brillantes y glowing.
- **Aplicar efecto Advanced Lightning:** Crea un sólido, nómbralo "lightning hit". Aplica **Advanced Lightning** desde Effects & Presets. Alternativamente, usa **Effects Console** (herramienta gratuita de Video Copilot) presionando **Ctrl+Space**, escribe "lightning" y presiona Enter.
- **Ajustes del rayo:** En el efecto Advanced Lightning, ve a **Glow Settings** y baja **Opacity** a 0 (se creará un glow propio después). Aumenta **Core Radius** a aproximadamente 3. Usa la herramienta **Rectangle Mask** para dibujar una forma en la parte inferior del sólido. Activa **Alpha Obstacle** y súbelo para que el rayo toque el borde de la máscara.
- **Ocultar controles de máscara:** Presiona **Ctrl+Shift+H** para ocultar los controles de máscara.
- **Ajuste de terminación:** En **Expert Settings**, baja **Termination Threshold** a 5% para cortar puntos que se estiran fuera del borde de la capa.
- **Variación de grosor:** Activa **Decay** > **Decay Main Core** para variar el grosor del rayo.
- **Forking y Turbulence:** Ajusta **Forking** y **Turbulence** (bajarlo hace el rayo más recto, subirlo lo vuelve más complejo). Activa **Branching** para ramificaciones.
- **Animación del Core Radius con expresión:** Alt+clic en el cronómetro de **Core Radius**. Escribe la expresión: `wiggle(7, 3)` (7 veces por segundo, variación de 3 unidades).
- **Animación de Conductivity con expresión:** Alt+clic en el cronómetro de **Conductivity**. Escribe: `time*4*2` (multiplica tiempo por 4 y luego por 2 para animación continua).
- **Precomponer el rayo:** Selecciona la capa, ve a **Layer > Pre-compose**, elige **Move all attributes**, nómbralo "lightning comp".
- **Cambiar color del rayo:** Dentro de la precomposición, cambia **Core Color** a azul o el color deseado. Presiona **Tab** y luego flecha izquierda para volver a la comp principal.
- **Crear reflejo especular:** Duplica la capa del rayo (**Ctrl+D** o **Edit > Duplicate**). Solo esa capa. Aplica **Linear Wipe**. Pon **Wipe Angle** a 180. Mantén **Ctrl** mientras ajustas **Transition Completion** para mover lentamente y aislar solo la parte inferior del rayo (el punto de contacto).
- **Desenfoque del reflejo:** Aplica **Fast Box Blur** (horizontal). Aumenta **Blur Radius**. Aplica un segundo **Fast Box Blur** (vertical). Aumenta su radio.
- **Mantener visibilidad del blur:** Aplica **Solid Composite** (efecto), configúralo en color **Black** para que el blur no desaparezca sobre fondo transparente.
- **Aumentar brillo del reflejo:** Aplica **Exposure**. Sube **Exposure** para hacerlo muy brillante (aprovechando 32 bpc).
- **Recortar parte superior del blur:** Aplica otro **Linear Wipe**, ángulo 180, baja **Transition Completion** y sube **Feather** para dar dimensión.
- **Texturizar el reflejo:** Importa una textura grunge. Hazla capa 3D, gírala y escálala para alinearla con la superficie. Precompón la textura (Layer > Pre-compose, Move all attributes, nómbrala "ground texture"). En la capa del reflejo especular, cambia el modo de transferencia a **Luma Matte** (usando el menú desplegable de modos de fusión, con los switches de modos visibles).
- **Crear reflejo difuso:** Duplica el par (reflejo especular + textura). En la copia inferior, aumenta los blurs (horizontal y vertical) y baja **Exposure** para crear un área de luz más suave y difusa alrededor del contacto.
- **Crear punto caliente de contacto:** Duplica el reflejo especular nuevamente (**Ctrl+D**). Nómbralo "point". Mantén los blurs muy pequeños, baja **Exposure** para controlar intensidad. Ajusta opacidad de las capas para mezclar.
- **Añadir glow al rayo principal:** Selecciona la capa "lightning comp", cámbiala a modo **Additive**. Aplica **Solid Composite** (color black). Aplica **Glow**: baja **Threshold** a 0, **Intensity** muy baja, **Radius** a 25-30. Duplica el Glow (**Ctrl+D**), aumenta **Radius** a ~100. Duplica una tercera vez. Apila los tres glows.
- **Potenciar el glow:** Aplica **Exposure** después de los glows. Aumenta **Exposure** para intensificar.
- **Control de saturación:** Aplica **Hue/Saturation** antes del Exposure. Baja **Saturation** ligeramente.
- **Desplazamiento turbulento en el rayo:** Aplica **Turbulent Displace** antes del glow. Pon **Displacement** a **Horizontal Displacement**. Baja **Size** a 2, sube **Complexity** a 2-3, aumenta **Amount** ligeramente para crear irregularidad.
- **Vector Blur en el rayo:** Aplica **Vector Blur** después del Turbulent Displace. Pon **Amount** a 3-4, sube **Ridge** un poco. Experimenta con el orden de los efectos (antes/después de Exposure).
- **Flicker aleatorio con expresión:** En el efecto **Exposure**, Alt+clic en el cronómetro de **Exposure**. Escribe: `wiggle(9, 3)` (9 veces por segundo, variación de 3).
- **Reflejo interactivo con material de origen:** Dentro de la precomposición "ground texture", pega una copia del footage de calle original (**Ctrl+V**). Cambia su modo de transferencia a **Soft Light**. Aplica **Exposure** para controlar la intensidad de la interacción.
- **Electricidad direccional (reverse gravity):** Crea un nuevo sólido más alto de lo normal (ej. 2048 píxeles de altura). Aplica **Advanced Lightning**, Glow Opacity a 0. Ajusta posición (**P**), origen y dirección del rayo. Crea una máscara en la misma posición que el corte del reflejo. Activa **Alpha Obstacle**. Anima: keyframe para **Position**, **Origin**, **Direction** y **Mask Path**. Mueve la capa hacia abajo y reajusta los valores para que el rayo viaje verticalmente.
- **Invertir dirección de la electricidad:** Selecciona los keyframes, ve a **Animation > Keyframe Assistant > Reverse Keyframes**.
- **Efecto de dispersión subsuperficial en nubes:** Crea un sólido "light", aplica **Advanced Lightning**, elige tipo **Omni Lightning**. Anima **Conductivity State** con keyframes. Añade expresión `wiggle(8, 6)` a **Core Radius** para parpadeo. Baja **Turbulence** y **Decay**. Aplica **Solid Composite** (black). Precompón como "light comp".
- **Desenfocar y recomponer la luz:** Sobre "light comp", aplica **Fast Box Blur** con radio grande. Aplica **Exposure** para recuperar brillo. Aplica **CC Composite** en modo **Additive** para recomponer detalle. Repite: otro Box Blur suave, otro Exposure, otro CC Composite Additive.
- **Máscara de nubes:** Duplica el footage de humo varias veces, ponlos en modo **Lighten**. Rota (**W**), escala, distribuye para llenar la pantalla dejando áreas oscuras. Precompón todos como "smoke mask". Dentro, crea una capa de ajuste con **Curves**.
- **Ocluir luz con textura:** En "light comp", aplica **Set Matte**. Selecciona "smoke mask" como fuente. Cambia **Matte** de Alpha a **Luminance**. Activa **Invert Matte**. Pon la capa en modo **Additive**.
- **Ajuste de canal alfa:** Aplica **Curves** y cambia el canal a **Alpha**. Aplica **Solid Composite** (black). Ajusta con **Exposure** o **Curves** para color correction.
- **Animación de nubes:** Selecciona todas las capas de humo, ve al inicio, keyframe de **Rotation**. Ve al final, cambia rotación ligeramente.
- **Electricidad interactiva con texto 3D (Element 3D opcional):** Crea un sólido "lightning". Aplica **Advanced Lightning**. Aplica **Set Matte**, selecciona la capa del texto 3D como fuente (toma su canal Alpha). Sube **Alpha Obstacle** en Advanced Lightning. Aplica **Channel Blur** antes del rayo para difuminar el borde y suavizar la interacción.
- **Multi-object en Element 3D:** En el panel de Element, activa **Multi Object** para cada grupo. Esto permite animar piezas individuales del texto 3D (rotación Y, etc.).

## Reglas para el erudito
- **Usa 32 bits por canal** cuando trabajes con efectos brillantes, glowing o exposiciones extremas para tener más flexibilidad y precisión de color.
- **Nunca uses el glow integrado de Advanced Lightning** (pon Opacity a 0). Crea tu propio glow apilando múltiples efectos Glow con Exposure para un resultado más suave y controlable.
- **Usa Solid Composite (color black)** después de blurs sobre fondos transparentes para que el blur no desaparezca al desenfocar.
- **Usa Luma Matte** para texturizar reflejos especulares con la textura del suelo, en lugar de mezclar manualmente.
- **Usa Set Matte con Luminance** para ocluir luces con texturas de humo/nubes, invirtiendo el matte para crear efecto de dispersión subsuperficial.
- **Usa la expresión `wiggle(frecuencia, amplitud)`** para animar Core Radius y Exposure (flicker). Usa `time*valor` para animar Conductivity continuamente.
- **Precompón capas renderizadas** (como texto 3D de Element) antes de añadir efectos de electricidad para que After Effects gestione el renderizado y no tenga que recalcular cada fotograma.
- **Usa Channel Blur antes de Advanced Lightning** cuando quieras que el rayo interactúe suavemente con bordes difuminados de un logo o texto.

## Errores comunes que evita o menciona
- **No olvides activar Alpha Obstacle** en Advanced Lightning para que el rayo interactúe con los bordes de la máscara o el canal alfa de otra capa.
- **No uses un solo blur grande** para el glow; apila múltiples glows con diferentes radios para un resultado más suave y realista.
- **No dejes el blur sobre fondo transparente** sin Solid Composite, porque el blur se desvanece al no tener píxeles de fondo.
- **No uses el glow por defecto de Advanced Lightning** si buscas un glow personalizado y controlable.
- **No olvides ajustar Termination Threshold** cuando el rayo se estira fuera de la capa al mover la posición.
- **No subas demasiado Turbulence** si quieres un rayo más estable y direccional.
- **No uses el efecto Turbulent Displace** si el tiempo de renderizado es crítico; es opcional para texturizar.
- **No olvides precomponer el texto 3D** antes de añadirle efectos de electricidad para evitar re-renderizados constantes.