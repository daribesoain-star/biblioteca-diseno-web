# The Most Cinematic Color Grading Trick that No One Knows!
**Fuente:** esc_color | https://youtu.be/f6xCTAk8Lww

## Que ensena (2-3 lineas)
El secreto del color grading cinematográfico no está en un plugin mágico, sino en la planificación *antes* de grabar: diseño de producción (set design, wardrobe) e iluminación con temperaturas de color contrastantes (warm/cool). La gradación final solo potencia lo que ya está en el frame; no puede salvar una imagen que carece de contraste cromático desde origen.

## Lecciones accionables

- **Set Design & Wardrobe como base del color:** Para lograr un look "orange & teal" orgánico, coloca físicamente elementos azules (props, vestuario) en un set predominantemente cálido. Ejemplo: *Black Phone* usa azul en cada escena cálida retro para crear contraste sin forzarlo en la grade.
- **Temperatura de color en iluminación:** Mezcla dos fuentes de luz con una diferencia de **2,000 a 3,000 Kelvin** (ej: 2900K + 6500K). Esto crea contraste cromático natural que la gradación refuerza. La luz debe estar motivada por la escena (ventana, lámpara).
- **Flujo de trabajo de gradación (DaVinci Resolve):**
    1.  **Node 1 (base):** Convertir S-Log3 (o cualquier Log) a DaVinci Wide Gamut → REC709. Primer y último nodo.
    2.  **Node 2 (Contraste/Exposición):** Ajustar Gamma y Gain. Mantener sombras > 0 y altas luces < 900 en vectorscopio. Bajar contraste y Mid-Details para look más cinematográfico (especialmente en mirrorless).
    3.  **Node 3 (Balance de Blancos y Look):** Reducir rojos no deseados en sombras (común en Sony) usando Lift, Gamma y Gain (preferir Gamma y Gain). En nodo paralelo, recuperar amarillos/rojos en midtones.
    4.  **Node 4 (Film Emulation - Dehancer):** Configurar source a DWR Intermediates, Gain a 0.600. Elegir stock: Kodak Aerocolor para noche, Kodak Vision3 para día. Activar Grain, Halation, Bloom.
- **Planificación con Milanote:** Usar mood boards, shot lists (con tipo de plano, tamaño de frame, dos referencias visuales por toma), gear lists y soundtrack boards. Todo organizado antes del rodaje.

## Reglas para el director de fotografia IA

- **Usa "warm lighting" + "cool practicals" en el prompt** cuando quieras un look "orange & teal" sin que la IA lo fuerce como post-proceso. Ejemplo: *"A dimly lit room with warm tungsten light from a desk lamp, a blue neon sign on the wall, a character wearing a teal jacket"*.
- **Para no alucinar en video IA, especifica la temperatura de color en el prompt** si buscas contraste térmico: *"key light at 2900K, fill light at 6500K, motivated by window light"*.
- **Usa términos de cámara en inglés** para prompts de Veo 3 / Kling / Runway: *"shot on 35mm, anamorphic lens, shallow depth of field, warm color palette with cool accents, cinematic grading, film grain, halation, bloom"*.
- **Si pides un look monocromático (one-tone),** especifica que sea "intentional" y "motivated by story/location", porque la IA tiende a generar imágenes planas si no hay contraste cromático en el prompt.
- **Para evitar que la IA genere colores postizos,** describe los colores físicos en la escena (wardrobe, props, set design) antes que el "look" final. Ejemplo: *"A dusty library with brown wooden shelves, vintage books, a blue vase on the desk, a character in a beige coat"*.

## Errores comunes que evita o menciona

- **No confiar en la gradación como salvavidas:** Si los elementos de contraste cromático no están en el frame desde el rodaje, ningún plugin o LUT los creará de forma natural. La IA de video también alucina colores si el prompt no incluye los objetos físicos que los generan.
- **No usar una sola temperatura de luz sin motivación:** El contraste warm/cool debe estar justificado por la escena (luz de ventana vs. lámpara). En IA, si pides "two lights with different color temperatures" sin contexto, el resultado será artificial.
- **No saturar el vectorscopio:** Mantener sombras > 0 y altas luces < 900. En video IA, evitar prompts que pidan "extreme contrast" o "crushed blacks" porque la IA tiende a perder detalle en sombras.
- **No usar Dehancer sin configurar el source a DWR Intermediates** (error común que rompe la conversión de color). En prompting, no asumas que la IA entiende "film stock" sin especificar el tipo (Kodak Vision3, Aerocolor).
- **No planificar el color después del rodaje:** El video del creador muestra que todo (set, vestuario, luces) se planeó 30 días antes. En IA, el prompt debe reflejar esa pre-producción: describe el set, los colores de los objetos, la temperatura de las luces, no solo el "look final".