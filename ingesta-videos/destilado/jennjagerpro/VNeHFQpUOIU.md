# 5 New Ways to Use the Magnetic Mask in Final Cut Pro
**Fuente:** jennjagerpro | https://youtu.be/VNeHFQpUOIU

## Qué enseña (2-3 líneas)
Cinco usos creativos y originales de la máscara magnética (Magnetic Mask) en Final Cut Pro, todos realizables con herramientas nativas del programa, sin plantillas de terceros. Incluye efectos de partículas bokeh, texto que atraviesa al sujeto, perspectiva forzada, combinación con títulos dinámicos y simulación de lluvia con reflejo.

## Lecciones accionables
- **Efecto bokeh mágico (partículas alrededor del sujeto):**
  1. Duplica el clip en la línea de tiempo.
  2. Aplica la **Magnetic Mask** al clip superior para aislar al sujeto.
  3. Selecciona el clip inferior (fondo) y en el navegador de efectos ve a **Light > Bokeh Random**. Ajústalo en el inspector: reduce **Size**, aumenta **Number** y juega con **Pattern**.
  4. Aplica el mismo efecto **Bokeh Random** al clip superior (con máscara). Aumenta el desenfoque (Blur) en este clip para simular partículas cercanas a la cámara.
- **Texto "Pass Through" (texto que pasa detrás y delante del sujeto):**
  1. Duplica el clip y aplica **Magnetic Mask** al superior.
  2. Ve a **Titles and Generators > 3D > Scale 3D**. Arrástralo a la línea de tiempo y extiéndelo a la duración del clip.
  3. En el inspector del título: desactiva **Build Out**; en el inspector de texto cambia el contenido, aumenta tamaño, reposiciona más abajo, desactiva **3D Text Properties** y cambia el color de **Face** a un color extraído del video.
  4. Selecciona el título y haz **Option+G** para crear un **Compound Clip**.
  5. En el inspector de video del compound clip, cambia **Blend Mode** a **Linear Light**.
  6. Coloca el cursor donde el texto casi termine de animarse, corta con **Blade Tool (B)**. Arrastra la primera mitad del compound clip debajo del clip con máscara (para que empiece detrás).
  7. Aplica un **Cross Dissolve** muy corto al inicio del texto que aparece y otro al final del clip "emparedado". Alinéalos.
  8. Opcional: selecciona el primer título, agrega **Blur** y keyframea el **Blur Amount** de suave a enfocado durante la animación.
- **Perspectiva forzada (objeto en primer plano + sujeto al fondo):**
  1. Duplica el clip. Aplica **Magnetic Mask** al clip superior, enmascarando solo la mano/objeto en primer plano.
  2. Escala (Scale) ese clip superior para agrandar el objeto y crear una perspectiva más dramática.
- **Combinar máscara con títulos dinámicos (Dynamic Titles):**
  1. Duplica el clip y aplica **Magnetic Mask** al superior.
  2. Ve a **Titles and Generators > Dynamic > Marquee Bumper**. Arrástralo debajo del clip con máscara.
  3. Con **Option+clic**, arrastra el título encima del clip con máscara para duplicarlo.
  4. En el título inferior: en el inspector de texto, borra el contenido para que solo quede el fondo.
  5. En el título superior: cambia el texto; en el inspector de título, en **Background**, cámbialo de **Default** a **Off**. Reposiciona el texto más abajo.
- **Efecto "Make it Rain" (coche en carretera mojada con reflejo):**
  1. Duplica el clip. Aplica **Magnetic Mask** al superior para aislar el coche.
  2. Al clip inferior (fondo) aplica **Effects > Distortion > Flipped** y ajústalo a **Flip Vertical**.
  3. Escala en Y (Y Scale) ese clip inferior para comprimirlo. Coloca el cursor al inicio y keyframea la **Position** para que el reflejo se mueva debajo del coche durante todo el clip (no necesita precisión).
  4. Al clip superior (con máscara) aplica **Effects > Blur > Directional Blur**. Ajusta el ángulo hacia abajo (vertical) y aumenta la cantidad con los controles en pantalla.
  5. Al clip inferior aplica **Effects > Stylize > Rain**. Reduce **Amount** y **Density** en el inspector.

## Reglas para agentes
- Usa **Magnetic Mask** siempre que necesites aislar un sujeto del fondo sin chroma key.
- Cuando combines dos clips con máscara, duplica siempre el clip original antes de aplicar la máscara.
- Para efectos de partículas bokeh, aplica el mismo efecto **Bokeh Random** tanto al fondo como al clip con máscara, pero aumenta el desenfoque en el clip frontal.
- Para transiciones suaves entre capas, usa **Cross Dissolve** de duración muy corta (unos pocos fotogramas).
- Cuando uses **Blend Mode** en un compound clip, verifica que el modo **Linear Light** funcione con los colores de tu metraje.
- Para reflejos, aplica **Flipped** con orientación vertical y escala en Y reducida; keyframea la posición para que siga al objeto original.
- Nunca uses plantillas de terceros para estos efectos; todos se logran con herramientas nativas de Final Cut Pro.

## Errores comunes que evita o menciona
- **No olvidar duplicar el clip** antes de aplicar la máscara magnética, o perderás el fondo original.
- **No dejar la transición de texto abrupta**: el video añade cross dissolves cortos para suavizar el "pop" del texto al pasar de detrás a delante del sujeto.
- **No usar el efecto Bokeh Random solo en el fondo**: aplicarlo también en el clip frontal con desenfoque crea profundidad realista.
- **No ser demasiado preciso con los keyframes del reflejo**: el efecto es muy indulgente, solo necesitas mover la posición cada segundo aproximadamente.
- **No olvidar desactivar el fondo de los títulos dinámicos** (cambiar a **Off**) para que el texto no tenga recuadro molesto.
- **No usar el efecto Rain con valores por defecto**: hay que reducir drásticamente **Amount** y **Density** para que se vea natural.