# Tutorial: Set Up Conversions API Gateway with Stape
**Fuente:** JonLoomer | https://youtu.be/2Rahm5n3Y68

## Qué enseña
Cómo configurar el Conversions API Gateway de Meta usando Stape como alternativa económica al servidor propio en AWS (que cuesta $80-$100/mes). Explica paso a paso desde la creación de la cuenta hasta la conexión con el píxel de Meta, destacando que Stape ofrece planes desde $10/mes por píxel.

## Lecciones accionables
- Usa el enlace directo de Stape para crear el Conversions API Gateway: proporciona tu correo electrónico, nombra el gateway, selecciona la ubicación del servidor (país), acepta términos y haz clic en "Create".
- Tras crear la cuenta, revisa el correo de Stape para obtener tu login y un botón verde para establecer la contraseña. Ingresa la contraseña dos veces y haz clic en "Save password".
- Selecciona un plan de suscripción: opciones de $10/mes por píxel (varios píxeles cuestan más) o $100/mes para ilimitado (similar al costo de AWS pero para múltiples clientes). Puedes iniciar un "7-Day trial" gratuito.
- Después de la suscripción, haz clic en el botón verde "Finish the CAPI Gateway setup" o acepta la invitación por correo. Usa el mismo correo electrónico que usaste para Stape.
- Inicia sesión en el API Gateway, ve a "Overview" y haz clic en "Add data source".
- Haz clic en "Get Started" → "Connect Conversion API Gateway to Facebook" → "Next" → selecciona tu Business Manager → "Next" → selecciona el píxel → "Next".
- Activa "Automatic Advanced Matching" (opcional pero recomendado) y confirma los datos que enviarás → "Next".
- En permisos: activa "Manage ads for accounts" (requerido), "Manage your business" (técnicamente no necesario, pero déjalo activado) y "Manage business extension" (requerido) → "Next" → "Done".
- Comparte el token del sistema: ve a "Settings" en Ads Manager, pero Stape ya lo conecta. Haz clic en "Agree to share your token" → "Confirm".
- Espera hasta 30 minutos para que aparezcan datos en el API Gateway (puede verse en 15 minutos o menos, dependiendo de la ubicación del servidor). Revisa métricas como "Success rate", "Events received" y "Events published" en la parte inferior.

## Reglas para agentes
- Usa el enlace directo de Stape (no el proceso general de configuración manual) cuando quieras evitar costos altos de servidor AWS ($80-$100/mes) y busques una solución económica desde $10/mes.
- Nunca uses el plugin oficial de WordPress de Facebook como solución permanente para el Conversions API; úsalo solo como "stop gap" temporal porque no es ideal.
- Siempre selecciona el mismo correo electrónico para Stape y para el API Gateway de Meta para evitar problemas de conexión.
- Siempre activa "Automatic Advanced Matching" al configurar la fuente de datos para mejorar la coincidencia de eventos.
- Siempre espera al menos 30 minutos después de configurar para verificar que los datos fluyan correctamente en el API Gateway.

## Errores comunes que evita o menciona
- **Costo elevado del API Gateway tradicional:** Configurar tu propio servidor en AWS puede costar $80-$100/mes o más, lo que no es viable para todos los presupuestos. Stape resuelve esto con planes desde $10/mes.
- **Complejidad de la configuración manual:** Stape simplifica el proceso eliminando la necesidad de manejar contenedores y configuraciones técnicas complejas que antes impedían su uso.
- **Datos que no aparecen inmediatamente:** Es normal que el API Gateway muestre ceros al principio; puede tardar hasta 30 minutos en mostrar datos, incluso si ya hay tráfico.
- **Uso de plugin de WordPress como solución permanente:** Aunque el plugin oficial de Facebook es gratuito y funcional, no es ideal a largo plazo; el API Gateway con Stape es la alternativa recomendada.