# awwwards_ecom
**Fuente:** https://www.awwwards.com/websites/e-commerce/ | destilado 2026-07-22

## Qué enseña (2-3 líneas)
Galería de sitios e-commerce galardonados que muestran las mejores prácticas de UX para tiendas online: exhibición de producto, proceso de checkout y experiencia de compra. Los diseños premiados priorizan la claridad visual, la jerarquía de producto y la fluidez del recorrido de compra sobre la ornamentación.

## Lecciones accionables
- **index PRO / Lama Lama PRO / SHIFTBRAIN PRO**: usan fondos neutros (blanco/gris claro) con imágenes de producto a tamaño completo como hero, eliminando distracciones para que el producto sea el único foco visual.
- **FUTURE THREE® PRO / Instrument PRO**: implementan micro-interacciones en hover (zoom suave, cambio de ángulo, revelado de variantes de color) que simulan la experiencia táctil de una tienda física.
- **Has Merit PRO / Better Off Studio PRO**: grid de productos asimétrico con tamaños de celda variables (masonry) que rompe la monotonía del grid uniforme y guía la mirada hacia productos destacados.
- **UNCOMMON PRO / BL/S® PRO**: tipografía bold y minimalista con espaciado generoso; el texto de precio y CTA ("Add to cart") aparece solo en hover, manteniendo la página limpia hasta la interacción.
- **Pattern PRO / Surd Studio PRO**: integran storytelling visual con secuencias de imágenes que muestran el producto en uso (contexto real) antes de la ficha técnica, aumentando la intención de compra.
- **PeachWeb Builder PRO / MONOGRID PRO**: checkout de una sola columna con barra de progreso visible y campos agrupados por sección (datos, envío, pago), reduciendo la fricción y el abandono de carrito.
- **WHP PRO / TAPER.DESIGN**: usan video loop en autoplay (sin sonido) como hero de categoría, mostrando el producto en movimiento para transmitir calidad y funcionalidad sin necesidad de texto explicativo.

## Reglas para agentes
1. **Hero = producto, no marca**: la imagen principal debe ocupar >60% del viewport y mostrar el producto en uso o con fondo limpio; el logo/logotipo va secundario, pequeño y arriba.
2. **CTA primario siempre visible**: el botón de compra o "Añadir al carrito" debe estar en la misma línea visual que el precio, sin scroll adicional, y con contraste cromático suficiente (ratio 4.5:1 mínimo).
3. **Grid adaptable por intención**: en páginas de categoría usar grid de 3-4 columnas en desktop, 2 en tablet, 1 en móvil; en páginas de producto individual, layout de 2 columnas (imagen izquierda, detalles derecha).
4. **Micro-interacciones sin latencia**: hover sobre producto debe activar cambio visual en <100ms; zoom o cambio de imagen debe cargarse con lazy loading y preload de la siguiente imagen.
5. **Checkout sin fricción**: máximo 3 pasos visibles (carrito → datos → pago); campos de formulario con autocompletado y validación en tiempo real; botón de pago único y prominente.

## Errores comunes
- **Sobrecarga visual en hero**: mezclar texto promocional, múltiples CTAs, video de fondo y navegación flotante; el usuario no sabe dónde mirar y abandona.
- **Ocultar el precio**: poner el precio en hover o en letra pequeña; el precio debe ser el segundo elemento más visible después de la imagen del producto.
- **Grid uniforme sin jerarquía**: todas las tarjetas de producto del mismo tamaño sin destacar ofertas, novedades o best-sellers; el ojo no encuentra anclas visuales.
- **Checkout con múltiples columnas o pasos ocultos**: formularios de dos columnas en móvil, barras de progreso ausentes, o botón de pago mezclado con enlaces secundarios.
- **Imágenes de producto sin contexto**: fondo blanco genérico sin escala ni referencia de tamaño; el usuario no puede imaginar el producto en su entorno real.
- **Autoplay de video con sonido**: rompe la experiencia de navegación silenciosa; el usuario cierra la pestaña inmediatamente.