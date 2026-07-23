# The RIGHT Way to Set Up Brand Search Campaigns in Google Ads
**Fuente:** GrowMyAds | https://youtu.be/qYxPMe9ynRE

## Qué enseña
El video explica dos métodos para configurar campañas de búsqueda de marca en Google Ads: el método manual con CPC manual y el método con inclusión de marca (brand inclusion) usando broad match. Enseña a optimizar para impresión share, evitar tráfico irrelevante de términos genéricos, y elegir la estrategia de puja correcta según el tipo de nombre de marca.

## Lecciones accionables
- **Nombra la campaña:** Usa "Brand" + identificador, ej: "Brand - New"
- **Configuración inicial:** Al crear campaña, selecciona "Create a campaign without goals guidance" → "Search campaign"
- **Redes:** Desactiva Display Network. Para Search Partners: empieza con OFF, luego de 30 días de datos estables actívalo como test
- **Ubicación:** Selecciona "Presence" (no "Presence or interest") para evitar tráfico fuera del país objetivo
- **Keywords iniciales (método manual):** Usa solo dos keywords:
  - `[home reserve]` (exact match)
  - `"home reserve"` (phrase match)
- **Para marcas genéricas (ej: "computerparts.com"):** Usa como keyword exacta `[computer parts com]` (sin punto, con espacio) para evitar tráfico no-brand
- **Bidding (método manual):** Selecciona "Manual CPC" directamente desde "Select a bidding strategy directly". Google intentará desalentarlo, ignora la advertencia
- **Bidding avanzado (método manual):** Después de semanas con datos, prueba "Target impression share" → "Absolute top of result page" → 100% → con un max CPC bid limit 10% mayor que tu CPC promedio actual
- **Método brand inclusion (para marcas genéricas):**
  1. Cambia bidding a "Maximize conversion value" (e-commerce) o "Maximize conversions" (leads)
  2. Activa "Broad match keywords" (esto convertirá tus exact/phrase a broad)
  3. Ve a "Brands" → selecciona tu marca ya indexada o crea una nueva lista
  4. Si tu marca no está indexada: haz clic en "Request a brand" y completa el formulario (tarda varios días)
  5. Después de 1 semana con maximize conversion value, cambia a "Target ROAS" (e-commerce) o "Target CPA" (leads) usando el ROAS/CPA promedio de la semana como baseline
- **Negativas obligatorias para marca:** Crea una lista de negativas llamada "Brand campaign negatives" con:
  - login
  - customer service
  - phone / phone number
  - shipping
  - coupons / promo codes
  - jobs / careers / internships
- **Revisión de search terms:** Ve a "Insights and reports" → "Search terms" para detectar tráfico irrelevante incluso con brand inclusion activada

## Reglas para agentes
- **Usa manual CPC como bidding inicial** para campañas de marca, nunca empieces con smart bidding (maximize conversions, maximize conversion value) a menos que uses brand inclusion
- **Nunca actives "Automatically created assets"** en campañas de marca — Google creará contenido no controlado
- **Nunca uses broad match sin brand inclusion** si tu nombre de marca es genérico (ej: "computerparts.com") — quemarás presupuesto con tráfico no-brand
- **Siempre revisa search terms semanalmente** incluso con brand inclusion activada — Google puede colar tráfico irrelevante
- **No actives Display Network ni "Presence or interest"** en campañas de marca
- **Si no tienes competidores pujando por tu marca y no usas Performance Max**, no crees campaña de marca — es dinero desperdiciado

## Errores comunes que evita o menciona
- **Usar smart bidding en marca sin test previo:** Infla CPCs sin aumento proporcional en conversiones (el video reporta hasta 30% más de CPC)
- **No agregar negativas de marca:** Gasta presupuesto en términos como "login", "customer service", "jobs" que no son compradores
- **Usar broad match en marcas genéricas sin brand inclusion:** Genera enormes pérdidas por tráfico no relacionado
- **Confiar ciegamente en brand inclusion:** Google aún puede mostrar anuncios para búsquedas no relacionadas con la marca
- **Activar Search Partners desde el inicio:** Puede distorsionar los datos iniciales; mejor esperar 30 días de datos limpios
- **No revisar si hay competidores pujando por tu marca:** Si no hay competidores, no necesitas campaña de marca (excepto si usas Performance Max que puede robar tráfico)