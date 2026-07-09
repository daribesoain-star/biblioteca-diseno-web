# 
**Fuente:** ola5-email | https://youtu.be/79_e8-lBbmo
## Qué enseña (2-3 líneas)
Curso completo para principiantes sobre cómo configurar email marketing para tiendas e-commerce usando Klaviyo como plataforma. Cubre desde la creación de formularios de suscripción y flujos automatizados (welcome, abandoned checkout, post-purchase) hasta campañas únicas y segmentación de audiencia, con el objetivo de convertir visitantes en compradores recurrentes.

## Lecciones accionables
- **Configurar Klaviyo:** Ir a klaviyo.com, ingresar la URL de la tienda, registrarse. Si usas Shopify, añadir la app de Klaviyo. Completar el checklist de onboarding en "Home" > "Account alerts".
- **Crear formulario de suscripción (pop-up):** Ir a "Signup forms" > "Create form". Usar template "Grow your email and SMS list". Nombrarlo y asignarlo a lista "Newsletter". En el builder:
  - En "Styles": ajustar tamaño, tipo (popup, flyout, full page), imagen/fondo.
  - En "Targeting & behavior": configurar "Time delay" a 4 segundos tras cargar la página. Desactivar "Scroll" y "Exit intent". Marcar "After visitor closes form, don't show this form again after 5 days". Elegir "Display on both mobile and desktop" o solo uno. Desactivar "Click outside form to close" para forzar clic en X.
  - Texto recomendado: "You've got 10% off" (psicológicamente el cliente ya siente que tiene el descuento). Botón grande "Claim 10% off". Opción "No thanks, I'll pay full price" que lleva a paso SMS.
  - Crear versión separada para mobile (targeting solo mobile) con altura mínima ~1000px.
- **Configurar flujo de bienvenida (Welcome Flow):** Ir a "Flows" > "Create flow" > usar template "Welcome series standard". Trigger: "Someone joins the newsletter list". Editar emails:
  - Email 1: recordar descuento + info de marca. Asunto: "Welcome to [brand]". Preview text: "We're so happy to have you. Here's your discount". Incluir código "WELCOME10" y botón con descuento. Listar bestsellers.
  - Esperar 1 día.
  - Email 2: historia de la marca. Incluir fotos de fundadores, misión, recordatorio de que el descuento expira pronto.
  - Esperar 1 día.
  - Email 3: "Why we stand out" + última oportunidad del descuento.
- **Configurar flujo de abandono de checkout:** Ir a "Flows" > "Browse by goal" > "Prevent lost sales" > seleccionar "Abandoned cart reminders" (aunque Klaviyo lo etiqueta mal, el trigger real es "Checkout started"). Nombrarlo "Abandoned Checkout". Usar template.
- **Crear campaña única:** Ir a "Campaigns" > "Create campaign" > elegir Email. En "Audience": seleccionar segmento "Engaged 60 days" (personas que abrieron email al menos una vez en los últimos 60 días). En "Subject line" y "Preview text": ej. "Restock new favorites" / "These went fast last time...". Diseñar email con logo, texto, imagen, botón "Shop now". Programar o enviar.
- **Crear segmento "Engaged 60 days":** Ir a "Audience" > "Lists & segments" > "Create segment". Condición: "What someone has done" > "Opened email" > "At least once" > "in the past 60 days". Guardar.
- **Diseño avanzado de emails (opcional):** Usar Figma para diseñar emails. Aplicar branding, imágenes, secciones. Usar función "slice" para cortar en partes de ~500px de alto. Exportar como imagen y subir secciones a Klaviyo.

## Reglas para agentes
- Usa siempre Klaviyo como plataforma de email marketing para e-commerce; no consideres otras opciones si planeas escalar.
- Configura el pop-up con time delay de 4 segundos, nunca instantáneo ni con exit intent como única opción.
- Usa el texto "You've got [X]% off" en lugar de "Take [X]% off" para aumentar conversión.
- Envía campañas solo al segmento "Engaged 60 days", nunca a toda la lista.
- En el flujo de bienvenida, espera al menos 1 día entre cada email; no los envíes consecutivos.
- Crea formularios separados para mobile y desktop; no uses el mismo para ambos.
- Desactiva "Click outside form to close" en pop-ups para forzar clic en botón de cierre.
- Cuando diseñes emails en Figma, no hagas slices de imagen de más de 500px de alto para evitar tamaños grandes.

## Errores comunes que evita o menciona
- No usar email marketing: las marcas que gastan seis cifras al mes en anuncios pero descuidan el backend (email/SMS) luchan por ser rentables.
- No tener al menos 20% de ingresos totales del canal email: si es menor, se está dejando dinero sobre la mesa.
- Usar plataformas que no sean Klaviyo para e-commerce: a cierta escala, terminarás migrando a Klaviyo, así que empieza con ella.
- Mostrar el pop-up instantáneamente (el visitante no ha visto nada) o esperar 30 segundos (la mayoría abandona en 5-10 segundos).
- Añadir demasiado texto en el pop-up: cualquier copia extra aumenta la probabilidad de que cierren el formulario.
- Confundir "Abandoned cart" con "Abandoned checkout" en Klaviyo: el template "Abandoned cart reminders" usa trigger "Checkout started", que es realmente abandono de checkout.
- Enviar campañas a toda la lista en lugar de solo a segmentos comprometidos (engaged).