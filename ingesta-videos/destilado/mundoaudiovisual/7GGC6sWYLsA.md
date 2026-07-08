# Curso de Motion 5 tutorial en español - 🎬 * Capítulo 5 - Seguimiento de la animación o tracking.
**Fuente:** mundoaudiovisual | https://youtu.be/7GGC6sWYLsA

## Qué enseña
Uso del análisis de movimiento (tracking) en Motion 5 para que un objeto gráfico siga automáticamente la trayectoria de un elemento en un video, sin necesidad de animar keyframes manualmente. Explica cómo crear un letrero que persigue a un vehículo en movimiento.

## Lecciones accionables
- Crear un proyecto nuevo: 1080p, 25 fps, duración 7 segundos (luego ajustar a 5 o 6 segundos en Inspector > Propiedades del proyecto).
- Importar el clip de video y silenciar audio: botón mute en el clip o en pista de audio desactivar.
- Crear los objetos gráficos: línea (Shape > Línea, ancho 10 px) y rectángulo (Shape > Rectángulo, contorno rojo, ancho 5 px, relleno con opacidad reducida).
- Agrupar objetos: crear grupo "Objects", arrastrar línea y rectángulo dentro.
- Añadir texto: "Suspicious Vehicle", fuente elegida, centrado, color negro, tamaño ajustado al rectángulo.
- Aplicar entrada/salida: seleccionar grupo "Objects", presionar Y para añadir comportamiento Fade In/Fade Out.
- Analizar movimiento del vehículo: Biblioteca > Comportamientos > Animación y seguimiento > Analizar animación. Aplicar al clip de video.
- En Inspector del comportamiento: hacer clic en "Añadir tracker" para crear puntos de seguimiento. Colocar cada punto en una zona de alto contraste (ej. borde blanco/negro del vehículo). Ajustar posición en el inspector o con zoom.
- Parámetros del tracker: "Rango automático", "Buscar entre fotogramas" activado. Se pueden añadir múltiples puntos (ej. 2).
- Hacer clic en "Analizar" para que Motion calcule la trayectoria automáticamente.
- Aplicar seguimiento al grupo: Biblioteca > Comportamientos > Animación y seguimiento > Seguir movimiento. Arrastrar al grupo "Objects".
- En Inspector de "Seguir movimiento": en "Origen" seleccionar el análisis de animación creado.
- Ajustar posición inicial del grupo "Objects" sobre el vehículo antes de reproducir.

## Reglas para agentes
- Usa "Analizar animación" solo sobre clips de video, no sobre grupos de objetos.
- Coloca los puntos de tracker en zonas de alto contraste (bordes entre colores opuestos) para mejor precisión.
- Siempre selecciona el análisis de animación como "Origen" en el comportamiento "Seguir movimiento".
- Aplica "Seguir movimiento" al grupo que contiene los objetos a trackear, no al video.
- Nunca uses keyframes manuales para trayectorias complejas cuando puedas usar tracking automático.

## Errores comunes que evita o menciona
- No elegir un punto de tracking bien definido (bajo contraste) produce análisis impreciso.
- Olvidar seleccionar el análisis correcto en "Origen" del comportamiento "Seguir movimiento" hace que el objeto no se mueva.
- No agrupar los objetos antes de aplicar "Seguir movimiento" puede desincronizar elementos individuales.
- No ajustar la duración del proyecto al clip (cortar o alargar) causa que el tracking no cubra todo el movimiento.