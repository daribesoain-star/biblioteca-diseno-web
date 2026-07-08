# VÍDEO CON REGALO - Curso GRATIS Final Cut Pro 12 - Capítulo 6: Cámaras Rápidas y Cámaras Lentas
**Fuente:** mundoaudiovisual | https://youtu.be/pwVDFkepktM

## Qué enseña (2-3 líneas)
Explica cómo crear time-lapse (cámara rápida) y cámara lenta en Final Cut Pro, incluyendo la teoría de fotogramas por segundo (FPS) necesaria para que la cámara lenta sea suave y profesional. También presenta el uso de la función "Swiss Slow Motion" con inteligencia artificial para generar fotogramas cuando no se tienen suficientes FPS originales.

## Lecciones accionables
- **Crear un proyecto nuevo:** Ve a `File > Create Project`, nómbralo (ej. "time-lapse and slow motion"), configura la frecuencia de fotogramas (25 FPS para Europa, 29.97 o 30 FPS para Latinoamérica) y resolución (ej. 4K).
- **Hacer un time-lapse (cámara rápida):** Selecciona el clip en la línea de tiempo, presiona `Command + R` para abrir el menú de velocidad. En el campo de velocidad, ingresa un valor mayor a 100% (ej. 2000%, 9000%) o usa el botón desplegable "Fast" y elige una opción predefinida (ej. 20x).
- **Verificar FPS de un clip:** Selecciona el clip, ve a `File > Show Info` (o `Window > Show Info`) para ver los fotogramas por segundo con los que fue grabado.
- **Calcular velocidad máxima para cámara lenta suave:** Divide los FPS del proyecto entre los FPS del clip y multiplica por 100. Ejemplo: proyecto a 25 FPS, clip a 60 FPS → (25/60) × 100 = 41.67% de velocidad mínima.
- **Aplicar cámara lenta manual:** Selecciona el clip, presiona `Command + R`, ingresa el porcentaje calculado (ej. 41%) en el campo de velocidad personalizada.
- **Usar "Swiss Slow Motion" con IA:** Selecciona el clip, presiona `Command + R`, elige la opción "Slow Motion" y luego "Swiss Slow Motion". Ingresa el porcentaje deseado (ej. 25%). Final Cut Pro generará fotogramas artificialmente para suavizar el movimiento.
- **Renderizar para previsualizar:** Después de aplicar Swiss Slow Motion, presiona `Command + R` para renderizar y ver el resultado final.
- **Acceder al regalo (calculadora de cámara lenta):** Ve al sitio web `mundoaudiovisual.com`, baja hasta la sección "YouTube" y busca "Calculadora de cámara lenta Mundo Audiovisual". Introduce los FPS del proyecto y los FPS del clip para obtener el porcentaje exacto de velocidad.

## Reglas para agentes
- Usa `Command + R` para abrir el menú de velocidad en cualquier clip seleccionado.
- Para cámara lenta suave sin IA, nunca reduzcas la velocidad por debajo del resultado de la fórmula: (FPS proyecto / FPS clip) × 100.
- Cuando el clip tenga los mismos FPS que el proyecto (ej. ambos a 25 FPS), usa "Swiss Slow Motion" si necesitas cámara lenta, no la opción normal.
- Verifica siempre los FPS del clip en `File > Show Info` antes de aplicar cámara lenta.
- Para time-lapse, usa valores de velocidad superiores a 100% (ej. 2000%, 9000%) o las opciones predefinidas "Fast".

## Errores comunes que evita o menciona
- **Cámara lenta con cortes o saltos:** Ocurre cuando se reduce la velocidad por debajo del límite calculado (FPS proyecto / FPS clip × 100). El video se ve entrecortado porque no hay suficientes fotogramas originales.
- **Asumir que cualquier clip sirve para cámara lenta:** Si el clip está grabado a la misma frecuencia que el proyecto (ej. 25 FPS ambos), la cámara lenta normal no funcionará bien; solo es posible con Swiss Slow Motion (IA).
- **Olvidar renderizar Swiss Slow Motion:** La previsualización puede verse mal hasta que se renderiza con `Command + R`.
- **Confundir FPS de proyecto con FPS de clip:** El proyecto define la línea de tiempo; el clip tiene sus propios FPS. La cámara lenta depende de la relación entre ambos.