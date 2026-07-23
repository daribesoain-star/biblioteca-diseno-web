# apple-hig-appicons
**Fuente:** impl-logotipos | https://developer.apple.com/design/human-interface-guidelines/app-icons

## Qué enseña (2-3 líneas)
Guía oficial de Apple para diseñar iconos de apps en todas sus plataformas (iOS, iPadOS, macOS, tvOS, visionOS, watchOS). Explica el sistema de capas (Liquid Glass), formato de exportación, variantes de apariencia (default, dark, clear, tinted) y especificaciones técnicas exactas para cada plataforma.

## Lecciones accionables
- **Formato de capas:** Usa vectores (SVG o PDF) para escalar sin pérdida. Para raster, usa PNG (lossless). Convierte texto a contornos (outline) antes de exportar.
- **Herramienta obligatoria:** Para iOS/iPadOS/macOS/watchOS, importa capas en **Icon Composer** (incluido en Xcode). Define fondo (sólido o gradiente), ajusta capas frontales, aplica efectos (specular highlights, refraction, translucency), anota variantes (default, dark, mono) y exporta.
- **Especificaciones por plataforma:**

| Plataforma | Forma layout | Forma final (sistema) | Tamaño layout | Estilo | Apariencias |
|------------|--------------|-----------------------|---------------|-------|-------------|
| iOS, iPadOS, macOS | Cuadrado | Rectángulo redondeado (cuadrado) | 1024x1024 px | Capas (Liquid Glass) | Default, dark, clear light, clear dark, tinted light, tinted dark |
| tvOS | Rectángulo (apaisado) | Rectángulo redondeado (rectangular) | 800x480 px | Capas (Parallax) | N/A |
| visionOS | Cuadrado | Circular | 1024x1024 px | Capas (3D) | N/A |
| watchOS | Cuadrado | Circular | 1088x1088 px | Capas | N/A |

- **Capas:** Provee capas cuadradas (iOS/iPadOS/macOS/visionOS/watchOS) o rectangulares (tvOS). **Nunca** pre-masques las capas (el sistema aplica el masking final).
- **Fondo:** Usa sólido o gradiente en Icon Composer. Si importas imagen de fondo, debe ser full-bleed y opaca.
- **Variantes de apariencia (iOS/iPadOS/macOS):** Diseña variantes para default, dark, clear y tinted. El sistema genera automáticamente las que no proveas. Mantén las mismas características visuales centrales en todas.
- **Alternate app icons:** Permite al usuario elegir desde ajustes de la app. Cada alternativo requiere sus propias variantes dark/clear/tinted. Sujeto a revisión de App Review.
- **tvOS safe zone:** Deja un margen de seguridad alrededor del contenido porque el sistema puede recortar bordes al escalar/mover con el foco. El recorte es mayor en capas frontales que en el fondo.
- **visionOS:** Evita formas que parezcan agujeros/cóncavas en el fondo; el sistema añade sombras que las harían resaltar en vez de hundirse.
- **watchOS:** No uses negro puro como fondo del icono; acláralo para que no se fusione con el fondo de la pantalla.
- **Color spaces soportados:** sRGB (color), Gray Gamma 2.2 (escala de grises), Display P3 (gama amplia en iOS/iPadOS/macOS/tvOS/watchOS).
- **Agrupación de capas:** En Icon Composer puedes agrupar varias capas para aplicar efectos (specular, refraction, translucency) a nivel de grupo, con opciones de personalización adicionales.

## Reglas para agentes
- **Usa** vectores (SVG/PDF) para capas en Icon Composer; **nunca** uses raster (excepto PNG para gradientes mesh o artwork raster).
- **Nunca** incluyas bordes suaves o difuminados (soft/feathered edges) en capas frontales; prefiere bordes claramente definidos.
- **Nunca** añadas efectos visuales propios (specular highlights, drop shadows, bevels, blurs, glows) — el sistema los aplica dinámicamente.
- **Nunca** incluyas texto no esencial en el icono (palabras como "Watch", "Play", "New", "For visionOS") a menos que sea crítico para la marca; el texto no soporta accesibilidad ni localización.
- **Nunca** uses réplicas de productos hardware de Apple (están protegidos por copyright).
- **Nunca** uses capturas de pantalla de la app o réplicas de componentes UI estándar como icono.
- **Nunca** pre-definas masking en las capas (no recortes bordes antes de importar); el sistema aplica el masking final.
- **Para tvOS:** Si incluyes texto, colócalo sobre las demás capas para que no sea recortado por el efecto parallax.
- **Para visionOS/watchOS:** Asegura que el contenido principal esté centrado (usa las cuadrículas de las plantillas en Apple Design Resources).

## Errores comunes que evita o menciona
- **Evita** usar fotos en lugar de ilustraciones: las fotos tienen demasiados detalles que no funcionan en diferentes apariencias, tamaños pequeños o al dividirse en capas.
- **Evita** líneas extremadamente finas y esquinas afiladas: pierden detalle y nitidez en tamaños pequeños y bajas resoluciones.
- **Evita** crear variantes de icono que intercambien elementos entre apariencias (default/dark/clear/tinted): dificulta que los usuarios encuentren la app al cambiar de apariencia.
- **Evita** fondos negros en watchOS: el icono se fusiona con el fondo de la pantalla.
- **Evita** formas cóncavas/agujeros en el fondo de visionOS: el sistema las resalta en vez de ocultarlas.
- **Evita** rellenar todo el canvas del icono con contenido; prefiere fondos simples (sólido o gradiente) que pongan énfasis en el diseño principal.