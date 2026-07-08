# Making Logos 3D in Apple Motion
**Fuente:** jennjagerpro | https://youtu.be/NjnmXRLCpe8

## Qué enseña
Cómo convertir un logotipo plano con múltiples colores y elementos en un objeto 3D dentro de Apple Motion, utilizando Photoshop Elements para preprocesar las capas y el replicador 3D de Motion para generar profundidad y elevaciones diferenciadas entre los distintos componentes del logo.

## Lecciones accionables
- **Preparar el logo en Photoshop Elements:** Duplica la capa del logo original, desactiva la capa base, selecciona la inversa de los círculos blancos y elimínalos. Luego duplica el logo original otra vez y aísla los círculos de color púrpura claro. Guarda el archivo como PSD (Photoshop) con las tres capas separadas.
- **Importar el PSD en Apple Motion:** Arrastra el archivo PSD sobre el panel de proyecto, elige "Importar todas las capas" (import all layers) en el menú emergente. Esto crea un grupo con cada capa individual.
- **Agregar fondo sólido:** Ve a Biblioteca (Library) > Generadores (Generators) > Sólido de color (Color Solid). Arrástralo al panel de proyecto por encima del grupo del logo. Luego arrastra el grupo del logo por encima del sólido. Cambia el color del sólido a blanco.
- **Activar cámara 3D:** Ve al centro superior de la pantalla, haz clic en "Añadir objeto" (Add Object) y selecciona "Cámara" (Camera). Esto convierte el proyecto a 3D.
- **Replicar el logo base:** Selecciona la capa del logo completo en el panel de proyecto. Haz clic en el botón "Replicar" (Replicate) en la esquina superior derecha. En el Inspector, ve a la pestaña "Replicador" (Replicator). Cambia "Forma" (Shape) a "Línea" (Line). En "Punto de inicio" (Start Point), cambia X a 0. En "Punto final" (End Point), cambia X a 0. Marca la casilla "3D". Despliega "Punto final" (End Point) y cambia el valor Z a 75.
- **Añadir sombra paralela al logo base:** En el panel de proyecto, selecciona la versión original del logo (la que está silenciada/muted, sin check). En el Inspector, ve a "Propiedades" (Properties) y marca la casilla "Sombra paralela" (Drop Shadow). Haz clic en "Mostrar" (Show) y ajusta Distancia (Distance), Opacidad (Opacity) y Desenfoque (Blur) para dar definición.
- **Replicar círculos púrpura:** Selecciona la capa de círculos púrpura. Replica. En el Inspector > Replicador: Shape = Line, Start Point X = 0, End Point X = 0, marca 3D, End Point Z = 100. Selecciona la versión original de esos círculos, ve a Propiedades > Drop Shadow y ajústalo.
- **Replicar círculos blancos:** Selecciona la capa de círculos blancos. Replica. Shape = Line, Start Point X = 0, End Point X = 0, marca 3D, End Point Z = 125. Selecciona la versión original, ve a Propiedades > Drop Shadow y ajústalo.
- **Ajustar plano Z del fondo:** Selecciona el sólido de color. En Inspector > Propiedades, escala el sólido a un tamaño muy grande y lleva su valor Z muy atrás (ej. -500) para que el logo pueda rotar sin desaparecer detrás del fondo.
- **Crear respaldo sólido del logo (opcional):** En el panel de proyecto, haz clic derecho sobre la capa original del logo completo y selecciona "Duplicar" (Duplicate). Renómbralo. Actívalo. Selecciona esa copia, ve a Filtros (Filters) > "Colorear" (Colorize). Usa el cuentagotas para mapear los negros y los blancos al mismo color púrpura. Activa la capa para que el reverso del logo sea un color sólido.
- **Ajustar número de puntos del replicador:** Selecciona el replicador del logo base. En Inspector > Replicador, en "Puntos" (Points), sube el valor a 50 (o más). Para círculos púrpura (Z=100), sube Points a 75. Para círculos blancos (Z=125), sube Points a 100. Para valores mayores a 20, haz clic en el número 20, mantén presionado y empuja el mouse hacia adelante para obtener valores más altos (hasta infinito).
- **Ajustar sombras después de aumentar puntos:** Si las sombras se ven muy intensas tras aumentar los puntos, vuelve a las versiones originales de cada elemento y reduce la opacidad de Drop Shadow.

## Reglas para agentes
- Usa "Importar todas las capas" al arrastrar un PSD con capas separadas a Apple Motion, nunca "Importar capas combinadas".
- Cambia Shape a "Line" y ambos Start Point y End Point X a 0 en el replicador antes de activar 3D y modificar Z.
- Aumenta el número de Points del replicador solo al final del proyecto, después de terminar todos los ajustes de profundidad y sombras, para evitar ralentizar el ordenador.
- Cuando rotes el logo en 3D sobre un fondo sólido, escala el fondo a un tamaño grande y muévelo atrás en el eje Z (valor negativo) para que el logo no desaparezca detrás de él.
- Para crear un reverso sólido del logo, duplica la capa original, aplica el filtro Colorize y mapea tanto negros como blancos al mismo color con los cuentagotas.
- Nunca dejes Points del replicador en 5 si buscas un efecto 3D sólido; usa al menos 50 para el elemento base y más para elementos con mayor profundidad Z.

## Errores comunes que evita o menciona
- **No preprocesar logos complejos:** Si el logo tiene múltiples colores sobre una forma sólida, es necesario aislar cada elemento en capas separadas en Photoshop antes de importar a Motion; de lo contrario no se puede dar profundidad diferenciada.
- **Olvidar marcar la casilla 3D en el replicador:** Sin esta opción activada, el replicador no generará profundidad en el eje Z.
- **Aumentar Points demasiado pronto:** Subir el número de puntos del replicador al inicio del proyecto ralentiza el ordenador innecesariamente; es mejor hacerlo al final.
- **No ajustar el fondo en Z:** Si el fondo y el logo están en el mismo plano Z (ambos en 0), al rotar el logo este desaparece detrás del fondo; hay que escalar el fondo y moverlo atrás en Z.
- **Dejar el reverso del logo transparente:** Al rotar 360°, si no se añade una capa sólida duplicada con Colorize, se verán las capas internas del replicador en el reverso.