# DJI AIR UNIT O3
**Fuente:** mundoaudiovisual | https://youtu.be/TZJYx14JRQc

## Qué enseña (2-3 líneas)
Explica la configuración manual óptima para la cámara DJI O3 Air Unit en FPV, centrada en la regla de 180° para lograr motion blur realista. Cubre el uso de filtros ND, ajustes en gafas (shutter, ISO, balance de blancos, perfil de color) y la corrección cromática básica en DaVinci Resolve (versión gratuita).

## Lecciones accionables
- **Regla de 180°:** Configurar la velocidad de obturación (shutter) al doble de los fps de grabación. Ejemplo: si grabas a 60 fps, fija shutter en 1/120. Si grabas a 100 fps, fija shutter en 1/200.
- **ISO en automático:** Dejar ISO en automático para compensar cambios de luz al volar entre sombra y sol directo.
- **Balance de blancos:** Fijar en 5.700 Kelvin para días soleados. No usar automático para evitar cambios de color en edición.
- **Perfil de color:** Usar "Cinematic" (logarítmico) si vas a editar color en postproducción; usar "Normal" si no harás corrección.
- **Filtros ND:** Usar filtros ND (Freewell recomendados) para reducir luz y cumplir la regla de 180°. Seleccionar densidad según condiciones: ND16 para día soleado a 1/120 shutter.
- **Filtro UV:** Colocar filtro UV (V-filter) para proteger la lente de arañazos al volar cerca de ramas.
- **Colocación del filtro:** Presionar con el dedo sobre la lente, luego limpiar huellas con paño suave.
- **Grabación:** 4K a 60 fps para uso general; 100-120 fps para cámara lenta en ocasiones especiales.
- **Estabilización:** Dejar la configuración por defecto.
- **Lente:** Seleccionar "Ultra Wide Angle" en las gafas.
- **Edición en DaVinci Resolve (gratuito):**
  1. Importar metraje al módulo de color.
  2. Usar waveform para ver sombras (abajo) y altas luces (arriba).
  3. Ajustar curvas logarítmicas: bajar sombras, dejar altas luces.
  4. Aplicar contraste típico: bajar un punto en sombras, subir un punto en altas luces.
  5. Agregar saturación (ej. valor 8) y realce de color.
  6. Copiar nodo de color a otros clips para uniformidad.

## Reglas para agentes
- Usa la regla de 180° siempre que grabes video FPV: shutter = 2 × fps.
- Deja ISO en automático cuando vueles en condiciones de luz variable (sol/sombra).
- Fija balance de blancos en 5.700K para días soleados; nunca lo dejes en automático si editarás color.
- Usa perfil "Cinematic" solo si harás corrección de color en postproducción; si no, usa "Normal".
- Coloca un filtro ND (ND16, ND32, ND64 según luminosidad) para evitar sobreexposición al aplicar la regla de 180°.
- Usa siempre un filtro UV para proteger la lente de la cámara en vuelos cercanos a obstáculos.
- En DaVinci Resolve, ajusta primero curvas logarítmicas (bajar sombras) antes de aplicar contraste y saturación.
- Nunca copies ajustes de color sin verificar que el metraje tenga condiciones de luz similares.

## Errores comunes que evita o menciona
- **Sobreexposición por falta de filtro ND:** Sin filtro ND, aplicar la regla de 180° en día soleado produce imagen quemada (blanca, sobreexpuesta).
- **Congelamiento de imagen (sin motion blur):** No usar la regla de 180° da como resultado fotogramas estáticos que no transmiten sensación de movimiento; el video se ve "no orgánico".
- **Balance de blancos automático:** Causa cambios de color inconsistentes entre clips durante la edición.
- **Perfil logarítmico sin edición:** Usar perfil "Cinematic" sin procesar el color da una imagen plana, sin saturación ni contraste.
- **No proteger la lente:** Volar sin filtro UV expone la cámara a arañazos por roces con ramas u objetos.
- **Ajuste de color sin referencia:** No usar waveform en DaVinci Resolve puede llevar a recortar sombras o altas luces incorrectamente.