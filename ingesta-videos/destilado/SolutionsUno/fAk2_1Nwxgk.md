# 💔 Why Performance Max Fails
**Fuente:** SolutionsUno | https://youtu.be/fAk2_1Nwxgk

## Qué enseña
Performance Max (PMax) fracasa cuando el sitio web no tiene una base SEO sólida, cuando no se respetan los límites de presupuesto por grupo de activos, y cuando se interviene constantemente reiniciando el aprendizaje. La clave está en entender que PMax es full-funnel y requiere monitoreo de comportamiento del usuario, no solo de conversiones.

## Lecciones accionables
- **Verificar indexación SEO antes de lanzar PMax:** pega la URL del sitio en Google Ads > Herramientas y configuración > Planificador de palabras clave > "Buscar palabras clave nuevas" > poner la URL. Si las keywords que Google devuelve son irrelevantes, el sitio no está listo para PMax.
- **Calcular número máximo de grupos de activos:** divide el presupuesto diario total entre el costo por conversión estimado, luego divide entre 2 (mínimo 2 conversiones por semana por grupo). Ejemplo: presupuesto $200/día, CPA $10 → 200/10 = 20 conversiones potenciales/semana → 20/2 = máximo 10 grupos de activos.
- **Añadir tiempo transcurrido a la acción de conversión** para filtrar tráfico fraudulento o de click farms: en GTM, crea un timer que mida cuánto tarda el usuario en llenar cada campo del formulario. Prueba umbrales de 10, 12, 15, 20 y 30 segundos por campo. Envía los rellenos rápidos a una página de "gracias" sin píxel de conversión.
- **Separar productos "héroe" que monopolizan el gasto:** si un producto consume >50% del presupuesto con buen CTR pero mal ROAS, sácalo a su propia campaña PMax con presupuesto dedicado (ej: de $200/día total, asigna $50/día a ese producto).
- **Usar Microsoft Clarity (gratuito)** para grabar sesiones, mapas de calor y scroll maps. Revisa dónde abandonan los usuarios (ej: 30% llega a "añadir al carrito" y se va) y optimiza esos puntos.
- **Coincidir la propuesta de valor del anuncio con el "above the fold"** de la landing page: si el anuncio dice "15% off en motosierras", ese mismo descuento debe estar visible sin hacer scroll.
- **Dejar correr PMax sin tocar durante 6 semanas** después del lanzamiento. Luego, optimizar en sprints de 3 semanas: acumula todos los cambios y aplícalos de una sola vez. No hagas cambios diarios.
- **Crear grupos de activos por producto/categoría** y no mezclar productos distintos en un mismo grupo. El algoritmo no empareja bien headlines de un producto con descripciones de otro.
- **Escribir ad copy para todo el funnel:** incluye headlines para audiencias no conscientes (top of funnel), conscientes del problema, y conscientes del producto (bottom of funnel). No uses solo copy de producto específico.
- **Revisar listing groups frecuentemente** para detectar sobregasto en productos individuales: ordena por clics y verifica que ningún producto consuma más del 20-30% del presupuesto sin cumplir ROAS objetivo.

## Reglas para agentes
- **Nunca** lances PMax en sitios sin SEO previo: verifica siempre con el Planificador de Palabras Clave de Google Ads que las keywords asociadas a la URL sean relevantes.
- **Nunca** toques la campaña PMax durante las primeras 6 semanas. Después, aplica cambios solo cada 3 semanas en lotes, nunca cambios diarios.
- **Usa** el mínimo de 2 conversiones por semana por grupo de activos como regla para determinar si un grupo tiene presupuesto suficiente.
- **Separa** en campaña PMax propia cualquier producto que consuma >50% del presupuesto aunque tenga buen CTR, si su ROAS no alcanza el objetivo.
- **Añade** siempre un timer a los formularios de lead gen para filtrar conversiones fraudulentas; usa umbrales de tiempo por campo (10-30 segundos según prueba).
- **Instala** Microsoft Clarity en todo sitio que use PMax para rastrear comportamiento real del usuario (mapas de calor, grabaciones, scroll maps).
- **Haz coincidir** la oferta del anuncio con el contenido visible "above the fold" de la landing page; si hay mismatch, el rendimiento caerá.
- **No mezcles** productos o servicios distintos en un mismo grupo de activos; cada grupo debe hablar de una sola categoría o producto.

## Errores comunes que evita o menciona
- **Lanzar PMax sin SEO previo:** el algoritmo usa Dynamic Search Ads basado en cómo Google indexa el sitio; si el sitio no está bien categorizado, PMax pujará por keywords irrelevantes.
- **Tocar la campaña constantemente:** cada cambio reinicia el aprendizaje; muchos nunca salen de la fase de aprendizaje por hacer ajustes diarios.
- **Tener demasiados grupos de activos para el presupuesto:** si cada grupo no puede generar al menos 2 conversiones por semana, nunca optimizará correctamente.
- **Confundir buen CTR con buen rendimiento:** Google optimiza por conversiones, no por ROAS. Un producto con 3-4% de conversión puede estar quemando presupuesto si su ROAS es bajo.
- **Ignorar el tráfico de click farms:** los formularios se llenan rápido por humanos pagados; sin timer, esas conversiones falsas engañan al algoritmo.
- **No monitorear el comportamiento post-clic:** PMax es full-funnel; si solo miras conversiones en Google Ads, no ves dónde falla el sitio (abandono de carrito, CTAs mal ubicados, etc.).
- **Usar copy solo de fondo de embudo:** no atrae a audiencias nuevas que no conocen la marca o el producto.
- **Asumir que el producto clickeado es el producto comprado:** ~35% de las veces el usuario clickea un producto pero compra otro; separar productos "héroe" puede matar esa polinización cruzada.
- **No verificar listing groups:** un solo producto puede consumir >50% del presupuesto sin que el ROAS lo justifique, dando una falsa sensación de éxito.