# iZotope Learn: Qué es el audio ducking y cómo configurarlo
**Materia:** diseno-sonoro-audio-para-video | **Fuente:** https://www.izotope.com/en/learn/what-is-audio-ducking.html (consultada 2026-07-07)

## Qué aporta (2-3 líneas)
Explica el concepto de audio ducking (sidechain compression) como técnica para reducir el volumen de una señal de audio cuando otra señal supera un umbral, mejorando la claridad entre elementos que compiten en una mezcla. Detalla aplicaciones en música (bombo/bajo, reverberación vocal) y postproducción (diálogos con música de fondo), e incluye pasos prácticos para configurarlo en Neutron Pro.

## Reglas candidatas para agentes
- Al configurar audio ducking en un compresor, activa el modo "Sidechain to Ext Full" para que el compresor reciba la señal externa como disparador.
- Ajusta el umbral (Threshold) del compresor arrastrando el control deslizante hacia abajo hasta que la compresión sobre la pista destino (ej. bajo) sea la deseada.
- Configura los controles de Ataque (Attack), Liberación (Release) y Ratio para afinar la cantidad y el carácter del "pump" (efecto de bombeo).
- Para ducking de reverberación vocal, enruta el bus de reverberación como destino y sidechainéalo a la señal vocal seca (dry vocal).
- En reverberaciones Exponential Audio, utiliza las funciones "tail suppression" y "tail recovery" para que la cola de la reverberación se reduzca mientras la voz seca está presente y se recupere entre frases.

## Errores comunes que documenta
- Aplicar ducking de forma excesiva o sin control de ataque/liberación, generando un efecto de bombeo no deseado o poco natural.
- No configurar correctamente el sidechain en el DAW, lo que impide que el compresor reciba la señal externa.
- Usar ducking en reverberación vocal sin ajustar los tiempos de cola, resultando en una voz ahogada o una reverberación que no se percibe entre frases.

## Datos/citas clave textuales
- "Audio ducking is simply the process of compressing (or 'ducking down') the volume of an audio signal whenever another audio signal goes above a certain threshold."
- "A popular method of audio ducking is sidechain compression."
- "You can hear this technique being used on the cymbals in The Beatles’ classic track, 'Tomorrow Never Knows.' Whenever the kick drum hits, the cymbals duck down in volume."
- "One of my personal favorite ways to use audio ducking is on a vocal’s reverb bus (sidechaining it to the dry vocal)."
- "iZotope’s Exponential Audio reverbs include this reverb ducking with 'tail suppression' and 'tail recovery' features."
- "In Neutron, there’s a handy, new Oscilloscope view that helps give you a good understanding of how your signal is being processed by the audio ducking."