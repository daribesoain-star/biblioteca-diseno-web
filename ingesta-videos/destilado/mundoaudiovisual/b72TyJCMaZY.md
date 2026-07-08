# Curso de Motion 5 tutorial en español - 🎬 * Capítulo 6 - Mapa animado con Motion
**Fuente:** mundoaudiovisual | https://youtu.be/b72TyJCMaZY

## Qué enseña
Cómo crear un mapa animado con rutas entre ciudades en Motion 5, replicando un efecto previamente hecho en Final Cut Pro pero de forma más rápida y sencilla. Cubre importación de assets, creación de rutas con la herramienta pluma, animación con keyframes y uso de behaviors.

## Lecciones accionables
- **Abrir nuevo proyecto:** Ve a Archivo > Nuevo proyecto, configura 25 fps, duración 15 segundos.
- **Importar carpeta de assets:** Arrastra la carpeta completa (mapa, señalizador, video, música) al panel de capas o al canvas.
- **Crear grupo "map":** Selecciona los elementos mapa y señalizador, presiona Comando+G para agruparlos, renombra el grupo a "map".
- **Escalar mapa sin distorsión:** Selecciona el mapa en el canvas, mantén presionada la tecla Shift mientras arrastras una esquina para escalar proporcionalmente.
- **Aplicar filtro de color:** Ve a Biblioteca > Filtros > Color > Colorear. Arrástralo al mapa. En el inspector, ajusta "Designar negro" y "Presionar blanco" a tonos azules. Reduce opacidad en Propiedades para efecto semitransparente.
- **Duplicar señalizadores:** Selecciona el señalizador, presiona Comando+D para duplicar. Posiciona cada copia sobre las ciudades (Sevilla, Madrid, Córdoba, Barcelona) en el canvas.
- **Crear textos de ciudades:** Dentro del grupo "map", usa la herramienta Texto. Elige fuente similar a la del tutorial, tamaño 30, color rojo. Duplica con Comando+D para cada ciudad y posiciona sobre cada señalizador.
- **Trazar ruta con pluma curva:** Selecciona la herramienta Pluma Curva (segunda opción del menú Pluma). Haz clic en Sevilla, luego en Córdoba, Madrid y Barcelona para crear una línea continua. Presiona Escape para finalizar.
- **Configurar forma de la ruta:** En el inspector, pestaña Forma: desactiva "Relleno", activa "Solo contorno". Ajusta color a amarillo, ancho de línea deseado.
- **Configurar extremos de línea:** En Forma, en "Estilo de forma abstracta", elige "Ninguno" para extremos cuadrados. Para el último punto (Barcelona), selecciona "Flecha" en "Desviación del último punto".
- **Animar desviación de puntos:** En el inspector, pestaña Forma, localiza "Desviación del primer punto" y "Desviación del último punto". Mueve el control deslizante de "Desviación del último punto" para ver cómo la línea se extiende desde el inicio.
- **Crear keyframes de aparición de elementos:**
    - En el segundo 1:15, selecciona el grupo "map", presiona la tecla I (keyframe de inicio).
    - En segundo 3: selecciona señalizador y texto de Sevilla, presiona I.
    - En segundo 4:15: selecciona señalizador y texto de Córdoba, presiona I.
    - En segundo 5:20: selecciona señalizador y texto de Madrid, presiona I.
    - En segundo 9:20: selecciona señalizador y texto de Barcelona, presiona I.
- **Animar la línea de ruta:**
    - En el fotograma donde aparece Sevilla (segundo 3): en "Desviación del último punto", pon valor 0%, presiona K (keyframe).
    - En el fotograma donde debe llegar a Córdoba: mueve el control hasta que la línea alcance Córdoba, presiona K.
    - Repite para Madrid y Barcelona, terminando en 100% en Barcelona.
- **Agregar fade in al mapa:** Selecciona el grupo "map". Ve a Biblioteca > Comportamientos > Animación básica > Fundido de entrada/salida. Arrástralo al grupo.
- **Agregar fade in/out a audio:** Selecciona el archivo de música. Ve a Biblioteca > Comportamientos > Audio > Fundido de entrada/salida. Arrástralo al audio.
- **Exportar:** Ve a Compartir > Exportar video. Configura: paso 4444, selecciona "Renderizado óptimo", guarda en escritorio.

## Reglas para agentes
- Usa la herramienta Pluma Curva (no la Pluma recta) para trazar rutas con curvas suaves entre ciudades.
- Mantén presionada la tecla Shift al escalar cualquier elemento en el canvas para evitar distorsión.
- Siempre agrupa los elementos del mapa (mapa + señalizadores) en un grupo llamado "map" para facilitar animaciones conjuntas.
- Cuando dupliques señalizadores o textos, usa Comando+D, no copiar/pegar manual.
- Para animar la línea de ruta, usa exclusivamente el parámetro "Desviación del último punto" con keyframes; no uses máscaras ni recortes.
- Configura siempre "Relleno" en "Ninguno" y "Solo contorno" en "Activado" para la forma de la ruta.
- Al exportar, usa siempre paso 4444 y "Renderizado óptimo" para máxima calidad.

## Errores comunes que evita o menciona
- **No escalar sin Shift:** Si escalas sin mantener Shift, el mapa se distorsiona. Siempre usa Shift para escalado proporcional.
- **Olvidar desactivar relleno en la ruta:** Si no desactivas "Relleno" en el inspector de Forma, la ruta aparecerá como una forma sólida en lugar de una línea.
- **No usar keyframes en "Desviación del último punto":** Intentar animar la línea con máscaras o recortes es innecesario; el parámetro nativo de Motion lo hace automáticamente.
- **Colocar textos debajo del mapa en la jerarquía de capas:** Los textos deben estar por encima del mapa en el orden de capas para ser visibles.
- **No ajustar la duración del proyecto:** Si no configuras 15 segundos al inicio, los keyframes pueden quedar fuera del timeline. Siempre ajusta la duración antes de empezar.