# DJI Mini 5 Pro - Los perfiles de color - NO SON LO QUE ERAN
**Fuente:** mundoaudiovisual | https://youtu.be/97g9RGSEToA

## Qué enseña (2-3 líneas)
Compara los perfiles de color Normal, D-Log M y HLG del DJI Mini 5 Pro mediante tomas idénticas con waypoints, demostrando que el perfil Normal ofrece mayor detalle en sombras y luces gracias al doble ISO nativo del sensor de 1 pulgada. Revela que el perfil Normal puede superar al D-Log M en retención de detalles finos, cambiando la recomendación tradicional de usar siempre perfil logarítmico.

## Lecciones accionables
- **Para comparar perfiles de color**: crea waypoints idénticos en la app DJI Fly (menú Waypoints) y graba la misma ruta cambiando solo el perfil de color entre tomas, manteniendo el balance de blancos fijo en 5500K para todas las tomas.
- **Ajuste de perfil en DJI Mini 5 Pro**: en modo Pro, ve al menú de perfiles de color (icono inferior) y selecciona entre Normal, D-Log M o HLG.
- **Corrección de color en D-Log M**: en DaVinci Resolve, aplica el LUT "J3 Pro ROM" (o equivalente para DJI) para recuperar contraste y saturación. Verifica en waveform que la información no esté comprimida en el centro.
- **Evaluación de detalle**: amplía al 200% en el editor para comparar texturas finas (ej. arbustos, puentes) entre perfiles; el perfil Normal muestra más detalle en zonas de sombra y contraluz.
- **Doble ISO nativo**: el perfil Normal activa un ISO para sombras y otro para luces, lo que maximiza el rango dinámico del sensor de 1 pulgada; esto no ocurre en D-Log M ni HLG.
- **HLG**: útil para HDR pero tiende a sobresaturar y perder detalle en sombras; no funciona bien en todas las condiciones de luz.
- **Formato de grabación recomendado**: usa modo Pro con balance de blancos fijo (5500K) para pruebas comparativas válidas.

## Reglas para agentes
- Usa el perfil Normal del DJI Mini 5 Pro cuando necesites máximo detalle en sombras y luces en una sola toma, especialmente en condiciones de contraluz o escenas con alto contraste.
- Nunca asumas que D-Log M siempre da mejor calidad que Normal en el DJI Mini 5 Pro; verifica con pruebas de campo usando waypoints idénticos.
- Cuando corrijas D-Log M, aplica siempre un LUT específico para DJI (ej. J3 Pro ROM) y verifica en waveform que el rango dinámico se expanda correctamente.
- Para comparaciones válidas, mantén el balance de blancos fijo (5500K) y la misma exposición en todas las tomas de prueba.
- Graba las pruebas con waypoints para garantizar que la luz y la composición sean idénticas entre perfiles.

## Errores comunes que evita o menciona
- **Asumir que D-Log M siempre es superior**: el creador muestra que el perfil Normal puede tener más detalle real gracias al doble ISO nativo, contradiciendo la creencia popular.
- **Usar HLG en todas las condiciones**: HLG sobresatura y pierde detalle en sombras; no es universalmente mejor.
- **Confundir nitidez digital con detalle real**: el mayor detalle en Normal no se debe a sharpening digital sino a la captura del sensor con doble ISO.
- **No fijar el balance de blancos**: cambiar el balance de blancos entre tomas invalida la comparación directa de perfiles.
- **Ignorar el doble ISO nativo**: el perfil Normal activa esta función; D-Log M y HLG no la aprovechan, lo que limita su rango dinámico efectivo en el DJI Mini 5 Pro.