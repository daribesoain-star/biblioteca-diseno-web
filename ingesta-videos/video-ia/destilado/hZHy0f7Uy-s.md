# Runway Gen 4.5 Motion Sketch – Image to Video: Beginners Guide
**Fuente:** AI. Now Y'Know | https://youtu.be/hZHy0f7Uy-s

## Qué enseña
Uso de la función Motion Sketch en Runway Gen 4.5 para convertir imágenes fijas en video mediante anotaciones dibujadas directamente sobre la imagen. Explica el flujo completo: preparación de imagen base, dibujo de trayectorias/áreas/texto en el editor, y evaluación de resultados con sus limitaciones prácticas.

## Técnicas accionables
- **Imagen base:** Usar Runway Gen 4 (8 créditos/imagen) o Nano Banana Pro (20 créditos/imagen) como generador interno; alternativas externas: Midjourney, Image01, Google Flow. La imagen debe tener capas claras: primer plano (grupo de personas), segundo plano (carro de mano), tercer plano (taberna a la izquierda), cuarto plano (paisaje amplio a la derecha).
- **Acceso a Motion Sketch:** En navegación izquierda, clic en "app" → seleccionar "Motion Sketch" → "Draw motion path" bajo "Explore Gen 4.5". Alternativa: clic en "Motion Sketch" en el teaser derecho y luego en el video inferior.
- **Preparación del sketch:** Hacer clic en icono de reset (esquina superior derecha) para eliminar presets existentes. Usar Photoshop para dibujar anotaciones sobre la imagen, guardar y subir; o subir imagen sin editar y usar el editor interno de Runway.
- **Editor Motion Sketch:** Colores disponibles: solo blanco. Herramientas: icono de agarrar (mover paths/shapes/texto), "draw paths" (trazos), "draw shapes" (áreas grandes), icono de etiqueta (texto directo que reemplaza prompt). Undo/redo disponibles.
- **Exportar sketch:** Usar botón "export sketch" en esquina inferior derecha (NO presionar X en superior derecha, eso borra todo).
- **Parámetros técnicos:** Todos los videos generados con Motion Sketch duran 5 segundos, resolución 1280×720 píxeles.
- **Upscale:** Presionar icono de tres puntos debajo del video → seleccionar "upscale" del menú desplegable. La resolución sube a 4960×2340 píxeles. Usa Topaz AI upscaler integrado (cuesta 10 créditos). Alternativa: usar bundle Topaz AI (Video AI, Astra, Gigapixel) localmente.
- **Ejemplos de instrucciones en sketch (verbatim):**
  - "crash zoom inside the house" (sobre ventana)
  - "both people shake hands and laugh" (círculo rojo alrededor de personas)
  - "a white horse enters from the left, dolly camera move"
  - "a group of armored soldiers enters from the right, people run to the left"
  - Secuencia causal: "First, he walks to the wooden cart, picks up the rope, turns toward the woman, and throws the rope in her direction. Second, the woman turns toward the man and catches the rope."
  - Secuencia por colores (timestamp prompting): "Step one, the door of the building opens and a man slowly steps outside. Step two, the woman turns toward the building. Step three, the man laughs."
  - "an armored desert hauler emerges from behind the building, stops next to the people, and a raccoon steps out"

## Reglas para el erudito
- Usa una imagen con capas bien definidas (foreground, midground, background) cuando quieras probar interacciones entre elementos.
- Usa Photoshop para preparar anotaciones cuando necesites precisión milimétrica en la ubicación de instrucciones.
- Usa el editor interno de Runway (sketch mode) cuando quieras iterar rápido sin salir de la plataforma.
- Usa "export sketch" (NO la X) cuando quieras conservar la imagen anotada para generación.
- Usa colores diferentes en las anotaciones cuando definas secuencias de acciones múltiples (timestamp prompting).
- Usa el upscale integrado (Topaz AI) solo si aceptas 10 créditos extra; si tienes Topaz bundle local, procesa fuera de Runway para mayor control.
- Usa múltiples generaciones (hasta 10 intentos) cuando busques reducir morphing en interacciones complejas.
- Consulta el Runway Help Center para documentación sobre Gen 4.5, prompting, shot sizes, framing, camera angles, composition, camera movements y focus techniques.

## Errores comunes / limitaciones que menciona
- El color blanco es el único disponible para anotaciones; si la imagen tiene áreas blancas, las anotaciones se vuelven invisibles.
- La parte izquierda de los edificios cambia de apariencia entre generaciones (inconsistencia visual).
- Runway fuerza movimiento innecesario en los personajes incluso cuando la instrucción no lo pide (manos que se derriten, movimientos forzados).
- Las secuencias complejas de causa-efecto (caminar → tomar cuerda → girar → lanzar) no se ejecutan correctamente, incluso tras múltiples intentos.
- Los objetos aparecen desde el centro de la imagen ignorando la dirección indicada en el sketch (ej: caballo que debía entrar desde la izquierda aparece desde el centro).
- Los personajes se atraviesan entre sí (falta de detección de colisiones).
- Los marcadores de color del sketch a veces permanecen visibles en el video final.
- El morphing es el problema más grave: manos que se convierten en masas fundidas, rostros que se deforman.
- Los vehículos carecen de física básica (vehículo blindado sobre dos ruedas sin volcar).
- Los resultados no cumplen las expectativas del tráiler promocional de Runway; las demostraciones del sitio web no funcionan de forma confiable.
- Cada generación consume créditos sin importar el resultado; no hay reembolsos por resultados insatisfactorios.
- El soporte de Runway AI no ofrece documentación específica para Motion Sketch; recomienda "experimentar" como mejor práctica.