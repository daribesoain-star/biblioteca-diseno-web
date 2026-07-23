# Render 2995x faster in Cycles // Blender Tutorial
**Fuente:** CGMatter | https://youtu.be/kYOsR9Kb8Ek

## Qué enseña
Optimización radical de tiempos de render en Cycles para animaciones, combinando cambios en hardware, configuración de samples, simplificación de geometría, reducción de resolución y post-procesado con interpolación de frames.

## Técnicas accionables
- **GPU y OptiX:** En Preferencias > Sistema > Ciclos de Render, activa "CUDA" (GPU antigua) o "OptiX" (RTX). Marca "Usar GPU" y "OptiX" si está disponible.
- **Samples:** En Propiedades de Render > Muestreo, reduce "Muestras de render" a 500 (desde 4096 por defecto). Activa "Denoising" pasivo (ya activo por defecto).
- **Persistent Data:** En Propiedades de Render > Rendimiento, activa "Datos persistentes". Renderiza un solo frame primero, luego el resto.
- **Simplify:** En Propiedades de Render > Simplificar, activa "Simplificar". Pon "Subdivisión máxima" en 1 (desde 6). Pon "Límite de texturas" en 2048x2048.
- **Culling:** En Propiedades de Render > Capas de vista > "Recortar", activa "Recorte de distancia" y "Recorte de cámara" para descartar geometría fuera del campo de visión.
- **Light Paths:** En Propiedades de Render > Trayectorias de luz, activa "Aproximación rápida de iluminación global". En Avanzado, activa "Temporizador" (cambia patrón de ruido por frame). Activa "Distancia de mezcla" si hay artefactos.
- **Max Bounces:** En Trayectorias de luz, reduce "Máx. rebotes" a 5 (desde 12). Ajusta "Transparente" a 4 o 5 para vidrio.
- **Formato de salida:** En Propiedades de Salida > Formato, elige "OpenEXR". Precisión: "Half". Compresión: "DWAA". Desmarca "Alpha" (canal alfa) si no se necesita.
- **Decimate modifier:** Selecciona un objeto con mucha geometría. Agrega modificador "Decimate" (Colapso). Ajusta "Relación" a 0.45 (45%). Con Shift+clic selecciona otros objetos, presiona Ctrl+L > "Vincular modificadores" para copiarlo. Luego aplica (Ctrl+A > "Aplicar modificador visual" o botón "Aplicar" en el modificador).
- **Hair particles:** En Propiedades de Partículas > Curvas, reduce "Subdivisiones de curva" a 2 o 3 (desde 5). En vista "Wireframe" (Z > Wireframe) para menor uso de memoria.
- **Clean up:** Archivo > Limpiar > "Datos no utilizados" y "Recursivo" para eliminar datos huérfanos.
- **Render resolution:** En Propiedades de Salida > Dimensiones, reduce "Porcentaje de resolución" a 50% (reduce área a 1/4).
- **Skip frames:** Renderiza desde línea de comandos: `blender "Untitled.blend" -a` (animación). En el editor de video (DaVinci Resolve), importa la secuencia como 1080p 24 FPS. En la línea de tiempo, haz clic derecho > "Cambiar velocidad de clip" > Velocidad: 50% (para duplicar duración). Activa "Flujo óptico" > "Velocidad" para interpolación y aumento de resolución 2x.

## Reglas para el erudito
- Usa GPU (CUDA/OptiX) cuando tengas una tarjeta compatible; el CPU es 10-20x más lento.
- Activa "Datos persistentes" solo después de renderizar un frame inicial para evitar recálculos.
- Reduce "Subdivisión máxima" a 1 en Simplify cuando no necesites detalles finos en render final.
- Usa OpenEXR con compresión DWAA y precisión Half para archivos sin pérdida y rápidos.
- Aplica Decimate con relación 0.45 cuando tengas mallas densas innecesarias; revisa artefactos visuales.
- Renderiza al 50% de resolución si planeas superescalar con flujo óptico en postproducción.
- Salta frames (step=2) y usa interpolación temporal en DaVinci Resolve para animaciones con cámara lenta.

## Errores comunes / gotchas
- Olvidar activar "Usar GPU" en Preferencias > Sistema; Cycles usa CPU por defecto.
- No renderizar un frame antes de activar "Datos persistentes"; causa errores de caché.
- Reducir "Máx. rebotes" a 0 hace que el vidrio se vea negro; mínimo 4-5 para transparencia.
- Usar PNG con compresión alta (15% o más) ralentiza la escritura; mejor OpenEXR sin compresión o DWAA.
- Aplicar Decimate a objetos con subdivisiones activas sin aplicar primero; causa geometría corrupta.
- No desmarcar "Alpha" en OpenEXR si no se necesita; añade datos innecesarios.
- Saltar frames sin ajustar velocidad en el editor de video; la animación se reproduce al doble de velocidad.