# 
**Fuente:** ola5-email | https://youtu.be/wbrNo-Up3tk

## Qué enseña
Curso completo para principiantes sobre cómo configurar email marketing en e-commerce usando Omnisend, basado en la experiencia del autor generando más de $150 millones en ventas. Cubre los tres pilares fundamentales: formularios pop-up para captar suscriptores, automatizaciones de email (flujos) y campañas periódicas (blasts), con el objetivo de convertir el tráfico en ingresos recurrentes.

## Lecciones accionables
- **Configurar formulario pop-up de doble paso (micro-commit):**
  - Paso 1: Pregunta "Do you want 10% off?" con botones "Yes, please" y "No thanks. I'll pay full price."
  - Paso 2: Texto "You've got 10% off" y CTA "Claim 10% off".
  - Usar wording "You've got" en lugar de "Get" por pérdida aversiva.
  - No añadir texto extra en el formulario (aumenta abandono).
  - Configurar targeting: "Don't show to existing contacts".
  - Display: time delay de 4 a 6 segundos (no usar exit intent ni scroll depth).
- **Crear flujo de bienvenida (Welcome Flow):**
  - Trigger: "Subscribes to marketing" + filtro: subscription method = signup form, first subscription = true.
  - Exit condition: si el contacto realiza un pedido, se elimina del flujo.
  - Enviar primer email inmediatamente, luego esperar 1 día entre cada email (total 3 emails).
  - Incluir código de descuento estático (ej: "WELCOME") o generado dinámicamente.
  - Usar la sección "Product recommendations" para mostrar bestsellers o productos similares.
- **Crear flujo de carrito abandonado (Abandoned Cart Flow):**
  - Trigger: "Added to cart".
  - Esperar 30 minutos antes del primer email (no 1 hora).
  - Siguientes emails con intervalo de 24 horas.
  - Incluir bloque dinámico "Abandoned product section" que muestra exactamente lo que el cliente dejó.
  - Exit condition: si el cliente inicia checkout, se elimina de este flujo (pasa al flujo de checkout abandonado).
- **Crear campañas periódicas (blasts):**
  - Enviar mínimo 1 campaña por semana para mantener la lista "caliente".
  - Frecuencia recomendada: 3-4 campañas por semana.
  - No enviar solo ventas; incluir valor: historias de marca, información, testimonios.
  - Usar preheader con "..." para aumentar opens (ej: "Don't just take our word for it...").
  - Segmentar envío a "engaged subscribers" (ej: 60-day engaged).
- **Herramientas externas mencionadas:**
  - Alia: plataforma externa para pop-ups (mencionar "Max sent me" para prueba gratuita de 30 días).
  - Reallygoodemails.com: para ver ejemplos de emails de otras marcas.
  - Mil (Milled): para espiar la estrategia de email de cualquier marca.
- **Enlace de descuento Omnisend:** omnisend.com/max (30% off primeros 3 meses).

## Reglas para agentes
- Usa el wording "You've got [descuento]" en formularios pop-up, nunca "Get [descuento]".
- No muestres formularios pop-up a contactos existentes (usa "Don't show to existing contacts").
- No uses exit intent ni scroll depth como trigger de pop-up; usa siempre time delay de 4-6 segundos.
- En flujos de abandono, espera 30 minutos (no 1 hora) para el primer email.
- En campañas, envía mínimo 1 vez por semana para mantener engagement; no dejes la lista inactiva.
- No envíes solo emails de venta; intercala contenido de valor (historias, testimonios, insider picks).
- Usa siempre la sección dinámica de producto abandonado en los flujos de abandono.
- Segmenta las campañas a "engaged subscribers" (ej: 60-day engaged) para evitar baja reputación.

## Errores comunes que evita o menciona
- No tener un sistema de email configurado es "enviar tráfico a un balde con agujeros" y desperdiciar inversión en anuncios.
- Añadir texto extra en formularios pop-up aumenta la tasa de abandono.
- Enviar solo emails de venta ("sale, sale, sale") spammea a los clientes y reduce engagement.
- No enviar campañas regularmente hace que los clientes olviden la marca y la lista se enfríe.
- Usar exit intent o scroll depth como trigger de pop-up es menos efectivo que un time delay simple.
- No incluir el bloque dinámico de producto abandonado en los flujos de abandono reduce conversiones.