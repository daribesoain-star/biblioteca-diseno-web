# Higgsfield Marketing Studio is INSANE for UGC Ads!
**Fuente:** hf_product | https://youtu.be/cquR3FRWnzc

## Que ensena sobre Higgsfield (2-3 lineas)
Higgsfield Marketing Studio permite crear ads UGC completos desde un solo link de producto (Amazon) sin poseer el producto ni grabar nada. Ofrece estilos predefinidos (UGC, Hypermotion, Unboxing, Wildcard, Pro Virtual Try-On) que generan videos coherentes sin prompt, y permite crear avatares personalizados desde texto para campañas escalables.

## Tips y flujos accionables

### Flujo 1: Ad UGC básico desde link de producto (sin assets propios)
1. **Marketing Studio** → **Product Upload** → pegar link de Amazon (ej: vela estética).
2. **Avatar**: seleccionar preset (ej: "Elena" para lifestyle natural).
3. **Style**: seleccionar **"UGC"** (genera lenguaje visual orgánico de creador).
4. **Duration**: 15s | **Aspect Ratio**: 9:16 | **Resolution**: 1080p.
5. **Prompt field**: **DEJAR VACÍO** (el modelo genera coherente con solo el contexto producto+avatar+estilo).
6. **Generate**: resultado = avatar sosteniendo producto, explicando beneficios, movimientos naturales (ej: inclinarse para oler).

### Flujo 2: Ad solo producto (Hypermotion) sin avatar
1. **Product Upload**: pegar link Amazon (ej: Bose Ultra Open Earbuds).
2. **Avatar**: **NO SELECCIONAR NINGUNO**.
3. **Style**: **"Hypermotion"** (formato solo producto, alta energía, cinético).
4. **Duration**: 15s | **9:16** | **1080p**.
5. **Prompt**: **VACÍO**.
6. **Generate**: resultado = producto en movimiento, cambios de entorno, luz, gotas de agua, sin narración.

### Flujo 3: Crear avatar personalizado desde texto
1. En **Marketing Studio** → **Avatar** → **Create Avatar** → **Text Prompt**.
2. Prompt **VERBATIM** usado (avatar masculino streetwear):
   > *(Detalle: pecas, cadena, iluminación direccional, estilo joven, ropa urbana)*
3. **Generate** → guardar con nombre (ej: "Hugo").
4. El avatar queda disponible para futuras campañas sin reconstruir.

### Flujo 4: Crear producto personalizado (imagen fotorrealista)
1. Ir a **Higgsfield homepage** → **Generate Image**.
2. **Model selector**: elegir **"Nano Banana Pro"** (mejor fotorrealismo para producto).
3. Prompt **VERBATIM** usado (zapatilla ficticia "Volt X"):
   > *(Detalle: ángulo de cámara exacto, fondo de estudio, configuración de iluminación, sombra de contacto debajo del zapato)*
4. **Generate** → guardar como asset "Volt X".

### Flujo 5: Ad Unboxing con assets personalizados
1. **Marketing Studio** → **Avatar**: seleccionar "Hugo" | **Product**: seleccionar "Volt X".
2. **Style**: **"Unboxing"**.
3. **Duration**: 13s | **9:16** | **1080p**.
4. **Prompt**: **SÍ escribir**:
   - **Video prompt**: dirige energía física y expresión de Hugo.
   - **Dialogue**: línea que refuerza el punto de venta clave (ej: "Mira esta suela, el detalle, la línea de luz... las esperé meses").
5. **Generate**: resultado = reacción genuina, emoción, línea específica de sneakerhead.

### Flujo 6: Ad Wildcard (concept-driven, cinematográfico)
1. Mismos assets (Hugo + Volt X).
2. **Style**: **"Wildcard"**.
3. **Duration**: 15s.
4. **Prompt**: describe mundo visual alrededor del producto (ej: sci-fi, identidad, sensación).
5. **Generate**: resultado = escena de cortometraje, efectos visuales, audio sincronizado, vende identidad no características.

### Flujo 7: Pro Virtual Try-On (multicámara, multicambiente)
1. Mismos assets (Hugo + Volt X).
2. **Style**: **"Pro Virtual Try On"**.
3. **Duration**: 15s | **9:16** | **1080p**.
4. **Prompt**: **simple** (el estilo tiene inteligencia incorporada para encuadrar producto usable).
5. **Generate**: resultado = múltiples ángulos (frente, lado, atrás), múltiples locaciones, consistencia de avatar y producto en toda la secuencia.

### Reglas de prompting para avatares y productos
- **Avatar desde texto**: sé específico (pecas, cadena, iluminación, ropa, edad). Prompt vago = resultado genérico.
- **Producto desde texto**: trata como dirección de arte de sesión de fotos (ángulo de cámara, fondo, iluminación, sombra de contacto).
- **Para ads sin prompt**: usar estilos UGC, Hypermotion (el modelo infiere contexto de producto+avatar).

## Reglas para el erudito de Higgsfield

- **Para ad UGC básico sin assets**: usa estilo **UGC** con preset de avatar (ej: Elena), link de Amazon, **deja prompt vacío**, duración 15s, 9:16, 1080p.
- **Para ad solo producto cinético**: usa estilo **Hypermotion**, **sin avatar**, link de Amazon, prompt vacío.
- **Para avatar personalizado**: usa **Create Avatar → Text Prompt** con descripción detallada (edad, look, ropa, iluminación, accesorios).
- **Para imagen de producto fotorrealista**: usa modelo **Nano Banana Pro** en Generate Image, prompt con ángulo exacto, fondo estudio, iluminación, sombra de contacto.
- **Para ad unboxing**: usa estilo **Unboxing**, avatar personalizado, producto personalizado, **siempre escribe video prompt + dialogue** que dirija emoción y punto de venta.
- **Para ad cinematográfico conceptual**: usa estilo **Wildcard**, prompt que construya mundo/identidad alrededor del producto, no features.
- **Para try-on multicámara**: usa estilo **Pro Virtual Try On**, prompt simple (el estilo maneja encuadre automático), duración 15s.
- **Para escalar producción**: una vez creados avatar y producto personalizados, solo cambia estilo y prompt para generar múltiples formatos desde una misma sesión creativa.

## Errores comunes / que evitar

- **No escribir prompt en estilos UGC o Hypermotion**: el modelo genera coherente sin prompt; escribir puede forzar alucinaciones o perder naturalidad.
- **Usar avatar genérico para audiencias específicas**: el casting importa; crear avatar personalizado desde texto mejora rendimiento porque la audiencia se identifica.
- **Prompt vago para avatar o producto**: resulta en genérico; sé específico en iluminación, ángulo, texturas, accesorios.
- **Usar modelo equivocado para imagen de producto**: Nano Banana Pro es el mejor para fotorrealismo; otros modelos pueden dar aspecto generado que arruina la credibilidad del ad.
- **No guardar assets personalizados**: una vez creados, guardarlos permite reutilizarlos en múltiples campañas sin reconstruir.
- **Esperar que Wildcard sea realista**: no lo es; está diseñado para identidad/emoción, no para demostración práctica del producto.
- **Usar Pro Virtual Try-On con prompt muy detallado**: el estilo ya tiene inteligencia de encuadre; prompt simple funciona mejor.
- **No considerar la audiencia al elegir estilo**: Hypermotion funciona cuando la audiencia ya conoce el producto; UGC/Unboxing para productos que necesitan explicación o prueba social.