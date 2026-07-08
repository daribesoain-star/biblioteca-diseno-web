# DJI MINI 3 PRO - Hyperlapse Nocturno - Tutorial Completo
**Fuente:** mundoaudiovisual | https://youtu.be/foY4sJ2yk-0

## Qué enseña (2-3 líneas)
Tutorial completo para grabar y editar hyperlapses nocturnos con el DJI Mini 3 Pro. Cubre la configuración de exposición en vuelo (velocidad de obturación, ISO, balance de blancos) y el flujo de edición completo en Adobe Lightroom Classic + Adobe Premiere Pro, incluyendo estabilización y corrección de color.

## Lecciones accionables
- **Configuración de cámara para hyperlapse nocturno (modo fijo y órbita):**
  - Duración: 12-14 segundos → 300-350 fotos.
  - Intervalo mínimo: 3 segundos (no permite 2 segundos con velocidades lentas por limitación del procesador).
  - Velocidad de obturación: siempre al mínimo posible (1/2 o 1/4 segundo) para que las luces se vean "hermosas".
  - ISO: 100%.
  - Balance de blancos: 5300K.
  - Exposición objetivo: -2.3 (sobrexpuesto a propósito para capturar información en postproducción).
  - Para órbita: misma duración (14s, 350 fotos), velocidad al mínimo (1/2s).
- **Bloqueo de dirección:** usar el candado (padlock) para fijar la trayectoria del drone antes de iniciar la grabación.
- **Edición en Adobe Lightroom Classic:**
  - Importar fotos RAW al catálogo.
  - Ir al módulo Develop.
  - Seleccionar una foto central como referencia.
  - Ajustes clave:
    - Bajar temperatura para dar tono nocturno.
    - Subir sombras (shadows) y negros (blacks) al máximo para recuperar información de zonas oscuras.
    - Añadir saturación e intensidad (vibrance).
    - Curvas: levantar ligeramente la curva.
    - HSL/Color: convertir amarillos → verdes, naranjas → rojos, azules → más oscuros, añadir aquamarine en cielo.
    - Saturación: azules y púrpuras muy saturados.
    - Luminancia: ajustar según preferencia.
  - Reducción de ruido: luminance noise reduction al 60% (sin exceder para no perder el grano natural del Mini 3 Pro).
  - Copiar ajustes: Ctrl+C → seleccionar todas las fotos → clic derecho → Develop Settings → Paste Settings.
  - Exportar: File → Export → elegir carpeta → nombrar con secuencia numérica (ej. "Night Hyper Lapse" → se numera automáticamente) → JPG calidad máxima → Export.
- **Edición en Adobe Premiere Pro:**
  - Crear proyecto nuevo (ej. "Night Hyperlapse").
  - Importar: clic derecho → Import → seleccionar primera foto → marcar "Image Sequence" → Open.
  - Crear secuencia: 1920x1080 a 25 fps.
  - Arrastrar clip al timeline → "Keep existing settings".
  - Ajustar a frame size: clic derecho → Scale to Frame Size.
  - Estabilización: Effects → buscar "Warp Stabilizer" → aplicar al clip.
    - En Effect Controls: Advanced → Detailed Analysis activado → desmarcar "Fast" → seleccionar "Enhanced Reduction".
    - Esperar a que analice los 250+ frames.
  - Recorte: escalar y reposicionar para eliminar bordes negros de la estabilización.
  - Corrección de color adicional en Premiere: añadir intensidad (vibrance), saturación, curvas (tonos verdes), ajustar tonos específicos.

## Reglas para agentes
- Usa velocidad de obturación al mínimo (1/2 o 1/4 s) cuando grabes hyperlapses nocturnos con Mini 3 Pro.
- Fija el intervalo en 3 segundos mínimo cuando uses velocidades lentas; nunca intentes 2 segundos.
- Bloquea la dirección del drone con el candado antes de iniciar la grabación para mantener trayectoria constante.
- Nombra los archivos exportados con una secuencia numérica (ej. "Nocturno_001") para que Premiere los reconozca como image sequence.
- En Warp Stabilizer, usa siempre "Detailed Analysis" + "Enhanced Reduction"; nunca uses "Fast" ni "Reduction" básico.
- Aplica reducción de ruido luminance al 60% máximo para conservar el grano natural del sensor.
- Selecciona una foto central del hyperlapse como referencia de edición en Lightroom, no la primera ni la última.

## Errores comunes que evita o menciona
- **Intervalo forzado a 2 segundos:** no es posible con velocidades de obturación lentas porque el procesador no da abasto; usar siempre 3 segundos.
- **Subexponer la escena nocturna:** el creador sobrexpone deliberadamente (-2.3) para capturar más información en RAW; la edición posterior recupera los detalles.
- **No usar secuencia numérica al exportar:** si no se nombran los archivos con números, Premiere no los reconocerá como image sequence.
- **Aplicar reducción de ruido excesiva:** eliminar todo el grano arruina la estética nocturna; el grano del Mini 3 Pro se considera atractivo.
- **No estabilizar el hyperlapse:** el movimiento del drone requiere Warp Stabilizer con análisis detallado para un resultado fluido.
- **Ignorar los bordes negros post-estabilización:** hay que escalar y reposicionar el clip para eliminar los bordes generados por la corrección de movimiento.