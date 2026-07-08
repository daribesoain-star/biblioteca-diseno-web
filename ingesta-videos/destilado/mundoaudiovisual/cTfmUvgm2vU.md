# Creating the intro for a YouTube channel tutorial
**Fuente:** mundoaudiovisual | https://youtu.be/cTfmUvgm2vU

## Qué enseña
Tutorial práctico sobre cómo crear una intro animada para un canal de YouTube usando After Effects para la animación base y DaVinci Resolve para refinamiento, edición y efectos finales. Muestra el flujo de trabajo completo desde la preparación de un logo vectorial separado en partes hasta la animación con máscaras, rotación 3D y efectos de cámara.

## Lecciones accionables
- **Preparar el logo en After Effects:** Importar el logo separado en partes (V derecha, V izquierda, C derecha, C izquierda, logo completo). Crear una nueva composición: nombre "Victor", resolución 1840x2160, 30 fps, duración 20 segundos.
- **Usar guía de color:** Aplicar efecto Lumetri Color al logo completo como guía de color base. En "Basic Correction" > "Creative" > ajustar tonos naranjas y "Faded Film" para cambiar el color de referencia.
- **Crear máscaras para dividir el logo:** Duplicar la capa V. En la primera V, usar herramienta de máscara (mask) para seleccionar solo el lado derecho. En la segunda V, seleccionar solo el lado izquierdo. Renombrar capas como "V derecha" y "V izquierda". Ajustar máscaras con valores de expansión 0.5 y 0.5 para que coincidan perfectamente.
- **Animar aparición con máscara elíptica:** Seleccionar la capa de la C derecha, precomponerla. Aplicar máscara elíptica (Eclipse mask) ajustada al tamaño del elemento. Keyframes: Escala de 0% a 100% en pocos frames. Rotación: cambiar anchor point al centro del elemento, keyframes de 0 a 5 vueltas (5x). Activar Motion Blur. Interpolar keyframes con "Keyframe Assistant" > "Easy Ease" (curva automática).
- **Animar posición final:** Mover la posición de la C derecha hasta que encaje exactamente con la guía del logo completo. Interpolar con Easy Ease.
- **Expandir máscara elíptica:** Keyframes de expansión de máscara: desde tamaño pequeño hasta cubrir todo el logo.
- **Animar la V derecha:** Usar la misma máscara elíptica ya creada. Keyframes: máscara activa (on) al inicio, desactivada (off) al final. Ajustar timing para que aparezca después de la C derecha.
- **Precomponer lado derecho:** Seleccionar V derecha + C derecha, precomponer con Motion Blur, nombrar "lado derecho". Activar capa 3D.
- **Duplicar para lado izquierdo:** Duplicar precomposición "lado derecho", renombrar "lado izquierdo". Keyframes de rotación Y: de 0 a 180 grados. Ajustar posición para que encaje con la guía.
- **Animación 3D de apertura:** Keyframes de rotación Y para ambos lados: lado derecho de 0 a 140 grados, lado izquierdo de 0 a 180 grados. Keyframes de posición X para que se separen y luego vuelvan a su lugar. Precomponer todo y keyframe de escala de 100% a 0% con Motion Blur para el cierre.
- **Renderizar en After Effects:** Composition > Add to Render Queue. Output Module: QuickTime, Channels: RGB + Alpha. Renderizar para exportar con transparencia.
- **Refinar en DaVinci Resolve:** Importar el render .mov con alpha. Añadir música desde Artlist.io (efectos de sonido). Ajustar velocidad con Control+R: añadir puntos de velocidad (speed points) para acelerar/desacelerar.
- **Añadir efectos de desenfoque:** Efecto "Radiate Blur" con keyframes de intensidad alta a cero. Efecto "Directional Blur" con keyframes de intensidad cero a alta en puntos específicos.

## Reglas para agentes
- Usa 30 fps cuando el canal de destino trabaje a 30 fps.
- Activa Motion Blur en todas las capas animadas para movimiento más fluido.
- Usa "Keyframe Assistant > Easy Ease" en todos los keyframes de animación para curvas orgánicas.
- Renderiza en QuickTime con RGB + Alpha cuando necesites transparencia para trabajar en otro software.
- Ajusta el anchor point al centro del elemento antes de animar rotación.
- Usa una capa guía (logo completo con Lumetri Color) para alinear posiciones finales exactas.

## Errores comunes que evita o menciona
- No dejar suficiente espacio en la composición (usa 20 segundos aunque la animación sea más corta).
- Olvidar cambiar el anchor point antes de animar rotación (el elemento rotará desde el punto incorrecto).
- Trabajar directamente en 3D en After Effects en hardware limitado (renderiza la animación base y refina en DaVinci Resolve para mejor rendimiento).
- No interpolar keyframes con Easy Ease (la animación se ve robótica y poco orgánica).