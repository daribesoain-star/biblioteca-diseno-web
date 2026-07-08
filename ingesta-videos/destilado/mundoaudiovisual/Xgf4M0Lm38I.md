# APPLE LIQUID Effect - FREE TUTORIAL Davinci Resolve 20
**Fuente:** mundoaudiovisual | https://youtu.be/Xgf4M0Lm38I

## Qué enseña (2-3 líneas)
Tutorial completo para crear un efecto de cristal líquido (liquid crystal) al estilo Apple usando Fusion en DaVinci Resolve 20. Cubre la creación de una máscara animada con rectángulos y elipses, la aplicación de refracción, desenfoque, brillo/contraste, y la integración de imágenes generadas por IA con máscaras de luminancia para lograr un efecto de burbuja de vidrio con texto animado.

## Lecciones accionables
- **Crear composición Fusion base:** En el módulo Edit, ir a Effects > crear Fusion composition de 2 segundos. En Fusion, añadir un Background negro (setear "Unit" en modo) y otro Background blanco.
- **Configurar rectángulo animado:** Añadir un Rectangle node conectado a un Merge. Setear Width a 1.7, Height a 1.3, Corner Rounding a 1. En frame 0, keyframe de Level en 0. En frame 30, keyframe de Level en 1. En frame 15, añadir tres elipses (Ellipse) pequeñas sobre el rectángulo, copiando y pegando, variando tamaño y posición.
- **Aplicar blur y brightness/contrast:** Al Merge del rectángulo, añadir un Blur node (valor 60) y un Brightness/Contrast node. Setear Contrast a 2, Minimum en CCO point (valor 0), Maximum en C a 0.51. Keyframe del Blur: en frame 20 valor alto hasta que desaparezca, en frame 30 valor 4.
- **Suavizar keyframes:** Abrir Keyframe Panel, seleccionar keyframes de Level, presionar tecla "S" (capital S) para hacer la curva más orgánica.
- **Añadir polígono con borde:** En frame 9-10, añadir un Polygon node detrás del rectángulo. Aumentar Border Width hasta que las líneas se conecten visualmente.
- **Crear máscara luma:** Al final de la cadena, añadir un Luma node (modo 2) para limitar blancos y negros. Agrupar toda la cadena como "mate" (seleccionar nodos > Ctrl+G).
- **Renderizar máscara con alpha:** Exportar la máscara como ProRes 4444 con alpha output activado para transparencia.
- **Crear composición final:** Nueva Fusion composition de 5 segundos a 30 fps. Importar: imagen de paisaje (generada con IA en Photoshop a 5000x4000 píxeles), imagen de arcoíris (gradiente de colores cálidos a fríos), y la máscara renderizada.
- **Animar fondo:** Conectar paisaje a un Merge con Background. Keyframe de Center en frame 0 y frame 30 (ej. de 0.75 a 0.75). Suavizar con tecla "S".
- **Configurar máscara transformada:** Añadir un Transform node a la máscara. Setear Size a 0.9, Aspect Ratio a 0.8. Conectar a un Merge con la máscara original en modo "Mask" (operador mask).
- **Aplicar refracción:** Añadir un Refractor node. Conectar máscara original como Foreground (clic derecho > Foreground). Setear Center (0.5, 0.5), Phase a -0.5, Refraction a 1.1, Diffusion a 3. Añadir segundo Refractor con la máscara transformada: Center (0.66, 0.6), Phase -0.5, Refraction 0.025, Diffusion 1. Keyframe del primer Refractor: en frame 30 valor de Refraction, en frame 0 valor 0.
- **Añadir blur suave:** Añadir Blur node (valor 15) al Merge principal. Conectar a otro Merge con máscara en modo "Mask".
- **Crear reflejos tipo agua:** Añadir un tercer Refractor con la imagen arcoíris como Foreground. Setear Phase -0.5, Refraction 20, Diffusion 3, Scale 4, Animation Speed 1. Conectar a un Merge con la máscara suavizada como Mask. Ajustar Gain a 0.35 para cromatismo.
- **Añadir texto animado:** Crear Text node ("Apple crystal liquid" en semibold). Añadir Transform node. Keyframe de Center: frame 0 en 0.4, frame 30 en 4.57, frame 70 en 0.5. Suavizar con tecla "S". Enmascarar con máscara original en modo "Inclusion" (no Mask). Añadir Refractor final con máscara suave como Foreground, Refraction 1.3.

## Reglas para agentes
- Usa "ProRes 4444" con alpha output activado cuando necesites exportar una máscara con transparencia desde Fusion.
- Usa el operador "Mask" en el Merge cuando quieras recortar una imagen con una máscara; usa "Inclusion" cuando quieras que el contenido quede dentro de la máscara (como texto dentro de una burbuja).
- Siempre suaviza keyframes de animación con la tecla "S" (capital S) en el Keyframe Panel para movimientos orgánicos.
- Nunca uses valores de Refraction superiores a 2 en el primer Refractor sin keyframe de animación, para evitar artefactos al inicio.
- Cuando combines múltiples capas de refracción, usa Diffusion entre 1 y 3 para un efecto de vidrio realista.

## Errores comunes que evita o menciona
- **Problema de artefactos al inicio:** Si aparece un destello o problema visual en el primer frame, keyframe el valor de Refraction del primer Refractor a 0 en frame 0 y al valor deseado en frame 30.
- **Máscara no funciona correctamente:** Si la máscara no recorta como se espera, verificar que el operador del Merge esté en "Mask" (no en "Multiply" u otro modo).
- **Texto fuera de la burbuja:** Para que el texto quede dentro del efecto líquido, usar el operador "Inclusion" en el Merge de máscara, no "Mask".
- **Rendimiento lento:** Reducir la calidad de previsualización a 25% durante la edición para acelerar el flujo de trabajo en equipos con recursos limitados (como Mac M4 básico).