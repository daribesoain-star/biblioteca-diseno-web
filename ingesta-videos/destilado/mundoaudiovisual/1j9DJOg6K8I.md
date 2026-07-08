# DAVINCI RESOLVE: ¿GRATIS O DE PAGO (Studio)?
**Fuente:** mundoaudiovisual | https://youtu.be/1j9DJOg6K8I

## Qué enseña (2-3 líneas)
Compara las versiones gratuita y de pago (Studio) de DaVinci Resolve, detallando las limitaciones técnicas de la versión gratuita y las ventajas exclusivas de Studio, como el motor neuronal, la reducción de ruido, la corrección de lentes, el retoque facial, el escalado Super Scale y la aceleración por GPU. Ayuda al espectador a decidir qué versión necesita según su uso (aficionado vs. profesional).

## Lecciones accionables
- **Exportación máxima en versión gratuita:** solo hasta 3840 x 2160 (4K) y 30 fps en códecs H.264 y H.265. Para exportar a 8K o 120 fps, usar DaVinci Resolve Studio.
- **Profundidad de color:** la versión gratuita no captura la profundidad de color completa en archivos de 10 bits (ej. drones DJI en perfil logarítmico). Para corrección de color sin artefactos, usar Studio.
- **Aceleración por GPU:** en Windows con Nvidia GeForce, activar en Preferencias > Memoria y GPU los módulos CUDA y la optimización del motor neuronal (solo Studio). En Mac con chips M1/M2, usar Metal (acelerado solo en Studio).
- **Reducción de ruido:** en OpenFX > Ruido, aplicar "Reducción de ruido" (solo Studio). Usar reducción de luminancia temporal y espacial para eliminar granulado.
- **Corrección de lentes:** para corregir efecto barril en cámaras de acción (ej. Osmo Action 4), ir a OpenFX > Corrección de lentes, analizar y ajustar hasta enderezar columnas (solo Studio).
- **Efectos OpenFX exclusivos de Studio:** usar "Lens Flare" (destello), "Reflections" (reflejos), "Dirt Removal" (eliminación de suciedad), "Chromatic Aberration Removal" (eliminación de aberración cromática), "Dust Removal" (eliminación de polvo).
- **Retoque facial:** añadir nodo en Color, aplicar "Face Refinement" (retoque facial), analizar el rostro, luego ajustar: intensidad del efecto belleza (elimina imperfecciones), contraste facial, saturación de labios, rubor, corrección de ojeras y realce de ojos.
- **Máscaras mágicas (Magic Mask):** en Color, seleccionar clip, duplicar pista, pintar sobre el sujeto (ej. "Carlos"), hacer seguimiento (track), añadir salida alfa, colocar texto detrás del sujeto con sombra negra y animar.
- **Aislamiento de voz por IA:** en Audio, usar "Voice Isolation" (aislamiento de voz) del motor neuronal (solo Studio) para limpiar audio de cámara sin corrección adicional.
- **Super Scale:** para escalar grabaciones de pantalla (ej. 2540 x 1440) a 4K sin pérdida de nitidez, ir a Ajuste de tiempo y redimensionar > Super Scale (solo Studio). También usar para cámara lenta en 1080p exportada a 4K.
- **Flujo óptico (Optical Flow):** para cámara lenta suave, cambiar velocidad del clip (ej. 50% o 25%), en "Procesamiento de flujo óptico" seleccionar "Enhanced Better" (calidad mejorada) y renderizar en caché (solo Studio).
- **Eliminación de objetos:** en Color, añadir nodo, enmascarar objeto no deseado (ej. elemento negro), usar eliminación de objetos (solo Studio).
- **Seguimiento de cámara en Fusion:** usar "Camera Tracking" (solo Studio) para integrar gráficos 3D o texto.

## Reglas para agentes
- Usa la versión gratuita de DaVinci Resolve solo cuando los proyectos sean para redes sociales, sin necesidad de exportar a más de 4K/30fps ni trabajar con archivos de 10 bits.
- Usa DaVinci Resolve Studio cuando necesites exportar a 8K, 120 fps, o trabajar con corrección de color en profundidad de 10 bits sin artefactos.
- Activa siempre la aceleración por GPU en Preferencias > Memoria y GPU: CUDA para Nvidia, Metal para Apple Silicon (solo Studio).
- Aplica reducción de ruido con OpenFX "Reducción de ruido" solo en Studio; en gratuita, evita archivos con granulado excesivo.
- Usa corrección de lentes en OpenFX para enderezar efecto barril en cámaras de acción (solo Studio).
- Para retoque facial, añade nodo en Color, aplica "Face Refinement", analiza el rostro y ajusta parámetros de belleza, labios, ojos y rubor (solo Studio).
- Usa Magic Mask en Color para aislar sujetos y colocar texto detrás de ellos; añade salida alfa y sombra negra para claridad (solo Studio).
- Activa "Voice Isolation" en Audio para limpiar audio de cámara sin ecualización previa (solo Studio).
- Escala grabaciones de pantalla a 4K con Super Scale en Ajuste de tiempo y redimensionar (solo Studio).
- Para cámara lenta, cambia velocidad del clip, selecciona "Enhanced Better" en flujo óptico y renderiza en caché (solo Studio).
- Elimina objetos no deseados en Color enmascarándolos y usando eliminación de objetos (solo Studio).
- Nunca uses la versión gratuita para proyectos profesionales que requieran exportación a 8K, 120 fps, o corrección de color en 10 bits.
- Nunca intentes usar efectos OpenFX como Lens Flare, reducción de ruido o retoque facial en la versión gratuita; no están disponibles.
- Nunca asumas que la versión gratuita acelera GPU en Apple Silicon o Nvidia; solo Studio tiene soporte completo.

## Errores comunes que evita o menciona
- **Error:** pensar que la versión gratuita es inútil o poco profesional. **Corrección:** es ideal para principiantes y proyectos para redes sociales; funciona perfectamente para edición básica.
- **Error:** intentar exportar a más de 4K o 30 fps en la versión gratuita. **Corrección:** la gratuita limita la exportación a 3840x2160 y 30 fps; para 8K o 120 fps se necesita Studio.
- **Error:** trabajar con archivos de 10 bits en la gratuita esperando corrección de color completa. **Corrección:** la gratuita permite editar y ver, pero no captura toda la profundidad de color, generando artefactos; Studio sí lo hace.
- **Error:** asumir que la aceleración por GPU funciona igual en ambas versiones. **Corrección:** Studio acelera CUDA (Nvidia) y Metal (Apple Silicon); la gratuita no tiene esta optimización, causando tirones en archivos grandes.
- **Error:** usar reducción de ruido o corrección de lentes en la gratuita. **Corrección:** estos efectos OpenFX son exclusivos de Studio; en gratuita no aparecen o están bloqueados.
- **Error:** ignorar el motor neuronal de IA en Studio. **Corrección:** funciones como Magic Mask, Voice Isolation, Super Scale, retoque facial y flujo óptico mejorado solo están en Studio.
- **Error:** no usar Super Scale para escalar grabaciones de pantalla o cámara lenta. **Corrección:** Super Scale en Studio permite escalar de 1080p a 4K sin pérdida de nitidez, ideal para tutoriales y slo-mo.