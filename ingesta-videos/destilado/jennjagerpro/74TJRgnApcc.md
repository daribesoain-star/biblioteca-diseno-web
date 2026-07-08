# 3D Text in FCP  
**Fuente:** jennjagerpro | https://youtu.be/74TJRgnApcc

## Qué enseña (2-3 líneas)
Este tutorial explica cómo acceder, personalizar y animar títulos 3D en Final Cut Pro. Cubre todas las opciones del inspector de texto 3D: profundidad, peso, bordes, iluminación, materiales, sustancias, sombras y entorno. También advierte sobre las limitaciones de usar títulos básicos para efectos 3D y recomienda Apple Motion para animaciones más complejas.

## Lecciones accionables
- **Acceder a títulos 3D:** Ve a la barra lateral "Títulos y generadores" → categoría "3D" → selecciona un título 3D personalizado y arrástralo a la línea de tiempo.
- **Abrir inspector de texto:** Haz clic en el ícono de párrafo (¶) en el inspector → expande el menú "Texto 3D" pasando el cursor sobre la línea y presionando "Mostrar".
- **Cambiar profundidad:** Usa el control deslizante "Profundidad" para hacer el texto más o menos 3D.
- **Ajustar dirección de profundidad:** Opciones: "Centrado" (expande hacia adelante y atrás por igual), "Hacia atrás", "Hacia adelante".
- **Controlar peso:** Usa el control deslizante "Peso" para engrosar o adelgazar el texto.
- **Personalizar borde frontal:** Opciones: "Bisel", "Cuadrado", "Cresta", "Anillo cuadrado". Ajusta el tamaño del borde con el control deslizante correspondiente.
- **Personalizar borde trasero:** Por defecto es igual al frontal, pero puedes cambiarlo independientemente (ej: "Cresta"). Gira el texto en el eje Y para ver el borde trasero.
- **Redondear esquinas interiores:** Opciones: "Rectas", "Redondeadas", "Ingleteadas".
- **Configurar iluminación:** Expande "Iluminación" → elige estilo (ej: "Estándar") → ajusta el ángulo de la luz para cambiar la apariencia en diferentes superficies.
- **Activar sombras propias:** Activa "Sombra propia" para que los caracteres proyecten sombras sobre sí mismos, aumentando el efecto 3D.
- **Configurar entorno:** En "Entorno", elige entre opciones como "Campo", "Colorido", "Caja de luz", "Aparcamiento", "Azotea", "Softbox superior", "Focos", "Cuadrados", "Maderas". Ajusta "Rotación" e "Intensidad".
- **Cambiar sustancia:** En "Sustancia", elige entre "Plástico", "Tela" (ej: "Punto azul", "Lunares"), "Madera" (ej: "Tablas viejas"), "Metal" (ej: "Oro"), "Piedra" (ej: "Mármol blanco"), "Papel de regalo".
- **Ajustar textura de tela:** En "Tela", modifica "Rugosidad", "Escala" (para tamaño del patrón), "Rotación", "Posición".
- **Ajustar textura de madera:** En "Madera", modifica "Veta". En "Colocar en", elige "Objeto" (más realista, el patrón se extiende por todo el texto) o "Glifo" (cada letra tiene el mismo patrón).
- **Usar múltiples materiales:** En "Material", cambia de "Único" a "Múltiple". Aparecen opciones para: "Frente", "Borde frontal", "Lado", "Borde trasero", "Atrás". Asigna diferentes materiales a cada superficie (ej: frente en madera, borde frontal en pintura látex, lados en piedra, atrás en papel de regalo).
- **Cambiar color de pintura:** Si eliges "Pintura" como material, usa el espectro de colores para personalizar el tono.
- **Ajustar brillo del metal:** En material "Metal", modifica "Brillo" para cambiar el aspecto reflectante.
- **Animar texto en Final Cut:** Ve al inspector de título (cuadrado con T) → usa los parámetros de "Texto personalizado" para animar la entrada y movimiento del texto 3D.
- **Seleccionar caracteres individuales:** En el visor o en el inspector de texto, resalta caracteres específicos para cambiar sus propiedades de forma independiente.

## Reglas para agentes
- **Usa siempre un título 3D de la categoría "3D"** cuando necesites texto tridimensional con capacidad de rotación en 360° y visualización de profundidad.
- **Nunca uses un título básico (Ctrl+T)** para efectos 3D si necesitas animar rotación en X o Y, o si quieres keyframes en el inspector de texto.
- **Activa "Sombra propia"** cuando quieras que el texto tenga un aspecto más realista y tridimensional, especialmente con iluminación desde arriba.
- **Usa "Múltiple" en Material** cuando necesites que diferentes partes del texto (frente, bordes, lados, atrás) tengan diferentes texturas o colores.
- **Configura "Colocar en" como "Objeto"** para texturas de madera cuando busques un resultado más realista y coherente en todo el texto.
- **Usa Apple Motion** cuando necesites animaciones complejas como rotación continua, tumbos o movimientos dinámicos en cualquier eje.

## Errores comunes que evita o menciona
- **No crear títulos 3D desde un título básico:** Si usas Ctrl+T y luego activas las opciones 3D en el inspector de texto, no podrás keyframear los parámetros de texto ni rotar en los ejes X e Y (solo en Z). El texto quedará estático en el ángulo que le des.
- **No esperar animación 3D completa solo con Final Cut:** El inspector de título en FCP tiene opciones limitadas de movimiento. Para animaciones más dinámicas (rotación continua, tumbos), es necesario usar Apple Motion.
- **No usar plugins como Alex 4D como solución real 3D:** Aunque permiten rotar en X e Y, no es verdadero 3D y no muestra la profundidad real del texto.