# iZotope Learn: Qué es el audio ducking y cómo configurarlo
**Materia:** tecnicas-de-mezcla-eq-dinamica-balance | **Fuente:** https://www.izotope.com/en/learn/what-is-audio-ducking.html (consultada 2026-07-07)

## Qué aporta
Explica el concepto de audio ducking (sidechain compression) como técnica para reducir el volumen de una señal cuando otra supera un umbral, mejorando la claridad entre elementos que compiten en una mezcla. Describe aplicaciones concretas en música (bombo/bajo, reverberación vocal) y postproducción (diálogos con música de fondo), e incluye un tutorial paso a paso usando Neutron Pro.

## Reglas candidatas para agentes
- Configurar el sidechain input del compresor en la pista de destino (ej. bajo) para recibir señal de la pista fuente (ej. bombo).
- Activar "Sidechain to Ext Full" en el módulo Compressor de Neutron Pro.
- Ajustar el slider de Threshold hacia abajo hasta que comprima la señal de destino al nivel deseado.
- Modificar los controles de Attack, Release y Ratio para afinar la cantidad y carácter del "pump".
- Activar la vista Oscilloscope (clic en icono de onda sinusoidal en la esquina superior izquierda del módulo Compressor) para visualizar la señal procesada (audio blanco = señal de destino; púrpura = señal sidechain).

## Errores comunes que documenta
- Aplicar audio ducking de forma que la reverberación vocal ahogue la frase y enturbie la mezcla (ejemplo "Before" en voces con reverb de cola larga).
- No usar ducking en reverberaciones de baladas con colas largas, perdiendo claridad vocal.
- No emplear ducking en la relación bombo/bajo, permitiendo que compitan por atención en la mezcla.

## Datos/citas clave textuales
- "Audio ducking is simply the process of compressing (or 'ducking down') the volume of an audio signal whenever another audio signal goes above a certain threshold."
- "When used gently, this technique allows you to get more clarity from both audio signals."
- "A popular method of audio ducking is sidechain compression."
- "You can even hear this technique being used on the cymbals in The Beatles’ classic track, 'Tomorrow Never Knows.' Whenever the kick drum hits, the cymbals duck down in volume."
- "One of my personal favorite ways to use audio ducking is on a vocal’s reverb."
- "iZotope’s Exponential Audio reverbs include this reverb ducking with 'tail suppression' and 'tail recovery' features."
- "Any time the dry vocal is present, it will cause the reverb to duck down in volume. But, between words and phrases—when the vocal isn’t triggering the audio ducking—that reverb is able to swell up in volume."
- "In the screenshot above, my bass audio appears in white and the sidechain signal from my kick track shows up in purple."