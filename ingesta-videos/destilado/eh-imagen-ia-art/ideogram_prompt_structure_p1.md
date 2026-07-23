# ideogram_prompt_structure
**Fuente:** imagen-ia | https://docs.ideogram.ai/using-ideogram/getting-started/prompting-guide/3-prompt-structure

## Qué enseña
Enseña a estructurar prompts para generación de imágenes en Ideogram dividiendo la descripción en 8 partes clave (resumen de imagen, detalles del sujeto, pose/acción, elementos secundarios, escenario/fondo, iluminación/atmósfera, encuadre/composición y potenciadores técnicos). Proporciona una plantilla para ensamblar estas partes y explica que los prompts tienen un límite de 150-160 palabras (~200 tokens), donde los elementos más importantes deben ir al inicio.

## Lecciones accionables
- **Plantilla de prompt completa:** `[Image summary]. [Main subject details], [Pose or action], [Secondary elements], [Setting & Background], [Lighting & Atmosphere], [Framing & Composition], [Technical enhancers]`
- **Límite de prompt:** Máximo 150-160 palabras o ~200 tokens. Lo que exceda este límite puede ser ignorado por la IA.
- **Regla de prioridad:** Colocar los elementos más importantes al principio del prompt para evitar que sean ignorados.
- **Texto en imágenes:** Encerrar el texto exacto que se desea renderizar entre comillas `" "` y colocarlo al inicio del prompt (en la sección de detalles del sujeto principal).
- **Uso de Magic Prompt:** El "Image summary" funciona bien con Magic Prompt para expandirlo automáticamente.
- **Ejemplo de prompt con texto:** `A product photo of a men’s perfume bottle named “Nightlife for men” in a sleek studio setup. The bottle is tall and rectangular with dark glass, a matte black cap, and silver lettering. The text “Nightlife for men” appears on the label in bold, modern font.`
- **Ejemplo de prompt para logo:** `A logo design for a local football team called “Rhinos” in green, blue, and white. The main graphic shows a strong, stylized rhino head viewed from a three-quarter angle, with sharp lines and a bold expression. The word “Rhinos” appears in large, blocky letters beneath the icon.`
- **Ejemplo de prompt artístico:** `A whimsical watercolor painting of a little girl playing with her bunny in a flower-filled field. The girl has short brown hair, a yellow dress, and rosy cheeks. She holds a fluffy white bunny in her arms, and both are smiling. The bunny is leaning into her, with its ears flopping gently.`
- **Secciones opcionales:** No es necesario usar todas las 8 partes. Para logos, por ejemplo, pueden omitirse elementos secundarios o escenario.

## Reglas para agentes
- Usa la plantilla `[Image summary]. [Main subject details], [Pose or action], [Secondary elements], [Setting & Background], [Lighting & Atmosphere], [Framing & Composition], [Technical enhancers]` cuando necesites un prompt detallado y estructurado.
- Limita los prompts a 150-160 palabras o ~200 tokens; nunca excedas este límite.
- Coloca siempre los elementos más importantes del prompt al principio.
- Encierra entre comillas dobles `" "` cualquier texto que deba aparecer renderizado en la imagen y colócalo en la sección de detalles del sujeto principal.
- Usa solo "Image summary" cuando quieras que Magic Prompt expanda automáticamente la descripción.
- Omite secciones innecesarias según el tipo de imagen (ej. para logos omite "Secondary elements" y "Setting & Background" si no aplican).

## Errores comunes que evita o menciona
- **Exceder el límite de palabras:** Prompts de más de 150-160 palabras o ~200 tokens harán que la IA ignore partes del prompt. Para evitarlo, prioriza la información clave al inicio.
- **Colocar texto importante al final:** Si los detalles críticos están al final del prompt, pueden ser ignorados por el límite de tokens. Siempre poner lo esencial primero.
- **Usar todas las secciones innecesariamente:** No es obligatorio usar las 8 partes; prompts cortos o abstractos pueden ser mejores para exploración creativa.