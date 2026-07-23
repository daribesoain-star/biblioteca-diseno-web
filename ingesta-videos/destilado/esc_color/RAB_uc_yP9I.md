# The Cheat Code to Cinematic Color Grading
**Fuente:** esc_color | https://youtu.be/RAB_uc_yP9I

## Que ensena (2-3 lineas)
Cómo crear un look cinematográfico auténtico en DaVinci Resolve usando herramientas nativas: desde la transformación de espacio de color (CST) para RAW, pasando por curvas S de contraste, hasta la aplicación del LUT Kodak 2383 D60 con ajustes finos en log wheels y color slice para densidad fílmica. El proceso culmina con suavizado de detalle medio y grano 35mm 200T.

## Lecciones accionables
- **Transformación de espacio de color (CST):** Configura el nodo CST con input gamma/sensor según la cámara (ej. RED) y output gamma en "Cineon Film Log" para trabajar en espacio de color amplio antes de aplicar el LUT.
- **Curvas de contraste (S-curve):** Crea un nodo de curvas, baja los sombras, sube las altas luces, y ajusta los medios tonos. Parámetro clave: "mid-gray" debe asentarse en el centro de la curva.
- **Primarias:** Ajusta Lift (sombras), Gamma (medios tonos) y Gain (altas luces) para corregir exposición. Ejemplo: "bring gamma down, gain up" para un look moody.
- **LUT Kodak 2383 D60:** Aplica el LUT nativo de Resolve, luego cambia output gamma a "Cineon Film Log" para evitar el aspecto plano/terrible inicial.
- **Log Wheels en Look:** Usa Low Range (bajar a ~0.2) y High Range (bajar a ~4.6) para definir el rango tonal. Ajusta Highlights y Midtones con los log wheels para control creativo.
- **Color Slice:** Selecciona colores individuales (rojo, amarillo, verde, cian) y ajusta Luminance (arrastra al máximo y retrocede al sweet spot) y Saturation para densidad fílmica. Para piel: busca en rojos y amarillos.
- **Suavizado y grano:** Nodo de detalle medio: "Mid Detail" a -20 para softness. Grano: "35mm 200T" en Effects, Strength ~50-70%, Softness bajo, Grain Size por defecto.
- **Prompts para video IA (derivados):** "RED camera, Cineon Film Log, S-curve contrast, Kodak 2383 D60 LUT, soft mid-detail, 35mm film grain, moody color grade, desaturated shadows, warm skin tones, teal-green background".

## Reglas para el director de fotografia IA
- **Usa CST en el prompt base:** cuando generes video IA con cámara RAW (RED, ARRI, Sony), especifica "color space transform to Cineon Film Log" para evitar colores planos.
- **Para no alucinar en video IA, aplica la S-curve primero:** antes de cualquier LUT, define el contraste con curvas en el prompt: "high contrast S-curve, crushed blacks, lifted highlights".
- **Usa "Kodak 2383 D60" como LUT de referencia:** en prompts de color grading, menciona este LUT específico para lograr el look fílmico naranja/teal sin alucinaciones cromáticas.
- **Controla la densidad con Color Slice:** si el video IA genera pieles demasiado saturadas, añade "red luminance reduced, yellow saturation boosted" en el prompt.
- **Suaviza el detalle medio antes del grano:** para evitar ruido digital falso, usa "mid-detail -20, soft focus" antes de "35mm film grain, strength 0.5".
- **Ajusta el rango tonal con Low/High Range:** en prompts de iluminación, especifica "low range 0.2, high range 4.6" para evitar highlights quemados o sombras sin detalle.

## Errores comunes que evita o menciona
- **Aplicar el LUT sin ajustar el output gamma:** si usas Kodak 2383 D60 sin cambiar a "Cineon Film Log", el resultado se ve "terrible" (plano y sobresaturado).
- **Saltarse el balance de color antes del LUT:** aunque el tutorial lo hace después, advierte que "normally I would do it before" para evitar desviaciones cromáticas en piel.
- **No ajustar el rango de log wheels:** si no modificas Low Range y High Range, los ajustes de highlights y midtones no tendrán control fino sobre la densidad fílmica.
- **Sobresaturar el cian sin verificar en Color Slice:** el cian ya viene saturado por defecto; ajustar sin cuidado puede romper el balance de la escena.
- **Usar grano sin suavizar primero:** aplicar grano 35mm sin reducir el detalle medio (-20) genera textura digital en lugar de grano fílmico orgánico.