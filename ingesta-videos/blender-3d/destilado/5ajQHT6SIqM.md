# Turning Photo Realistic Textures into Anime Style Shaders in Blender [EEVEE] - Comfee Tutorial
**Fuente:** Comfee Mug | https://youtu.be/5ajQHT6SIqM

## Qué enseña (2-3 líneas)
Transforma cualquier textura fotorrealista (PBR) en un shader estilo anime usando nodos en EEVEE. Cubre materiales lisos y rugosos, más un truco final de ruido para integrar objetos 3D en escenas 2D.

## Técnicas accionables
- **Preparación inicial:** Activa Node Wrangler (preferencias > Add-ons > Node Wrangler) para navegar el Shader Editor más rápido.
- **Para material liso (madera):**
  - Elimina todas las salidas del Principled BSDF excepto Base Color. Borra el Principled BSDF.
  - Conserva solo el grupo de textura o el nodo Image Texture conectado a Base Color.
  - Añade: **Diffuse BSDF** → **Shader to RGB** → **Brightness/Contrast** → **ColorRamp** → **Mix Color** (x2).
  - Conecta: Color de la textura original al input **Color** del Diffuse BSDF.
  - Ajusta Brightness a **0.3** y Contrast a **0.6**.
  - En el ColorRamp, mueve los stops de color para reducir detalles (arrastra los controles deslizantes).
  - Conecta la salida **Color** del ColorRamp al **Factor** del primer Mix Color.
  - En el primer Mix Color: cambia **A** a un marrón oscuro, **B** a un marrón claro. Conecta el resultado al input **A** del segundo Mix Color.
  - En el segundo Mix Color: cambia el modo a **Color Dodge**. Pon un naranja brillante en **B**. Ajusta **Factor** a **0.3**.
  - Para reacción a luces de colores: selecciona el Diffuse BSDF y el Shader to RGB, pulsa **Shift+D** para duplicarlos. Coloca los duplicados al inicio del árbol, conectando la salida del Color Dodge al input **Color** del nuevo Diffuse.
  - Opcional: aplica el método "inverted hull" para contornos (más oscuros y saturados) – ver tutorial de outlines.
- **Para material rugoso (roca):**
  - Copia todos los nodos del material liso (**Ctrl+C** sobre los nodos seleccionados). Haz visible el objeto de roca, pégalos (**Ctrl+V**).
  - Conecta la salida **Color** de la textura original al input del Diffuse BSDF del setup pegado.
  - Cambia el primer Mix Color por un **ColorRamp** en modo **Constant**.
  - Ajusta el stop blanco del nuevo ColorRamp a un gris claro.
  - Conecta la salida **Color** de este ColorRamp al input **A** del Mix Color en modo Color Dodge.
  - Cambia el color naranja del Color Dodge a azul cielo (o el que prefieras).
  - En el ColorRamp original (el de la cadena principal), añade stops: haz clic en la barra del ColorRamp y pulsa **Ctrl+clic** para agregar. Usa **8 stops** totales: 4 valores principales y 4 sutiles entre ellos para transiciones suaves. Estira el borde del nodo si es necesario para ver todos los stops.
  - Ajusta los stops gradualmente más oscuros hacia el extremo negro.
  - Aplica outline igual que en el material liso.
- **Truco final (ruido 2D):**
  - Añade un **Mix Color** justo antes del Diffuse BSDF. Ponlo en modo **Overlay**.
  - Añade: **White Noise Texture** → **ColorRamp** → conecta la salida **Color** del ColorRamp al input **B** del Mix Color.
  - Sobre el White Noise Texture, pulsa **Ctrl+T** (requiere Node Wrangler) para añadir automáticamente un nodo **Mapping** y **Texture Coordinate**.
  - En el Mapping, cambia **Vector** a **Object**.
  - Ajusta el ColorRamp para controlar la intensidad del ruido.
  - Aplica este setup a **cada shader** de la escena.

## Reglas para el erudito (imperativas, "usa X cuando Y")
- Usa **Node Wrangler** (Ctrl+T para añadir Mapping + Texture Coordinate automáticamente) cuando trabajes con texturas procedurales o ruido.
- Usa **Diffuse BSDF + Shader to RGB** en lugar de Principled BSDF cuando quieras eliminar reflejos realistas y obtener colores planos.
- Usa **ColorRamp en modo Constant** para materiales rugosos cuando necesites reducir detalles caóticos y crear bandas de color definidas.
- Usa **Color Dodge** en un Mix Color cuando quieras inyectar un color saturado que haga "pop" al material sin perder la base.
- Usa **Overlay + White Noise Texture** con Vector en **Object** cuando necesites que el ruido escale uniformemente con el objeto (sin importar la distancia de cámara) para simular grano de animación 2D.
- Usa **8 stops en el ColorRamp** (4 principales + 4 de transición) para materiales rugosos cuando quieras un degradado suave tipo anime sin cortes bruscos.

## Errores comunes / gotchas
- No olvides eliminar el Principled BSDF y todas las conexiones de roughness/normal/displacement; solo debe quedar la salida de color de la textura original.
- Si el material rugoso se ve demasiado detallado o "nublado" después de aplicar el setup liso, cambia el Mix Color por un ColorRamp en Constant y reduce el contraste.
- Al duplicar nodos con **Shift+D**, asegúrate de reconectar manualmente las entradas/salidas; la duplicación no mantiene conexiones automáticas.
- El ruido con White Noise Texture puede verse demasiado fuerte; ajusta el ColorRamp (mueve el stop blanco hacia la izquierda) para atenuarlo.
- Si el ruido se mueve con la cámara o cambia de tamaño al alejarte, verifica que el nodo Mapping tenga **Vector** en **Object** (no en UV o Camera).
- No uses este método en Cycles; está diseñado para **EEVEE** (Shader to RGB no funciona igual en Cycles).