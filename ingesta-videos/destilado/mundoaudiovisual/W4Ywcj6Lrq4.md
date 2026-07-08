# Curso de After Effects en español - 🎬 Capítulo 11 - Efecto Neón en Entorno 3D
**Fuente:** mundoaudiovisual | https://youtu.be/W4Ywcj6Lrq4

## Qué enseña (2-3 líneas)
Crear un efecto de letrero de neón en un entorno 3D completo (paredes, suelo, cámara) usando capas 3D, luces, desenfoques y modos de fusión. Incluye la construcción de una escena con ladrillos, un logotipo iluminado, un enchufe realista con cable y partículas ambientales, además de una animación de encendido.

## Lecciones accionables
- **Crear composición:** Nueva composición → 1920×1080, 60 fps, nombre "Neon Ballet Logo".
- **Importar materiales:** Archivo → Importar → seleccionar carpeta con logo, enchufe, ladrillos y partículas (disponible en descripción del video).
- **Activar 3D en capas:** Seleccionar capa → activar el cubo 3D (toggle swatches / 3D layer).
- **Crear cámara:** Capa → Nueva → Cámara → 50 mm.
- **Construir escenario 3D con ladrillos:**
  1. Arrastrar capa de ladrillos a composición.
  2. Escalar con tecla `S`.
  3. Duplicar con `Ctrl+D` para suelo.
  4. Rotar suelo 90° en eje X: tecla `W` + `Shift` para snap a 90°.
  5. Mover con tecla `V`.
  6. Ajustar vista con tecla `C` (cámara orbital).
- **Extender ladrillos con efecto "Mosaico móvil" (Motion Tile):**
  - Efecto → Estilizar → Mosaico móvil.
  - En capa de pared lateral: Ajustar "Altura de proyección" a 200, "Ancho de proyección" a 500.
  - En capa de suelo: Ancho 500, Altura 200, mover en eje Z para ver más suelo.
- **Crear paredes laterales:**
  - Duplicar capa de ladrillos.
  - Rotar 90° en eje Y (`W` + `Shift`).
  - Mover a izquierda y derecha.
- **Colocar logo neón:**
  - Arrastrar logo a composición, activar 3D.
  - Escalar con `S`, posicionar pegado a la pared.
- **Efecto neón en logo (capa gris de fondo):**
  - Duplicar capa logo.
  - En capa inferior: Efecto → Generar → Relleno → color gris oscuro.
  - Capa → Estilo de capa → Bisel y relieve (Bevel and Emboss).
  - Ajustes: Ángulo 5°, Tamaño 4, Suavizado 1.
  - Copiar estilo (`Ctrl+C`) y pegar en capa superior (color).
- **Crear luminancia con desenfoques:**
  - Duplicar capa logo 3 veces.
  - Aplicar a cada duplicado: Efecto → Desenfocar → Desenfoque rápido (Fast Box Blur).
  - Valores: capa 1 = 10, capa 2 = 50, capa 3 = 80.
  - Modos de fusión: capa 1 → "Luz fuerte" (Hard Light), capa 2 y 3 → "Añadir" (Add).
- **Iluminar entorno con luces:**
  - Capa → Nueva → Luz → Tipo: Punto, Intensidad: ajustable.
  - Color de luz: azul claro (para parte azul del logo).
  - Posicionar luz cerca de la pared.
  - Duplicar luz para color rojo (segunda parte del logo).
  - En todas las capas del logo: Material Options → Aceptar luces (Accepts Lights) → Desactivado.
- **Ajustar reflectividad de paredes:**
  - En capas de ladrillos: Material Options → Difuso (Diffuse) → 10%.
- **Añadir enchufe:**
  - Arrastrar enchufe a composición, activar 3D, escalar y posicionar.
  - Estilo de capa → Bisel y relieve → color rojo.
- **Crear cable con pluma:**
  - Herramienta Pluma → dibujar trazado desde enchufe hasta detrás de cámara.
  - Capa de forma → activar 3D.
  - Sin relleno, trazo (Stroke) de 35 px (ajustar a 6-7 px).
  - Estilo de capa → Bisel y relieve para efecto redondo.
- **Añadir partículas:**
  - Arrastrar capa de partículas, activar 3D.
  - Modo de fusión: "Añadir" (Add).
  - Posicionar cerca del logo (ej. Z = -104, Y ajustado).
- **Animación de cámara:**
  - Seleccionar cámara → tecla `P` para posición.
  - Crear keyframe inicial y final moviendo cámara con tecla `C`.
- **Efecto de encendido:**
  - En todas las capas de desenfoque y luces: ajustar Opacidad/Intensidad a 0 (luces a 50).
  - Crear keyframe en frame 0 con valores bajos.
  - Avanzar 12 frames → keyframe con valores máximos (100).
  - Repetir parpadeo: alternar keyframes cada 12 frames.
  - Seleccionar todos los keyframes → aplicar `F9` para suavizar (Easy Ease).

## Reglas para agentes
- Usa "Mosaico móvil" (Motion Tile) para extender texturas en 3D, no para escalar capas.
- Cuando crees desenfoques de neón, usa siempre "Desenfoque rápido" (Fast Box Blur) con valores 10, 50 y 80.
- Aplica modo de fusión "Luz fuerte" (Hard Light) al primer desenfoque y "Añadir" (Add) a los siguientes.
- Desactiva "Aceptar luces" (Accepts Lights) en todas las capas del logo para que las luces no iluminen el propio logo.
- Reduce el valor "Difuso" (Diffuse) de las paredes a 10% para controlar la iluminación ambiental.
- Usa siempre `F9` (Easy Ease) en keyframes de animación de encendido para transiciones suaves.
- Nunca uses luces direccionales o ambientales; solo luces de tipo "Punto" (Point) para simular neón.

## Errores comunes que evita o menciona
- No olvidar activar la propiedad 3D en todas las capas (logo, enchufe, cable, partículas) para que reciban iluminación.
- No aplicar el efecto "Bisel y relieve" solo a una capa; debe aplicarse tanto a la capa gris como a la de color del logo.
- No dejar las luces iluminando el propio logo; desactivar "Aceptar luces" en las capas del logo para que la luz parezca emitida por él.
- No usar valores altos de "Difuso" en paredes (más de 10%) para evitar sobreiluminación.
- No olvidar que el cable debe tener "Bisel y relieve" para simular un cable redondo, no plano.
- No omitir el modo de fusión "Añadir" en las partículas para que se integren con la luz ambiental.