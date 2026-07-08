# 📸 Curso Gratis de Adobe Photoshop - Módulo 8 - Capítulo 1 - Retrato Artístico
**Fuente:** mundoaudiovisual | https://youtu.be/ySVmCP5rMac

## Qué enseña
Cómo transformar un retrato RAW subexpuesto y con imperfecciones en una fotografía artística con fondo negro, ojos anaranjados y una esfera de fuego sostenida por la mano del modelo. Cubre flujo completo desde Camera Raw hasta composición final con partículas y destellos.

## Lecciones accionables
- **Abrir RAW directamente en Camera Raw**: al abrir un archivo RAW en Photoshop, se lanza automáticamente Camera Raw para ajustes iniciales.
- **Ajustes iniciales en Camera Raw**:
  - Aumentar **Sombras** (Shadows) para recuperar detalle en zonas oscuras.
  - Reducir **Ruido** (Noise Reduction) ligeramente.
  - Aplicar **Filtro Radial** (Radial Filter) en la zona del rostro: subir **Exposición** (Exposure) y bajar **Negros** (Blacks) localmente.
  - En el panel global, bajar también **Negros** (Blacks).
- **Limpieza de imperfecciones con Pincel de Parche** (Patch Tool): seleccionar manchas o puntos no deseados y arrastrar a zona limpia de piel.
- **Crear capa sobreexpuesta para recuperar información**:
  - Duplicar capa base (Ctrl+J).
  - Ocultar capa inferior.
  - Aplicar **Filtro Camera Raw** a la capa inferior.
  - Subir **Exposición** al máximo hasta que la imagen quede muy sobreexpuesta.
  - Reducir **Ruido** (puede volverse borrosa, no importa).
  - Afilar (Sharpen) la capa principal ligeramente para evitar ruido.
- **Máscara de capa para ojos**:
  - Crear máscara de capa en la capa sobreexpuesta.
  - Pintar con **negro** sobre los ojos del modelo.
  - Reducir **Densidad** (Density) de la máscara para ajustar la intensidad y dar vida a los ojos.
- **Máscara para mano y zonas oscuras**:
  - Continuar pintando la máscara con blanco sobre la mano y zonas que necesiten más luz.
  - Ajustar densidad para que la iluminación sea coherente con la fuente de luz (la esfera).
- **Convertir a Objeto Inteligente** (Smart Object): seleccionar ambas capas (base + sobreexpuesta), clic derecho → "Convertir en Objeto Inteligente" para gestionarlas como una sola capa.
- **Corrección de color de ojos**:
  - Duplicar la capa del Objeto Inteligente.
  - En la capa inferior, aplicar corrección de color (naranja intenso, tono "vampírico").
  - En la capa superior, crear máscara de capa y pintar con **negro** para revelar solo los ojos corregidos.
  - Usar pincel negro pequeño para refinar bordes y reducir opacidad si es necesario.
- **Fondo negro**:
  - Seleccionar el sujeto (Select Subject).
  - Invertir selección (Ctrl+Shift+I).
  - Rellenar de negro la selección invertida.
- **Añadir exposición extra en brazos**:
  - Duplicar capa, aplicar sobreexposición en la capa inferior, reducir ruido.
  - Crear máscara y pintar solo sobre el brazo.
  - Reducir densidad para un efecto sutil.
  - Convertir a Objeto Inteligente y rasterizar.
- **Recortar esfera de fuego**:
  - Usar **Pluma de Curvatura** (Curvature Pen Tool) para rodear la esfera.
  - Clic derecho → "Realizar selección" (Make Selection), desvanecimiento (Feather) de 2 píxeles.
  - Copiar y pegar como nueva capa.
  - Convertir a Objeto Inteligente.
- **Posicionar esfera en la mano**:
  - Reducir opacidad de la capa de la esfera para ver los dedos.
  - Con la Pluma de Curvatura, trazar alrededor de cada dedo que debe quedar delante de la esfera.
  - Convertir trazado en selección (Feather 2 px) y eliminar esa porción de la esfera.
  - Repetir para cada dedo.
- **Reflejo naranja en dedos oscuros**:
  - Crear nueva capa.
  - Seleccionar pincel, color **naranja brillante**.
  - Pintar sobre el dedo que debe reflejar la esfera.
  - Modo de fusión: **Color Burn** (Sobreexponer color).
  - Reducir opacidad hasta que parezca un reflejo natural.
- **Destellos (flares) en la esfera**:
  - Herramienta **Degradado** (Gradient Tool): color inferior negro, color superior naranja brillante.
  - Nueva capa, pintar un círculo degradado sobre la esfera.
  - Modo de fusión: **Screen** (Trama) o **Aclarar** (Lighten).
  - Duplicar la capa, escalar más pequeña hacia el centro para aumentar brillo.
  - Convertir a Objeto Inteligente.
  - Suavizar bordes con pincel negro de baja dureza en máscara.
- **Partículas alrededor de la esfera**:
  - Importar textura de partículas (incluida en material de descarga).
  - Duplicar capa de partículas.
  - Editar → Transformar → Rotar 180°.
  - Editar → Transformar → Voltear horizontalmente (Flip Horizontal).
  - Alinear para que los bordes coincidan.
  - Convertir ambas a Objeto Inteligente, rasterizar.
  - Modo de fusión: **Lighten** (Aclarar).
  - Reducir opacidad.
  - Duplicar capa de partículas, colocar debajo.
  - Aplicar **Desenfoque Gaussiano** (Gaussian Blur) a la capa inferior para dar luminosidad.
  - Si aparece una línea negra en la unión, duplicar nuevamente y ajustar modo de fusión a Lighten.

## Reglas para agentes
- Usa **Camera Raw** para todos los ajustes iniciales de archivos RAW antes de pasar a Photoshop.
- Aplica **máscaras de capa** con pincel negro para ocultar y blanco para revelar, nunca borres directamente.
- Usa **Pluma de Curvatura** para recortar formas curvas como dedos; usa **Pluma Normal** para trazos rectos o precisos.
- Cuando añadas reflejos con pincel, usa modo **Color Burn** y opacidad reducida para simular iluminación realista.
- Para destellos, usa modo **Screen** o **Lighten**; nunca uses modos que oscurezcan (Multiply, Color Burn) en fuentes de luz.
- Convierte a **Objeto Inteligente** antes de aplicar filtros o transformaciones para preservar la edición no destructiva.
- Al recortar objetos superpuestos, usa **Feather de 2 píxeles** en las selecciones para bordes suaves.
- Reduce **Ruido** en capas sobreexpuestas para evitar artefactos al mezclar.

## Errores comunes que evita o menciona
- **No afilar en exceso** la capa principal porque introduce ruido.
- **No pintar correcciones de color directamente** sobre la capa original: duplica la capa, aplica el color en la inferior y usa máscara en la superior para control preciso.
- **No dejar bordes duros** al recortar la esfera contra los dedos: usa desvanecimiento (Feather) para transiciones naturales.
- **No olvidar ajustar la densidad de la máscara** en lugar de borrar: permite recuperar el efecto si es necesario.
- **No ignorar dedos oscuros** que deberían reflejar la fuente de luz: pinta un reflejo naranja en modo Color Burn.
- **No dejar líneas negras** en la unión de texturas duplicadas: usa modo Lighten y duplica capas para eliminarlas.