# 📸 Curso Gratis de Adobe Photoshop - Módulo 3 - Capítulo 7 - Las máscaras de capa
**Fuente:** mundoaudiovisual | https://youtu.be/kWkwiM45aNE

## Qué enseña (2-3 líneas)
Explica el funcionamiento de las máscaras de capa en Photoshop: cómo usar blanco, negro y grises para controlar la visibilidad de las capas. Muestra dos aplicaciones prácticas: cambio de color de ojos con fusión realista y efecto de color selectivo (foto en blanco y negro con áreas coloreadas) usando pinceles artísticos sobre la máscara.

## Lecciones accionables
- **Crear una máscara de capa:** seleccionar la capa deseada → hacer clic en el botón de máscara de capa (icono de rectángulo con círculo en el panel de capas). Se genera una máscara blanca que muestra todo el contenido.
- **Ocultar partes de la capa con negro:** seleccionar la máscara (clic en su miniatura) → elegir la herramienta **Pincel (B)** → configurar color frontal **negro (#000000)** → pintar sobre la máscara para ocultar áreas de la capa activa y revelar la capa inferior.
- **Revelar partes ocultas con blanco:** con la máscara seleccionada → cambiar color frontal a **blanco (#FFFFFF)** → pintar para restaurar la visibilidad de la capa activa.
- **Crear transparencia parcial con grises:** usar cualquier tono de gris en el pincel (ej. #808080) → la máscara interpreta la **luminancia** (no el color) → grises generan opacidad intermedia entre capas.
- **Ajustar densidad de la máscara:** en el panel **Propiedades** (doble clic en la miniatura de la máscara) → deslizar **Densidad** de 0% a 100% → controla la opacidad global del efecto de la máscara sin modificar el pincelado.
- **Cambio de color de ojos con máscara:**
    1. Duplicar la capa original (**Ctrl+J** / **Cmd+J**).
    2. En la capa duplicada, usar **Herramienta de sustitución de color (Color Replacement Tool)** para pintar el nuevo color sobre los ojos (puede salirse del área).
    3. Agregar máscara de capa a la capa duplicada.
    4. Con pincel negro, dureza al mínimo, pintar sobre los ojos para revelar la capa inferior original.
    5. Ajustar **Densidad** de la máscara para mezclar el color nuevo con el original hasta lograr un tono realista.
- **Efecto de color selectivo (foto B/N con áreas a color):**
    1. Duplicar la capa original.
    2. Convertir la capa superior a blanco y negro: **Imagen > Ajustes > Blanco y negro** (o usar capa de ajuste de Blanco y negro).
    3. En el cuadro de diálogo, ajustar deslizadores: bajar **Rojos** y **Amarillos** para oscurecer tonos de piel.
    4. Agregar máscara de capa a la capa B/N.
    5. Seleccionar **Pincel (B)** → elegir un **pincel artístico** (ej. pincel de salpicadura o textura) desde el selector de pinceles.
    6. Ajustar tamaño del pincel para que coincida con el área a colorear.
    7. Pintar con **negro** sobre la máscara en las zonas donde se desea revelar el color original.
    8. Para corregir bordes: cambiar a pincel normal, blanco, y pintar sobre la máscara para ocultar áreas no deseadas; usar negro para seguir revelando.

## Reglas para agentes
- Usa **negro** en la máscara para **ocultar** la capa activa y **revelar** la capa inferior.
- Usa **blanco** en la máscara para **mostrar** la capa activa y **ocultar** la capa inferior.
- Usa **grises** en la máscara para crear **transparencia parcial**; la máscara solo interpreta luminancia, no matiz.
- Ajusta la **Densidad** de la máscara (0-100%) para controlar la intensidad global del efecto sin repintar.
- Selecciona siempre la **miniatura de la máscara** (no la de la capa) antes de pintar; si seleccionas la capa, pintarás con color real.
- Para correcciones finas, usa pincel normal con **dureza al mínimo** y tamaño pequeño.
- Cuando uses pinceles artísticos sobre la máscara, prueba primero en una capa temporal para ver el patrón antes de aplicarlo.

## Errores comunes que evita o menciona
- **No usar la máscara directamente sobre la imagen:** si pintas con el pincel de sustitución de color directamente sobre la capa original, el cambio es abrupto y poco realista; la máscara permite mezclar suavemente.
- **Olvidar seleccionar la máscara antes de pintar:** si la miniatura de la capa está activa (no la máscara), el pincel aplicará color en lugar de modificar la visibilidad.
- **Usar colores en la máscara:** la máscara solo interpreta valores de luminancia (blanco, negro, grises); pintar con verde, amarillo u otros colores se traduce a su equivalente en gris.
- **No ajustar la densidad después de pintar:** reducir la densidad de la máscara permite mezclar el efecto con el original sin necesidad de borrar o repintar.
- **Aplicar el efecto de color selectivo sin pincel artístico:** usar un pincel normal da un borde duro; los pinceles artísticos (salpicaduras, texturas) crean un efecto de "pintura" más natural y creativo.