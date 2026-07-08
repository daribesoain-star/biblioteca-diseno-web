# How to Create Effects Templates in DaVinci Resolve (Fusion Step by Step)
**Fuente:** mundoaudiovisual | https://youtu.be/fEl4xNVt0U8

## Qué enseña (2-3 líneas)
A crear una animación de botón de suscripción de YouTube en Fusion desde cero, usando nodos, máscaras, transformaciones y curvas paramétricas. Luego enseña a guardar toda la animación como un macro (template) que aparece en el menú de Efectos de Fusion para reutilizarla en cualquier video con un solo clic.

## Lecciones accionables

- Crear un fondo blanco con **Background** y verlo en **Monitor 2**.
- Agregar un **Rectangle Mask** para la base del botón; ajustar **Height**, **Width** y **Corner Rounding**.
- Añadir otro **Background** y un **Merge** para aplicar sombra: usar nodo **DropShadow**, reducir **Alpha** y ajustar **Attenuation**.
- Para el botón rojo de suscripción: otro **Merge** + **Background** + **Rectangle Mask** con color rojizo, sombra y alpha reducido.
- Importar logos en **SVG vector format** para que DaVinci los interprete como **Backgrounds con máscaras** (no como imágenes rasterizadas).
- Usar **Merge** para combinar el SVG importado y un **Transform** para posicionarlo.
- Ajustar el color del SVG copiando el valor hexadecimal del color original y pegándolo en el **Background** correspondiente.
- Agregar texto con **Text+** para "subscribe" y "subscribed", posicionar con **Transform**.
- Animación del logo: **keyframe en Size** del Transform, de **0** a **1** (o **0.94**), con duración de **25 frames**.
- Abrir **Spline Editor** (curvas paramétricas) para suavizar las animaciones y hacerlas orgánicas.
- Importar SVG de la mano con líneas de clic; resetear **Alpha a 0** para ocultar las líneas hasta el momento del clic.
- Animación de la mano: keyframes de **movimiento** (posición) y **cambio de tamaño** en el frame del clic.
- En el frame del clic (ej. frame 47): keyframe de **Alpha** para que aparezcan las líneas de clic, y keyframe de **tamaño** para simular la pulsación.
- Texto "subscribe" desaparece en frame 47; texto "subscribed" aparece en frame 48 con animación de **Size de 1.2 a 0**.
- Agregar **Dynamic Blur** a todas las animaciones para dar efecto de desenfoque de movimiento.
- Para guardar como template: seleccionar todos los nodos → clic derecho → **Macro** → **Create Macro**.
- Identificar el nodo **Transform** que lleva la salida final (output) para que el macro funcione correctamente.
- Para hacer editable el texto en el template: abrir **Text+** → **Style** → **Font** → **Style** (repetir para cada texto) y nombrar el macro como "live subscription".
- Guardar el archivo .setting del macro en la carpeta: `~/Library/Application Support/Blackmagic Design/DaVinci Resolve/Fusion/Templates` (Mac) o ruta equivalente en Windows.
- Para usar el template: crear una **Fusion Composition** en el clip → ir a **Effects** → pestaña **Templates** → arrastrar o insertar el efecto guardado.

## Reglas para agentes

- Usa **SVG vector format** para logos, nunca imágenes rasterizadas, para que DaVinci los interprete como máscaras editables.
- Siempre abre **Spline Editor** después de crear keyframes de animación para suavizar las curvas y hacer el movimiento orgánico.
- Cuando crees un macro, identifica y marca el nodo **Transform** que contiene la salida final como el nodo de output del macro.
- Para que un texto sea editable desde el template, haz clic en **Style → Font → Style** dentro del nodo **Text+** antes de crear el macro.
- Guarda siempre los archivos .setting del macro en la carpeta **Templates** dentro de la ruta de Fusion, no en otra ubicación.
- Nunca uses imágenes PNG o JPG para logos si planeas escalarlos o animarlos; usa siempre SVG para mantener la calidad vectorial.
- Cuando animes un clic, sincroniza el cambio de tamaño y la aparición de las líneas de clic exactamente en el mismo frame.

## Errores comunes que evita o menciona

- No olvidar que los SVG se importan como grupos de **Backgrounds con máscaras**, no como imágenes planas; esto permite editarlos por separado.
- No dejar el nodo **Background** blanco de referencia después de ajustar la sombra; se debe eliminar para que no interfiera con el resultado final.
- No omitir el paso de abrir **Style → Font → Style** en los textos antes de crear el macro, o el texto no será editable desde el template.
- No guardar el macro en una carpeta incorrecta; debe ir específicamente en la carpeta **Templates** dentro de la ruta de Fusion de DaVinci Resolve.
- No olvidar que el nodo **Transform** que lleva la salida debe ser el output del macro, o el efecto no se aplicará correctamente al clip.