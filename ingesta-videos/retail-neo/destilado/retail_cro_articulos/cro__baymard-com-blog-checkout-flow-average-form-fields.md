# cro__baymard-com-blog-checkout-flow-average-form-fields
**Fuente:** https://baymard.com/blog/checkout-flow-average-form-fields | eje: cro | destilado 2026-07-16
## Qué enseña (2-3 líneas)
El número de campos de formulario impacta más en la usabilidad del checkout que la cantidad de pasos. El checkout promedio en 2024 tiene 5.1 pasos y 11.3 campos, pero la mayoría de sitios solo necesita 8 campos. Reducir campos visibles disminuye la percepción de complejidad y las tasas de abandono.

## Lecciones accionables
- **Campo único de nombre:** Implementa un solo campo "Nombre completo" en lugar de "Nombre" y "Apellido". El 89% de los sitios aún usan múltiples campos de nombre. En pruebas, el 42% de los participantes escribió su nombre completo en el campo "Nombre" al menos una vez. Con un solo campo, solo el 4% dudó brevemente y nadie tuvo problemas de tipeo.
- **Ocultar "Dirección línea 2":** Oculta el campo "Dirección línea 2" detrás de un enlace (ej: "Agregar Apt., Suite, Piso"). El 75% de los sitios no lo ocultan. El 30% de los participantes se detuvo al llegar a este campo, dudando cómo completarlo correctamente.
- **Ocultar "Código de descuento":** Colapsa el campo de código promocional detrás de un enlace. El 70% de los sitios tienen este campo, y el 35% lo muestra por defecto. Al verlo visible, algunos usuarios abandonan el checkout para buscar códigos, reduciendo significativamente la probabilidad de que regresen a completar la compra.
- **Ocultar campos de "Dirección de facturación":** Configura "Dirección de facturación = Dirección de envío" por defecto y oculta los campos de facturación. El 24% de los sitios muestra ambas direcciones por defecto. Cuando están ocultos, los usuarios solo aceptan el valor predeterminado sin tener que entender qué es una dirección de facturación.
- **Retrasar la creación de cuenta:** Posponer la opción de crear cuenta hasta el paso de confirmación. El 84% de los sitios no lo hacen. En el paso de confirmación, el usuario ya ingresó los datos necesarios, reduciendo la creación a solo 1-2 campos de contraseña. Informa a los usuarios en el paso de selección de cuenta que podrán crear una al final.
- **Benchmark de campos promedio:** El checkout promedio en 2024 tiene 11.3 campos (vs 11.8 en 2021 y 12.7 en 2019). La mayoría de sitios solo necesita 8 campos en total.
- **Benchmark de pasos promedio:** El checkout promedio tiene 5.1 pasos (contando desde el carrito hasta la revisión del pedido). Los checkouts de 1-2 pasos son casi inexistentes; los de 8-9 pasos están casi extintos.
- **Táctica adicional:** Implementa una función de búsqueda automática de direcciones para reducir drásticamente la complejidad de todos los campos de dirección.
- **Táctica adicional:** Aplica proactivamente cualquier descuento aplicable al carrito del usuario para evitar que busquen códigos.
- **Excepción:** En sitios B2B o de regalos donde muchos clientes usan direcciones diferentes, considera mantener visibles los campos de facturación.

## Reglas para agentes
- Usa un solo campo "Nombre completo" cuando diseñes formularios de checkout; nunca uses campos separados de "Nombre" y "Apellido".
- Oculta "Dirección línea 2" detrás de un enlace como "Agregar Apt., Suite, Piso" por defecto.
- Oculta "Código de descuento" o "Código promocional" detrás de un enlace; nunca lo muestres visible por defecto.
- Configura "Dirección de facturación = Dirección de envío" como valor predeterminado y oculta los campos de facturación; nunca muestres ambas direcciones por defecto.
- Retrasa la creación de cuenta hasta el paso de confirmación del pedido; nunca la solicites ni la promuevas durante el flujo de checkout.
- Cuando ocultes campos, asegúrate de que los usuarios que los necesiten puedan acceder a ellos con un solo clic.
- Informa a los usuarios en el paso de selección de cuenta que tendrán la opción de crear una cuenta al final del checkout.
- Cuando establezcas "Dirección de facturación = Dirección de envío" como predeterminado, oculta los campos de facturación por completo (no los autocompletes y los dejes visibles).

## Errores comunes que evita o menciona
- **Asumir que reducir pasos es más importante que reducir campos:** El número de campos de formulario impacta más en la usabilidad que la cantidad de pasos. La pregunta correcta es "¿cómo reducir los campos que el usuario debe considerar?" no "¿cómo reducir los pasos?".
- **Mostrar campos de nombre separados:** El 89% de los sitios cometen este error. Los usuarios piensan en su nombre como una entidad única, causando que el 42% escriba su nombre completo en el campo "Nombre", generando fricción y retrabajo.
- **Mostrar "Dirección línea 2" visible:** El 75% de los sitios lo hacen visible. El 30% de los usuarios se detiene y duda cómo completar correctamente la dirección, cuestionando si su entrada en "Línea 1" fue correcta.
- **Mostrar "Código de descuento" por defecto:** El 35% de los sitios con este campo lo muestran visible. Algunos usuarios abandonan el checkout para buscar códigos, y la probabilidad de que no regresen aumenta significativamente.
- **Mostrar campos de facturación por defecto:** El 24% de los sitios asume que se necesitan direcciones diferentes. La mayoría de usuarios solo tiene una dirección, por lo que ven un conjunto redundante de campos que los intimida innecesariamente.
- **Solicitar creación de cuenta durante el checkout:** El 84% de los sitios no retrasan la creación de cuenta. Obligar o incitar a crear una cuenta durante el checkout distrae del objetivo principal (completar el pedido) y puede causar abandono.
- **No informar sobre la creación de cuenta posterior:** Si retrasas la creación de cuenta pero no informas al usuario en el paso de selección, los usuarios que quieran una cuenta perderán tiempo tratando de descubrir cómo crearla.