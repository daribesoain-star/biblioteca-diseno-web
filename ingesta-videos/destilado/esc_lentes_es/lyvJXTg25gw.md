# ¿Cómo usar la distancia focal para contar historias más impactantes?
**Fuente:** esc_lentes_es | https://youtu.be/lyvJXTg25gw

## Que ensena (2-3 lineas)
La elección de la distancia focal (wide-angle, normal, telephoto) impacta directamente en la composición, iluminación y movimiento de cámara, y por tanto en la emoción que transmite un plano. Explica cómo cada focal modifica la percepción del espacio entre personajes, la jerarquía visual y la intimidad con el espectador, usando ejemplos de cine clásico y moderno.

## Lecciones accionables

- **Focal length (distancia focal):** Se mide en milímetros. A menor mm, mayor field of view (campo de visión); a mayor mm, menor field of view. En prompts de IA, especifica `focal length: 24mm`, `focal length: 50mm`, `focal length: 135mm`.
- **Wide-angle lens (gran angular):** Crea sensación de espacio entre personajes, los desconecta visualmente. Permite acercar la cámara al sujeto para generar intimidad. Usar en prompts: `wide-angle lens`, `24mm`, `distorted perspective`, `exaggerated depth`.
- **Telephoto lens (teleobjetivo):** Comprime el fondo y el sujeto, acerca visualmente elementos distantes. Crea sensación de amenaza o acercamiento. Usar en prompts: `telephoto lens`, `135mm`, `compressed background`, `shallow depth of field`.
- **Normal/standard lens (50mm):** Reproduce la perspectiva natural del ojo humano. Transmite igualdad entre personajes (mismo tamaño de cabeza en el encuadre). Usar en prompts: `50mm`, `natural perspective`, `neutral focal length`.
- **Vertigo effect / dolly zoom:** Cambiar la focal mientras la cámara se mueve física o digitalmente hacia atrás o adelante. En prompts: `dolly zoom`, `vertigo effect`, `focal length pull`, `simultaneous zoom and track`.
- **Depth of field (profundidad de campo):** Las focales largas (telephoto) producen shallow depth of field, separando foreground, midground y background. En prompts: `shallow depth of field`, `bokeh background`, `subject isolation`.
- **Camera-to-subject distance:** Con wide-angle, la cámara debe estar más cerca del sujeto para llenar el encuadre; con telephoto, más lejos. Especificar en prompts: `camera close to subject`, `camera far from subject`.

## Reglas para el director de fotografia IA

- **Usa wide-angle (24mm o menos) cuando:** quieras mostrar desconexión emocional entre personajes, crear sensación de espacio vacío, o generar intimidad acercando la cámara al rostro.
- **Usa telephoto (85mm o más) cuando:** necesites comprimir el fondo contra el sujeto, crear tensión o amenaza (como en *Inglourious Basterds*), o aislar al personaje con shallow depth of field.
- **Usa 50mm (normal lens) cuando:** la escena requiera neutralidad emocional, igualdad entre personajes, o una sensación natural y no intrusiva (como en *Bohemian Rhapsody*).
- **Para no alucinar en video IA:** especifica siempre la focal en milímetros y la distancia cámara-sujeto. Si usas dolly zoom, indica `camera movement: track backward` + `focal length: increasing` para evitar parpadeos o deformaciones no deseadas.
- **Para shallow depth of field en IA:** combina `focal length: 135mm` con `aperture: f/2.8` o `f/1.4` y `subject distance: far`. No confíes solo en el prompt "bokeh", especifica la focal larga.
- **Para wide-angle sin distorsión excesiva:** usa `focal length: 24mm` en lugar de `16mm` o `14mm`, a menos que busques un efecto expresionista.

## Errores comunes que evita o menciona

- **No confundir "normal lens" con "default"**: La focal normal (50mm en full frame) es una elección narrativa, no un valor por defecto. Usarla sin intención puede aplanar la emoción de la escena.
- **No usar wide-angle para todo**: Aunque permite ver más fondo, también exagera las distancias y puede hacer que los personajes se vean desconectados o solos, incluso si están cerca.
- **No abusar del shallow depth of field**: Si bien separa planos, elimina información del fondo que puede ser narrativamente relevante. Úsalo solo cuando quieras aislar al sujeto.
- **No olvidar la distancia cámara-sujeto**: Un telephoto no "acerca" mágicamente; requiere que la cámara esté lejos. En prompts, si pones `telephoto lens` pero `camera close to subject`, el resultado será incoherente.
- **El vertigo effect necesita precisión**: En video IA, un dolly zoom mal prompteado puede generar artefactos de morphing. Especifica `focal length: 24mm to 135mm` y `camera movement: track backward` de forma explícita.