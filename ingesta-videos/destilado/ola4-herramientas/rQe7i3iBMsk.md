# Tutorial de RECRAFT AI 2025 (Generador de imágenes y diseños con IA) [recraft]
**Fuente:** ola4-herramientas | https://youtu.be/rQe7i3iBMsk

## Qué enseña
Este tutorial muestra cómo usar Recraft.ai para generar imágenes de productos, crear mockups realistas colocando logos sobre superficies curvas (tazas, camisetas, paredes), vectorizar imágenes, insertar texto controlado en diseños y generar series de imágenes con estilos predefinidos. Todo explicado paso a paso con una cuenta gratuita.

## Lecciones accionables
- **Crear un mockup de producto (taza):** Ir a `create new project` → icono `+` → seleccionar `Imagen` → cambiar modelo a `Product photo` → escribir prompt exacto: `"Una taza blanca"` → dar clic en `Recraft` → elegir `1 imagen`, tamaño `1:1` → generar. Luego arrastrar el logo al canvas, escalarlo, seleccionar la imagen de la taza → clic en botón `Mockup` → esperar → arrastrar el logo sobre la taza para que se adapte automáticamente a la curvatura.
- **Crear mockup en camiseta:** Subir foto de persona → seleccionar la imagen → clic en `Mockup` → esperar. Para el logo: generar imagen con prompt `"logo of a lion, white colors"` → seleccionar la imagen → clic en `Remove bg` para quitar fondo → arrastrar el logo sin fondo sobre la camiseta → escalar y posicionar; el logo respeta arrugas y pliegues.
- **Vectorizar imagen:** Seleccionar cualquier imagen rasterizada → clic en botón `Vectorizar` → esperar → exportar en formato `SVG` (sin pérdida de calidad al hacer zoom).
- **Insertar texto controlado en imagen:** Seleccionar `Frame` → elegir formato (ej. `9:16` para móvil) → clic en `Insertar texto` → escribir texto (ej. `"Raxacademy"`) → posicionar → añadir segundo texto (ej. `"La mejor academia de IA"`) → seleccionar el frame → elegir modelo de texto (ej. `Stamp` o `Punk Graphic`) → escribir prompt: `"Estampa de una academia de inteligencia artificial futurista"` → clic en `Recraft` → el texto se integra exactamente donde se colocó.
- **Generar serie de imágenes con mismo estilo:** Ir a `Image set` → seleccionar estilo predefinido (ej. `Fotorrealista` o `Pixel art`) → escribir lista de sujetos separados por comas: `"donut, coche, gato, carne, lagarto, helicóptero"` → clic en `Recraft` → se generan todas las imágenes con el mismo estilo. Copiar y pegar la lista para probar otro estilo diferente.

## Reglas para agentes
- Para mockups: siempre seleccionar la imagen base primero y activar `Mockup` antes de arrastrar el logo; de lo contrario, el logo no se adapta a la superficie.
- Para quitar fondo: usar `Remove bg` solo en imágenes con fondo sólido (blanco recomendado) para evitar recortes no deseados en el sujeto.
- Para texto en imágenes: el texto debe estar dentro de un `Frame` y el modelo debe ser compatible con texto (ej. `Stamp`, `Punk Graphic`); no funciona con modelos genéricos.
- Para vectorizar: la imagen original debe tener suficiente resolución; el proceso es irreversible, guardar copia antes.
- Créditos diarios: cuenta gratuita tiene 50 créditos/día y límite de 2 subidas de imágenes propias por día.

## Errores comunes que evita o menciona
- **Arrastrar logo sin activar Mockup:** Si arrastras el logo directamente sobre la imagen sin haberla convertido a mockup, no se adapta a la superficie curva; la imagen queda plana y no funcional.
- **Texto mal integrado por modelo incorrecto:** Usar un modelo que no soporta texto (ej. fotorrealista) hace que la IA ignore o distorsione el texto; siempre seleccionar `Stamp` o `Punk Graphic` para diseños con texto.
- **Fondo removido borra parte del diseño:** Al usar `Remove bg` en imágenes con fondo complejo, puede recortar partes del sujeto; usar solo con fondos blancos o uniformes.
- **Pixelación al acercar imagen no vectorizada:** Si no se vectoriza, la imagen pierde calidad al hacer zoom; usar `Vectorizar` y exportar como SVG para impresión o web.
- **Exceder créditos diarios:** La cuenta gratuita tiene 50 créditos/día; cada generación consume créditos, y solo permite 2 subidas de imágenes propias por día.