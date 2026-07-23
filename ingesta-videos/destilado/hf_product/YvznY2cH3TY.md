# Guía Completa: Cómo Hacer Tu Primer Comercial con IA | Higgsfield Marketing Studio
**Fuente:** hf_product | https://youtu.be/YvznY2cH3TY

## Que ensena sobre Higgsfield (2-3 lineas)
Higgsfield Marketing Studio permite crear comerciales tipo UGC, product shots dinámicos y TV spots usando imágenes de producto y personajes generados por IA. El flujo eficiente es: generar assets estáticos primero (con GPT Image 2 o Nano Banana), luego llevarlos a Marketing Studio para animar con presets específicos, ahorrando tokens al minimizar intentos fallidos.

## Tips y flujos accionables

### Flujo recomendado (orden de pasos para ahorrar tokens)
1. **Genera assets estáticos primero** (no gastes tokens en video hasta tener imágenes sólidas)
2. **Usa GPT Image 2 para productos con texto** (mejor consistencia textual, ideal para empaques)
3. **Usa Nano Banana para pruebas ilimitadas** (no consume tokens, perfecto para mood board)
4. **Lleva las imágenes seleccionadas a Marketing Studio** → "New Project"
5. **Elige el preset según el tipo de comercial**
6. **Ajusta duración y resolución** (recomendado: 10-15s, 1080p)
7. **Genera y descarga** → si es necesario, upscale a 4K con la herramienta de video upscale

### Presets y modelos EXACTOS en Marketing Studio

| Preset | Uso recomendado | Parámetros clave |
|--------|----------------|------------------|
| **Hyper Motion** | Product shot dinámico con movimiento del producto (ej: chocolate girando, barra rompiéndose) | Duración: 10s, Resolución: 1080p, Formato: 16:9 |
| **TV Spot** | Comercial cinematográfico con personaje y narrativa | Duración: 12-15s, Resolución: 1080p, Formato: 16:9 |
| **UGC** | Contenido generado por usuario (influencer probando producto) | Duración: 10-12s, Resolución: 1080p, Formato: 9:16 (vertical, como teléfono) |
| **Unboxing** | Desempaquetado del producto | Duración: 10s, Resolución: 1080p |
| **Try-On** | Para ropa: personaje cambiando de atuendo | Duración: 10s, Resolución: 1080p |
| **Wild Card** | Modelo más creativo e improvisado, ideal para versiones épicas | Duración: 12-15s, Resolución: 1080p |

### Modelos de imagen recomendados

| Modelo | Cuándo usarlo | Costo en tokens |
|--------|---------------|-----------------|
| **GPT Image 2** | Productos con texto en empaque, máxima realismo, textura y detalle | Alto (~7 créditos por imagen 2K) |
| **Nano Banana** | Pruebas ilimitadas, mood board, productos sin texto | GRATIS (no consume tokens) |
| **Nano Banana 2** | Versión mejorada, buena integración de texto | Bajo |

### Prompts VERBATIM (estructura recomendada)

**Para producto con texto (ej: chocolate "Fotolate"):**
```
"Packaging de chocolate llamado Fotolate, formato [especificar], impreso con [frases/texto], fondo [descripción], iluminación [tipo], hiperrealista, 2K/4K"
```

**Para personaje (usando GPT Image 2):**
```
"[Descripción física del personaje], hiperrealista, sosteniendo [producto], fondo [descripción], iluminación cinematográfica, 2K"
```

**Para TV Spot (estructura narrativa paso a paso):**
```
"Comercial cinematográfico usando las imágenes de referencia. Producto: [nombre]. Personaje: [descripción]. Locación: [descripción]. Historia: [paso 1], [paso 2], [paso 3]. Arco de movimiento: [ej: exhausto → descubrimiento → anticipación → satisfacción → energía recuperada]"
```

**Para UGC en inglés (mejor consistencia):**
```
"User-generated content: [personaje] opens the [product], shows it, tries it, and gives their opinion. Format: 9:16, realistic, casual setting"
```

### Trucos para look cinematográfico
- **Especifica "hiperrealista"** en el prompt de imagen
- **Usa "turn around"** en el prompt para obtener rotaciones de producto (product sheet)
- **Para textura realista**: prefiere GPT Image 2 sobre Nano Banana
- **Para sonido**: los presets de Marketing Studio ya incluyen audio (clapperboard, ambiente)
- **Para upscale a 4K**: usa la herramienta de video upscale dentro de la plataforma (cuesta ~9 créditos)
- **Si el producto tiene texto**: evita texto gráfico en otras áreas de la escena para evitar confusiones

### Atajos y optimización de tokens
- **Prueba primero con Nano Banana** (ilimitado, sin costo) antes de usar GPT Image 2
- **Usa 1080p** para ahorrar tokens (10 tokens/segundo en 1080p)
- **Duración recomendada**: 10-12s para pruebas, 15s para versión final
- **Si recibes "restricted content"**: reintenta, te devuelven los créditos
- **Para contenido recurrente**: guarda personajes y productos en la plataforma para no regenerarlos

## Reglas para el erudito de Higgsfield

- **Para productos con texto en empaque**: usa **GPT Image 2** en 2K o 4K, NO Nano Banana
- **Para pruebas sin gastar tokens**: usa **Nano Banana** (opción "unlimited")
- **Para comerciales cinematográficos con narrativa**: usa preset **TV Spot** con duración 12-15s y prompt estructurado paso a paso
- **Para contenido tipo influencer/TikTok**: usa preset **UGC** en formato **9:16** (vertical) y escribe el prompt en **inglés** para mejor consistencia
- **Para product shots dinámicos**: usa preset **Hyper Motion** con duración 10s y describe el movimiento exacto del producto
- **Para máxima creatividad/improvisación**: usa preset **Wild Card**
- **Para upscale de video a 4K**: usa la herramienta de **video upscale** (costo: ~9 créditos)
- **Para ahorrar tokens**: genera primero imágenes estáticas, luego llévalas a Marketing Studio; no generes video directamente desde prompts sin referencias
- **Para evitar alucinaciones en el producto**: proporciona imágenes de referencia del producto y sé muy específico en el prompt sobre el empaque, texto y detalles

## Errores comunes / que evitar

- **No gastes tokens generando video directamente** sin antes tener imágenes de producto y personaje validadas
- **No uses Nano Banana para productos con texto** (pierde consistencia textual; usa GPT Image 2)
- **No escribas prompts en español para UGC** (el inglés da mejor consistencia en voz y actuación)
- **No pongas texto gráfico en la escena** fuera del producto (confunde al modelo)
- **No uses productos muy nicho o poco comunes** (el modelo está mejor entrenado en objetos comunes como ropa, comida, bebidas)
- **No esperes que el primer intento sea perfecto**; es prueba y error, pero los créditos se devuelven si hay error de contenido restringido
- **No subestimes la precisión del prompt**: "mientras más preciso seas, mejor resultado obtienes" – estructura la narrativa paso a paso
- **No uses imágenes con IPs o marcas registradas** sin derechos
- **No generes videos largos en pruebas**: 10-12s es suficiente para validar; 15s para versión final