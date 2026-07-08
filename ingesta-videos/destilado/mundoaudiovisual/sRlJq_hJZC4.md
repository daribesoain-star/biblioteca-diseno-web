# Curso - Final Cut pro X - 2020 - 🎬 * Cap. 4 - Las transiciones de video y los efectos de video
**Fuente:** mundoaudiovisual | https://youtu.be/sRlJq_hJZC4

## Qué enseña
Este capítulo explica cómo aplicar y personalizar transiciones entre clips (como Dissolve, Wipes, Objetos) y cómo usar efectos de video básicos (color, velocidad, máscaras, efectos atmosféricos) en Final Cut Pro X. También cubre el panel Inspector, la copia de efectos entre clips y ajustes de velocidad (cámara lenta, rápida, reversa, repetición).

## Lecciones accionables
- **Aplicar una transición:** Haz clic en el botón de transiciones (último ícono), elige una categoría (Dissolves, Wipes, Objetos, etc.), arrastra la transición al punto de corte entre dos clips en la línea de tiempo.
- **Ajustar duración de transición:** Haz clic en los bordes de la transición en la línea de tiempo (aparecen flechas dobles) y arrastra para alargar o acortar; o usa el Inspector para valores exactos en frames.
- **Modificar parámetros de transición:** Selecciona la transición, ve al Inspector (ventana superior derecha) y ajusta opciones como "Video" (estándar), "Oscuro", "Brillante" en Dissolve; o "Acelerar" en Circle; o "Dirección" (izquierda/derecha) en Wipes; o "Suavizado" (blur de bordes) y color de borde.
- **Abrir submenú de transición:** Haz doble clic sobre la transición en la línea de tiempo para ver un panel que permite reposicionar el punto exacto donde se aplica el efecto (arrastra el marcador).
- **Previsualizar transición:** Pasa el mouse sobre cualquier transición en el panel de efectos para ver una vista previa en el canvas.
- **Eliminar transición:** Selecciona el clip de transición en la línea de tiempo y presiona Delete.
- **Aplicar efecto de video:** Haz clic en el botón de efectos (junto al de transiciones), elige una categoría (Básicos, Color, Estilizar, etc.) y arrastra el efecto sobre un clip en la línea de tiempo.
- **Copiar efectos entre clips:** Selecciona el clip con efectos, presiona Command+C, selecciona el clip destino, ve a Editar > Pegar Efectos (o Command+Option+V).
- **Ajustar color con el panel de color:** Haz clic en el ícono de triángulo en el Inspector (o en el botón de color en la esquina superior derecha del visor). Usa las pestañas: Exposición (iluminación general, sombras, medios tonos, altas luces), Color (tono: desplaza hacia rojo para cálido, azul para frío), Saturación (intensidad de color; lleva a cero para blanco y negro).
- **Añadir máscara a un efecto:** En el Inspector del efecto, activa "Máscara", elige tipo (por ejemplo, radio), y ajusta los puntos verdes para delimitar el área donde se aplica el efecto.
- **Ajustar velocidad de clip:** Selecciona el clip, usa el botón de velocidad (ícono de reloj) en la barra de herramientas sobre la línea de tiempo. Elige: Cámara lenta (50%, 25%), Cámara rápida (2x, 4x, 8x, 20x), o personaliza con valor numérico. También puedes activar "Invertir clip" para reproducir al revés.
- **Aplicar efecto de rebobinado/repetición:** En el menú de velocidad, elige "Rebobinar" (duplica el clip: reproduce normal, luego retrocede) o "Repetir reproducción" (agrega un loop con texto editable). Para editar el texto de repetición, haz doble clic sobre el cuadro de texto en el canvas.
- **Usar efectos predefinidos de color:** En el Inspector, bajo "Ajustes de color", elige presets como "Sepia", "Blanco y negro", "Cálido", etc.
- **Aplicar efectos atmosféricos:** Arrastra efectos como "Lluvia", "Gota de lluvia", "Reflejos", "Destellos" (efecto de fotos de famosos), "Terremoto", "Ojo de pez", "Cómic básico", "Mosaico", "Aura" desde la categoría correspondiente.

## Reglas para agentes
- Usa la transición Dissolve con opción "Video" como estándar para fundidos suaves entre clips.
- Siempre espera a que Final Cut renderice (barra de progreso) antes de evaluar el resultado visual de una transición o efecto.
- Nunca arrastres una transición directamente sobre un clip individual; colócala exactamente en el punto de corte entre dos clips.
- Usa el Inspector para modificar parámetros específicos de cada transición o efecto; no confíes solo en la vista previa del canvas.
- Para aplicar el mismo efecto a múltiples clips, usa Copiar (Command+C) y Pegar Efectos (Editar > Pegar Efectos), no arrastres manualmente cada vez.
- Cuando ajustes color, usa los controles separados para sombras, medios tonos y altas luces; no modifiques solo el master si quieres precisión.
- Para efectos de velocidad, si usas "Rebobinar" o "Repetir reproducción", el clip se duplica automáticamente; no lo hagas manualmente.
- Nunca elimines un efecto de clip seleccionando el clip y presionando Delete; primero selecciona el efecto en el Inspector y presiona Delete, o usa el botón de reinicio.

## Errores comunes que evita o menciona
- No aplicar la transición en el lugar correcto: debe ir exactamente en el punto de corte entre dos clips, no sobre un clip individual.
- Olvidar renderizar: los efectos y transiciones no se ven correctamente hasta que Final Cut completa el renderizado (barra de progreso en la línea de tiempo).
- No ajustar la duración de la transición: por defecto ocupa 1 frame; se debe arrastrar los bordes para hacerla más lenta o rápida.
- Confundir el efecto "Negativo" con "X-ray": son similares pero X-ray crea un negativo de la imagen; ambos están en categorías diferentes.
- No usar la previsualización al pasar el mouse: evita aplicar efectos sin saber cómo se ven; usa el hover preview en el panel de efectos.
- Aplicar efectos de color sin usar máscaras cuando solo se quiere modificar una parte del video: se puede añadir una máscara en el Inspector del efecto para limitar el área.
- No reiniciar ajustes de color antes de aplicar un nuevo preset: usa el botón de reinicio (círculo con flecha) en el Inspector para evitar acumulación de efectos.
- Olvidar que los efectos de velocidad (cámara lenta/rápida) afectan el audio si no se desactiva; revisar la opción de "Mantener tono" o separar audio si es necesario.