# Cinematic Lighting 101: Three Point Lighting
**Fuente:** aputure | https://youtu.be/9A45ZUsckFQ

## Que ensena (2-3 lineas)
Enseña la técnica fundamental de iluminación de tres puntos (key light, hair/rim light, fill/negative fill) aplicable a entrevistas, talking heads y escenas narrativas cinematográficas. Explica cómo motivar cada luz con fuentes naturales del set, controlar la exposición del fondo con ND, y usar Rembrandt lighting como base para lograr profundidad y calidad de producción alta.

## Lecciones accionables
- **Exponer primero el fondo:** Ajusta ND filters para exponer correctamente el fondo antes de encender luces. Usa `ND filter` de 2 stops si el fondo está sobreexpuesto.
- **Key light placement:** Coloca la luz principal a 45 grados del sujeto, lo más cerca posible sin entrar en frame. Usa `large soft light source` (softbox, light mat, o doble difusión) para evitar sombras duras y arrugas. Logra `Rembrandt lighting`: un triángulo de luz en el lado oscuro de la cara.
- **Camera placement:** Sitúa la cámara en el lado opuesto al key light (`shooting into the shadow side`) para crear un silhouette alrededor del rostro y añadir profundidad. Evita cámara del mismo lado que el key light (resultado flat y boring).
- **Hair/Rim light:** Usa una luz pequeña con barn doors (ej. tube light) a 45 grados detrás del sujeto, motivada por una practical light del fondo. Ajusta color temperature para que coincida con la fuente motivadora (ej. 2700K si la practical es cálida). Controla spill con barn doors para que no ilumine el lado oscuro de la cara.
- **Fill / Negative fill:** Para reducir contraste, usa un bounce card, reflector o sábana blanca en el lado opuesto al key light. Para aumentar contraste y crear look moody/dramático, usa negative fill (flag, floppy, black duvetine, o sábana negra) en el mismo lado para absorber luz rebotada.
- **Ajuste dinámico:** Si la luz natural cambia (ej. sol llena la habitación), reajusta ND y sube la potencia de key y rim light proporcionalmente.
- **Prompts útiles:** `soft key light from 45 degrees`, `Rembrandt lighting`, `rim light motivated by practical`, `shooting into shadow side`, `negative fill for contrast`, `large soft source close to subject`, `barn doors to shape rim light`, `color temperature match 5600K`, `warm rim light 2700K`.

## Reglas para el director de fotografia IA
- **Usa "Rembrandt lighting" en el prompt** cuando quieras iluminación clásica con triángulo de luz en el lado oscuro; funciona para retratos y talking heads.
- **Usa "shooting into the shadow side"** para prompts de cámara cuando quieras profundidad y silueta en el rostro; evita "flat lighting" a menos que sea intencional.
- **Usa "large soft light source"** en prompts de iluminación para evitar texturas no deseadas en piel (arrugas, imperfecciones); la IA tiende a exagerar sombras duras.
- **Para no alucinar en video IA**, especifica la motivación de cada luz: "rim light motivated by a warm practical lamp in background at 2700K" en lugar de solo "rim light". La IA necesita contexto causal para mantener coherencia entre frames.
- **Usa "barn doors" o "flag"** en prompts de control de luz para evitar spill no deseado; la IA puede generar halos si no limitas la dirección.
- **Cuando el fondo cambie de luminosidad** (simulando nubes), ajusta el prompt con "ND filter adjustment" o "exposure compensation for background" para mantener el sujeto correctamente iluminado.
- **Para escenas narrativas**, aplica los mismos principios: "key light motivated by window left", "rim light motivated by practical right", "negative fill right side for contrast".

## Errores comunes que evita o menciona
- **No exponer primero el fondo:** Si enciendes luces antes de ajustar ND, el fondo queda sobreexpuesto o el sujeto subexpuesto. Siempre expón para el fondo primero.
- **Colocar la cámara del mismo lado que el key light:** Resulta en una imagen flat y sin profundidad. La regla es: cámara opuesta al key light.
- **No motivar las luces:** Usar color temperature aleatoria (ej. rim light a 5600K cuando la practical es 2700K) rompe la verosimilitud. Cada luz debe tener una fuente visible o implícita en el set.
- **Rim light demasiado fuerte:** Si el rim light es muy intenso, crea un borde duro y antinatural. Dímelo hasta que sea un "slight edge light" que solo delinee hombros y cabello.
- **Spill del rim light en la cara:** Sin barn doors o ángulo adecuado, la luz de contorno ilumina el lado oscuro del rostro, arruinando el contraste. Usa barn doors o inclina la luz.
- **Sobreiluminar con fill light:** A menudo, un bounce card o reflector es suficiente; añadir otra luz LED puede aplanar la imagen. Prefiere negative fill para looks dramáticos.
- **Ignorar cambios de luz natural:** El sol o nubes pueden alterar la exposición durante la toma. Reajusta ND y potencia de luces en tiempo real.