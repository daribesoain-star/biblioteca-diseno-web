# Color Correction Tutorial with DaVinci Resolve 20
**Fuente:** mundoaudiovisual | https://youtu.be/zfyYUtWZGDM

## Qué enseña
Este tutorial explica cómo realizar una corrección de color básica en DaVinci Resolve 20 usando el módulo de color. Cubre desde la importación de un clip en perfil logarítmico hasta la aplicación de correcciones primarias, uso de nodos, Power Windows, curvas, vectoscopio y la creación de ajustes reutilizables mediante capturas y capas de ajuste.

## Lecciones accionables
- **Importar clip en perfil logarítmico**: Usa un clip grabado en perfil logarítmico (log) para capturar el rango dinámico completo de sombras a altas luces.
- **Ir al módulo de color**: Desde el módulo de edición, haz clic en "Color" en la parte inferior.
- **Configurar la interfaz**: Desactiva las líneas de clip si solo tienes un clip. En la parte inferior, usa "Correcciones primarias" y "Círculos de color". A la derecha, selecciona la representación gráfica en "Tarjetas gráficas RGB" (ondas de forma, vectoscopio, histograma o cromacidad).
- **Ajustar sombras y altas luces con el gráfico RGB**: En el gráfico RGB, la parte inferior representa sombras (0 = negro puro) y la superior altas luces. Arrastra hacia arriba para levantar sombras o hacia abajo para oscurecer; evita que la información se queme en los extremos.
- **Usar los círculos de color**: El círculo izquierdo ajusta sombras, el del medio ajusta tonos medios, el derecho ajusta altas luces, y el inferior ajusta la composición completa. Mueve el control deslizante de rango para seleccionar qué zona afectar.
- **Ajustar curvas logarítmicas**: Ve a "Curvas logarítmicas" para precisión en sombras y luces. Baja las sombras, sube las luces y ajusta los tonos medios según sea necesario.
- **Corregir balance de blancos**: Usa el botón de cuentagotas (selector de punto blanco) y haz clic en un área blanca de la imagen para equilibrar automáticamente. Luego ajusta manualmente para igualar los tres canales (rojo, verde, azul) en el gráfico RGB.
- **Aplicar contraste con curvas**: Ve a la pestaña "Curvas". Crea una curva en forma de "S": sube el lado derecho (altas luces) y baja el lado izquierdo (sombras) para añadir contraste.
- **Añadir saturación**: En "Correcciones primarias", aumenta ligeramente el control de saturación para dar más viveza sin exagerar.
- **Crear un viñeteado con Power Windows**: Añade un nodo serial (clic derecho > "Añadir nodo serial"). Selecciona "Power Windows" y elige un círculo. Colócalo en el centro de la imagen. Invierte la máscara con el botón de invertir (flecha circular) para que el efecto se aplique fuera del círculo. Ajusta el tamaño y la suavidad (pluma rosa). Luego baja las sombras para oscurecer los bordes y centrar la atención.
- **Añadir desenfoque de fondo**: Añade otro nodo serial. Crea otro Power Windows circular, inviértelo. Ve al botón de desenfoque (icono de gota) y aumenta la intensidad para desenfocar el fondo. Ajusta el tamaño de la máscara para que el sujeto principal permanezca nítido.
- **Verificar tono de piel con vectoscopio**: Ve a la vista de "Vectoscopio". El tono de piel humano debe aparecer en una línea específica (aproximadamente entre el rojo y el amarillo). Añade un nodo serial y ajusta la temperatura (deslizador de temperatura) hasta que la línea del tono de piel caiga en esa zona.
- **Nombrar nodos**: Haz clic derecho sobre un nodo, selecciona "Cambiar nombre" y asígnale un nombre descriptivo (ej. "Contraste", "Viñeta", "Desenfoque", "Tono piel").
- **Guardar y aplicar capturas**: En el panel de "Capturas" (parte superior), haz clic en "Capturar" para guardar el estado actual de todos los nodos. Luego, selecciona otro clip en la línea de tiempo, elimina sus nodos (clic derecho > "Restablecer") y aplica la captura arrastrándola o haciendo clic.
- **Usar capa de ajuste**: Ve al módulo de edición. En "Efectos" > "Generadores" > "Nuevo clip de ajuste". Colócalo sobre los clips que deseas afectar. Copia los nodos del clip corregido (Ctrl+C / Cmd+C) y pégalos en la capa de ajuste (Ctrl+V / Cmd+V). La capa de ajuste aplica los efectos a todos los clips debajo de ella; puedes recortarla para limitar su duración.

## Reglas para agentes
- Usa el gráfico RGB para visualizar la distribución de sombras y altas luces; evita que la información toque los bordes superior o inferior para no quemar o perder detalle.
- Siempre comienza con un clip en perfil logarítmico (log) para tener el máximo rango dinámico antes de corregir.
- Cuando uses Power Windows para viñeteado o desenfoque, invierte la máscara si el efecto debe aplicarse fuera del área seleccionada.
- Nombra cada nodo con una etiqueta descriptiva para mantener el flujo de trabajo organizado y depurable.
- Usa el vectoscopio para verificar que el tono de piel humano caiga en la línea entre rojo y amarillo; ajusta la temperatura para lograrlo.
- Para aplicar correcciones a múltiples clips, usa una capa de ajuste en lugar de copiar nodos individualmente; así los cambios son globales y editables.
- Nunca apliques correcciones directamente sobre el clip original sin usar nodos; trabaja siempre en nodos seriales para mantener un flujo no destructivo.

## Errores comunes que evita o menciona
- **No corregir el balance de blancos antes de ajustar colores**: El instructor muestra que el gráfico RGB tiene los azules desplazados hacia arriba, indicando un balance incorrecto; lo corrige con el cuentagotas de punto blanco.
- **Quemar información en sombras o altas luces**: Al mover los controles, advierte que si la información toca los extremos del gráfico, se pierde detalle (quemado).
- **Aplicar saturación excesiva**: Recomienda añadir solo un poco de saturación para dar viveza sin exagerar.
- **No usar nodos para efectos secuenciales**: Muestra que cada efecto (contraste, viñeta, desenfoque, tono piel) debe ir en un nodo separado para poder activar/desactivar o modificar individualmente sin afectar lo anterior.
- **Olvidar invertir la máscara en Power Windows**: Al crear el viñeteado, inicialmente el efecto se aplica dentro del círculo; corrige invirtiendo la máscara para que el oscurecimiento ocurra en los bordes.
- **No verificar el tono de piel con vectoscopio**: Destaca que el tono de piel debe estar en una zona específica del vectoscopio y ajusta la temperatura para lograrlo.
- **Aplicar ajustes directamente a cada clip sin usar capa de ajuste**: Explica que usar una capa de ajuste permite aplicar los mismos efectos a múltiples clips de forma eficiente y recortable.